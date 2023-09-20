#function handle = drawBoxWithArms(a,color)

 # figure(1)
  #hold on

  #drawBox(a,color)
  %measurement of right claw
  #rc1 = [a, a]
  #rc2 = [a, (a*1.75)]
  #rc3 = [a, a*1.5]
  %measurement of left claw
  #lc1 = [-a, a]
  #lc2 = [-a, (a*1.75)]
  #lc3 = [-a, (a*1.5)]
  %makes the right claw
  #drawLine(rc1, rc2, color)
  #drawLine(rc2, rc3, color)

  %makes left claw
  #drawLine(lc1, lc2, color)
  #drawLine(lc2, lc3, color

#endfunction

function handle = drawBoxWithArms(a, color)

  figure(1)
  hold on

  drawBox(a, color)
%measurments for the right claw
  rc1 = [a, a]
  rc2 = [a*1.75, (a*1.75)]
  rc3 = [a, a*1.5]
%measurements for the left claw
  lc1 = [-a, a]
  lc2 = [-a*1.75, (a*1.75)]
  lc3 = [-a, (a*1.5)]
%measurements for left legs
  lls1p1 = [-a, a/2]
  lls1p2 = [-a*1.5, a*.95]
  lls1p3 = [-a*1.3, a*.5]

  lls2p1 = [-a, (-a+a)]
  lls2p2 = [-a*1.5, a*.15]
  lls2p3 = [-a*1.3, -a*.25]

  lls3p1 = [-a, -a*.5]
  lls3p2 = [-a*1.5, -a*.75]
  lls3p3 = [-a*1.3, -a*1.25]
%measurments for right leg
  rls1p1 = [a, a/2]
  rls1p2 = [a*1.5, a*.95]
  rls1p3 = [a*1.3, a*.5]

  rls2p1 = [a,(a-a)]
  rls2p2 = [a*1.5,a*.15]
  rls2p3 = [a*1.3,-(a*.25)]

  rls3p1 = [a,-a*.5]
  rls3p2 = [a*1.5,-a*.75]
  rls3p3 = [a*1.3,-a*1.25]

%drawing the right claw
  drawLine(rc1, rc2, color)
  drawLine(rc2, rc3, color)
%drawing the left claw
  drawLine(lc1, lc2, color)
  drawLine(lc2, lc3, color)
%drawing the left legs
  drawLine(lls1p1, lls1p2, color)
  drawLine(lls1p2, lls1p3, color)


  drawLine(lls2p1, lls2p2, color)
  drawLine(lls2p2, lls2p3, color)

  drawLine(lls3p1, lls3p2, color)
  drawLine(lls3p2, lls3p3, color)

%draw the right leg
  drawLine(rls1p1, rls1p2, color)
  drawLine(rls1p2, rls1p3, color)

  drawLine(rls2p1, rls2p2, color)
  drawLine(rls2p2, rls2p3, color)

  drawLine(rls3p1, rls3p2, color)
  drawLine(rls3p2, rls3p3, color)

 endfunction

