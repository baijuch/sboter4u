function SDeltaJtMoveFunc(~, SDeltaJtMoveFuncMess)

global ScorDeltaJtMoveRn ScorDeltaJtMoveRmsg;
deltaBSEPR = SDeltaJtMoveFuncMess.Data;
ScorDeltaJtMoveR = ScorDeltaJtMove(deltaBSEPR);
ScorDeltaJtMoveRmsg.Data = ScorDeltaJtMoveR;
send(ScorDeltaJtMoveRn,ScorDeltaJtMoveRmsg);

end