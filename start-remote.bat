@echo off
echo Starting Frontend Basics with Remote Database...

echo.
echo 1. Checking environment configuration...
if not exist .env (
    echo    Creating .env from template...
    copy env.example .env
    echo    Please edit .env file with your remote database credentials
    pause
)

echo.
echo 2. Starting pgAdmin for database management...
docker-compose -f docker-compose.remote.yml up -d pgadmin

echo.
echo 3. Remote Database Configuration:
echo    - Make sure your .env file contains correct database credentials
echo    - DB_HOST should point to your remote PostgreSQL server
echo    - Test connection with your API/application

echo.
echo 4. pgAdmin is available on localhost:8080
echo    - Email: admin@example.com
echo    - Password: admin123
echo    - Add your remote server in pgAdmin

echo.
echo 5. Now you can start your API and Frontend servers
echo    - API: npm run dev (in your API folder)
echo    - Frontend: npm run dev (in your frontend folder)

echo.
echo Press any key to stop services...
pause > nul

echo.
echo Stopping services...
docker-compose -f docker-compose.remote.yml down
