using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SanRafael.Data;
using SanRafael.Models;
using SanRafael.Services;
using Microsoft.Extensions.Logging;
using System.Globalization;
using System;

namespace SanRafael
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("DockerConnection")));

            services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();
               
            // Add application services.
            services.AddTransient<IEmailSender, EmailSender>();
           
            services.Configure<IISServerOptions>(options =>
            {
                options.AutomaticAuthentication = false;
            });

            services.AddMvc()
                .AddJsonOptions(
                    options => options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
                );

            services.AddMvc();

            CultureInfo.CurrentCulture = new CultureInfo("es-MX");
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ApplicationDbContext context, ILoggerFactory loggerFactory)
        {
            string directorio = Environment.GetEnvironmentVariable("DIRECTORIO");
            app.UsePathBase(directorio);

            if (env.IsDevelopment())
            {
                app.UseBrowserLink();
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            loggerFactory.AddFile("Logs/mylog-{Date}.txt");

            app.UseStaticFiles();

            app.UseAuthentication();

            

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
            DbInitializer.Initialize(context);
        }
    }
}
