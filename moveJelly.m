function [xJelly, yJelly, thetaJelly] = moveJelly (level, x, y, theta, size, height, width)

jellyMove = 50;
dStep = 20 + level;

% move jelly
thetaJelly = theta;
yJelly = y + dStep;
xJelly = x ;

if(yJelly > height-2*size) % -10*16
  yJelly = size;
  xJelly = rand * width;

endif


endfunction
