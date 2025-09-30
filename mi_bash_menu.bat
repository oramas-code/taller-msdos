@echo off
rem Mini Menú Interactivo
:inicio
echo ==================================
echo      Bienvenido al Mini Menú
echo ==================================
echo 1. Abrir Microsoft Word
echo 2. Abrir Microsoft Excel
echo 3. Abrir la web Javeriana
echo 4. Abrir Chatgpt
echo 5. Abrir Video Favorito 1
echo 6. Abrir Video Favorito 2
echo 7. Bloquear Pantalla
echo 8 Salir
echo ==================================
set /p opcion=Elige una opcion (1-8): 

rem Ejecutar la opción seleccionada
if %opcion%==1 goto abrirWord
if %opcion%==2 goto abrirExcel
if %opcion%==3 goto abrirJaveriana
if %opcion%==4 goto abrirChatgpt
if %opcion%==5 goto videoFav1
if %opcion%==6 goto videoFav2
if %opcion%==7 goto bloquear
if %opcion%==8 goto salir

echo Opción inválida, intenta de nuevo.
goto inicio

:abrirWord
echo Abriendo Word...
start winword
echo Regresando al menu principal...
goto inicio

:abrirExcel
echo Abriendo Excel...
start excel
echo Regresando al menu principal...
goto inicio

:abrirChatgpt
echo Entrando en Chatgpt...
start https://chatgpt.com/
echo Regresando al menu principal...
goto inicio

:abrirJaveriana
echo Entrando a la web de la Javeriana...
start https://www.javerianacali.edu.co/
echo Regresando al menu principal...
goto inicio

:videoFav1
echo Ingresando a youtube para reproducir Video Favorito 1...
start https://www.youtube.com/watch?v=v5TmcewvZc4&list=RDv5TmcewvZc4&start_radio=1
echo Regresando al menu principal...
goto inicio

:videoFav2
echo Ingresando a youtube para reproducir Video Favorito 2...
start https://www.youtube.com/watch?v=NgsWGfUlwJI&list=RDNgsWGfUlwJI&start_radio=1
echo Regresando al menu principal...
goto inicio

:bloquear
echo Bloqueando pantalla...
Rundll32.exe user32.dll, LockWorkStation
Pantalla bloqueada exitosamente.

goto inicio
:salir
echo Has decidido salir del menú. Gracias por usar el Mini Menú.
goto :eof

