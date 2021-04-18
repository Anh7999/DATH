using busproject2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace busproject2.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        private Model1 db = new Model1();
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Login()
        {
            if (!Session["UserAdmin"].Equals(""))
            {
                return RedirectToAction("Index", "Default");
            }
            ViewBag.Error = "";
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {


            string strerror = "";
            string username = collection["username"];
            string password = collection["password"];

            Account rowuset = db.Accounts.Where(m=>m.Status == "1" && m.Access== "1" && (m.TenTaiKhoan == username || m.Email == username))
                .FirstOrDefault();
            if(rowuset==null)
            {
                strerror = "Ten Dang Nhap Khong Ton Tai";
            }
            else
            {
                if (rowuset.MatKhau.Equals(password))
                {
                    Session["UserAdmin"] = rowuset.Email;
                    Session["UserId"] = rowuset.MaTaiKhoan;
                    Session["Name"] = rowuset.TenTaiKhoan;

                    return RedirectToAction("Index", "Default");
                }
                else
                {
                    strerror = "Mat Khau Khong Dnubg";
                }
            }
        
            ViewBag.Error = strerror;


            //// Gán các giá trị người dùng nhập liệu cho các biến 
            //var tendn = collection["username"];
            //var matkhau = collection["password"];
            //if (String.IsNullOrEmpty(tendn))
            //{
            //    ViewData["Loi1"] = "Phải nhập tên đăng nhập";
            //}
            //else if (String.IsNullOrEmpty(matkhau))
            //{
            //    ViewData["Loi2"] = "Phải nhập mật khẩu";
            //}
            //else
            //{
            //    //Gán giá trị cho đối tượng được tạo mới (ad)        

            //    Account ad = db.Accounts.SingleOrDefault(n => n.Email == tendn && n.MatKhau == matkhau);
            //    if (ad != null)
            //    {
            //        // ViewBag.Thongbao = "Chúc mừng đăng nhập thành công";
            //        Session["Taikhoanadmin"] = ad;
            //        return RedirectToAction("Index", "Default");
            //    }
            //    else
            //        ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
            //}
            return View();
        }


        public ActionResult Logout()
        {
            Session["UserAdmin"] = "";
            Session["UserId"] = "";
            Session["Name"] ="";
            return RedirectToAction("Login", "Login");
          
        }
    }
}