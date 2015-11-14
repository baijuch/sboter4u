function SInvKinFunc(~, SInvKinFuncMess)

global ScorInvKinRn ScorInvKinRmsg;
IKXYZPR = SInvKinFuncMess.Data;
ScorInvKinR = ScorInvKin(IKXYZPR);
ScorInvKinRmsg.Data = ScorInvKinR;
send(ScorInvKinRn,ScorInvKinRmsg);

end