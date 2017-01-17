using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using OpentoTop.Data;

namespace OpentoTop.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20161010054813_gk101002")]
    partial class gk101002
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.0.1")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole", b =>
                {
                    b.Property<string>("Id");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("NormalizedName")
                        .HasAnnotation("MaxLength", 256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .HasName("RoleNameIndex");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("OpentoTop.Models.ApplicationUser", b =>
                {
                    b.Property<string>("Id");

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<DateTime>("CreateTime");

                    b.Property<string>("Email")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<DateTime>("LastLoginTime");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NickName");

                    b.Property<string>("NormalizedEmail")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("NormalizedUserName")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasAnnotation("MaxLength", 256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("OpentoTop.Models.Blogs", b =>
                {
                    b.Property<int>("BlogId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Attribute")
                        .HasAnnotation("MaxLength", 128);

                    b.Property<string>("Author");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 10240);

                    b.Property<DateTime>("CreateTime");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 512);

                    b.Property<int>("ModuleId");

                    b.Property<string>("Status");

                    b.Property<string>("Tags")
                        .HasAnnotation("MaxLength", 128);

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 64);

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 32);

                    b.Property<DateTime>("UpdateTime");

                    b.Property<string>("UsersId");

                    b.Property<int>("ViewNum");

                    b.HasKey("BlogId");

                    b.HasIndex("Title")
                        .IsUnique();

                    b.HasIndex("UsersId");

                    b.HasIndex("Author", "Type", "ModuleId");

                    b.ToTable("Blogs");
                });

            modelBuilder.Entity("OpentoTop.Models.BlogTypes", b =>
                {
                    b.Property<int>("BlogTypeId")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("ModulesId");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 32);

                    b.HasKey("BlogTypeId");

                    b.HasAlternateKey("Name");

                    b.HasIndex("ModulesId");

                    b.ToTable("BlogTypes");
                });

            modelBuilder.Entity("OpentoTop.Models.IssueAnswers", b =>
                {
                    b.Property<int>("IssueAnswerId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Content")
                        .HasAnnotation("MaxLength", 10240);

                    b.Property<DateTime>("CreateTime");

                    b.Property<int?>("IssuesIssueId");

                    b.Property<string>("Status");

                    b.Property<string>("UserId");

                    b.HasKey("IssueAnswerId");

                    b.HasIndex("IssuesIssueId");

                    b.HasIndex("UserId");

                    b.ToTable("IssueAnswers");
                });

            modelBuilder.Entity("OpentoTop.Models.IssueModules", b =>
                {
                    b.Property<int>("IssueModuleId")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Name");

                    b.HasKey("IssueModuleId");

                    b.ToTable("IssueModules");
                });

            modelBuilder.Entity("OpentoTop.Models.Issues", b =>
                {
                    b.Property<int>("IssueId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Content")
                        .HasAnnotation("MaxLength", 2048);

                    b.Property<DateTime>("CreateTime");

                    b.Property<int?>("IssueModulesIssueModuleId");

                    b.Property<int?>("IssueTypesIssueTypeId");

                    b.Property<string>("Status");

                    b.Property<string>("Title")
                        .HasAnnotation("MaxLength", 64);

                    b.Property<string>("UserId");

                    b.Property<int>("ViewNum");

                    b.HasKey("IssueId");

                    b.HasIndex("IssueModulesIssueModuleId");

                    b.HasIndex("IssueTypesIssueTypeId");

                    b.HasIndex("UserId");

                    b.ToTable("Issues");
                });

            modelBuilder.Entity("OpentoTop.Models.IssueTypes", b =>
                {
                    b.Property<int>("IssueTypeId")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("IssueModulesIssueModuleId");

                    b.Property<string>("Name")
                        .HasAnnotation("MaxLength", 16);

                    b.HasKey("IssueTypeId");

                    b.HasIndex("IssueModulesIssueModuleId");

                    b.ToTable("IssueTypes");
                });

            modelBuilder.Entity("OpentoTop.Models.Modules", b =>
                {
                    b.Property<int>("ModulesId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name")
                        .HasAnnotation("MaxLength", 32);

                    b.Property<int>("Rank");

                    b.Property<string>("Status")
                        .HasAnnotation("MaxLength", 32);

                    b.Property<string>("Url")
                        .HasAnnotation("MaxLength", 128);

                    b.HasKey("ModulesId");

                    b.ToTable("Modules");
                });

            modelBuilder.Entity("OpentoTop.Models.News", b =>
                {
                    b.Property<int>("NewsId")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DateTime");

                    b.Property<string>("Description")
                        .HasAnnotation("MaxLength", 1024);

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasAnnotation("MaxLength", 128);

                    b.Property<string>("Type")
                        .HasAnnotation("MaxLength", 32);

                    b.Property<string>("Url")
                        .HasAnnotation("MaxLength", 256);

                    b.HasKey("NewsId");

                    b.ToTable("News");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole")
                        .WithMany("Claims")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("OpentoTop.Models.ApplicationUser")
                        .WithMany("Claims")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("OpentoTop.Models.ApplicationUser")
                        .WithMany("Logins")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole")
                        .WithMany("Users")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OpentoTop.Models.ApplicationUser")
                        .WithMany("Roles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OpentoTop.Models.Blogs", b =>
                {
                    b.HasOne("OpentoTop.Models.ApplicationUser", "Users")
                        .WithMany("Blogs")
                        .HasForeignKey("UsersId");
                });

            modelBuilder.Entity("OpentoTop.Models.BlogTypes", b =>
                {
                    b.HasOne("OpentoTop.Models.Modules", "Modules")
                        .WithMany("BlogTypes")
                        .HasForeignKey("ModulesId");
                });

            modelBuilder.Entity("OpentoTop.Models.IssueAnswers", b =>
                {
                    b.HasOne("OpentoTop.Models.Issues", "Issues")
                        .WithMany("IssueAnswers")
                        .HasForeignKey("IssuesIssueId");

                    b.HasOne("OpentoTop.Models.ApplicationUser", "User")
                        .WithMany("IssueAnswers")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("OpentoTop.Models.Issues", b =>
                {
                    b.HasOne("OpentoTop.Models.IssueModules", "IssueModules")
                        .WithMany("Issues")
                        .HasForeignKey("IssueModulesIssueModuleId");

                    b.HasOne("OpentoTop.Models.IssueTypes", "IssueTypes")
                        .WithMany("Issues")
                        .HasForeignKey("IssueTypesIssueTypeId");

                    b.HasOne("OpentoTop.Models.ApplicationUser", "User")
                        .WithMany("Issues")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("OpentoTop.Models.IssueTypes", b =>
                {
                    b.HasOne("OpentoTop.Models.IssueModules", "IssueModules")
                        .WithMany("IssueTyeps")
                        .HasForeignKey("IssueModulesIssueModuleId");
                });
        }
    }
}
