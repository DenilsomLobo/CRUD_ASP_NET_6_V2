using CRUD_ASP_NET_6_V2.Models;
using Microsoft.EntityFrameworkCore;

namespace CRUD_ASP_NET_6_V2.Data
{
    public class Contexto : DbContext
    {
        public Contexto(DbContextOptions<Contexto> options)
            : base(options)
        { }

        public DbSet<Contatos> Contatos { get; set; }

    }
}
