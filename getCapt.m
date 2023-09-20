
## Author: Alan Parra <alanp@Alans-MacBook-Air.local>
## Created: 2023-08-30

function capt = getCapt (captSize)
%this makes a column vector

%right side
captPt1 = [   captSize;  captSize; 1];
captPt2 = [  -captSize;  captSize; 1];

%feet
captPt3 = [-3*captSize;  captSize; 1]; %left
captPt4 = [-3*captSize; -captSize; 1]; %right

%right side
captPt5 = [  -captSize; -captSize; 1];
captPt6 = [   captSize; -captSize; 1];

%head
captPt7 = [  captSize;  -captSize/2; 1];
captPt8 = [ 2 *captSize;  -captSize/2; 1];
captPt9 = [ 2*captSize;   captSize/2; 1];
captPt10 = [  captSize;   captSize/2; 1];

%hands
captPt11 = [   0;  2*captSize; 1];  %left
captPt12 = [   0;  -2*captSize; 1]; %right

%spear
captPt13=[ 3*captSize; -2*captSize; 1];
captPt14=[  -captSize; -2*captSize; 1];

% extra credit
% second spear
captPt15 = [3*captSize; 2*captSize;1] %spear tip on the other side
captPt16 = [-captSize; 2*captSize;1] %spear tip on the other side

%elbows
captPt17 = [.75*captSize; -1.5*captSize; 1]% right elbow
captPt18 = [.75*captSize; 1.5*captSize; 1]%left elbow

capt = [captPt1 , captPt2, captPt3, captPt4, captPt5, captPt6, ...
        captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, ...
        captPt13, captPt14, captPt15, captPt16, captPt17, captPt18];
endfunction
