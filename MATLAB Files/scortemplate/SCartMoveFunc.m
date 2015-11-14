function SCartMoveFunc(~, SCartMoveFuncMess)

global ScorCartMoveRn ScorCartMoveRmsg;
CMXYZPR = SCartMoveFuncMess.Data;
ScorCartMoveR = ScorCartMove(CMXYZPR);
ScorCartMoveRmsg.Data = ScorCartMoveR;
send(ScorCartMoveRn,ScorCartMoveRmsg);

end