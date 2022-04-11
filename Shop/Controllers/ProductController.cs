using Shop.Models.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        ShopEntities db = new ShopEntities();
        //[Route("Shop/{id}")] // Url phù hợp = /abc-learnasp-xyztest
        public ActionResult Index(int? id)
        {

            if (id == null)
            {
                ViewBag.tenlsp = "Mirro";
                return View();
            }
            else
            {
                var data = db.LoaiSanPhams.Where(s => s.IdLoaisp == id).FirstOrDefault();
                ViewBag.tenlsp = data.TenLsp;
                ViewBag.idlsp = id;
                return View();
            }
        }
        public ActionResult ListProduct(int? id)
        {

            if (id != null)
            {
                var data = db.SanPhams.Where(s => s.IdLoaiSp == id).OrderByDescending(s => s.Create_date).Take(5);
                return PartialView(data);
            }
            else
            {

                var data = db.SanPhams.OrderByDescending(s => s.Create_date).AsEnumerable().Take(5);
                return PartialView(data);
            }

        }
        public ActionResult ToolbarFiter()
        {
            var size = db.ChiTietSps.Select(s => s.Size);
            var hd = db.SanPhams.Select(s => s.HinhDang);
            ViewBag.size = size;
            ViewBag.hd = hd;
            return PartialView();
        }
        public ActionResult Pagination(int id)
        {
            int count = db.SanPhams.Where(s => s.IdLoaiSp == id).Count();
            ViewBag.count = count;
            return PartialView();
        }
        // loi phan trang
        public ActionResult Page(int? page, int id)
        {
            int pagesize = 5;

            if (page == null)
            {
                page = 1;
            }
            if (id == -1)
            {
                var result = db.SanPhams.OrderByDescending(p => p.Create_date).Skip((int)((page - 1) * pagesize)).Take(pagesize);
                return PartialView(result);
            }
            else
            {
                var result = db.SanPhams.Where(s => s.IdLoaiSp == id).OrderByDescending(p => p.Create_date).Skip((int)((page - 1) * pagesize)).Take(pagesize);

                return PartialView(result);
            }

        }
        public JsonResult FeaturedSort(string name, int idlsp)
        {

            switch (name)
            {
                case "Best selling":
                    var bs = db.Product_Hot();
                    return Json(bs, JsonRequestBehavior.AllowGet);
                case "A-Z":
                    var az = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderBy(s => s.TenSanPham);
                    return Json(az, JsonRequestBehavior.AllowGet);
                case "Z-A":
                    var za = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderByDescending(s => s.TenSanPham);
                    return Json(za, JsonRequestBehavior.AllowGet);
                case "Price-asc":
                    var pa = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderBy(s => s.Tien);
                    return Json(pa, JsonRequestBehavior.AllowGet);
                case "Price-desc":
                    var pd = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderByDescending(s => s.Tien);
                    return Json(pd, JsonRequestBehavior.AllowGet);
                case "date-asc":
                    var da = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderBy(s => s.Create_date);
                    return Json(da, JsonRequestBehavior.AllowGet);
                case "date-desc":
                    var dd = db.SanPhams.Where(s => s.IdLoaiSp == idlsp).OrderBy(s => s.Create_date);
                    return Json(dd, JsonRequestBehavior.AllowGet);
            }

            var data = db.SanPhams;
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}