function [xBubble, yBubble] = moveBubble (x, y, xMouth, yMouth)

step = 25;

% move Bubble
yBubble = y - step;
xBubble = x ;

if(yBubble < 0)
  yBubble = yMouth;
  xBubble = x Mouth;

endif


endfunction
