using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using busproject2.Models;

namespace busproject2.Areas.Admin.Controllers
{
    public class BensController : Controller
    {
        private Model1 db = new Model1();

        // GET: Admin/Bens
        public ActionResult Index()
        {
            return View(db.Bens.ToList());
        }

        // GET: Admin/Bens/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ben ben = db.Bens.Find(id);
            if (ben == null)
            {
                return HttpNotFound();
            }
            return View(ben);
        }

        // GET: Admin/Bens/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Bens/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaBen,TenBen,lat,_long")] Ben ben)
        {
            if (ModelState.IsValid)
            {
                db.Bens.Add(ben);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ben);
        }

        // GET: Admin/Bens/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ben ben = db.Bens.Find(id);
            if (ben == null)
            {
                return HttpNotFound();
            }
            return View(ben);
        }

        // POST: Admin/Bens/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaBen,TenBen,lat,_long")] Ben ben)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ben).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ben);
        }

        // GET: Admin/Bens/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ben ben = db.Bens.Find(id);
            if (ben == null)
            {
                return HttpNotFound();
            }
            return View(ben);
        }

        // POST: Admin/Bens/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ben ben = db.Bens.Find(id);
            db.Bens.Remove(ben);
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
