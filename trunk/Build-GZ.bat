@Echo off
Echo //---------------------------//
Echo //     P E R P A R I N G     //
Echo //---------------------------//

del /F .\GZ-Models\*.def
RD /Q /S .\GZ-Models\Models
RD /Q /S .\GZ-Models\Hires

xcopy /R /Y .\7za.exe .\GZ-Models\
cd .\GZ-Models\

Echo //---------------------------//
Echo // C O P Y I N G   F I L E S //
Echo //---------------------------//

xcopy /R /Y .\Build\Decorations\*.def *.def
xcopy /R /Y .\Build\Items\*.def *.def
xcopy /R /Y .\Build\Monsters\*.def *.def
xcopy /R /Y .\Build\Player\*.def *.def
xcopy /R /Y .\Build\Projectiles\*.def *.def
xcopy /R /Y .\Build\Weapons\*.def *.def

xcopy /S /I /R /Y .\Build\Decorations\Decoration .\Models\Decoration
xcopy /S /I /R /Y .\Build\Items\Items .\Models\Items
xcopy /S /I /R /Y .\Build\Monsters\Monsters .\Models\Monsters
xcopy /S /I /R /Y .\Build\Player\Player .\Models\Player
xcopy /S /I /R /Y .\Build\Projectiles\Projectiles .\Models\Projectiles
xcopy /S /I /R /Y .\Build\Weapons\Weapons .\Models\Weapons
xcopy /S /I /R /Y .\Build\Hires .\Hires

Echo //---------------------------//
Echo //   C O M P R E S S I N G   //
Echo //---------------------------//

7za.exe a -t7z GZ-Models.pk3 *.def Models Hires

Echo //---------------------------//
Echo //   C L E A N I N G   U P   //
Echo //---------------------------//

cd ..

del /F .\GZ-Models\*.def
del /F .\GZ-Models\7za.exe
RD /Q /S .\GZ-Models\Models
RD /Q /S .\GZ-Models\Hires

move  /Y .\GZ-Models\GZ-Models.pk3 GZ-Models.pk3

Echo //---------------------------//
Echo //          D O N E          //
Echo //---------------------------//