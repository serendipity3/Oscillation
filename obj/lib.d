modsection.mod  modmatrix.mod  modvector.mod  mathconstants.mod  iohelper.mod \
   iocomponent.mod  formats.mod  precisions.mod : \
  lib/lib.f90

obj/lib.o : \
  lib/lib.f90 ./obj/precisions.mod ./obj/precisions.mod ./obj/formats.mod \
  ./obj/precisions.mod ./obj/formats.mod ./obj/precisions.mod \
  ./obj/formats.mod ./obj/precisions.mod ./obj/iocomponent.mod \
  ./obj/formats.mod ./obj/iohelper.mod ./obj/precisions.mod \
  ./obj/iocomponent.mod ./obj/formats.mod ./obj/precisions.mod \
  ./obj/formats.mod ./obj/precisions.mod ./obj/precisions.mod

