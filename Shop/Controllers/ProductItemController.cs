using Shop.Models;
using Shop.Models.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop.Controllers
{
    public class ProductItemController : Controller
    {
        // GET: ProductItem
        ShopEntities db = new ShopEntities();
        public ActionResult Index(int id)
        {
            //idSp = 11;

            var sp = db.SanPhams.Where(s => s.IdSp == id).Select(s => new { idlsp = s.IdLoaiSp, name = s.TenSanPham }).FirstOrDefault();
            string TenLsp = db.LoaiSanPhams.Where(s => s.IdLoaisp == sp.idlsp).Select(s => s.TenLsp).FirstOrDefault();
            ViewBag.idSp = id;
            ViewBag.tenlsp = TenLsp;
            ViewBag.tenSp = sp.name;
            return View();
        }
        public ActionResult productItem(int id)
        {
            var data = db.SanPhams.Where(s => s.IdSp == id).FirstOrDefault();
            var arrImage = db.SanPham_Anh.Where(s => s.IdSp == id).Select(s => s.Image);
            var arrSize = db.ChiTietSps.Where(s => s.IdSp == id && s.SoLuong > 0);


            ViewBag.data = data;
            ViewBag.arrImage = arrImage;
            ViewBag.arrSize = arrSize;

            return PartialView();
        }
        public ActionResult Description(int id)
        {
            var data = db.SanPhams.Where(s => s.IdSp == id).FirstOrDefault();
            return PartialView(data);
        }
        public ActionResult ProductReviews(int id)
        {

            var a = db.BinhLuans.Join
               (db.KhachHangs, bl => bl.IdKh,
               kh => kh.IdKh, (bl, kh) => new
               {
                   TenKh = kh.FirstName + " " + kh.LastName,
                   text = bl.Text,
                   ngay = bl.Create_date,
                   idbl = bl.IdBinhLuan,
                   idkh = bl.IdKh,
                   idSp = bl.IdSp,
                   sao = bl.sao,
                   titleText = bl.TitleText
               }).Where(bl => bl.idSp == id).ToList();

            List<ReviewProduct> data = new List<ReviewProduct>();
            float sumSao = 0;
            foreach (var i in a)
            {
                ReviewProduct z = new ReviewProduct();

                z.idKh = (int)i.idkh;
                z.idbl = (int)i.idbl;
                z.idSp = (int)i.idSp;
                z.TenKh = (string)i.TenKh;
                z.Text = (string)i.text;
                z.ngay = (DateTime)i.ngay;
                int sao = (int)i.sao;
                z.sao = sao;
                z.TitleText = (string)i.titleText;
                sumSao += (int)i.sao;

                data.Add(z);

            }
            ViewBag.sumSao = sumSao / data.Count();
            ViewBag.idSp = id;
            return PartialView(data);
        }
        public ActionResult WriteReview(int? idSp)
        {
            Session["UserId"] = 1;
            ViewBag.idSp = idSp;
            return PartialView();
        }
        //[HttpPost]
        // lõi không thêm được sản phẩm vào bình luận
        public JsonResult Write(BinhLuan data)
        {

            int idKh = Int32.Parse(Session["UserId"].ToString());
            var kh = db.KhachHangs.Where(s => s.IdKh == idKh).Select(s => new
            {
                FirstName = s.FirstName,
                LastName = s.LastName
            }).FirstOrDefault();
            data.IdKh = idKh;
            db.BinhLuans.Add(data);
            db.SaveChanges();
            try
            {
                var sel = db.BinhLuans.Where(s => s.IdKh == idKh && s.IdSp == data.IdSp).LastOrDefault();

                string TenKh = kh.FirstName + " " + kh.LastName;
                ReviewProduct write = new ReviewProduct();
                write.ngay = sel.Create_date;
                write.TenKh = TenKh;
                write.idbl = sel.IdBinhLuan;
                write.idSp = (int)data.IdSp;

                return Json(data, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { }, JsonRequestBehavior.AllowGet);
            }

        }
        public ActionResult ab()
        {
            return PartialView();
        }
    }
}