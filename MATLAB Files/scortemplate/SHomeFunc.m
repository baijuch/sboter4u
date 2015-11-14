function SHomeFunc(~, SHomeFuncMess)

global ScorHomeRn ScorHomeRmsg;
i = SHomeFuncMess.Data;
if (i==1)
    ScorHome;
end
resp = 0;
ScorHomeRmsg.Data = resp;
send(ScorHomeRn,ScorHomeRmsg);

end