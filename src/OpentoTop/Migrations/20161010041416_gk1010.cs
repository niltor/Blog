using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace OpentoTop.Migrations
{
    public partial class gk1010 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Issues_AspNetUsers_userId",
                table: "Issues");

            migrationBuilder.AddForeignKey(
                name: "FK_Issues_AspNetUsers_UserId",
                table: "Issues",
                column: "userId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.RenameColumn(
                name: "userId",
                table: "Issues",
                newName: "UserId");

            migrationBuilder.RenameIndex(
                name: "IX_Issues_userId",
                table: "Issues",
                newName: "IX_Issues_UserId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Issues_AspNetUsers_UserId",
                table: "Issues");

            migrationBuilder.AddForeignKey(
                name: "FK_Issues_AspNetUsers_userId",
                table: "Issues",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.RenameColumn(
                name: "UserId",
                table: "Issues",
                newName: "userId");

            migrationBuilder.RenameIndex(
                name: "IX_Issues_UserId",
                table: "Issues",
                newName: "IX_Issues_userId");
        }
    }
}
