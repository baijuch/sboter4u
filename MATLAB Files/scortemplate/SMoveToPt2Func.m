function SMoveToPt2Func(~, SMoveToPt2FuncMess)

global MTPPt LorJ;
global ScorMoveToPtRn ScorMoveToPtRmsg;
LorJ = SMoveToPt2FuncMess.Data;
ScorMoveToPtR = ScorMoveToPt(MTPPt,LorJ);
ScorMoveToPtRmsg.Data = ScorMoveToPtR;
send(ScorMoveToPtRn,ScorMoveToPtRmsg);

end