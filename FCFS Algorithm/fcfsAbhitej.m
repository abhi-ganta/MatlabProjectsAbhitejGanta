function [assignment_vector] = fcfsAbhitej(lot_vector, tool_vector)
assignment_vector = zeros([length(lot_vector) 2]); 
%creates an assignment matrix to part number and tool number assignments to
for i = 1:length(lot_vector)
    obj_num = lot_vector(i).LotID; % grabs first object in input buffer
    % number of chambers in this tool
    n_tool = length(tool_vector);

    if obj_num~=0 % if there is a part waiting at the input buffer
        for j = 1:n_tool  % searches through tools
            if (tool_vector(j).ToolAvailable == 1)&&(tool_vector(j).ToolBroken~=0)&&...
                    (any(cellfun(@(x) ismember([lot_vector(i).TypeNum lot_vector(i).ProcessNum], x,'rows'),tool_vector(j).Processes))) %checks that tool is available and not broken
                tool_num = tool_vector(j).ToolID;% assign chamber to that object
                tool_vector(j).ToolAvailable=0;
                break;
            else
                tool_num = 0;
            end
        end
    else
        tool_num = 0; % if no part in the input buffer, no need to send a part to any chamber
    end
    temp_vector = [obj_num, tool_num]; 
    %creates a temporary vector that contains the part and which tool it is being assigned to
    assignment_vector(i,:) = temp_vector;
    %replaces current row with temp vector
    tool_num = 0;
end
%returns an assignment vector where the left column is the part number
%and the right column is the tool number it is assigned to

end