echo off
rem Clase 15.12.2023
rem Andres MUNOZ
Rem Deshabilita echos por defecto

cls
echo viernes 15 diciembre ANDRES MUNOZ 
echo -------- Munoz: BLUCLE SIMPLE CON FOR
echo %0
echo %1
echo %2
echo %*

for %%x in (%*) do (
    echo Argumento: %%x
)

echo ------- CONDICIONES CON IF
echo parametro1: %1
echo parametro2: %2

if %1 EQU %2 (
    echo Los parametros son iguales
) else if %1 GTR %2 (
    echo %1 es mayor que %2 :
) else if %1 LSS %2 (
    echo %1 es menor que %2 :
) else (
    echo %1 es igual que %2 :
)

pause
