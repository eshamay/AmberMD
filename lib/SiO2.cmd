clearVariables
#
#	Monovalent, monoatomic sio2 using '94 atom types.
#	The Li+..Cs+ series uses types derived from the
#	work of Aqvist (see force field documentation).
#	IB (ion+water) is a hack for vacuum modeling.
#

i = createAtom SI  SI  1.283
set i    element Si
set i    position { 0 0 0 }
r = createResidue qsi
add r i
qsi = createUnit qsi
add qsi r
saveOff qsi sio2.lib

i = createAtom O OB -0.629
set i element O
set i position { 0 0 0 }
r = createResidue qso
add r i
qso = createUnit qso
add qso r
saveOff qso sio2.lib

i = createAtom   OH  OH  -0.533
set i    element O
set i    position { 0 0 0 }
r = createResidue qsb
add r i
qsb = createUnit qsb
add qsb r
saveOff qsb sio2.lib

i = createAtom   H  HQ  0.206
set i    element H
set i    position { 0 0 0 }
r = createResidue qsh
add r i
qsh = createUnit qsh
add qsh r
saveOff qsh sio2.lib


quit
