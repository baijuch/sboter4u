function SJtMoveFunc(~, SJtMoveFuncMess)

global ScorJtMoveRn ScorJtMoveRmsg;
JMBSEPR = SJtMoveFuncMess.Data;
ScorJtMoveR = ScorJtMove(JMBSEPR);
ScorJtMoveRmsg.Data = ScorJtMoveR;
send(ScorJtMoveRn,ScorJtMoveRmsg);

end