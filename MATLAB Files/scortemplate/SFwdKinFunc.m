function SFwdKinFunc(~, SFwdKinFuncMess)

global ScorFwdKinRn ScorFwdKinRmsg;
FKBSEPR = SFwdKinFuncMess.Data;
ScorFwdKinR = ScorFwdKin(FKBSEPR);
ScorFwdKinRmsg.Data = ScorFwdKinR;
send(ScorFwdKinRn,ScorFwdKinRmsg);

end