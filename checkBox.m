function canPlace = checkBox(board, value, row, col)
% This function checks the 3x3 box to see if value can fit in
canPlace = true;
rowRange = 0;
colRange = 0;
if row <= 3
    rowRange = 1:3;
elseif row <= 6
    rowRange = 4:6;
elseif row <= 9
    rowRange = 7:9;
end

if col <= 3
    colRange = 1:3;
elseif col <= 6
    colRange = 4:6;
elseif col <= 9
    colRange = 7:9;
end

for i=1:3
    for j=1:3
        if board(rowRange(i),colRange(j)) == value
            canPlace = false;
        end
    end
end

end