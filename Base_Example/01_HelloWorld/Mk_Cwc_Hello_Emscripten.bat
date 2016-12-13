@echo off
Rem /------- Find Cwc ---------/
set cwc=cwc
if exist ..\..\..\..\..\..\cwc.exe  set cwc=..\..\..\..\..\..\cwc.exe
if exist ..\..\..\..\..\cwc.exe     set cwc=..\..\..\..\..\cwc.exe
if exist ..\..\..\..\cwc.exe        set cwc=..\..\..\..\cwc.exe
if exist ..\..\..\cwc.exe           set cwc=..\..\..\cwc.exe
if exist ..\..\cwc.exe              set cwc=..\..\cwc.exe
if exist ..\cwc.exe                 set cwc=..\cwc.exe
if exist cwc.exe                    set cwc=cwc.exe
Rem /--------------------------/

Rem /-------------------Start----------------------/

Call %cwc%  "|"^
 -wPlatform Web_Emsc  "|"^
 -c HelloWorld.cpp -o obj/(wPlatform)/HelloWorld.o  "|"^
 ">"^
 -o bin/(wPlatform)/HelloWorld.html  obj/(wPlatform)/HelloWorld.o  "|"^

Rem /--------------------End----------------------/
pause