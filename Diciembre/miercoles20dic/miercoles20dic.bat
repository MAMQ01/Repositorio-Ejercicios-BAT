@echo off
rem Manuel Munyoz
rem 20.12.2023 miercoles
rem SUBRUTINAs / FUNCIONES en Cmd

cls
call :escribenombre
call :escribenombre
call :escribenombre

call :funcion2 Lalo
call :funcion2 Carlos

echo ---------------
echo Ahora secuencias ANSI para cambiar Colores
echo Texto normal [1mTexto resaltado[0m
echo [35mTexto en otra cosa[0m
echo [41mFondo en ROJO[0m
echo [44mFondo en AZUL[0m
echo [41;33mFondo y texto cambiados[0m


pause 
exit /b %ERRORLEVEL%

:funcion2
echo ...........
echo Hola %~1
echo Adios %~2
exit /b

:escribenombre
echo ----- DENTRO DE LA FNCION escribenombre
echo Manuel Andres Munyoz
exit /b


