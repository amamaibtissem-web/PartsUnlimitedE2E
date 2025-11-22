# Utiliser une image .NET 6 ASP.NET Core runtime
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Créer le dossier pour l'application
WORKDIR /app

# Copier le projet publié (buildé avant)
COPY PartsUnlimited-aspnet45/src/PartsUnlimitedWebsite/bin/Release/net48/publish/ . 

# Exposer le port
EXPOSE 80

# Lancer l'application
ENTRYPOINT ["dotnet", "PartsUnlimitedWebsite.dll"]
