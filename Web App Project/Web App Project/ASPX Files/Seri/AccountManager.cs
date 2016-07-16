using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Web_App_Project.ASPX_Files.Seri
{
    /**
     * Account Management Class
     * Accesses the Account database and returns the current user an object
     * 
     * */
    public class AccountManager
    {

        //Database Connection
        SqlConnection Conn { get; set; }
        //Current Session
        HttpSessionState Sess { get; set; }

        public AccountManager(HttpSessionState mySession)
        {
            //set sesssion
            this.Sess = mySession;
            //create database connection
            this.Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString);
            //open database connection
            this.Conn.Open();
        }

        //Will return true if a user is logged in
        public bool UserLoggedIn()
        {
            return this.Sess["Username"] != null;
        }

        //Returns the current user
        public UserClass GetCurrentUser()
        {
            //check if a user is logged in
            if (!UserLoggedIn()) return null;
            return GetUser(this.Sess["Username"].ToString());
        }

        //returns a user with the supplied username
        public UserClass GetUser(string username)
        {
            var myUser = new UserClass(username, this.Conn);
            if (myUser != null && myUser.Loaded)
            {
                return myUser;
            }
            return null;
        }
    }

    public class UserClass
    {
        public bool Loaded { get; protected set; }
        public int ID { get; protected set; }
        public string First_Name { get; protected set; }
        public string Last_Name { get; protected set; }
        public string Username { get; protected set; }
        public int Points { get; protected set; }
        SqlConnection MyConn { get;  set; }

        public UserClass(string username, SqlConnection conn)
        {
            this.Loaded = false;
            this.MyConn = conn;
            this.Username = username;
            UpdateUser();
        }

        //open database connection if it is closed
        protected void Setup()
        {
            if (MyConn.State != System.Data.ConnectionState.Open)
            {
                MyConn.Open();
            }
        }

        //get the user row from the database
        public void UpdateUser()
        {
            var getUser = new SqlCommand(string.Format("Select Id, FName, Lname, Points from Accounts where Email = '{0}'", this.Username), this.MyConn);
            Setup();
            var rowRead = getUser.ExecuteReader();
            //read the first row of the returned results
            if (rowRead.Read())
            {
                try
                {
                    this.ID = int.Parse(rowRead["Id"].ToString());
                    this.First_Name = rowRead["FName"].ToString();
                    this.Last_Name = rowRead["Lname"].ToString();
                    this.Points = int.Parse(rowRead["Points"].ToString());
                    this.Loaded = true;
                }
                catch (Exception e)
                {

                }

            }
            this.MyConn.Close();
        }

        //Update a users points in the database
        public void UpdatePoints(int points)
        {
            string query = string.Format("Update Accounts Set Points = {0} Where Id = {1}", points, this.ID);
            var update = new SqlCommand(query, this.MyConn);
            Setup();
            update.ExecuteNonQuery();
            this.MyConn.Close();
        }

        public UserClass(int id, string firstname, string lastname, string username, int points)
        {
            this.ID = id; this.First_Name = firstname; this.Last_Name = lastname; this.Username = username; this.Points = points;
        }
    }
}