# Use the latest Windows Server image with IIS
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Set up folder
WORKDIR /inetpub/wwwroot

# Copy website files
COPY PartsUnlimited-aspnet45/src/PartsUnlimitedWebsite/ .

# Expose port
EXPOSE 80
