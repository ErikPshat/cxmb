#
#	This file is part of cxmb
#	Copyright (C) 2008  Poison
#
#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#	File:		Makefile
#	Author:		Poison <hbpoison@gmail.com>
#	Date Created:	2008-07-01

full:
	make clean
	make -f Makefile.PSP

clean:
	make -f Makefile.PSP clean

lite:
	make clean
	CXMB_LITE=1 make -f Makefile.PSP

debug:
	make clean
	DEBUG=1 make -f Makefile.PSP
	
install:
	cp cxmb.prx /Volumes/NO\ NAME/cxmb/
	rm -f /Volumes/NO\ NAME/log.txt
	rm -rf /Volumes/NO\ NAME/DUMP
	diskutil eject /Volumes/NO\ NAME/

vlog:
	mate /Volumes/NO\ NAME/log.txt
	
release:
	rm -f cxmb_release.tar.gz
	rm -rf cxmb_release
	install -d cxmb_release/full/cxmb/support/
	install -d cxmb_release/full/PSP/THEME/
	cp support/random.ctf cxmb_release/full/PSP/THEME/
	install -d cxmb_release/full/seplugins/
	echo ms0:/cxmb/cxmb.prx > cxmb_release/full/seplugins/vsh.txt
	touch cxmb_release/full/cxmb/support/decrypted\ official\ prx\ go\ here.txt
	install -d cxmb_release/lite/cxmb/
	install -d cxmb_release/lite/PSP/THEME/
	cp support/random.ctf cxmb_release/lite/PSP/THEME/
	install -d cxmb_release/lite/seplugins/
	echo ms0:/cxmb/cxmb.prx > cxmb_release/lite/seplugins/vsh.txt
	make full
	install -C cxmb.prx cxmb_release/full/cxmb/
	make lite
	install -C cxmb.prx cxmb_release/lite/cxmb/
	cp support/readme.txt cxmb_release/
	tar czf cxmb_release.tar.gz cxmb_release
