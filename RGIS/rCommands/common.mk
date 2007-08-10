UNIX=$(shell uname)

ifeq ($(UNIX),Linux)
export UNIXCPP=g++
export UNIXCPPOPS=-Wall -fsigned-char -D_GNU_SOURCE -Wno-deprecated
export UNIXLIBS=-ludunits -lnetcdf -lm
export UNIXMAKE=make
endif
ifeq ($(UNIX),Darwin)
export UNIXCPP=g++
export UNIXCPPOPS=-Wall -fsigned-char -D_GNU_SOURCE -Wno-deprecated
export UNIXLIBS=-L/opt/local/lib -ludunits -lnetcdf -lm
export UNIXMAKE=make
endif

ifndef INSTALLDIR
export INSTALLDIR=/usr/local/share/ghaas
endif