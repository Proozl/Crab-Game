function [xCrab, yCrab, thetaCrab] = moveCrab (cmd, x, y, theta, size, height, width)

dStep = 20;
dTheta = pi/6;
if(cmd == "j")

  xTemp = x + dStep*sin(theta);
  yTemp = y - dStep*cos(theta);
  if( isOnMap(xTemp, yTemp, width, height) == 1 )
    xCrab = xTemp;
    yCrab = yTemp;
  endif

  thetaCrab = theta;

elseif (cmd == "k")
  xTemp = x - dStep*cos(theta);
  yTemp = y - dStep*sin(theta);
  if( isOnMap(xTemp, yTemp, width, height) == 1 )
    xCrab = xTemp;
    yCrab = yTemp;
  endif
  thetaCrab = theta;

elseif (cmd == "l")
  xTemp = x - dStep*sin(theta);
  yTemp = y + dStep*cos(theta);

  if( isOnMap(xTemp, yTemp, width, height) == 1 )
    xCrab = xTemp;
    yCrab = yTemp;
  endif

  thetaCrab = theta;

elseif (cmd == "i")
  xCrab = x;
  yCrab = y;

  thetaCrab = theta + dTheta;

elseif (cmd == ",")
  xCrab = x;
  yCrab = y;
  thetaCrab = theta - dTheta;
else
  xCrab = x;
  yCrab = y;
  thetaCrab = theta;
endif

endfunction
