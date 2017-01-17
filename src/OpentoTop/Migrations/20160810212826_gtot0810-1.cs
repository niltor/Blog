using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace OpentoTop.Migrations
{
    public partial class gtot08101 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Blogs_Author",
                table: "Blogs");

            migrationBuilder.AddColumn<int>(
                name: "ModuleId",
                table: "Blogs",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Blogs_Author_Type_ModuleId",
                table: "Blogs",
                columns: new[] { "Author", "Type", "ModuleId" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Blogs_Author_Type_ModuleId",
                table: "Blogs");

            migrationBuilder.DropColumn(
                name: "ModuleId",
                table: "Blogs");

            migrationBuilder.CreateIndex(
                name: "IX_Blogs_Author",
                table: "Blogs",
                column: "Author");
        }
    }
}
