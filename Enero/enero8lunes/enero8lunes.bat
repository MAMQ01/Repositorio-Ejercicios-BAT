@echo off
rem MANUEL ANDRES MUNOZ
rem 8 Enero 2024
echo -------------------------------
echo MANUEL MUNOZ
echo -------------------------------

set nombre=Manolito
echo %nombre%
set /a numero=1 + 2 + 3
echo %numero%
set compuesto= %nombre% tiene %numero% euros
echo %compuesto%
rem set /p ncoches=Escribe cuantas coches tienes:
rem echo Tienes en total %ncoches% coches

rem el m cierra el escape en ANSI cambiando colores y el esc[0m reinicia lo anterior
echo Este texto en rojo: [31mRed[0m
echo Texto en RGB: [38;2;0;255;0m Mi mensaje en verde [0m
echo Texto en RGB: [48;2;0;120;0m Mi mensaje con fondo verde [0m
echo Texto en RGB: [48;2;0;255;0m[38;2;0;255;0m Ambos verde [0m
set COLORAMARILLO= [38;2;255;255;0m 
set COLORROJO= [38;2;255;0;0m
set COLORVIOLETA= [38;2;255;0;255m
set COLORNORMAL= [0m
set PARPADEANTE= [5m
set COLORINVERSO= [7m

echo Aqui una palabra %COLORVIOLETA%en color violeta%COLORNORMAL% y luego en normal.
echo Aqui una palabra %PARPADEANTE%parpadeante%COLORNORMAL% y luego en normal.
echo Aqui una palabra %COLORINVERSO%en color inverso%COLORNORMAL% y luego en normal.
echo -------------------------------
echo %COLORVIOLETA%MANUEL MUNOZ - SEGUNDA HORA - 8 Enero 2024%COLORNORMAL%
echo -------------------------------
echo BUCLE WHILE
echo -------------------------------

set /a i=1
:iniciobucle
if not %i% LEQ 10 goto :finbucle
echo Valor de i ahora mismo es: %i%
set /a i=%i%+1
goto :iniciobucle
:finbucle

echo -------------------------------
echo BUCLE IF
echo -------------------------------
echo ENABLE DELAYED EXPANSION

set mivariable=44
echo ANTES DEL IF %mivariable%
if %mivariable%==44 (
    set mivariable=55
    echo - DENTRO DEL IF: %mivariable%
)
echo DESPUES DEL IF: %mivariable%
echo -------------------------------
echo BUCLE IF SEGURO
echo -------------------------------
echo Version segura: con ENABLE DELAYED EXPANSION
setlocal enableDelayedExpansion
set minumero=22
echo ANTES DEL IF: !minumero!
if !minumero!==22 (
    set minumero=2000
    echo DENTRO DEL IF: !minumero!
)
echo DESPUES DEL IF: !minumero!