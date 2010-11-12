clearVariables
logFile solvents.log
#
#   load water models
#

addAtomTypes {
    { "HW"  "H" "sp3" }
    { "OW"  "O" "sp3" }
}

#
#   Dang/Chang 1996 water model
#

h1 = createAtom  H1   HW  0.365
h2 = createAtom  H2   HW  0.365
o  = createAtom  O    OW  -0.730

set h1   element   H   
set h2   element   H   
set o   element   O   

r = createResidue  h2o 
add r h1
add r h2
add r o 

bond h1  o
bond h2  o
bond h1  h2  

h2o = createUnit  h2o 

add h2o  r
set h2o.1   restype   solvent
set h2o.1   imagingAtom  h2o.1.O

zMatrix h2o  {
    {  H1  O 1.000 }
    {  H2  O  H1 1.000 109.47 }
}

saveoff h2o dang-h2o.lib
quit

