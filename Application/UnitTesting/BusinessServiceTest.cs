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
        }


        [Test]
        public void GetUnsolvedTickets()
        {
            Assert.AreEqual(service.GetUnsolvedTickets(), ticket1);

        }


        [Test]
        public void GetSolvedTickets()
        {
            Assert.AreEqual(service.GetSolvedTickets(), ticket2);
        }

        [Test]
        public void GetTicket()
        {


        }

        [Test]
        public void UpdateHouse()
        {

        }

        [Test]
        public void CheckLogin()
        {


        }










    }
}
