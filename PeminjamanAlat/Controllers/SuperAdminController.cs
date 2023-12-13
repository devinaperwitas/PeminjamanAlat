using Microsoft.AspNetCore.Mvc;

namespace PeminjamanAlat.Controllers
{
    public class SuperAdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult User()
        {
            return View();
        }
    }
}
