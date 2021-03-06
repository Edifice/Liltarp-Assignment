﻿using System.Collections.Generic;
using System.ServiceModel;
using DAL;

namespace BLL
{
    [ServiceContract]
    public interface IBusinessService
    {
        [OperationContract]
        List<HouseTypeSerializable> GetHouseTypes();

        [OperationContract]
        List<HouseSerializable> GetHouses();

        [OperationContract]
        HouseSerializable GetHouseById(string id);

        [OperationContract]
        Ticket GetTicket(string idSerializable);
        
        [OperationContract]
        List<Ticket> GetSolvedTickets();
       
        [OperationContract]
        List<Ticket> GetUnsolvedTickets();
        
        [OperationContract]
        List<UserSerializable> GetUsers();

        [OperationContract]
        string CheckLogin(string email, string password);

        [OperationContract]
        void NewTicket(Ticket ticket);

        [OperationContract]
        void SetTicketToSolved(string ticketId, string solver);

        [OperationContract]
        void SetTicketToUnsolved(string ticketId, string solver);

        [OperationContract]
        void UpdateHouse(House house);

        [OperationContract]
        void RemoveHouse(string houseId);

        [OperationContract]
        List<Ticket> GetTickets();
    }
}
