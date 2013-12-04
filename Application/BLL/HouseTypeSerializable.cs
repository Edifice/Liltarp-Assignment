using System.Runtime.Serialization;

namespace BLL
{
    [DataContract]
    public class HouseTypeSerializable
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Name { get; set; }
    }
}
