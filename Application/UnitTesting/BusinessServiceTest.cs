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
        private House house1;
        private House house2;
        private User user1;
        private HouseType houseTypeCount;
       
        
        [SetUp]
        public void Start()
        {
            service = new BusinessService();

            ticket1 = new Ticket()
            {
                ID = "c384c26a-bbf2-4303-800a-dd25504a1c68",
                Name = "orla runge",
                E_mail = "runge_3@hotmail.com",
                Phone = "31213820",
                HouseID = "1",
                UserText = "jeg er Orla the viking"
            };
            ticket2 = new Ticket()
            {
                ID = "be07b3c9-b17f-4a23-901b-fb2e89e4dc91",
                Name = "orla runge",
                E_mail = "runge_3@hotmail.com",
                Phone = "31213820",
                HouseID = "1",
                UserText = "runge the viking"
            };

            ticket3 = new Ticket()
            {
                ID = "27ad84a9-863b-4364-9b34-ee8c256c9923",
                Name = "sdfgbr",
                E_mail = "hgds",
                Phone = "23456",
                HouseID = "3",
                UserText = "test"
            };
            ticket4 = new Ticket()
            {
                ID = "cf41150c-51d1-4ae2-8766-bcb5b4f4b491",
                Name = "Daniel",
                E_mail = "daniel@noob.com",
                Phone = "6651354",
                HouseID = "1",
                UserText = "test two Daniel ... lets see if this works wit ha loong line of text. we dont know but perhaps lets see what happens when we make one that is rly rly fucking long, only coz daniel you pussy"
            };
            house1 = new House()
            {
                ID = "20",
                TypeID = "3",
                Name = "SM-L2",
                Description = "aaaaaaa",
                Image = "sm-l/2.jpg"

            };
            house2 = new House()
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
            houseTypeCount = new HouseType();
            {
                
            }
        }


        [Test]
        public void GetUnsolvedTickets()
        {
            Assert.AreEqual(3, service.GetUnsolvedTickets().Count());
            Assert.AreEqual(ticket1.ID, service.GetUnsolvedTickets().First().ID);
            
            
        }


        [Test]
        public void GetSolvedTickets()
        {
            Assert.AreEqual(3, service.GetSolvedTickets().Count());
            Assert.AreEqual(ticket3.ID, service.GetSolvedTickets().First().ID);
        }

        [Test]
        public void GetTicket()
        {
            Assert.AreEqual(service.GetTicket("be07b3c9-b17f-4a23-901b-fb2e89e4dc91").ID, ticket2.ID);

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

            Assert.Pass(service.CheckLogin("admin@liltarp", "foobar"));   

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
        public void SetTicketToSolved()
        {
            service.SetTicketToSolved("c384c26a-bbf2-4303-800a-dd25504a1c68", "1");
            Assert.AreEqual(true, service.GetTicket("c384c26a-bbf2-4303-800a-dd25504a1c68").Solved);
            service.SetTicketToUnsolved("c384c26a-bbf2-4303-800a-dd25504a1c68", "1");
        }
        [Test]
        public void SetTicketToUnSolved()
        {
            service.SetTicketToUnsolved("be07b3c9-b17f-4a23-901b-fb2e89e4dc91","1");
            Assert.AreEqual(false, service.GetTicket("be07b3c9-b17f-4a23-901b-fb2e89e4dc91").Solved);
            Assert.IsNull(service.GetTicket("be07b3c9-b17f-4a23-901b-fb2e89e4dc91").SolvedBy);
            service.SetTicketToSolved("be07b3c9-b17f-4a23-901b-fb2e89e4dc91", "1");
        }
    }
}
