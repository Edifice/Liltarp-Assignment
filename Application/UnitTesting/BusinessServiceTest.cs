using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;
using DAL;
using Microsoft.Win32;
using NUnit.Framework;

namespace UnitTesting
{



    internal class BusinessServiceTest
    {
        private BusinessService service;
        private Ticket ticket1;
        private Ticket ticket2;
        private Ticket ticket3;
        private Ticket ticket4;
        private DAL.House house1;
        private DAL.House house2;
        private User user1;
        private HouseType houseTypeCount;
       
        
        [SetUp]
        public void Start()
        {
            service = new BusinessService();

            ticket1 = new Ticket()
            {
               
                Name = "orla runge",
                E_mail = "runge_3@hotmail.com",
                Phone = "31213820",
                HouseID = "1",
                UserText = "jeg er Orla the viking"
            };
            ticket2 = new Ticket()
            {
               
                Name = "Wang",
                E_mail = "runge@hotmail.com",
                Phone = "31213820",
                HouseID = "1",
                UserText = "test 2"
            };

            ticket3 = new Ticket()
            {
                
                Name = "hui",
                E_mail = "runge47@hotmail.com",
                Phone = "23456",
                HouseID = "3",
                UserText = "test"
            };
            ticket4 = new Ticket()
            {
                Name = "Daniel",
                E_mail = "daniel@noob.com",
                Phone = "6651354",
                HouseID = "1",
                UserText = "test three"
            };
            house1 = new DAL.House()
            {
                ID = "20",
                TypeID = "3",
                Name = "SM-L2",
                Description = "aaaaaaa",
                Image = "sm-l/2.jpg"

            };
            house2 = new DAL.House()
            {
               
                TypeID = "3",
                Name = "SM-L24",
                Description = "aaaaaaatest",
                Image = "sm-l/2.jpg"

            };
            user1 = new User()
            {
                E_mail = "admin@liltarp.dk",
                Password = "foobar"
            };

        }

        [Test]
        public void SetTicket()
        {
            service.NewTicket(ticket1);
            service.NewTicket(ticket2);
            service.NewTicket(ticket3);
            service.NewTicket(ticket4);
            Assert.AreEqual(4, service.GetTickets().Count);
        }
        [Test]
        public void SetTicketToSolved()
        {
            service.SetTicketToSolved((service.GetTickets().Find(a => a.E_mail.Equals("runge47@hotmail.com")).ID), "1");
            service.SetTicketToSolved((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID), "1");
            Assert.AreEqual(true, service.GetTicket((service.GetTickets().Find(a => a.E_mail.Equals("runge47@hotmail.com")).ID)).Solved);
            Assert.AreEqual(true, service.GetTicket((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID)).Solved);
            
        }
        [Test]
        public void SetTicketToUnSolved()
        {
            Assert.AreEqual(true, service.GetTicket((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID)).Solved);
            service.SetTicketToUnsolved((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID), "1");
            Assert.AreEqual(false, service.GetTicket((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID)).Solved);
            Assert.IsNull(service.GetTicket((service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID)).SolvedBy);
          
        }






        [Test]
        public void GetUnsolvedTickets()
        {
            Assert.AreEqual(3, service.GetUnsolvedTickets().Count());
            Assert.AreEqual(ticket4.Name, service.GetUnsolvedTickets().Find(a => a.E_mail.Equals("daniel@noob.com")).Name);
            
            
        }


        [Test]
        public void GetSolvedTickets()
        {
            Assert.AreEqual(1, service.GetSolvedTickets().Count());
            Assert.AreEqual(ticket3.Name, service.GetSolvedTickets().First().Name);
        }

        [Test]
        public void GetTicket()
        {
            Assert.AreEqual(service.GetTicket(service.GetTickets().Find(a => a.E_mail.Equals("daniel@noob.com")).ID).Name, ticket4.Name);

        }

        [Test]
        public void UpdateHouse()
        {
            string oldId = house1.ID;
            string oldName = house1.Name;

            house1.Name = "changed name";
            service.UpdateHouse(house1);

            Assert.AreEqual(oldId, house1.ID);
            Assert.AreNotEqual(oldName, house1.Name);


        }

        [Test]
        public void SetHouse()
        {
            Assert.AreEqual(service.GetHouses().Count, 20);
            service.UpdateHouse(house2);

            Assert.AreEqual(service.GetHouses().Count, 21);
            service.RemoveHouse(service.GetHouses().Find(a => a.Name.Equals("SM-L24")).Id);

        }
        
        [Test]
        public void CheckLogin( )
        {
            Assert.AreEqual(0, service.CheckLogin("admin@liltarp", "foobar").Length);
            Assert.AreEqual(36, service.CheckLogin("admin@liltarp.dk", "foobar").Length);
        }

        [Test]
        public void GetUsers()
        {
            Assert.AreEqual(service.GetUsers().Count,1);
            Assert.AreEqual(service.GetUsers().First().Email, "admin@liltarp.dk");

        }

        [Test]
        public void GetHouseById()
        {
            Assert.AreEqual(service.GetHouseById("20").Id, house1.ID);
        }

        [Test]
        public void GetHouses()
        {
            Assert.AreEqual(service.GetHouses().Count,20);
            Assert.AreEqual(service.GetHouses().First().Name, "SM-T2");
        }

        [Test]
        public void GetHouseTypes()
        {
            Assert.AreEqual(service.GetHouseTypes().Count,3);
            Assert.AreEqual(service.GetHouseTypes().First().Name,"SM-T");
        }


        [Test]
        public void RemoveTicket()
        {
            service.RemoveTicket(service.GetTickets().Find(a => a.E_mail.Equals("runge@hotmail.com")).ID);
            service.RemoveTicket(service.GetTickets().Find(a => a.E_mail.Equals("runge_3@hotmail.com")).ID);
            service.RemoveTicket(service.GetTickets().Find(a => a.E_mail.Equals("daniel@noob.com")).ID);
            service.RemoveTicket(service.GetTickets().Find(a => a.E_mail.Equals("runge47@hotmail.com")).ID);
        }
    }
}
