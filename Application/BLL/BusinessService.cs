using System.Collections.Generic;
using System.Linq;
using DAL;

namespace BLL
{
    public class BusinessService : IBusinessService
    {
        private Repository rep;

        public BusinessService()
        {
            rep = new Repository();
        }


        private HouseTypeSerializable TranslateHouseTypes(HouseType old)
        {
            return new HouseTypeSerializable
            {
                Id = old.Id,
                Name = old.Name
            };
        }

        private HouseSerializable TranslateHouses(House old)
        {
            return new HouseSerializable
            {
                Id = old.Id,
                Name = old.Name,
                TypeId = old.TypeID,
                Description = old.Description,
                Image = old.Image
            };
        }

        private TicketSerializable TranslateTickets(Ticket old)
        {
            return new TicketSerializable
            {
                Id = old.Id,
                Name = old.Name,
                Email = old.E_mail,
                Phone = old.Phone,
                HouseId = old.HouseID,
                SolvedBy = old.SolvedBy,
                Solved = old.Solved,
            };
        }

        private UserSerializable TranslateUsers(User old)
        {
            return new UserSerializable
            {
                Id = old.Id,
                Email = old.E_mail,
                Password = old.Password
            };
        }

        public List<HouseTypeSerializable> GetHouseTypes()
        {
            return rep.GetHouseTypes().Select(TranslateHouseTypes).ToList();
        }

        public List<HouseSerializable> GetHouses()
        {
            return rep.GetHouses().Select(TranslateHouses).ToList();
        }

        public List<TicketSerializable> GetTickets()
        {
            return rep.GetTickets().Select(TranslateTickets).ToList();
        }

        public List<UserSerializable> GetUsers()
        {
            return rep.GetUsers().Select(TranslateUsers).ToList();
        }
    }
}
