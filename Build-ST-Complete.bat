@Echo off
Echo //---------------------------//
Echo //     P E R P A R I N G     //
Echo //---------------------------//

del /F .\GZ-Models\*.def
RD /Q /S .\GZ-Models\Models
RD /Q /S .\GZ-Models\Hires

del /F .\ST-Models\*.def
RD /Q /S .\ST-Models\Models
RD /Q /S .\ST-Models\Hires

xcopy /R /Y .\7za.exe .\ST-Models\
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
cd ..
xcopy /S /I /R /Y .\GZ-Models\Models .\ST-Models\Models
xcopy /S /I /R /Y .\GZ-Models\Hires .\ST-Models\Hires
xcopy /S /I /R /Y .\GZ-Models\*.def .\ST-Models\*.def

cd .\ST-Models\

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

Echo //---------------------------//
Echo //   C O M P R E S S I N G   //
Echo //---------------------------//

7za.exe a -t7z ST-Models-Complete.pk3 *.def Models Hires

Echo //---------------------------//
Echo //   C L E A N I N G   U P   //
Echo //---------------------------//

cd ..

del /F .\ST-Models\*.def
del /F .\ST-Models\7za.exe
RD /Q /S .\ST-Models\Models
RD /Q /S .\ST-Models\Hires

del /F .\GZ-Models\*.def
RD /Q /S .\GZ-Models\Models
RD /Q /S .\GZ-Models\Hires

move  /Y .\ST-Models\ST-Models-Complete.pk3 ST-Models-Complete.pk3

Echo //---------------------------//
Echo //          D O N E          //
Echo //---------------------------//