function [xCapt, yCapt, thetaCapt] = moveCapt (cmd,x, y, theta,width,height)

dTheta = pi/6;
xCapt = x;
yCapt = y;
thetaCapt = theta;
dStep = 50;

#xTemp = 0;
#yTemp = 0;

if(cmd == "w")
%move forward
  xTemp = x + dStep*cos(theta);
  yTemp = y + dStep*sin(theta);

  if(isOnMap(xTemp,yTemp,width,height));
    xCapt = xTemp;
    yCapt = yTemp;
  else
    xCapt = x;
    yCapt = y;

  endif

  thetaCapt = theta;

elseif(cmd == "a")
%rotate left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

elseif(cmd == "d")
%rotate right
xCapt = x;
yCapt = y;
thetaCapt = theta + dTheta;

else
xCapt = x;
yCapt = y;
thetaCapt = theta;

endif


endfunction
