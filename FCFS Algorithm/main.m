part1 = Lot;
part1.LotID = 1;
part1.TypeNum = 1;
part1.ProcessNum = 2;

part2 = Lot;
part2.LotID = 2;
part2.TypeNum = 2;
part2.ProcessNum = 1;

part3 = Lot;
part3.LotID = 3;
part3.TypeNum = 3;
part3.ProcessNum = 1;

part4 = Lot;
part4.LotID = 4;
part4.TypeNum = 1;
part4.ProcessNum = 3;

part5 = Lot;
part5.LotID = 5;
part5.TypeNum = 3;
part5.ProcessNum = 3;

part6 = Lot;
part6.LotID = 6;
part6.TypeNum = 2;
part6.ProcessNum = 2;

tool1 = Tool;
tool1.ToolID = 1;
tool1.ToolAvailable = 1;
tool1.ToolBroken = 1;
tool1.Processes = {[1 2],[1 3],[2 2],[2 3],[3 1], [3 3]};

tool2 = Tool;
tool2.ToolID = 2;
tool2.ToolAvailable = 1;
tool2.ToolBroken = 0;
tool2.Processes = {[1 1],[1 3],[2 1],[3 1],[3 2],[3 3]};

tool3 = Tool;
tool3.ToolID = 3;
tool3.ToolAvailable = 0;
tool3.ToolBroken = 1;
tool3.Processes = {[1 1],[1 2],[1 3],[2 1],[2 2],[2 3]};

tool4 = Tool;
tool4.ToolID = 4;
tool4.ToolAvailable = 1;
tool4.ToolBroken = 1;
tool4.Processes = {[2 1],[2 2],[2 3],[3 1],[3 2],[3 3]};

tool5 = Tool;
tool5.ToolID = 5;
tool5.ToolAvailable = 1;
tool5.ToolBroken = 1;
tool5.Processes = {[1 1],[1 2],[1 3],[3 1],[3 2],[3 3]};

tool6 = Tool;
tool6.ToolID = 6;
tool6.ToolAvailable = 1;
tool6.ToolBroken = 1;
tool6.Processes = {[1 1],[1 2],[1 3],[2 1],[2 2],[2 3],[3 1],[3 2],[3 3]};

lot_vector = [part1 part2 part3 part4 part5 part6];
tool_vector = [tool1 tool2 tool3 tool4 tool5 tool6];

[assignment_vector] = fcfsAbhitej(lot_vector,tool_vector);
