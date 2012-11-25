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
xcopy /R /Y Zan-Models\Build\Decorations\*.def Temp\*.def
xcopy /R /Y Zan-Models\Build\Monsters\*.def Temp\*.def
xcopy /R /Y Zan-Models\Build\Projectiles\*.def Temp\*.def

xcopy /S /I /R /Y Zan-Models\Build\Decorations\Decoration Temp\Models\Decoration
xcopy /S /I /R /Y Zan-Models\Build\Monsters\Monsters Temp\Models\Monsters
xcopy /S /I /R /Y Zan-Models\Build\Projectiles\Projectiles Temp\Models\Projectiles

Echo //---------------------------//
Echo //   C O M P R E S S I N G   //
Echo //---------------------------//
cd Temp
7za.exe a -tzip Zan-Models.pk3 *.def Models Hires
cd ..

Echo //---------------------------//
Echo //   C L E A N I N G   U P   //
Echo //---------------------------//
move  /Y Temp\Zan-Models.pk3 Zan-Models.pk3
RD /Q /S Temp

Echo //---------------------------//
Echo //          D O N E          //
Echo //---------------------------//