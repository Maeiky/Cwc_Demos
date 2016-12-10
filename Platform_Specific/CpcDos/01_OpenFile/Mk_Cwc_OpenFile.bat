@echo off
Rem /------- Find Cwc ---------/
set cwc=cwc
if exist ..\..\..\..\..\..\Cwc\cwc.exe  set cwc=..\..\..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\..\..\Cwc\cwc.exe     set cwc=..\..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\..\Cwc\cwc.exe        set cwc=..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\Cwc\cwc.exe           set cwc=..\..\..\Cwc\cwc.exe
if exist ..\..\Cwc\cwc.exe              set cwc=..\..\Cwc\cwc.exe
if exist ..\Cwc\cwc.exe                 set cwc=..\Cwc\cwc.exe
if exist Cwc\cwc.exe                    set cwc=Cwc\cwc.exe
Rem /--------------------------/

Rem /-------------------Start----------------------/

Call %cwc%  "|"^
 -wPlatform CpcDos  "|"^
 -c OpenFile.cpp -o obj/(wPlatform)/OpenFile.o  "|"^
 -wCopy Info.txt bin/(wPlatform)/  "|"^
 ">"^
 -o bin/(wPlatform)/OpenFile.exe  obj/(wPlatform)/OpenFile.o  "|"^


Rem /--------------------End----------------------/
