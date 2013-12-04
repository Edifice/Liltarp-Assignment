using System.Runtime.Serialization;

namespace BLL
{
    [DataContract]
    public class UserSerializable
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public string Password { get; set; }
    }
}
