@echo off
echo Starting Frontend Basics Development Environment...

echo.
echo 1. Starting PostgreSQL database...
docker-compose up -d postgres

echo.
echo 2. Waiting for database to be ready...
timeout /t 5 /nobreak > nul

echo.
echo 3. Database is running on localhost:5432
echo    - Database: frontend_basics
echo    - User: postgres
echo    - Password: password123

echo.
echo 4. Optional: pgAdmin is available on localhost:8080
echo    - Email: admin@example.com
echo    - Password: admin123

echo.
echo 5. Now you can start your API and Frontend servers
echo    - API: npm run dev (in your API folder)
echo    - Frontend: npm run dev (in your frontend folder)

echo.
echo Press any key to stop the database...
pause > nul

echo.
echo Stopping database...
docker-compose down

