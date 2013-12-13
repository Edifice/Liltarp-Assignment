using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    [DataContract]
    public partial class Ticket
    {
        [DataMember]
        public string IdSerializable { get { return ID; } set { ID = value; } }
        [DataMember]
        public string NameSerializable { get { return Name;  } set { Name = value; }}
        [DataMember]
        public string EmailSerializable { get { return E_mail; } set { E_mail = value; } }
        [DataMember]
        public string PhoneSerializable { get { return Phone; } set { Phone = value; } }
        [DataMember]
        public string HouseIdSerializable { get { return HouseID; } set { HouseID = value; } }
        [DataMember]
        public string SolvedBySerializable { get { return SolvedBy; } set { SolvedBy = value; } }
        [DataMember]
        public bool? SolvedSerializable { get { return Solved; } set { Solved = value; } }
        [DataMember]
        public string UserTextSerializable { get { return UserText; } set { UserText = value; } }

    }
}
