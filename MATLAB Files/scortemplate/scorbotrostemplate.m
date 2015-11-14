%NAME:- VIJAY CHAUDHARI
%CLASS:- M.TECH.CAD-CAM.
%EN.NO.:-MT14CDM008

clc;
clear all;

hostn = input('Enter Target ROS MASTER IP = ','s');
rosinit(hostn);
%rosinit;
pause(5);
ScorInit;
pause(10);
ScorHome;
pause(10);
ScorGetJtR = ScorGetJt;
global SCurrentRmsg SCurrentRn;
%
global ATVPt ATVXYZPR;
global MTPPt LorJ;
global ScorControlEnableRn ScorControlEnableRmsg;
global ScorSetMovetimeRn ScorSetMovetimeRmsg;
global ScorSetSpeedRn ScorSetSpeedRmsg;
global ScorJacobianRn ScorJacobianRmsg;
global ScorFwdKinRn ScorFwdKinRmsg;
global ScorInvKinRn ScorInvKinRmsg;
global ScorAddToVecRn ScorAddToVecRmsg;
global ScorCapturePoseR1n ScorCapturePoseR1msg ScorCapturePoseR2n ScorCapturePoseR2msg;
global ScorMoveToPtRn ScorMoveToPtRmsg;
global ScorCnts2DegRn ScorCnts2DegRmsg;
global ScorDeg2CntsRn ScorDeg2CntsRmsg;
global ScorCartMoveRn ScorCartMoveRmsg;
global ScorDeltaCartMoveRn ScorDeltaCartMoveRmsg;
global ScorJtMoveRn ScorJtMoveRmsg;
global ScorDeltaJtMoveRn ScorDeltaJtMoveRmsg;
global ScorSetGripperRn ScorSetGripperRmsg;
global ScorGetJtRn ScorGetJtRmsg;
global ScorGetXYZPRRn ScorGetXYZPRRmsg;
global ScorGetGripperRn ScorGetGripperRmsg;
global ScorInitRn ScorInitRmsg;
global ScorHomeRn ScorHomeRmsg;
SInitPub = rospublisher('SInit',rostype.std_msgs_Bool);
SInitSub = rossubscriber('SInit',@SInitFunc);
SHomePub = rospublisher('SHome',rostype.std_msgs_Bool);
SHomeSub = rossubscriber('SHome',@SHomeFunc);
SControlEnablePub = rospublisher('SControlEnable',rostype.std_msgs_Bool);
SControlEnableSub = rossubscriber('SControlEnable',@SControlEnableFunc);
SSetMovetimePub = rospublisher('SSetMovetime',rostype.std_msgs_Float32);
SSetMovetimeSub = rossubscriber('SSetMovetime',@SSetMovetimeFunc);
SSetSpeedPub = rospublisher('SSetSpeed',rostype.std_msgs_Int8);
SSetSpeedSub = rossubscriber('SSetSpeed',@SSetSpeedFunc);
SJacobianPub = rospublisher('SJacobian',rostype.std_msgs_Float32MultiArray);
SJacobianSub = rossubscriber('SJacobian',@SJacobianFunc);
SFwdKinPub = rospublisher('SFwdKin',rostype.std_msgs_Float32MultiArray);
SFwdKinSub = rossubscriber('SFwdKin',@SFwdKinFunc);
SInvKinPub = rospublisher('SInvKin',rostype.std_msgs_Float32MultiArray);
SInvKinSub = rossubscriber('SInvKin',@SInvKinFunc);
SAddToVec1Pub = rospublisher('SAddToVec1',rostype.std_msgs_UInt32);
SAddToVec1Sub = rossubscriber('SAddToVec1',@SAddToVec1Func);
SAddToVec2Pub = rospublisher('SAddToVec2',rostype.std_msgs_Float32MultiArray);
SAddToVec2Sub = rossubscriber('SAddToVec2',@SAddToVec2Func);
SCapturePosePub = rospublisher('SCapturePose',rostype.std_msgs_UInt32);
SCapturePoseSub = rossubscriber('SCapturePose',@SCapturePoseFunc);
SMoveToPt1Pub = rospublisher('SMoveToPt1',rostype.std_msgs_UInt32);
SMoveToPt1Sub = rossubscriber('SMoveToPt1',@SMoveToPt1Func);
SMoveToPt2Pub = rospublisher('SMoveToPt2',rostype.std_msgs_Char);
SMoveToPt2Sub = rossubscriber('SMoveToPt2',@SMoveToPt2Func);
SCnts2DegPub = rospublisher('SCnts2Deg',rostype.std_msgs_Float32MultiArray);
SCnts2DegSub = rossubscriber('SCnts2Deg',@SCnts2DegFunc);
SDeg2CntsPub = rospublisher('SDeg2Cnts',rostype.std_msgs_Float32MultiArray);
SDeg2CntsSub = rossubscriber('SDeg2Cnts',@SDeg2CntsFunc);
SCartMovePub = rospublisher('SCartMove',rostype.std_msgs_Float32MultiArray);
SCartMoveSub = rossubscriber('SCartMove',@SCartMoveFunc);
SDeltaCartMovePub = rospublisher('SDeltaCartMove',rostype.std_msgs_Float32MultiArray);
SDeltaCartMoveSub = rossubscriber('SDeltaCartMove',@SDeltaCartMoveFunc);
SJtMovePub = rospublisher('SJtMove',rostype.std_msgs_Float32MultiArray);
SJtMoveSub = rossubscriber('SJtMove',@SJtMoveFunc);
SDeltaJtMovePub = rospublisher('SDeltaJtMove',rostype.std_msgs_Float32MultiArray);
SDeltaJtMoveSub = rossubscriber('SDeltaJtMove',@SDeltaJtMoveFunc);
SSetGripperPub = rospublisher('SSetGripper',rostype.std_msgs_Float32);
SSetGripperSub = rossubscriber('SSetGripper',@SSetGripperFunc);
SGetJtPub = rospublisher('SGetJt',rostype.std_msgs_Bool);
SGetJtSub = rossubscriber('SGetJt',@SGetJtFunc);
SGetXYZPRPub = rospublisher('SGetXYZPR',rostype.std_msgs_Bool);
SGetXYZPRSub = rossubscriber('SGetXYZPR',@SGetXYZPRFunc);
SGetGripperPub = rospublisher('SGetGripper',rostype.std_msgs_Bool);
SGetGripperSub = rossubscriber('SGetGripper',@SGetGripperFunc);
%
SControllerSub = rossubscriber('/move_group/fake_controller_joint_states',@SControllerFunc);
SCurrentRn = rospublisher('/joint_state',rostype.sensor_msgs_JointState);
SCurrentRmsg = rosmessage(SCurrentRn);
%
ScorInitRn = rospublisher('SInitR',rostype.std_msgs_Bool);
ScorInitRmsg = rosmessage(ScorInitRn);
ScorHomeRn = rospublisher('SHomeR',rostype.std_msgs_Bool);
ScorHomeRmsg = rosmessage(ScorHomeRn);
ScorControlEnableRn = rospublisher('SControlEnableR',rostype.std_msgs_Bool);
ScorControlEnableRmsg = rosmessage(ScorControlEnableRn);
ScorSetMovetimeRn = rospublisher('SSetMovetimeR',rostype.std_msgs_Bool);
ScorSetMovetimeRmsg = rosmessage(ScorSetMovetimeRn);
ScorSetSpeedRn = rospublisher('SSetSpeedR',rostype.std_msgs_Bool);
ScorSetSpeedRmsg = rosmessage(ScorSetSpeedRn);
ScorJacobianRn = rospublisher('SJacobianR',rostype.std_msgs_Float32MultiArray);
ScorJacobianRmsg = rosmessage(ScorJacobianRn);
ScorFwdKinRn = rospublisher('SFwdKinR',rostype.std_msgs_Float32MultiArray);
ScorFwdKinRmsg = rosmessage(ScorFwdKinRn);
ScorInvKinRn = rospublisher('SInvKinR',rostype.std_msgs_Float32MultiArray);
ScorInvKinRmsg = rosmessage(ScorInvKinRn);
ScorAddToVecRn = rospublisher('SAddToVecR',rostype.std_msgs_Bool);
ScorAddToVecRmsg = rosmessage(ScorAddToVecRn);
ScorCapturePoseR1n = rospublisher('SCapturePoseR1',rostype.std_msgs_Float32MultiArray);
ScorCapturePoseR1msg = rosmessage(ScorCapturePoseR1n);
ScorCapturePoseR2n = rospublisher('SCapturePoseR2',rostype.std_msgs_Bool);
ScorCapturePoseR2msg = rosmessage(ScorCapturePoseR2n);
ScorMoveToPtRn = rospublisher('SMoveToPtR',rostype.std_msgs_Bool);
ScorMoveToPtRmsg = rosmessage(ScorMoveToPtRn);
ScorCnts2DegRn = rospublisher('SCnts2DegR',rostype.std_msgs_Float32MultiArray);
ScorCnts2DegRmsg = rosmessage(ScorCnts2DegRn);
ScorDeg2CntsRn = rospublisher('SDeg2CntsR',rostype.std_msgs_Float32MultiArray);
ScorDeg2CntsRmsg = rosmessage(ScorDeg2CntsRn);
ScorCartMoveRn = rospublisher('SCartMoveR',rostype.std_msgs_Bool);
ScorCartMoveRmsg = rosmessage(ScorCartMoveRn);
ScorDeltaCartMoveRn = rospublisher('SDeltaCartMoveR',rostype.std_msgs_Bool);
ScorDeltaCartMoveRmsg = rosmessage(ScorDeltaCartMoveRn);
ScorJtMoveRn = rospublisher('SJtMoveR',rostype.std_msgs_Bool);
ScorJtMoveRmsg = rosmessage(ScorJtMoveRn);
ScorDeltaJtMoveRn = rospublisher('SDeltaJtMoveR',rostype.std_msgs_Bool);
ScorDeltaJtMoveRmsg = rosmessage(ScorDeltaJtMoveRn);
ScorSetGripperRn = rospublisher('SSetGripperR',rostype.std_msgs_Bool);
ScorSetGripperRmsg = rosmessage(ScorSetGripperRn);
ScorGetJtRn = rospublisher('SGetJtR',rostype.std_msgs_Float32MultiArray);
ScorGetJtRmsg = rosmessage(ScorGetJtRn);
ScorGetXYZPRRn = rospublisher('SGetXYZPRR',rostype.std_msgs_Float32MultiArray);
ScorGetXYZPRRmsg = rosmessage(ScorGetXYZPRRn);
ScorGetGripperRn = rospublisher('SGetGripperR',rostype.std_msgs_Float32);
ScorGetGripperRmsg = rosmessage(ScorGetGripperRn);
%
ScorGetJtRmsg.Data = ScorGetJtR;
send(ScorGetJtRn,ScorGetJtRmsg);


pause(1);
sh = input('Enter "1" To End = ');
if (sh==1)
    rosshutdown;
end

%END