# Utiliser l'image officielle Windows Server Core avec IIS pour ASP.NET 4.x
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Définir le dossier de travail
WORKDIR /inetpub/wwwroot

# Copier le projet publié depuis le runner
COPY PartsUnlimited-aspnet45/src/PartsUnlimitedWebsite/bin/Release/net48/publish/ .

# Exposer le port IIS
EXPOSE 80
