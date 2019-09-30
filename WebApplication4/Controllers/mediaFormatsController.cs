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
    public class mediaFormatsController : Controller
    {
        private aptechDBEntities db = new aptechDBEntities();

        // GET: mediaFormats
        public ActionResult Index()
        {
            return View(db.mediaFormats.ToList());
        }

        // GET: mediaFormats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            mediaFormat mediaFormat = db.mediaFormats.Find(id);
            if (mediaFormat == null)
            {
                return HttpNotFound();
            }
            return View(mediaFormat);
        }

        // GET: mediaFormats/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: mediaFormats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "mf_id,mf_name")] mediaFormat mediaFormat)
        {
            if (ModelState.IsValid)
            {
                db.mediaFormats.Add(mediaFormat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(mediaFormat);
        }

        // GET: mediaFormats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            mediaFormat mediaFormat = db.mediaFormats.Find(id);
            if (mediaFormat == null)
            {
                return HttpNotFound();
            }
            return View(mediaFormat);
        }

        // POST: mediaFormats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "mf_id,mf_name")] mediaFormat mediaFormat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mediaFormat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(mediaFormat);
        }

        // GET: mediaFormats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            mediaFormat mediaFormat = db.mediaFormats.Find(id);
            if (mediaFormat == null)
            {
                return HttpNotFound();
            }
            return View(mediaFormat);
        }

        // POST: mediaFormats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            mediaFormat mediaFormat = db.mediaFormats.Find(id);
            db.mediaFormats.Remove(mediaFormat);
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
