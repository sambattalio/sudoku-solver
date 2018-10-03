function sol = clearfunc(handles)
% clears board for a new puzzle

sol = [];

for i = 1:81
        y = num2str(i);
        handles.(['edit', y]).String = "";
end

for i = 1:81
        y = num2str(i);
        handles.(['sol', y]).String = "";
end

handles.messages.String = "";

end


