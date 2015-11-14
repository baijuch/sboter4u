function SDeg2CntsFunc(~, SDeg2CntsFuncMess)

global ScorDeg2CntsRn ScorDeg2CntsRmsg;
D2CBSEPR = SDeg2CntsFuncMess.Data;
ScorDeg2CntsR = ScorDeg2Cnts(D2CBSEPR);
ScorDeg2CntsRmsg.Data = ScorDeg2CntsR;
send(ScorDeg2CntsRn,ScorDeg2CntsRmsg);

end