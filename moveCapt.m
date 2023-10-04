function [xCapt, yCapt, thetaCapt] = moveCapt (x, y, theta, cmd)

dTheta = pi/8;
xCapt=x;
ycapt=y;
thetaCapt = theta;
if( cmd == "w")
%move forward

endif

if(cmd == "a")
%rotate left
thetaCapt = theta - dTheta
endif

if(cmd == "d")
%rotate right
thetaCapt = theta + dTheta;
endif


endfunction
