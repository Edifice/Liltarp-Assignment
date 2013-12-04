using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Repository
    {
        private liltarpEntities model;
        public Repository()
        {
            model = new liltarpEntities();
            
        }

        public List<HouseType> GetHouseTypes()
        {
            return model.HouseType.ToList();
        }

        public List<House> GetHouses()
        {
            return model.House.ToList();
        }

        public List<Ticket> GetTickets()
        {
            return model.Ticket.ToList();
        }

        public List<User> GetUsers()
        {
            return model.User.ToList();
        }
    }
}
