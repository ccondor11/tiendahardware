using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCVenta.Models;
using MVCVenta.ViewModels;

namespace MVCVenta.Controllers
{
    public class CarritoCompraController : Controller
    {
        //
        // GET: /Carrito/

        public readonly VentaDataClassesDataContext _data;

        public CarritoCompraController(VentaDataClassesDataContext data)
        {
            _data = data;
        }

        public CarritoCompraController()
        {
            _data = new VentaDataClassesDataContext();
        }

        public ActionResult Index()
        {
            return View();
        }

    }
}
