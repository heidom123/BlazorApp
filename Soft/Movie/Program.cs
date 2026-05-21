using Abc.Infra;
using Abc.Soft.Web;
using Abc.Soft.Web.Components;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using MudBlazor.Services;
using System.IO;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);
var dbFile = Path.Combine(builder.Environment.ContentRootPath, "Data", "app.db");
builder.Services.AddDbContextFactory<ApplicationDbContext>(options =>
    options.UseSqlite($"Data Source={dbFile}"));
builder.Services.AddQuickGridEntityFrameworkAdapter();
builder.Services.AddDatabaseDeveloperPageExceptionFilter();
builder.Services.AddQuickGridEntityFrameworkAdapter();
builder.Services.ConfigureHttpJsonOptions(o =>
    o.SerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);

builder.Services.AddMudServices();
// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services.AddScoped<IMoviesRepo, MoviesRepo>();
builder.Services.AddScoped<ICountriesRepo, CountriesRepo>();
builder.Services.AddScoped<ICurrenciesRepo, CurrenciesRepo>();
builder.Services.AddScoped<IMoneysRepo, MoneysRepo>();
builder.Services.AddScoped<ICountryCurrenciesRepo, CountryCurrenciesRepo>();
var app = builder.Build();

using var scope = app.Services.CreateScope();
var services = scope.ServiceProvider;
var db = services.GetRequiredService<ApplicationDbContext>();
await new SeedDb(db, 200).Seed();


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
    app.UseMigrationsEndPoint();
}
app.UseStatusCodePagesWithReExecute("/not-found", createScopeForStatusCodePages: true);
app.UseHttpsRedirection();

app.UseAntiforgery();

app.MapStaticAssets();
app.MapRazorComponents<App>()
    .AddAdditionalAssemblies(typeof(Abc.Shared.Pages.Home).Assembly);

app.MapCountriesApi();
app.MapMoviesApi();
app.MapCurrenciesApi();
app.MapMoneyApi();
app.MapCountryCurrenciesApi();

app.Run();
