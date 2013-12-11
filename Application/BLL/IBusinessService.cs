using System.Collections.Generic;
using System.ServiceModel;
using DAL;

namespace BLL
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBusinessService" in both code and config file together.
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
        List<Ticket> GetTickets();

        [OperationContract]
        List<UserSerializable> GetUsers();

        [OperationContract]
        string CheckLogin(string email, string password);

        [OperationContract]
        void NewTicket(Ticket ticket);

        [OperationContract]
        void UpdateHouse(House house);
    }
}
