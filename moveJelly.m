function [xJelly, yJelly, thetaJelly] = moveJelly (lvl, x, y, theta, size, height, width)

dStep = 20 + level

% move jelly
thetaJelly = theta;
yJelly = y + dStep;
xJelly = x ;

if(yJelly > height - 10 * size)
  yJelly = size;
  xJelly = rand * width;
endif

endfunction
