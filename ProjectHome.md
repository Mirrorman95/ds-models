3D Models for GZDoom, Zandronum and Skulltag

Download: https://www.dropbox.com/sh/jeji2q5vjfj172q/AADk75zhjJnuCqBouQ6JF3yca

Below only applies if you wish to checkout the SVN version.

Simple tutorial (Windows):
  1. Download and install TortiseSVN. You may be required to restart after installation.
  1. Right click in any folder and click TortoiseSVN > Checkout...
  1. Add this in the "URL of Repository" box: **http://ds-models.googlecode.com/svn/trunk/ ds-models-read-only** and click OK.
  1. Wait for it to finish downloading everything
  1. Run these batch files to build the pk3: **Build-GZ.bat** **Build-Zan.bat** and **Build-ST.bat**
  1. Copy them to your skins folder or add it to your autoload or put it wherever else
  1. Load them up, make sure OpenGL Mode is Selected and also make sure the console command **gl\_use\_models** is **true**

**Build-GZ.bat** packages all the models that can work with both _Zandronum_ and _GZDoom_. **Build-Zan.bat** only packages the extra models that will only work with _Zandronum_.
**Build-ST.bat** builds all the _Skulltag_ specific models.

There is an old **Readme.txt** in there for building instructions, but it's just very simple.

For **ST-Models.pk3**, you will also need to load at least **skulltag\_actors.pk3** otherwise the game will not start.
For servers that use **skulltag\_actors.pk3**, you are able to move **ST-Models.pk3** to your **skins** folder, but make sure to move it out before playing another game or server without **skulltag\_actors.pk3**.

Sorry, no Linux/Mac building support.
Will work in a Virtual Windows OS though.
May work under WINE, but not tested at all.