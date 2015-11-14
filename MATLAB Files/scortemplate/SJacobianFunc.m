function SJacobianFunc(~, SJacobianFuncMess)

global ScorJacobianRn ScorJacobianRmsg;
JBSEPR = SJacobianFuncMess.Data;
ScorJacobianR = ScorJacobian(JBSEPR);
ScorJacobianRmsg.Data = ScorJacobianR;
send(ScorJacobianRn,ScorJacobianRmsg);

end