using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using PeminjamanAlat.Models;

namespace PeminjamanAlat.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [HttpPost]
        public IActionResult SSO(string Username, string Password)
        {
            // Perform authentication logic
            if (IsValidAdminUser(Username, Password))
            {
                // Redirect to Admin SSO page
                return RedirectToAction("Admin");
            }
            else if (IsValidSuperAdminUser(Username, Password))
            {
                // Redirect to SuperAdmin SSO page
                return RedirectToAction("SuperAdmin");
            }
            else
            {
                // Invalid credentials, show login page with a SweetAlert error message
                TempData["SweetAlertMessage"] = "Invalid username or password.";
                TempData["SweetAlertType"] = "error";
                return RedirectToAction("Index");

            }
        }

        // Add this action for the Admin SSO page
        public IActionResult Admin()
        {
            return View("Admin"); // Assuming you have a view named "SSO_Admin.cshtml"
        }

        // Add this action for the SuperAdmin SSO page
        public IActionResult SuperAdmin()
        {
            return View("SuperAdmin"); // Assuming you have a view named "SSO_SuperAdmin.cshtml"
        }

        private bool IsValidAdminUser(string username, string password)
        {
            return username == "admin" && password == "admin";
        }

        private bool IsValidSuperAdminUser(string username, string password)
        {
            return username == "superadmin" && password == "superadmin";
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

