using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Abc.Soft.Web.Migrations
{
    /// <inheritdoc />
    public partial class v170326MoviesPrice : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // Drop the table if it exists (safe for all environments)
            migrationBuilder.Sql(@"
                IF OBJECT_ID(N'[dbo].[Movies]', N'U') IS NOT NULL
                BEGIN
                    DROP TABLE [dbo].[Movies];
                END
            ");

            // Recreate with Guid PK, decimal Price, and correct rowversion
            migrationBuilder.CreateTable(
                name: "Movies",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false, defaultValueSql: "NEWSEQUENTIALID()"),

                    // New columns
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Code = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Details = table.Column<string>(type: "nvarchar(max)", nullable: true),

                    // Previously altered to be nullable strings
                    Genre = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Rating = table.Column<string>(type: "nvarchar(max)", nullable: true),

                    // NEW: Price with decimal(18,2), non-nullable, default 0.00
                    // Matches: [Column(TypeName = "decimal(18, 2)")] and non-nullable decimal property
                    Price = table.Column<decimal>(type: "decimal(18, 2)", nullable: false, defaultValue: 0m),

                    // rowversion must be NOT NULL in SQL Server
                    Timestamp = table.Column<byte[]>(type: "rowversion", rowVersion: true, nullable: false),

                    // Validity window (adjust as needed)
                    ValidFrom = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValueSql: "SYSUTCDATETIME()"),
                    ValidTo = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValue: new DateTime(9999, 12, 31, 23, 59, 59, 997))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Movies", x => x.Id);
                }
            );
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            // Drop the Guid-based table
            migrationBuilder.DropTable(name: "Movies");

            // Recreate the old int identity-based schema (without Price, and with Title/ReleaseDate)
            migrationBuilder.CreateTable(
                name: "Movies",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: false),
                    ReleaseDate = table.Column<DateOnly>(type: "date", nullable: false),
                    Genre = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Rating = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Movies", x => x.Id);
                }
            );
        }
    }
}