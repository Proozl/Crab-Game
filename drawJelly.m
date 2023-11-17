function jellyGraphics = drawJelly (xJelly, yJelly, thetaJelly, jellySize)

  jel = getJelly(jellySize);

  R = getRotation(thetaJelly);
  jellyRotated = R*jel;

  T = getTranslation(xJelly, yJelly);
  jel = T*jellyRotated;

  pt1=jel( : , 1);
  pt2=jel( : , 2);
  pt3=jel( : , 3);
  pt4=jel( : , 4);
  pt5=jel( : , 5);
  pt6=jel( : , 6);
  pt7=jel( : , 7);
  pt8=jel( : , 8);
  pt9=jel( : , 9);
  pt10=jel( : , 10);
  pt11=jel( : , 11);
  pt12=jel( : , 12);
  pt13=jel( : , 13);
  pt14=jel( : , 14);
  pt15=jel( : , 15);
  pt16=jel( : , 16);

  % Draw the jelly and set the return vector of graphics handles.
  jellyGraphics(1) = drawLine(pt1 , pt2 , "m");
  jellyGraphics(2) = drawLine(pt2 , pt3 , "m");
  jellyGraphics(3) = drawLine(pt3 , pt4 , "m");
  jellyGraphics(4) = drawLine(pt4 , pt5 , "m");
  jellyGraphics(5) = drawLine(pt1 , pt6 , "m");
  jellyGraphics(6) = drawLine(pt6 , pt7 , "m");
  jellyGraphics(7) = drawLine(pt7 , pt8 , "m");

  jellyGraphics(8) = drawLine(pt8 , pt9 , "m");
  jellyGraphics(9) = drawLine(pt11 , pt10 , "m"); %wot
  jellyGraphics(10) = drawLine(pt5 , pt12 , "m");
  jellyGraphics(11) = drawLine(pt13 , pt14 , "m");
  jellyGraphics(12) = drawLine(pt4 , pt15 , "m");
  jellyGraphics(13) = drawLine(pt5, pt16, "m");

endfunction
