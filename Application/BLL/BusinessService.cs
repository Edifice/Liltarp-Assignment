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
                Id = old.ID,
                Name = old.Name
            };
        }

        private HouseSerializable TranslateHouses(House old)
        {
            return new HouseSerializable
            {
                Id = old.ID,
                Name = old.Name,
                TypeId = old.TypeID,
                Description = old.Description,
                Image = old.Image
            };
        }

        private Ticket TranslateTickets(Ticket old)
        {
            return new Ticket
            {
                ID = old.ID,
                Name = old.Name,
                E_mail = old.E_mail,
                Phone = old.Phone,
                HouseID = old.HouseID,
                SolvedBy = old.SolvedBy,
                Solved = old.Solved,
                UserText = old.UserText,
            };
        }

        private UserSerializable TranslateUsers(User old)
        {
            return new UserSerializable
            {
                Id = old.ID,
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

        public HouseSerializable GetHouseById(string id)
        {
            return TranslateHouses(rep.GetHouses().First(a => a.ID.Equals(id)));
        }

        public List<UserSerializable> GetUsers()
        {
            return rep.GetUsers().Select(TranslateUsers).ToList();
        }

        public string CheckLogin(string email, string password)
        {
            var usr = this.GetUsers().Where(
                a => a.Email == email &&
                a.Password == password
                );
            var userSerializables = usr as IList<UserSerializable> ?? usr.ToList();
            if (userSerializables.Count() == 1)
            {
                return userSerializables.First().Id;
            }
            return "";
        }


        public void NewTicket(Ticket ticket)
        {
            var tick = new Ticket
            {
                IdSerializable = ticket.IdSerializable,
                NameSerializable = ticket.NameSerializable,
                EmailSerializable = ticket.EmailSerializable,
                PhoneSerializable = ticket.PhoneSerializable,
                HouseIdSerializable = ticket.HouseIdSerializable,
                SolvedBySerializable = ticket.SolvedBySerializable,
                SolvedSerializable = ticket.SolvedSerializable,
                UserTextSerializable = ticket.UserTextSerializable
            };
                    rep.SetTicket(tick);
        }

        public void UpdateHouse(House house)
        {
            rep.UpdateHouse(house);
        }


        public List<Ticket> GetTickets()
        {
            return rep.GetTickets().Select(TranslateTickets).ToList();
        }
    }
}
