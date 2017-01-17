using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using OpentoTop.Models;

namespace OpentoTop.Data {
	public class ApplicationDbContext : IdentityDbContext<ApplicationUser> {
		

		public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
			: base(options)
		{
		}


		public void Update(object model, string[] includeAttributes)
		{
			this.Attach(model);
			foreach(var item in includeAttributes)
			{
				this.Entry(model).Property(item).IsModified = true;
			}
		}

		protected override void OnModelCreating(ModelBuilder builder)
		{

			builder.Entity<BlogTypes>()
				.HasAlternateKey(b => b.Name);
			builder.Entity<Blogs>()
				.HasIndex(b => b.Title)
				.IsUnique();
			builder.Entity<Blogs>()
				.HasIndex(b => new { b.Author,b.Type,b.ModuleId});
            base.OnModelCreating(builder);


            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }

        public DbSet<News> News { get; set; }
		public DbSet<ApplicationUser> ApplicationUser { get; set; }

		public DbSet<Blogs> Blogs { get; set; }
		public DbSet<BlogTypes> BlogTypes { get; set; }
		public DbSet<Modules> Modules { get; set; }


		public DbSet<IssueAnswers> IssueAnswers { get; set; }
		public DbSet<IssueModules> IssueModules { get; set; }
		public DbSet<Issues> Issues { get; set; }
		public DbSet<IssueTypes> IssueTypes { get; set; }



	}
}
