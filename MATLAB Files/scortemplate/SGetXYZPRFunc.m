function SGetXYZPRFunc(~, SGetXYZPRFuncMess)

global ScorGetXYZPRRn ScorGetXYZPRRmsg;
i = SGetXYZPRFuncMess.Data;
if (i==1)
    ScorGetXYZPRR = ScorGetXYZPR;
else
    ScorGetXYZPRR = 0;
end
ScorGetXYZPRRmsg.Data = ScorGetXYZPRR;
send(ScorGetXYZPRRn,ScorGetXYZPRRmsg);

end