FROM microsoft/aspnetcore:2.0-stretch AS base
WORKDIR /app

FROM microsoft/aspnetcore-build:2.0-stretch AS build
WORKDIR /src
COPY ["SanRafael/SanRafael.csproj", "SanRafael/"]
RUN dotnet restore "SanRafael/SanRafael.csproj"
COPY . .
WORKDIR "/src/SanRafael"
RUN dotnet build "SanRafael.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "SanRafael.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "SanRafael.dll"] 