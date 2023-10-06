# Crab-Game

crabs is a kids video game.....

Crabs Functions

# getTranslation function 
  Inputs: x shift dt, y shift dy
  OutPuts: shifting matrix 
  Functions Called: None
  Used by: drawCaptain 

# getRotation 
  Inputs: theta
  Outputs: Rotation matrix
  Functions called: none
  Used by: drawCaptain

# Crabs
  Inputs: BGImage.png
  OutPuts: mapHeight, mapWidth
  Functions Called: drawCapt, drawMap, length, moveCapt, kbhit
  Used by: none


# drawCapt
  Inputs:xCapt, yCapt, thetaCapt, sizeCapt
  Outputs: captainGraphics
  Functions Called: getTranslation, getCapt, drawLine
  Used by: Crabs

# drawMap
  Inputs: imageName
  Output: height, width
  Functions called: none
  Used by: crabs

# drawLine
Inputs: p, q color
Output: handle
Functions called: none
Used by: drawCapt, drawBox

# getCapt
  Inputs: captSize
  Output: capt
  Functions Called: none
  Used by: drawCapt
  
# drawBox
  Inputs: a, color
  OutPuts: handle
  Functions Called: drawLine()
  Used by: none 

# moveCapt
Inputs: x, y, theta, width, height
OutPuts: xCapt, yCapt thetaCapt
Functions Called: isOnMap
Used by: crabs

# isOnMap
Inputs: x, y, width, height
Outputs: mapCheck
Functions: none
Used by: moveCapt
