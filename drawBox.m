function handle = drawBox(a, color),

  figure(1)
  %lets you go keep every version of drawLine
  hold on
  p1 = [a; a];
  p2 = [a; -a];
  p3 = [-a; -a];
  p4 = [-a; a]

  drawLine(p1, p2, color)
  drawLine(p2, p3, color)
  drawLine(p3, p4, color)
  drawLine(p4, p1, color)

endfunction
