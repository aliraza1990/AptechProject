using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication4;
namespace WebApplication4.Controllers
{
    public class AdminPanelController : Controller
    {
        aptechDBEntities obj = new aptechDBEntities();
        // GET: AdminPanel
        public ActionResult Index()
        {
            if (Session["name"] != null)
            {
                var data = obj.st_getCampusCount();
                ViewBag.da = data;
                return View();
            }
            else
            {
                return RedirectToAction("Login","auth");
            }
           
        }
    }
}