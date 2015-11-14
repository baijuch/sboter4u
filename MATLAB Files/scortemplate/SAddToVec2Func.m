function SAddToVec2Func(~, SAddToVec2FuncMess)

global ATVPt ATVXYZPR;
global ScorAddToVecRn ScorAddToVecRmsg;
ATVXYZPR = SAddToVec2FuncMess.Data;
ScorAddToVecR = ScorAddToVec(ATVPt,ATVXYZPR);
ScorAddToVecRmsg.Data = ScorAddToVecR;
send(ScorAddToVecRn,ScorAddToVecRmsg);

end