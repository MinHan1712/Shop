using Shop.Models;
using Shop.Models.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop.Controllers
{
    public class LoginController : Controller
    {
        ShopEntities db = new ShopEntities();
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult FormLogin()
        {
            return PartialView();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult FormLogin(KhachHang login)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    login.Password = Encyptor.MD5Hash(login.Password);
                    var check = db.KhachHangs.Where(s => s.Email == login.Email && s.Password.Equals(login.Password)).ToList();
                    if (check.Count() > 0)
                    {
                        Session["UserId"] = check.FirstOrDefault().IdKh;
                        return Redirect("~/Home/Index");
                    }
                }

                return PartialView();

            }
            catch (Exception)
            {
                return PartialView();
            }
        }
    }
}