using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using laboratoriska3.Models;

namespace laboratoriska3.Controllers
{
    public class FriendController : Controller
    {
        private FriendContext db = new FriendContext();

        // GET: Friend
        public ActionResult Index()
        {
            return View(db.friendData.ToList());
        }

        // GET: Friend/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FriendModel friendModel = db.friendData.Find(id);
            if (friendModel == null)
            {
                return HttpNotFound();
            }
            return View(friendModel);
        }

        // GET: Friend/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Friend/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Ime,MestoZiveenje")] FriendModel friendModel)
        {
            if (ModelState.IsValid)
            {
                db.friendData.Add(friendModel);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(friendModel);
        }

        // GET: Friend/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FriendModel friendModel = db.friendData.Find(id);
            if (friendModel == null)
            {
                return HttpNotFound();
            }
            return View(friendModel);
        }

        // POST: Friend/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Ime,MestoZiveenje")] FriendModel friendModel)
        {
            if (ModelState.IsValid)
            {
                db.Entry(friendModel).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(friendModel);
        }

        
        public ActionResult Delete(int id)
        {
            FriendModel friendModel = db.friendData.Find(id);
            db.friendData.Remove(friendModel);
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
