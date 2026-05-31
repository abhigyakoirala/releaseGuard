var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();

app.MapGet("/health", () => Results.Ok(new
{
    status = "healthy",
    service = "releaseGuardDotNetApi",
    timestamp = DateTimeOffset.UtcNow
}
            ))
.WithName("HealthCheck")
.WithOpenApi();

app.MapGet("/version", (IConfiguration config) => Results.Ok(new
{
    service = config["Application:Name"] ?? "releaseGuardDotNetApi",

    version = config["Application:Version"] ?? "1.0.0",

    environment = config["Environment"] ?? "dev",

    buildTime = DateTimeOffset.UtcNow
}))
.WithName("version")
.WithOpenApi();

app.Run();

