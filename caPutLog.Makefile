#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : han.lee@esss.se
# Date    : Thursday, October  4 16:17:37 CEST 2018
# version : 0.0.2
#

## The following lines are mandatory, please don't change them.
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS



## Exclude linux-ppc64e6500
##EXCLUDE_ARCHS = linux-ppc64e6500


APP:=caPutLogApp
APPSRC:=$(APP)

HEADERS += $(APPSRC)/caPutLog.h
HEADERS += $(APPSRC)/caPutLogTask.h
HEADERS += $(APPSRC)/caPutLogAs.h

SOURCES += $(APPSRC)/caPutLogTask.c
SOURCES += $(APPSRC)/caPutLogAs.c
SOURCES += $(APPSRC)/caPutLogClient.c
SOURCES += $(APPSRC)/caPutLog.c
SOURCES += $(APPSRC)/caPutLogShellCommands.c


DBDS += $(APPSRC)/caPutLog.dbd

SCRIPTS += ../iocsh/caPutLog.iocsh


db: 

.PHONY: db 


vlibs:

.PHONY: vlibs
