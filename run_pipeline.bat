@echo off
REM Runs the full healthcare ETL job.
REM Set PDI_HOME to your Pentaho data-integration folder, e.g. C:\pentaho\data-integration
if "%PDI_HOME%"=="" (
  echo PDI_HOME is not set. Example: set PDI_HOME=C:\pentaho\data-integration
  exit /b 1
)
if not exist "%~dp0logs" mkdir "%~dp0logs"
call "%PDI_HOME%\Kitchen.bat" /file:"%~dp0healthcareJob.kjb" /level:Basic /logfile:"%~dp0logs\healthcareJob.log"
exit /b %ERRORLEVEL%
