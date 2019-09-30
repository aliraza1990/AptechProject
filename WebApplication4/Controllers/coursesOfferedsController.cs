﻿using System;
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
    public class coursesOfferedsController : Controller
    {
        private aptechDBEntities db = new aptechDBEntities();

        // GET: coursesOffereds
        public ActionResult Index()
        {
            return View(db.coursesOffereds.ToList());
        }

        // GET: coursesOffereds/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            coursesOffered coursesOffered = db.coursesOffereds.Find(id);
            if (coursesOffered == null)
            {
                return HttpNotFound();
            }
            return View(coursesOffered);
        }

        // GET: coursesOffereds/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: coursesOffereds/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "co_id,co_name")] coursesOffered coursesOffered)
        {
            if (ModelState.IsValid)
            {
                db.coursesOffereds.Add(coursesOffered);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(coursesOffered);
        }

        // GET: coursesOffereds/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            coursesOffered coursesOffered = db.coursesOffereds.Find(id);
            if (coursesOffered == null)
            {
                return HttpNotFound();
            }
            return View(coursesOffered);
        }

        // POST: coursesOffereds/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "co_id,co_name")] coursesOffered coursesOffered)
        {
            if (ModelState.IsValid)
            {
                db.Entry(coursesOffered).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(coursesOffered);
        }

        // GET: coursesOffereds/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            coursesOffered coursesOffered = db.coursesOffereds.Find(id);
            if (coursesOffered == null)
            {
                return HttpNotFound();
            }
            return View(coursesOffered);
        }

        // POST: coursesOffereds/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            coursesOffered coursesOffered = db.coursesOffereds.Find(id);
            db.coursesOffereds.Remove(coursesOffered);
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
