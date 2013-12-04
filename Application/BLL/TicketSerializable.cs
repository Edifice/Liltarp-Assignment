using System.Runtime.Serialization;

namespace BLL
{
    [DataContract]
    public class TicketSerializable
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public string Phone { get; set; }
        [DataMember]
        public int HouseId { get; set; }
        [DataMember]
        public int SolvedBy { get; set; }
        [DataMember]
        public bool Solved { get; set; }
    }
}
