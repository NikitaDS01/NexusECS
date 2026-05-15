dotnet new sln -n ArtificialRealmEngine

# Создание всех сервисов
## Создаем папки и проекты основные 
mkdir ./src
mkdir ./src/Console
mkdir ./src/Engine

dotnet new console -n Console -o ./src/NexusECS.Console
dotnet new classlib -n ArtificialRealm -o ./src/NexusECS.Core

## Создаем папки и проекты для тестов
mkdir ./tests
mkdir ./tests/Console.Tests
mkdir ./tests/Engine.Tests
dotnet new xunit -n ArtificialRealm.Tests -o ./tests/Engine.Tests/

# Подключения к проекту
dotnet sln add ./src/Engine/ArtificialRealm.csproj
dotnet sln add ./src/Console/Console.csproj
dotnet sln add ./tests/Engine.Tests/ArtificialRealm.Tests.csproj

# Добавление ссылок друг на друга
dotnet add ./src/Console/Console.csproj reference ./src/Engine/ArtificialRealm.csproj