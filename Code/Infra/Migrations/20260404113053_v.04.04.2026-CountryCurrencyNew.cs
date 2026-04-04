using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Abc.Infra.Migrations
{
    /// <inheritdoc />
    public partial class v04042026CountryCurrencyNew : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CountryCurrency_Countries_CountryId",
                table: "CountryCurrency");

            migrationBuilder.DropForeignKey(
                name: "FK_CountryCurrency_Currencies_CurrencyId",
                table: "CountryCurrency");

            migrationBuilder.DropForeignKey(
                name: "FK_Money_Currencies_CurrencyId",
                table: "Money");

            migrationBuilder.DropForeignKey(
                name: "FK_Movies_Money_MoneyId",
                table: "Movies");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Money",
                table: "Money");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CountryCurrency",
                table: "CountryCurrency");

            migrationBuilder.RenameTable(
                name: "Money",
                newName: "Moneys");

            migrationBuilder.RenameTable(
                name: "CountryCurrency",
                newName: "CountryCurrencies");

            migrationBuilder.RenameIndex(
                name: "IX_Money_CurrencyId",
                table: "Moneys",
                newName: "IX_Moneys_CurrencyId");

            migrationBuilder.RenameIndex(
                name: "IX_CountryCurrency_CurrencyId",
                table: "CountryCurrencies",
                newName: "IX_CountryCurrencies_CurrencyId");

            migrationBuilder.RenameIndex(
                name: "IX_CountryCurrency_CountryId",
                table: "CountryCurrencies",
                newName: "IX_CountryCurrencies_CountryId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Moneys",
                table: "Moneys",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CountryCurrencies",
                table: "CountryCurrencies",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_CountryCurrencies_Countries_CountryId",
                table: "CountryCurrencies",
                column: "CountryId",
                principalTable: "Countries",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CountryCurrencies_Currencies_CurrencyId",
                table: "CountryCurrencies",
                column: "CurrencyId",
                principalTable: "Currencies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Moneys_Currencies_CurrencyId",
                table: "Moneys",
                column: "CurrencyId",
                principalTable: "Currencies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Movies_Moneys_MoneyId",
                table: "Movies",
                column: "MoneyId",
                principalTable: "Moneys",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CountryCurrencies_Countries_CountryId",
                table: "CountryCurrencies");

            migrationBuilder.DropForeignKey(
                name: "FK_CountryCurrencies_Currencies_CurrencyId",
                table: "CountryCurrencies");

            migrationBuilder.DropForeignKey(
                name: "FK_Moneys_Currencies_CurrencyId",
                table: "Moneys");

            migrationBuilder.DropForeignKey(
                name: "FK_Movies_Moneys_MoneyId",
                table: "Movies");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Moneys",
                table: "Moneys");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CountryCurrencies",
                table: "CountryCurrencies");

            migrationBuilder.RenameTable(
                name: "Moneys",
                newName: "Money");

            migrationBuilder.RenameTable(
                name: "CountryCurrencies",
                newName: "CountryCurrency");

            migrationBuilder.RenameIndex(
                name: "IX_Moneys_CurrencyId",
                table: "Money",
                newName: "IX_Money_CurrencyId");

            migrationBuilder.RenameIndex(
                name: "IX_CountryCurrencies_CurrencyId",
                table: "CountryCurrency",
                newName: "IX_CountryCurrency_CurrencyId");

            migrationBuilder.RenameIndex(
                name: "IX_CountryCurrencies_CountryId",
                table: "CountryCurrency",
                newName: "IX_CountryCurrency_CountryId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Money",
                table: "Money",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CountryCurrency",
                table: "CountryCurrency",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_CountryCurrency_Countries_CountryId",
                table: "CountryCurrency",
                column: "CountryId",
                principalTable: "Countries",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CountryCurrency_Currencies_CurrencyId",
                table: "CountryCurrency",
                column: "CurrencyId",
                principalTable: "Currencies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Money_Currencies_CurrencyId",
                table: "Money",
                column: "CurrencyId",
                principalTable: "Currencies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Movies_Money_MoneyId",
                table: "Movies",
                column: "MoneyId",
                principalTable: "Money",
                principalColumn: "Id");
        }
    }
}
