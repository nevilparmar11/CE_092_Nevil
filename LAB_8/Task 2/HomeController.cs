using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Task2_Lab8.Models;

namespace Task2_Lab8.Controllers
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
        public IActionResult test1()
        {
            int num1 = 9;
            int num2 = 7;
            int sum = num1 + num2;
            ViewBag.sum = sum;
            ViewBag.num1 = num1;
            ViewBag.num2 = num2;
            return View();
        }
        [HttpGet]
        public IActionResult test2()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Test2(string num1, string num2)
        {
            int sum = Int32.Parse(num1) + Int32.Parse(num2);
            ViewBag.sum = sum;
            return View();
        }
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Register(string name, string age)
        {
            ViewBag.name = name;
            ViewBag.age = age;
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
