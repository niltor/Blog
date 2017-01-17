using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace OpentoTop.Migrations
{
    public partial class gtot08181 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "IssueModules",
                columns: table => new
                {
                    IssueModuleId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IssueModules", x => x.IssueModuleId);
                });

            migrationBuilder.CreateTable(
                name: "IssueTypes",
                columns: table => new
                {
                    IssueTypeId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    IssueModulesIssueModuleId = table.Column<int>(nullable: true),
                    Name = table.Column<string>(maxLength: 16, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IssueTypes", x => x.IssueTypeId);
                    table.ForeignKey(
                        name: "FK_IssueTypes_IssueModules_IssueModulesIssueModuleId",
                        column: x => x.IssueModulesIssueModuleId,
                        principalTable: "IssueModules",
                        principalColumn: "IssueModuleId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Issues",
                columns: table => new
                {
                    IssueId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(maxLength: 2048, nullable: true),
                    CreateTime = table.Column<DateTime>(nullable: false),
                    IssueModulesIssueModuleId = table.Column<int>(nullable: true),
                    IssueTypesIssueTypeId = table.Column<int>(nullable: true),
                    Status = table.Column<string>(nullable: true),
                    Title = table.Column<string>(maxLength: 64, nullable: true),
                    ViewNum = table.Column<int>(nullable: false),
                    userId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Issues", x => x.IssueId);
                    table.ForeignKey(
                        name: "FK_Issues_IssueModules_IssueModulesIssueModuleId",
                        column: x => x.IssueModulesIssueModuleId,
                        principalTable: "IssueModules",
                        principalColumn: "IssueModuleId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Issues_IssueTypes_IssueTypesIssueTypeId",
                        column: x => x.IssueTypesIssueTypeId,
                        principalTable: "IssueTypes",
                        principalColumn: "IssueTypeId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Issues_AspNetUsers_userId",
                        column: x => x.userId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "IssueAnswers",
                columns: table => new
                {
                    IssueAnswerId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(maxLength: 10240, nullable: true),
                    CreateTime = table.Column<DateTime>(nullable: false),
                    IssuesIssueId = table.Column<int>(nullable: true),
                    Status = table.Column<string>(nullable: true),
                    UserId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IssueAnswers", x => x.IssueAnswerId);
                    table.ForeignKey(
                        name: "FK_IssueAnswers_Issues_IssuesIssueId",
                        column: x => x.IssuesIssueId,
                        principalTable: "Issues",
                        principalColumn: "IssueId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_IssueAnswers_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.AddColumn<string>(
                name: "Status",
                table: "Blogs",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ViewNum",
                table: "Blogs",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_IssueAnswers_IssuesIssueId",
                table: "IssueAnswers",
                column: "IssuesIssueId");

            migrationBuilder.CreateIndex(
                name: "IX_IssueAnswers_UserId",
                table: "IssueAnswers",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_Issues_IssueModulesIssueModuleId",
                table: "Issues",
                column: "IssueModulesIssueModuleId");

            migrationBuilder.CreateIndex(
                name: "IX_Issues_IssueTypesIssueTypeId",
                table: "Issues",
                column: "IssueTypesIssueTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_Issues_userId",
                table: "Issues",
                column: "userId");

            migrationBuilder.CreateIndex(
                name: "IX_IssueTypes_IssueModulesIssueModuleId",
                table: "IssueTypes",
                column: "IssueModulesIssueModuleId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Blogs");

            migrationBuilder.DropColumn(
                name: "ViewNum",
                table: "Blogs");

            migrationBuilder.DropTable(
                name: "IssueAnswers");

            migrationBuilder.DropTable(
                name: "Issues");

            migrationBuilder.DropTable(
                name: "IssueTypes");

            migrationBuilder.DropTable(
                name: "IssueModules");
        }
    }
}
