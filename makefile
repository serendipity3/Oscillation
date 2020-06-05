###############################################################################
#  make           ... generate executable for the REAL sequential version     #
#  make clean     ... delete unnecessary files                                #
###############################################################################
# FC ........... compiler name
# FOPT ......... optimization flags
# FLIB ......... libraries needed
include $(wildcard make.d/*)
#
FC    = ifort
DEPS  = -fpp -gen-dep=$(@:%.o=%.d)
FLIB  = -mkl -static-intel
FOPT  =# -O2 -qopenmp
#FOPT += -ipo
#FOPT += -mcmodel=medium -xHOST -O2 -ipo -no-prec-div
#FOPT += -heap-arrays 10240
#FOPT += -fstack-protector-all
FDBG  = -CB -traceback -g -debug extended
#FDBG += -O0 -fno-eliminate-unused-debug-types
FDBG += -check all
#FDBG += -warn all
FDBG += -fpe0# -ffpe-trap=invalid,zero,overflow
#FDBG += -prof-gen -prof-use -opt-report

#FPRP  = -Ddebug=2
#FPRP += -Dverbose=1
#FPRP += -Dmod_fs
#FPRP += -Dmod_band
#FPRP += -Doutput_fs
#FPRP += -Dmod_vcs
#FPRP += -Dmod_rsf

###############################################################################
SRCDIR  = ./src
ifeq "$(strip $(SRCDIR))" ""
	SRCDIR  = .
endif
OBJDIR  = ./obj
ifeq "$(strip $(OBJDIR))" ""
	OBJDIR  = .
else
FMOD    = -module $(OBJDIR)
endif
LIBDIR  = ./lib
INCDIR  =
ifeq "$(strip $(INCDIR))" ""
else
	FLIB   += -I $(INCDIR)
	FMOD   += -module $(INCDIR)
endif
EXEDIR	= ./bin
###############################################################################

SOURCES = $(wildcard $(SRCDIR)/*.f90)
TARGET  = $(notdir $(SOURCES:%.f90=%))
LIBSRC  = \
	  lib.f90
LIBS    = $(addprefix $(LIBDIR)/, $(LIBSRC))
OBJECTS = $(addprefix $(OBJDIR)/, $(notdir $(LIBS:%.f90=%.o)))
MODULES = $(wildcard $(OBJDIR)/*.mod)
DEPENDS = $(OBJECTS:.o=.d)

-include $(DEPENDS)

.SUFFIXES: .f90
.PHONY : clean all
###############################################################################

$(TARGET): $(OBJECTS)
	$(FC) $(FLIB) $(FOPT) $(FMOD) $(FDBG) $(FPRP) -o $(EXEDIR)/$@ $^ \
	$(SRCDIR)/$@.f90

$(OBJDIR)/%.o: $(LIBDIR)/%.f90
#	-mkdir -p $(OBJDIR)
	$(FC) $(FLIB) $(FOPT) $(FMOD) $(FDBG) $(FPRP) $(DEPS) -o $@ -c $<

all: clean $(TARGET)

clean:
	-rm -f $(OBJECTS) $(MODULES) $(DEPENDS) $(addprefix $(EXEDIR)/, $(TARGET))

%.mod: %.f90 %.o
	@:
