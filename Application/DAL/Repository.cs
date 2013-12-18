using System;
using System.Collections.Generic;
using System.Linq;

namespace DAL
{
    public class Repository
    {
        private readonly liltarpEntities _model;
        public Repository()
        {
            _model = new liltarpEntities();
        }

        public List<HouseType> GetHouseTypes()
        {
            return _model.HouseType.ToList();
        }

        public List<House> GetHouses()
        {
            return _model.House.ToList();
        }

        public List<Ticket> GetTickets()
        {
            return _model.Ticket.ToList();
        }

        public List<User> GetUsers()
        {
            return _model.User.ToList();
        }

        public void UpdateTicket(Ticket tick)
        {
            if (string.IsNullOrEmpty(tick.ID))
            {
                tick.ID = Guid.NewGuid().ToString();
                _model.Ticket.Add(tick);
                _model.SaveChanges();
            }
            else
            {
                Ticket orig = _model.Ticket.Find(tick.ID);
                if (orig != null)
                {
                    orig.Solved = tick.Solved;
                    orig.SolvedBy = tick.SolvedBy;
                    _model.SaveChanges();
                }
            }
        }

        public void UpdateHouse(House house)
        {
            if (string.IsNullOrEmpty(house.ID))
            {
                house.ID = Guid.NewGuid().ToString();
                _model.House.Add(house);
                _model.SaveChanges();
            }
            else
            {
                House original = _model.House.Find(house.ID);
                if (original != null)
                {
                    original.Name = house.Name;
                    original.TypeID = house.TypeID;
                    original.Description = house.Description;
                    original.Image = house.Image;
                    _model.SaveChanges();
                }

            }
        }


        public void RemoveHouse(string id)
        {
            _model.House.Remove(_model.House.Find(id));
            _model.SaveChanges();
        }
        public void RemoveTicket(string id)
        {
            _model.Ticket.Remove(_model.Ticket.Find(id));
            _model.SaveChanges();
        }
    }
}
