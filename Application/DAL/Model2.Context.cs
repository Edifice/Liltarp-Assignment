﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class liltarpEntities1 : DbContext
    {
        public liltarpEntities1()
            : base("name=liltarpEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<House> House { get; set; }
        public virtual DbSet<HouseType> HouseType { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<Ticket> Ticket { get; set; }
    }
}