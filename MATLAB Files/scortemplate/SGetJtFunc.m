function SGetJtFunc(~, SGetJtFuncMess)

global ScorGetJtRn ScorGetJtRmsg;
i = SGetJtFuncMess.Data;
if (i==1)
    ScorGetJtR = ScorGetJt;
else
    ScorGetJtR = 0;
end
ScorGetJtRmsg.Data = ScorGetJtR;
send(ScorGetJtRn,ScorGetJtRmsg);

end