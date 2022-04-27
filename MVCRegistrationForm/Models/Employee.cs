using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using Microsoft.AspNetCore.Mvc;

namespace MVCRegistrationForm.Models
{
    public enum Colours
    {
        Red, Blue, Green
    }
    [Table("Employees")]
    public class Employee
    {
        [Key]
        public int ID { get; set; }
        [Required(ErrorMessage ="Please Enter Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Please Enter Surname")]
        public string Surname { get; set; }


        [Required(ErrorMessage = "Please Enter Email")]
        [RegularExpression("[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
            ErrorMessage ="Invalid Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Please Enter Password")]
        [DataType(DataType.Password)]
        [RegularExpression("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,20}$", ErrorMessage ="Password not strong")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Please Confirm Password")]
        [DataType(DataType.Password)]
        [Compare("Password")]
        [Display(Name="Confirm Password")]
        public string ConfirmPassword { get; set; }

        [BindProperty]
        public string Country { get; set; } = "South Africa";
        
        [BindProperty]
        [Display(Name = "Favourite Colour")]
        public string FavouriteColour { get; set; } = Colours.Red.ToString();
        
        [Display(Name ="Birth Date")]
        [DataType(DataType.DateTime, ErrorMessage ="Birth Date is in wrong format - use (mm/dd/yyyy)")]
        public DateTime Birthday { get; set; }

        [StringLength(10, MinimumLength =10, ErrorMessage ="Cell phone number should only have 10 digits- No spaces are allowed")]
        [RegularExpression("[0](\\d{9})|([0](\\d{2})( |-)((\\d{3}))( |-)(\\d{4}))|[0](\\d{2})( |-)(\\d{7})", 
            ErrorMessage = "Invalid cellphone number")]
        [Display(Name ="Cellphone Number")]
        public string CellPhoneNumber { get; set; }

        public string Comments { get; set; }
    }
}