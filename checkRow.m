function canPlace = checkRow(board, value, row, col)
% This function checks to see if you can place value in row
canPlace = true;
for j=1:9
    if board(row,j) == value && col ~= j
        canPlace = false;
    end
end
end