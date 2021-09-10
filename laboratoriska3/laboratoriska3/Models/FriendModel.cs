using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace laboratoriska3.Models
{
    public class FriendModel
    {
        [Range (0,200)]
        [Key]
        public int Id { get; set; }
        [Required]
        public String Ime { get; set; }
        [Required]
        [Display(Name ="Mesto na Ziveenje")]
        public String MestoZiveenje { get; set; }
    }
}