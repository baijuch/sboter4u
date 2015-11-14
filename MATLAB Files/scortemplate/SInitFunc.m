function SInitFunc(~, SInitFuncMess)

global ScorInitRn ScorInitRmsg;
i = SInitFuncMess.Data;
if (i==1)
    ScorInit;
end
resp = 0;
ScorInitRmsg.Data = resp;
send(ScorInitRn,ScorInitRmsg);

end