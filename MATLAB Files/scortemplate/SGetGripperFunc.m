function SGetGripperFunc(~, SGetGripperFuncMess)

global ScorGetGripperRn ScorGetGripperRmsg;
i = SGetGripperFuncMess.Data;
if (i==1)
    ScorGetGripperR = ScorGetGripper;
else
    ScorGetGripperR = 0;
end
ScorGetGripperRmsg.Data = ScorGetGripperR;
send(ScorGetGripperRn,ScorGetGripperRmsg);

end