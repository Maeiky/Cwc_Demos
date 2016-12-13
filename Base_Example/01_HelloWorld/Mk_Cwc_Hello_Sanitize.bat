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
 -wBuildAnd Sanitize  "|"^
 -c HelloWorld.cpp -o obj/(wPlatform)/HelloWorld.o  "|"^
 ">"^
 -o bin/(wPlatform)/HelloWorld.exe  obj/(wPlatform)/HelloWorld.o  "|"^

Rem /--------------------End----------------------/
