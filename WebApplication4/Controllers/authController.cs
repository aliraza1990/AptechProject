using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication4;

namespace WebApplication4.Controllers
{
    public class authController : Controller
    {
        private aptechDBEntities db = new aptechDBEntities();

    
        // GET: auth/Details/5
     

        // GET: auth/Create
        public ActionResult Login()
        {
           
            return View();
        }
        [HttpPost]
        public ActionResult Login(user u)
        {
            var data = db.st_getLoginDetails(u.u_username,u.u_pass);
            string s = "";
            string r = "";
            foreach (var item in data)
            {
                if (item.Name != null)
                {
                    s = item.Name;
                    r = item.Role;
                    Session["name"] = s;
                    Session["role"] = r;
                    Session["userID"] = item.UID;
                }
                else
                {
                    s = "";
                    r = "";
                }
            }
            if (s !="" && r!="" )
            {
                if (r == "Receptionist")
                {
                    return RedirectToAction("Index", "Reception");
                }
                else if(r == "Administrator")
                {
                    return RedirectToAction("Index", "AdminPanel");
                }
                else if (r == "Faculty")
                {
                    return RedirectToAction("Index", "AdminPanel");
                }
                else
                {
                    return RedirectToAction("Login", "auth");
                }
            }
            else
            {
                return RedirectToAction("Login", "auth");
            }
        
        }
        public ActionResult logout()
        {
            if (Session["name"]!=null)
            {
                Session.Clear();
                Session.Abandon();
                return RedirectToAction("Login");
            }
            else
            {
                return RedirectToAction("Login");
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
