using Mcrio.Configuration.Provider.Docker.Secrets;
using vlo_main;

CreateHostBuilder(args).Build().Run();

IHostBuilder CreateHostBuilder(string[] args) {
    return Host.CreateDefaultBuilder(args)
        .ConfigureWebHostDefaults(webBuilder =>
        {
            webBuilder.UseStartup<Startup>();
            webBuilder.ConfigureAppConfiguration(c =>
            {
                c.AddDockerSecrets();
                c.AddJsonFile("appsettings.Secret.json");
            });
            webBuilder.UseSentry();
        });
};