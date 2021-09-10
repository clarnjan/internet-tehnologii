using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace lab5.Models
{
    public class UserToRole
    {
        public string Email { get; set; }
        public string Role { get; set; }
        public List<string> Roles { get; set; }
        public UserToRole() {
            Roles = new List<string>();
            Roles.Add("Administrator");
            Roles.Add("Manager");
            Roles.Add("User");
        }
    }

}