function canPlace = checkCol(board, value, row, col)
% This function checks to see if you can place value in col
canPlace = true;
for i=1:9
    if board(i,col) == value && i ~= row
        canPlace = false;
    end
end
end