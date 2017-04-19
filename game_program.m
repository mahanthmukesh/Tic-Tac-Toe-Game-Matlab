%% clear all the previous data
clear all;
clc;
close all;

%% create a board to play with 9 blocks using the figure.The plot is then resized and split into 9 block.The columns and rows are named as 1,2,3.
figure

x=[1,2,3,1,2,3,1,2,3];
y=[1,1,1,2,2,2,3,3,3];

board=plot(x,y,'ks','MarkerSize',70);

axis ij
grid minor
axis equal
axis([0,4,0,4])
set(gca,'xticklabel',[],'yticklabel',[])


text(0.2,1,'1')
text(0.2,2,'2')
text(0.2,3,'3')
text(0.9,3.7,'1')
text(1.9,3.7,'2')
text(2.9,3.7,'3')

text(0.45,0.3,'O = player 1')
text(1.45,0.3,'X = player 2')

hold on


%% initialise the matrix to save the moves played by the players. This Matrix contains the moves played by the players, If the value is 1 then it indicates that the particular block is marked by player X and If the value is 0 then it indicates that the particular block is marked by player O and If the value is -1 then it indicates that the particular block is empty

state = [[-1 -1 -1]
         [-1 -1 -1]
         [-1 -1 -1]];
winner=-1;
n=1;
m=1;



 while winner == -1
    if winner == -1    %loop ends at instant if any of the player won
     if n<6            %loop runs for 5 times so that the first player gets only 5 chances 
 %% turn of player 1 
[x,y] = oneturn;
markmove(x,y,'o')
state(y,x)=0;
winner = won(state);
pause(2)
n=n+1;

%% check whether anyone one
if winner == 0 % O won and the game ends exiting all the loops prompting O wins
        warndlg('O wins');
        title('O wins');
        xlabel('');
    elseif winner == 1 % X won and the game ends exiting all the loops prompting X wins 
        warndlg('X wins');
        title('X wins');
        xlabel('');
        
    end
     end
    end

 if winner == -1      %loop ends at instant if any of the player won
 if m<5               %loop runs for 4 times so that the second player gets only 4 chances
%% turn of player 2
[x,y]=twoturn;
markmove(x,y,'x')
state(y,x)=1;
winner= won(state);

%% check whether any one won
if winner == 0 % O won and the game ends exiting all the loops prompting O wins
        warndlg('O wins');
        title('O wins');
        xlabel('');
    elseif winner == 1 % X won and the game ends exiting all the loops prompting X wins
        warndlg('X wins');
        title('X wins');
        xlabel('');
end

pause(2)
m=m+1;
 end
 end
 end

   %% all the boxes are filled hence it is a tie and "game is tied" is prompted
  if winner~=0 && winner~=1              % else it's a tie
        warndlg('Tie');
        title('Tie');
        xlabel('');
  
  end



  
