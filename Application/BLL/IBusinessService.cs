using System.Collections.Generic;
using System.ServiceModel;

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
        List<TicketSerializable> GetTickets();

        [OperationContract]
        List<UserSerializable> GetUsers();
    }
}
