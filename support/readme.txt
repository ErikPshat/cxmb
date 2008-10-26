         (\___/)
         (='.'=)
         ( \ / )
        ('')_('')
         To Alien
http://www.2alien.info
http://www.2alien.net

CXMB 3.3 for 3.71+ by Poison
==============================

A hand-made PSP XMB theme (witch is usually hex edited from the official PSP firmware files) enabler.


-=FEATURE=-
3.3:
+Add 5.0 capability.
3.2.1:
-Fix bug ( freeze while applying theme )
-Fix bug ( restore to original official XMB when returns from game )
+make official XMB not a choice of random.
3.2:
+Add 4.01 capability.
+Select the random.ctf, then cxmb will randomly apply your themes in /PSP/THEME/
+Compile universal binary, cxmb.prx should work on 3.71/3.80/3.90/4.01
-Fix some wrong io opration (I wrote some sceIoClose where there should be sceIoDclose)
+Clean up sources (yea... I think I did it..)
3.1:
+You can build .ctf file with a ptf that including wallpaper.
-Readjusts the reboot delay after applying a theme to prevent some registry issue.
+Add 3.80 capability.
3.0:
+You can select your theme via XMB's theme selector (Settings->Theme settings->Theme) , and apply it.
-Fix a font bug ( after sleep or usb connection it display ugly character ).
before 3.0:
+Without touching your PSP Nand flash, you can get all amazing effect provided by traditional ready flash theme show in your XMB. (I mean nothing would be written into flash)
+With CXMB full version installed, traditional XMB theme would be packed into a .ctf (short of cxmb theme file) file, then you can share it easier, and CXMB lite version user can download .ctf file then apply it.


-=REQUIREMENTS=-
A PSP (either fat or slim one) with 3.71+ m33 custom firmware (or whatever CFW (3.71/3.80/3.90/4.01) with which you can start cxmb.prx while PSP booting into XMB) installed.
3 decrypted prx (paf.prx, common_gui.prx, vshmain.prx) from official 3.71+ update EBOOT.PBP if you want to use CXMB full version to convert traditional XMB theme to a .ctf file.


-=CXMB INSTALLATION=-
Lite Version:
-Copy cxmb folder to your memory stick.
-Add a line ms0:/cxmb/cxmb.prx in your vsh.txt (ms0:/seplugins/vsh.txt).
You will get a file structure like this:
ms0:/
	|-cxmb/
	|	|-cxmb.prx
	|-seplugins/
	|	|-vsh.txt
	|-PSP/
	|	|-THEME/
-Reboot PSP and enable cxmb.prx in Recovery menu.
Full Version:
-Get RS Psar Dumper and the official update EBOOT.PBP you need.
-Follow the readme of Psar Dumper, decrypt and dump 3 prx (paf.prx, common_gui.prx, vshmain.prx).
-Copy cxmb folder to your memory stick, and place the 3 decrypted prx in cxmb/support/ .
-Add a line ms0:/cxmb/cxmb.prx in your vsh.txt (ms0:/seplugins/vsh.txt).
You will get a file structure like this:
ms0:/
	|-cxmb/
	|	|-support
	|	|	|-paf.prx
	|	|	|-common_gui.prx
	|	|	|-vshmain.prx
	|	|-cxmb.prx
	|-seplugins/
	|	|-vsh.txt
	|-PSP/
	|	|-THEME/
-Reboot PSP and enable cxmb.prx in Recovery menu.


-=THEME INSTALLATION=-
Traditional Theme (CXMB full version only):
-Download SCE's official ptf Custom Theme Converter here:
http://www.jp.playstation.com/psp/dl/tool/data/Custom_Theme.zip
-Prepare a 16x16 256 colors png, a 300x170 24bit bmp for preview, and a 480x272 bmp format wallpaper optionally.
-Use the Converter to produce a ptf file contain the above preview icon, preview image and wallpaper at your option.
-Copy the ptf file to ms0:/cxmb/
-Edit the conf.txt's first line to /PSP/THEME/xxx.ctf, the ctf name must be the same as the ptf you produced, for example, if you have ms0:/cxmb/mytheme.ptf, you should edit this line to /PSP/THEME/mytheme.ctf
-Copy traditional theme files to ms0:/cxmb/, reboot your PSP, and it will generate your ctf theme file at ms0:/PSP/THEME/
File structure will like this:
ms0:/
	|-cxmb/
	|	|-font
	|	|	|-ltn0.pgf
	|	|	......
	|	|-vsh/
	|	|	|-module/
	|	|	|	|-vshmain.prx
	|	|	|	......
	|	|	|-resource/
	|	|	|	|-01-12.bmp
	|	|	|	......
	|	|-conf.txt
	|	|-mytheme.ptf
	|	|-support
	|	|	|-paf.prx
	|	|	|-common_gui.prx
	|	|	|-vshmain.prx
	|	|-cxmb.prx
	|-seplugins/
	|	|-vsh.txt
	|-PSP/
	|	|-THEME/
	|	|	|-mytheme.ctf
	|	|	......
CTF Theme file (Both version support):
copy the ctf files to ms0:/PSP/THEME/, and you can select theme via XMB's theme setting.
File structure will like this:
ms0:/
	|-cxmb/
	|	|-cxmb.prx
	|	|-conf.txt
	|	......
	|-seplugins/
	|	|-vsh.txt
	|-PSP/
	|	|-THEME/
	|	|	|-mytheme.ctf
	|	|	|-mytheme2.ctf
	|	|	......


-=NOTICE=-
-CTF with wrong magic won't be apply, for example, a CTF build for 3.90 wouldn't work in 4.01m33
The magic align at 0x10 of the CTF file, here is a magic list:
FW 3.71: 0xDEAD0371
FW 3.80: 0xDEAD0380
FW 3.90: 0xDEAD0390
FW 4.01: 0xDEAD0401
FW 5.00: 0xDEAD0500
-Restore to original theme before you install CXMB.
-You can't see official ptf theme in theme setting after you enabling CXMB.
-After you apply a theme in XMB's theme setting, it will reboot PSP automatically.
-DON'T forget to edit the conf.txt before you convert a new traditional theme. if the theme you specifics in conf.txt exist, it won't be override.
-CXMB Lite version can only use ctf theme file.
-It will take some time to build ctf file in XMB booting up after you install new traditional theme.
-Remove/Replace the theme in use or plug out memory stick at XMB runtime might cause some font issue if your theme contains a custom font.
-Please follow GPL License using the source code.


-=SOURCE=-
http://code.google.com/p/cxmb/source/checkout


-=CREDIT=-
Thanks to Matchung, Gilleco, Aeolusc, Real.KK, SilverSpring, SchMilk.
Thanks to everyone who has contributed to the PSPSDK.
Thanks to everyone who has contributed to PSP CFW.
