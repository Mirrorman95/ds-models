@Echo off
Echo //---------------------------//
Echo //     P E R P A R I N G     //
Echo //---------------------------//
RD /Q /S Temp
mkdir Temp
xcopy /R /Y 7Zip\7za.exe Temp

Echo //---------------------------//
Echo // C O P Y I N G   F I L E S //
Echo //---------------------------//
xcopy /R /Y GZ-Models\Build\Decorations\*.def Temp\*.def
xcopy /R /Y GZ-Models\Build\Items\*.def Temp\*.def
xcopy /R /Y GZ-Models\Build\Monsters\*.def Temp\*.def
xcopy /R /Y GZ-Models\Build\Player\*.def Temp\*.def
xcopy /R /Y GZ-Models\Build\Projectiles\*.def Temp\*.def
xcopy /R /Y GZ-Models\Build\Weapons\*.def Temp\*.def

xcopy /S /I /R /Y GZ-Models\Build\Decorations\Decoration Temp\Models\Decoration
xcopy /S /I /R /Y GZ-Models\Build\Items\Items Temp\Models\Items
xcopy /S /I /R /Y GZ-Models\Build\Monsters\Monsters Temp\Models\Monsters
xcopy /S /I /R /Y GZ-Models\Build\Player\Player Temp\Models\Player
xcopy /S /I /R /Y GZ-Models\Build\Projectiles\Projectiles Temp\Models\Projectiles
xcopy /S /I /R /Y GZ-Models\Build\Weapons\Weapons Temp\Models\Weapons
xcopy /S /I /R /Y GZ-Models\Build\Hires Temp\Hires


Echo //---------------------------//
Echo //   C O M P R E S S I N G   //
Echo //---------------------------//
cd Temp
7za.exe a -tzip GZ-Models.pk3 *.def Models Hires
cd ..

Echo //---------------------------//
Echo //   C L E A N I N G   U P   //
Echo //---------------------------//
move  /Y Temp\GZ-Models.pk3 GZ-Models.pk3
RD /Q /S Temp

Echo //---------------------------//
Echo //          D O N E          //
Echo //---------------------------//