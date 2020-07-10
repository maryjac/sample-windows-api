# Use the standard Microsoft .NET Core container
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2

# Copy our published code from the “/app” folder to the “/app” folder in our container
WORKDIR /app
COPY /app /app

# Expose port 5000 for the Web API traffic
EXPOSE 5000

# Restore the necessary packages
# Build and run the dotnet application from within the container
ENTRYPOINT ["dotnet", "TodoApi.dll"]
