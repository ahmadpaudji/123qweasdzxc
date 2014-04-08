using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace E_Sosial.Areas.admin.Controllers
{
    public class userController : Controller
    {
        private db_esosEntities db = new db_esosEntities();

        //
        // GET: /admin/user/

        [Authorize(Roles="super_admin")]
        public ActionResult Index()
        {
            return View(db.users.Where(u=>u.username != User.Identity.Name).ToList());
        }

        //
        // GET: /admin/user/Details/5

        [Authorize(Roles = "super_admin,admin")]
        public ActionResult Details()
        {
            var id_user = db.users.FirstOrDefault(idUser => idUser.username == User.Identity.Name).id_user;
            user user = db.users.Find(id_user);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        //
        // GET: /admin/user/Create

        [Authorize(Roles = "super_admin")]
        public ActionResult Create()
        {
            return RedirectToAction("Registration","admin");
        }

        //
        // POST: /admin/user/Create

        [Authorize(Roles = "super_admin")]
        [HttpPost]
        public ActionResult Create(user user)
        {
            if (ModelState.IsValid)
            {
                db.users.Add(user);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(user);
        }

        //
        // GET: /admin/user/Edit/5

        [Authorize(Roles = "super_admin,admin")]
        public ActionResult Edit(int id = 0)
        {
            //user user = db.users.Find(id);
            var user = (from table in db.users
                        where table.id_user == id
                        join table2 in db.detail_roles
                        on table.id_user equals table2.id_user
                        join table3 in db.roles
                        on table2.id_roles equals table3.id_roles
                        select new admin.Models.adminModel
                        {
                            username = table.username,
                            password = null,
                            nama = table.nama,
                            alamat = table.alamat,
                            email = table.email,
                            hp = table.hp,
                            id_roles = table2.id_roles.Value
                        }).FirstOrDefault();
            ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        //
        // POST: /admin/user/Edit/5

        [Authorize(Roles = "super_admin,admin")]
        [HttpPost]
        public ActionResult Edit(int id,Models.adminModel admin)
        {
            if (ModelState.IsValid)
            {
                var userUbah = db.users.FirstOrDefault(u => u.username == admin.username);
                if (userUbah == null)
                {
                    user user = db.users.Find(id);
                    using (db)
                    {
                        var crypto = new SimpleCrypto.PBKDF2();
                        var enkripPassword = crypto.Compute(admin.password);

                        user.username = admin.username;
                        user.user_password = enkripPassword;
                        user.user_passwordsalt = crypto.Salt;
                        user.nama = admin.nama;
                        user.hp = admin.hp;
                        user.email = admin.email;
                        user.alamat = admin.alamat;
                        user.tanggal = DateTime.Now;

                        db.SaveChanges();

                        FormsAuthentication.SetAuthCookie(admin.username, false);
                        return RedirectToAction("Details");
                    }
                }
                else
                {
                    ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
                    ViewBag.errorUsername = 'y';
                    return View(admin);
                }
            }
            else
            {
                ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
                ViewBag.error = 'y';
                return View(admin);
            }
        }


        //
        // GET: /admin/user/Edit/5

        [Authorize(Roles = "super_admin")]
        public ActionResult EditUser(int id = 0)
        {
            //user user = db.users.Find(id);
            var user = (from table in db.users
                        where table.id_user == id
                        join table2 in db.detail_roles
                        on table.id_user equals table2.id_user
                        join table3 in db.roles
                        on table2.id_roles equals table3.id_roles
                        select new admin.Models.adminModel
                        {
                            username = table.username,
                            password = null,
                            nama = table.nama,
                            alamat = table.alamat,
                            email = table.email,
                            hp = table.hp,
                            id_roles = table2.id_roles.Value
                        }).FirstOrDefault();
            ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        //
        // POST: /admin/user/Edit/5

        [Authorize(Roles = "super_admin")]
        [HttpPost]
        public ActionResult EditUser(int id, Models.adminModel admin)
        {
            if (ModelState.IsValid)
            {
                var userUbah = db.users.FirstOrDefault(u => u.username == admin.username);
                var idRole = db.detail_roles.FirstOrDefault(u => u.id_user == id).id_detail_roles;
                detail_roles detail_roles = db.detail_roles.Find(idRole);
                if (userUbah == null)
                {
                    user user = db.users.Find(id);
                    using (db)
                    {
                        var crypto = new SimpleCrypto.PBKDF2();
                        var enkripPassword = crypto.Compute(admin.password);

                        user.username = admin.username;
                        user.user_password = enkripPassword;
                        user.user_passwordsalt = crypto.Salt;
                        user.nama = admin.nama;
                        user.hp = admin.hp;
                        user.email = admin.email;
                        user.alamat = admin.alamat;
                        user.tanggal = DateTime.Now;

                        detail_roles.id_roles = id;
                        detail_roles.id_roles = admin.id_roles;

                        db.SaveChanges();

                        return RedirectToAction("Index", "user");
                    }
                }
                else
                {
                    ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
                    ViewBag.errorUsername = 'y';
                    return View(admin);
                }
            }
            else
            {
                ViewBag.role = new SelectList(db.roles.ToList(), "id_roles", "roles");
                ViewBag.error = 'y';
                return View(admin);
            }
        }

        //
        // GET: /admin/user/Delete/5

        [Authorize(Roles = "super_admin")]
        public ActionResult Delete(int id = 0)
        {
            user user = db.users.Find(id);
            db.users.Remove(user);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //
        // POST: /admin/user/Delete/5

        [Authorize(Roles = "super_admin")]
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            user user = db.users.Find(id);
            db.users.Remove(user);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}