function canPlace = checkPlace(board, value, row, col)
% combines checkRow, checkCol, checkBox
if checkRow(board,value,row,col) && checkCol(board,value,row,col) && ...
   checkBox(board,value,row,col)
    canPlace = true;
else
    canPlace = false;
end
end