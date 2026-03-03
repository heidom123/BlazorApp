using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BlazorWebAppMovies.Models;

namespace Abc.Soft.Web.Data
{
    public class AbcSoftWebContext : DbContext
    {
        public AbcSoftWebContext (DbContextOptions<AbcSoftWebContext> options)
            : base(options)
        {
        }

        public DbSet<BlazorWebAppMovies.Models.Movie> Movie { get; set; } = default!;
    }
}
