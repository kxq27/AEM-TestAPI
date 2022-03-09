using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace WebApplication1.Models
{
    public class AccountContext : DbContext
    {
        public AccountContext(DbContextOptions<AccountContext> options)
            : base(options)
        {
        }

        public DbSet<Account> AccountItems { get; set; } = null!;
    }
}
