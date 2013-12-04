using System.Runtime.Serialization;

namespace BLL
{
    [DataContract]
    public class HouseSerializable
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public int TypeId { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string Image { get; set; }
    }
}
