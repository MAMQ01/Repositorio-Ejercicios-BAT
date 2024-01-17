@echo off
echo ----------------------------------
echo Manuel MUNOZ
echo 10.1.2024 miercoles - ENTREGA 5
echo ----------------------------------
rem -------- Comando para ver todas las rutas con .exe ---------
rem powershell -Command ($env:Path).split(';')
set PATH=%PATH%;"C:\Program Files\LibreOffice\program\"
set COLORAMARILLO=[38;2;255;255;0m
set COLORROJO=[38;2;255;0;0m
set COLORVIOLETA=[38;2;255;0;255m
set COLORNORMAL=[0m
set PARPADEANTE=[5m 
set COLORINVERSO=[7m
:iniciomenu1
cls
echo ----- ELEGIR OPCION DE UN MENU
echo Elige una de estas opciones:
echo 1) Arrancar Paint
echo 2) Arrancar la calculadora
echo 3) Opcion 3
echo 4) Arrancar LibreOffice Writer
echo.
echo %COLORROJO%9) SALIR%COLORNORMAL%
echo SALIR) Otra manera de SALIR
echo APAGAR ESTO) Otra manera de salir
echo.
setlocal enableDelayedExpansion

:preguntamenu1
set /p opcion=Elige tu opcion: 
rem echo Opcion elegida: %opcion% 
if !opcion! EQU 1 (
	echo OPCION PRIMERA
	start mspaint
) else if !opcion! EQU 2 (
	echo SEGUNDA OPCION
	type nombre.txt
	echo.
) else if !opcion! EQU 3 (
	echo TERCERA OPCION
	goto :iniciomenu3
) else if !opcion! EQU 4 (
	echo CUARTA OPCION
	start swriter.exe
	goto :iniciomenu3
) else if !opcion! EQU 9 (
	echo OPCION DE SALIR
	goto :finmenu1
) else if /i !opcion!==SALIR (
	echo OPCION DE SALIR CON LA PALABRA SALIR
	goto :finmenu1
) else if /i "!opcion!"=="APAGAR ESTO" (
	echo OPCION DE SALIR CON APAGAR ESTO
	goto :finmenu1
) else (
	rem OPCION NO VALIDA
	echo.
)
goto :preguntamenu1
echo -----------------
echo Enero 11 de 2024 
echo ----------------- MANUEL ANDRES MUNOZ
rem MENU 3 "redes"
:iniciomenu3
cls
echo Elige opcion del submenu 3 (redes):
echo 1) Hacer ping
echo 2) Otra opcion
echo .
echo V) VOLVER - MANUEL MUNOZ
:preguntamenu3
echo.
set /p opcion=Elige una de las opciones de redes:
if !opcion! EQU 1 (
	ping www.google.com
) else if !opcion! EQU 2 (
	echo OPCION SEGUNDA DE REDES
) else if /i !opcion!==V (
	echo Volviendo...
	goto :iniciomenu1
)
goto :preguntamenu3

rem de facto, salida total del script
:finmenu1

echo -----------------
echo Enero 12 de 2024 
echo ----------------- MANUEL ANDRES MUNOZ