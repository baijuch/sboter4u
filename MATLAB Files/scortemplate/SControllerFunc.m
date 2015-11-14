function SControllerFunc(~, SControllerFuncMess)

global ScorJtMoveRn ScorJtMoveRmsg;
global ScorGetJtRn ScorGetJtRmsg;
global ScorSetGripperRn ScorSetGripperRmsg;
global ScorGetGripperRn ScorGetGripperRmsg;
global SCurrentRmsg SCurrentRn;
if(SControllerFuncMess.joint_trajectory.joint_names(1,1)=='base_joint')
bsepr = SControllerFuncMess.joint_trajectory.ponts.back().positions;
res = ScorJtMove(bsepr*180/3.14);
ScorJtMoveRmsg.Data = res;
send(ScorJtMoveRn,ScorJtMoveRmsg);
ScorGetJtR = ScorGetJt;
SCurrentRmsg.position = ScorGetJtR*3.14/180;
send(SCurrentRn,SCurrentRmsg);
else
    cm = SControllerFuncMess.joint_trajectory.ponts.back().positions(1,1);
    res = ScorSetGripper(cm*5);
    ScorSetGripperRmsg.Data = res;
    send(ScorSetGripperRn,ScorSetGripperRmsg);
    ScorGetGripperR = ScorGetGripper;
    ScorGetGripperRmsg.Data = ScorGetGripperR;
    send(ScorGetGripperRn,ScorGetGripperRmsg);
end
end