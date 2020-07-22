﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Restaurant
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String Address { get; set; }
        public String Email { get; set; }
        public String Hotline { get; set; }

        public Restaurant(int id, string name, string description, string address, string email, string hotline)
        {
            Id = id;
            Name = name;
            Description = description;
            Address = address;
            Email = email;
            Hotline = hotline;
        }

        public Restaurant(DataRow row)
        {
            Id = (int)row["Id"];
            Name = row["Name"].ToString();
            Description = row["Description"].ToString();
            Address = row["Address"].ToString();
            Email = row["Email"].ToString();
            Hotline = row["Hotline"].ToString();
        }
    }
}