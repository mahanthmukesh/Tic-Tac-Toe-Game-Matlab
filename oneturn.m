function [c,r] = oneturn
prompt = {'ROW (1,2 or 3)','COLUMN(1,2 or 3)'}
name = 'Player 1 Enter your choice of ROW and COLUMN';
pt = inputdlg(prompt,name);
c = str2num(pt{2});
r = str2num(pt{1});
end
