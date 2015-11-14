function SControlEnableFunc(~, SControlEnableFuncMess)

global ScorControlEnableRn ScorControlEnableRmsg;
OnOff = SControlEnableFuncMess.Data;
ScorControlEnableR = ScorControlEnable(OnOff);
ScorControlEnableRmsg.Data = ScorControlEnableR;
send(ScorControlEnableRn,ScorControlEnableRmsg);

end