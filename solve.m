function solve(board)
    % Init table
    [x,y] = findFirstEmpty(board);
    global timer;
    % if there is no empties
    if x == 0 && y == 0
        global solutions
        solutions = [solutions, board];
        if size(solutions,2) > 9
            return
        end
    % if it is flawed
    elseif cputime - timer > 5
        return
    % check board
    else
        for i=1:9
           if checkPlace(board,i,x,y)
               board(x,y) = i;
               solve(board);
           end
        end
    end
end