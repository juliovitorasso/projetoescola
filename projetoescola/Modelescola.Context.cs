﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace projetoescola
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class projetoescolaEntities : DbContext
    {
        public projetoescolaEntities()
            : base("name=projetoescolaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<usuarios> usuarios { get; set; }
        public virtual DbSet<unidades> unidades { get; set; }
        public virtual DbSet<alunos> alunos { get; set; }
        public virtual DbSet<rematricula> rematricula { get; set; }
    }
}
