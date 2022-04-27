using MVCRegistrationForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Windows.Forms;
using System.Data.Entity;

namespace MVCRegistrationForm.Controllers
{
    public class EmployeeController : Controller
    {
        EmployeeContext employeeContext = new EmployeeContext();

        public ActionResult Index()
        {
            List<Employee> employees = employeeContext.Employees.ToList();

            return View(employees);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Employee emp)
        {
            if (ModelState.IsValid)
            {
                employeeContext.Employees.Add(emp);
                employeeContext.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
        }

        [HttpGet]
        public ActionResult Edit(int ID)
        {
            Employee emp = employeeContext.Employees.Single(x => x.ID == ID);

            return View(emp);
        }

        [HttpPost]
        public ActionResult Edit(Employee emp)
        {
            if (ModelState.IsValid)
            {
                employeeContext.Entry(emp).State = EntityState.Modified;
                employeeContext.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(emp);
        }

        [HttpPost]
        public ActionResult Delete(int ID)
        {
            Employee emp = employeeContext.Employees.Single(x => x.ID == ID);
            employeeContext.Employees.Remove(emp);
            employeeContext.SaveChanges();
            
            return RedirectToAction("Index");
        }
    }
}