function SDeltaCartMoveFunc(~, SDeltaCartMoveFuncMess)

global ScorDeltaCartMoveRn ScorDeltaCartMoveRmsg;
deltaXYZPR = SDeltaCartMoveFuncMess.Data;
ScorDeltaCartMoveR = ScorDeltaCartMove(deltaXYZPR);
ScorDeltaCartMoveRmsg.Data = ScorDeltaCartMoveR;
send(ScorDeltaCartMoveRn,ScorDeltaCartMoveRmsg);

end