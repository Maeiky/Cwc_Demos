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
-I. -c String.cpp -o obj/(wPlatform)/String.o -O2 -std=c++11 "|"^
 ">"^
 -o bin/(wPlatform)/String.html  obj/(wPlatform)/String.o -O2  "|"^

Rem /--------------------End----------------------/
