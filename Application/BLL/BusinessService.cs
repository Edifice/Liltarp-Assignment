using System.Collections.Generic;
using System.Linq;
using DAL;

namespace BLL
{
    public class BusinessService : IBusinessService
    {
        private readonly Repository _rep;

        public BusinessService()
        {
            _rep = new Repository();
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
            return _rep.GetHouseTypes().Select(TranslateHouseTypes).ToList();
        }

        public List<HouseSerializable> GetHouses()
        {
            return _rep.GetHouses().Select(TranslateHouses).ToList();
        }

        public HouseSerializable GetHouseById(string id)
        {
            return TranslateHouses(_rep.GetHouses().First(a => a.ID.Equals(id)));
        }

        public List<UserSerializable> GetUsers()
        {
            return _rep.GetUsers().Select(TranslateUsers).ToList();
        }

        public string CheckLogin(string email, string password)
        {
            var usr = GetUsers().Where(
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
            _rep.UpdateTicket(tick);
        }

        public void SetTicketToSolved(string ticketId, string solver)
        {
            Ticket item = GetTicket(ticketId);
            item.Solved = true;
            item.SolvedBy = solver;
            _rep.UpdateTicket(item);
        }

        public void SetTicketToUnsolved(string ticketId, string solver)
        {
            Ticket item = GetTicket(ticketId);
            item.Solved = false;
            item.SolvedBy = null;
            _rep.UpdateTicket(item);
        }

        public void UpdateHouse(House house)
        {
            _rep.UpdateHouse(house);
        }


        public Ticket GetTicket(string idSerializable)
        {
            return _rep.GetTickets().First(a => a.ID.Equals(idSerializable));
        }


        public List<Ticket> GetSolvedTickets()
        {
            return _rep.GetTickets().Where(a => a.Solved == true).Select(TranslateTickets).ToList();
        }


        public List<Ticket> GetUnsolvedTickets()
        {
            return _rep.GetTickets().Where(a => a.Solved != true).Select(TranslateTickets).ToList();
        }
    }
}
