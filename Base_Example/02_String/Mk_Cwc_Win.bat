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
 -wBuildAnd=Sanitize  "|"^
 -I. -c String.cpp -o obj/(wPlatform)/String.o  -std=c++11  -g  "|"^
 ">"^
 -o bin/(wPlatform)/String.exe  obj/(wPlatform)/String.o  "|"^

Rem /--------------------End----------------------/
