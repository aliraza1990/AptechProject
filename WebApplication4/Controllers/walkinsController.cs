using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication4;

namespace WebApplication4.Controllers
{
    public class walkinsController : Controller
    {
        private aptechDBEntities db = new aptechDBEntities();

        // GET: walkins
        public ActionResult Index()
        {
            //  var walkins = db.walkins.Include(w => w.coursesOffered).Include(w => w.mediaFormat).Include(w => w.user);
            if (Session["userID"]!=null && Session["role"].ToString() == "Receptionist")
            {
                var walkins = db.st_getTodaysWalkins(DateTime.Now.Day, DateTime.Now.Month, DateTime.Now.Year, Convert.ToInt32(Session["userID"].ToString())).ToList();
                ViewBag.data = walkins;
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Auth");
            }
          
        }

        // GET: walkins/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            walkin walkin = db.walkins.Find(id);
            if (walkin == null)
            {
                return HttpNotFound();
            }
            return View(walkin);
        }

        // GET: walkins/Create
        public ActionResult Create()
        {
            ViewBag.w_coID = new SelectList(db.coursesOffereds, "co_id", "co_name");
            ViewBag.w_mfID = new SelectList(db.mediaFormats, "mf_id", "mf_name");
            ViewBag.w_userID = new SelectList(db.users, "u_id", "u_name");
            return View();
        }

        // POST: walkins/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "w_id,w_datetime,w_fullname,w_phone1,w_phone2,w_email,w_dob,w_coID,w_mfID,w_userID,w_serialNo,w_isAdmissionTaken")] walkin walkin)
        {
            if (ModelState.IsValid)
            {
                walkin.w_userID = Convert.ToInt32(Session["userID"]);
                db.walkins.Add(walkin);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.w_coID = new SelectList(db.coursesOffereds, "co_id", "co_name", walkin.w_coID);
            ViewBag.w_mfID = new SelectList(db.mediaFormats, "mf_id", "mf_name", walkin.w_mfID);
            ViewBag.w_userID = new SelectList(db.users, "u_id", "u_name", walkin.w_userID);
            return View(walkin);
        }

        // GET: walkins/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            walkin walkin = db.walkins.Find(id);
            if (walkin == null)
            {
                return HttpNotFound();
            }
            ViewBag.w_coID = new SelectList(db.coursesOffereds, "co_id", "co_name", walkin.w_coID);
            ViewBag.w_mfID = new SelectList(db.mediaFormats, "mf_id", "mf_name", walkin.w_mfID);
            ViewBag.w_userID = new SelectList(db.users, "u_id", "u_name", walkin.w_userID);
            return View(walkin);
        }

        // POST: walkins/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "w_id,w_datetime,w_fullname,w_phone1,w_phone2,w_email,w_dob,w_coID,w_mfID,w_userID,w_serialNo,w_isAdmissionTaken")] walkin walkin)
        {
            if (ModelState.IsValid)
            {
                db.Entry(walkin).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.w_coID = new SelectList(db.coursesOffereds, "co_id", "co_name", walkin.w_coID);
            ViewBag.w_mfID = new SelectList(db.mediaFormats, "mf_id", "mf_name", walkin.w_mfID);
            ViewBag.w_userID = new SelectList(db.users, "u_id", "u_name", walkin.w_userID);
            return View(walkin);
        }

        // GET: walkins/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            walkin walkin = db.walkins.Find(id);
            if (walkin == null)
            {
                return HttpNotFound();
            }
            return View(walkin);
        }

        // POST: walkins/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            walkin walkin = db.walkins.Find(id);
            db.walkins.Remove(walkin);
            db.SaveChanges();
            return RedirectToAction("Index");
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
