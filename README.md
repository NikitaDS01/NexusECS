# EcsServer
Entity component system (ECS) the server 


# Запустить проект (из папки с .csproj или .sln)
dotnet run --project src/Api/Api.csproj

# Запустить с указанием профиля (appsettings.Development.json)
dotnet run --project src/Api/Api.csproj --environment Development

# Скомпилировать без запуска
dotnet build src/Api/Api.csproj

# Скомпилировать в режиме Release
dotnet build -c Release

# Опубликовать для развёртывания
dotnet publish src/Api/Api.csproj -c Release -o ./publish

# Запустить тесты
dotnet test tests/Api.Tests/Api.Tests.csproj

# Запустить тесты с детализацией
dotnet test --logger "console;verbosity=detailed" --collect:"XPlat Code Coverage"
