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

TARGET			= cxmb
SRCS			= log.c syspatch.c utils.c ctf.c main.c
OBJS			= $(SRCS:.c=.o)

BUILD_PRX		= 1
USE_KERNEL_LIBC	= 1
USE_KERNEL_LIBS = 1
PSP_FW_VERSION	= 401

PRX_EXPORTS		= exports.exp

INCDIR			=
LIBDIR			=
LDFLAGS			= -mno-crt0 -nostartfiles
LIBS			=
CFLAGS			= -Os -G0 -Wall -fno-strict-aliasing -fno-builtin-printf -D_DEBUG=1 -D_CXMB_LITE=0
CXXFLAGS		= $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS			= $(CFLAGS)

PSPSDK			= $(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak

install:
	cp cxmb.prx /Volumes/NO\ NAME/cxmb/
	rm -f /Volumes/NO\ NAME/log.txt
	rm -rf /Volumes/NO\ NAME/DUMP
	diskutil eject /Volumes/NO\ NAME/
	
vlog:
	mate /Volumes/NO\ NAME/log.txt
