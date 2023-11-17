function theta = getAngle (xNet, yNet, xCrab, yCrab)

  xDanger = xNet - xCrab;
  yDanger = yNet - yCrab;

  if( xDanger == 0 || yDanger  == 0) % Special Case: On one of the axis

      if(xDanger == 0 && yDanger == 0)
          theta = 0;
      elseif(xDanger != 0 && yDnager == 0 ) % on x-axis
        if(xDanger > 0)
          theta = 0;
        else
          theta = pi;
        endif

      else % on y-axis
         if(yDanger > 0)
            theta = pi/2;
         else
            theta = 3*pi/2;
         endif

      endif

  else % Not on one of the axis

    alpha = atan( abs(yDanger/xDanger));

    if(xDanger > 0 && yDanger > 0 ) % quadrant 1
        theta = alpha;
    elseif (xDanger < 0 && yDnager > 0) % quadrant 2
        theta = pi - alpha;
    elseif (xDanger < 0 && yDanger < 0) % quadrant 3
        theta = pi + alpha;
    else
        theta = 2*pi - alpha; % quadrant 4

  endif

endfunction
