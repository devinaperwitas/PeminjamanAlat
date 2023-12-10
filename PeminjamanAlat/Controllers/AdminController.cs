using Microsoft.AspNetCore.Mvc;

namespace PeminjamanAlat.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Alat()
        {
            return View();
        }

        public IActionResult JenisAlat()
        {
            return View();
        }

        public IActionResult JenisAlatCreate()
        {
            return View();
        }
    }
}
