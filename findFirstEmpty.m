function [row,col] = findFirstEmpty(board)
% This function finds the first empty box and returns its index
% If no empty boxes, returns [0,0]
row = 0;
col = 0;
for i=1:9
    for j=1:9
        if board(i,j) == 0
            row = i;
            col = j;
            return;
        end
    end
end
end