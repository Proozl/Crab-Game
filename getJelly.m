
function jel = getJelly (size)

%rightside of the jelly
  jellyPt1 = [ size; 0; 1;];
  jellyPt2 = [ size; size*(3/5); 1];
  jellyPt3 = [ size*(3/5) ;size ;1];
  jellyPt4 = [ -size*(2/5) ; size ;1];
  jellyPt5 = [ -size*(2/5) ; 0; 1]; % bottom middle

%left side of the jelly
  jellyPt6 = [ size; -size*(3/5); 1];
  jellyPt7 = [ size*(3/5); -size; 1];
  jellyPt16= [-size*(2/5); -size; 1];
  jellyPt8 = [-size*(1.5); -size; 1];

%left side Tentacles
  jellyPt9 = [ -size; -size; 1];
  jellyPt10 = [ -size*(2/5); -size*(3/5); 1];
  jellyPt11 = [ -size*(10/5); -size*(3/5); 1];
  jellyPt12 = [ -size*1.5; 0; 1];

%right side Tentacles
  jellyPt13 = [-size*(2/5); size*(3/5); 1];
  jellyPt14 = [-size*(10/5); size*(3/5); 1];
  jellyPt15 = [-size*1.5; size; 1];

jel = [ jellyPt1, jellyPt2, jellyPt3, jellyPt4, jellyPt5, ...
        jellyPt6, jellyPt7, jellyPt8, jellyPt9, jellyPt10, ...
        jellyPt11, jellyPt12, jellyPt13, jellyPt14, jellyPt15, jellyPt16];

endfunction
