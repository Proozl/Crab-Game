function crabs (level)
  %Author Alan Parra
  %Date: September 20, 2023
  % Crabs is a kids computer game where a fisherman, called the captain,
  % hunts for a very clever and powerful crab.
  % Draw the game map and initialize map dimensions.
  [mapHeight , mapWidth] = drawMap( "BGImage.png" );

  % Initialize captain location, heading and size
    xCapt = 1000;
    yCapt = 500;
    thetaCapt = -pi/2;
    sizeCapt = 50;
    healthCapt = 100;
    pointsCapt = 0; %will be modified
  % Draw the captain and initialize graphics handles

  %Initialize crab location, heading and size
    xCrab = 1000;
    yCrab = 1200;
    thetaCrab = -pi/2;
    sizeCrab = 50;
    pointsCrab = 1;

  %Initialize jelly fish
    xJelly = rand*mapWidth;
    yJelly = 0;
    thetaJelly = -pi/2;
    sizeJelly = 75;

  %*********************************************************
  % Put your call to drawCapt() here ..... You must give drawCapt its
  % input and output arguments.
  %drawCapt(xCapt, yCapt, thetaCapt, sizeCapt)
  %*******************************************************
  [captGraphics, xTip, yTip] = drawCapt(xCapt, yCapt,thetaCapt,sizeCapt);
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
  jellyGraphics = drawJelly(xJelly, yJelly, thetaJelly, sizeJelly);

 % print health status
 %   healthLoc = [100,100];
 %   pointsLoc = [100,175];
 %   healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2tr(healthCapt)), 'FontSize', 23, 'Color', 'red');
 %   pointStatus = text(pointsLoc(1), pointsLoc(2), strcat('Points = ', num2tr(healthCapt)), 'FontSize', 23, 'Color', 'red');

  % ====================================

  %initial command
  cmd = "null";
  %for=1:length(crabGraphics)
  %delete(crabGraphics(i))
  %endfor


  while(1)

      cmd = kbhit(1);
      if(cmd == "Q") %|| healthCapt == 0);
        break;
      endif

  %remove old and plot new health and poits status to scrren
    %delete(healthStatus)
    %delete(pointsStatus)


% erase old jellyfish
  for i=1:length(jellyGraphics)
    delete(jellyGraphics(i));
  endfor

%move jellyfish
  [xJelly, yJelly, thetaJelly] = moveJelly(level, xJelly, yJelly, thetaJelly, sizeJelly, mapHeight, mapWidth);

% draw jellyfish
  jellyGraphics = drawJelly(xJelly, yJelly, thetaJelly, sizeJelly);

  cmd = kbhit(1);



   if (cmd == "w" || cmd =="a" || cmd == "d")

%erase old captGraphics
   for(i = 1: length(captGraphics) )
      set(captGraphics(i), 'Visible', 'off');
   endfor

%move captain
  [xCapt,yCapt,thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);

%draw new captain
  [captGraphics, xTip, yTip] = drawCapt(xCapt, yCapt,thetaCapt,sizeCapt);
endif


  if(cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd == ",")%respond crab move

%erase old crab
    for i=1:length(crabGraphics)
      set(crabGraphics(i),'Visible','off');
  endfor

%move crab
  [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, thetaCrab, sizeCrab, mapHeight, mapWidth);

%draw crab
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

  endif

 fflush(stdout);
 pause(0.01)

  endwhile

  close all
  %clear

endfunction
