# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:5.0-focal as build-env
WORKDIR /app

# Copy clearcsproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore


# Copy everything else and build
COPY ./ ./

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim
WORKDIR /app
COPY --from=build-env /app/out .
#EXPOSE 5000/tcp
#ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT ["dotnet", "sharedfile-iogt.dll"]
#CMD ["ls"]


