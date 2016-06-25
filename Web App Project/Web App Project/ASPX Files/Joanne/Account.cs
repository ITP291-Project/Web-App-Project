using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public class Account
    {
        String password, language, email, name, address, occupation, contact, dob;
        String nric, orgChoice, gender, privilege;
        int age, points;

        //constructor
        public Account(String email, String password)
        {
            this.email = email;
            this.password = password;
        }

        public static void main (String[]args)
        {

        }
    }

}