using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCProje.Models.Entity;

namespace MVCProje.Controllers
{
    public class SatısController : Controller
    {
        // GET: Satıs
        DBUrunStokEntities db = new DBUrunStokEntities();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult YeniSatis()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniSatis(Tbl_Satislar p)
        {
            db.Tbl_Satislar.Add(p);
            db.SaveChanges();
            return View("Index");
        }
    }
}