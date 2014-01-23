//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: RobotTrajectory.idl
//  Source: RobotTrajectory.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPROBOTTRAJECTORY_ICE
#define ROBOCOMPROBOTTRAJECTORY_ICE

#include <DifferentialRobot.ice>

module RoboCompRobotTrajectory{
	struct State{
		string message;
	};
	struct Stage{
		int x;
		int z;
		bool pureRotation;
		float alpha;
				};
	sequence <Stage> Trajectory;

	interface RobotTrajectory{
		void  rotate(float alpha);
		void  rotateVel(float alpha, float vel);
		void  rotateWorld(float alpha);
		void  rotateWorldVel(float alpha, float vel);
		void  advance(float adv);
		void  advanceVel(float adv, float vel);
		void  gotoPointBezier(float x, float z, float alpha);
		void  gotoPointBezierVel(float x, float z, float alpha, float advVel, float rotVel);
		void  appendPointBezier(float x, float z, float alpha);
		void  appendPointBezierVel(float x, float z, float alpha, float advVel, float rotVel);
		void  gotoPoint(float x, float y);
		void  gotoPointVel(float x, float z, float advVel, float rotVel);
		void  gotoPointLine(float x, float z, float alpha);
		void  gotoPointLineVel(float x, float z, float alpha, float advVel, float rotVel);
		void  appendPointLine(float x, float z, float alpha);
		void  appendPointLineVel(float x, float z, float alpha, float advVel, float rotVel);
		void  gotoPointStraightBezier(float x, float z, float alpha);
		void  gotoPointStraightBezierVel(float x, float z, float alpha, float advVel, float rotVel);
		void  appendPointStraightBezier(float x, float z, float alpha);
		void  appendPointStraightBezierVel(float x, float z, float alpha, float advVel, float rotVel);
		void  setPathVel(Trajectory path, float advVel, float rotVel);
		void  setPath(Trajectory path);
		void  stopTrajectory();
		void  getTrajectory(out Trajectory path);
		bool isStopped();
		void  resetOdometer();
		void  setOdometer(robocompdsl.impl.InterfacesImpl@4f6d6ceb (eProxyURI: file:/home/jmartinez/robocomp/Interfaces/IDSLs/RobotTrajectory.idsl#xtextLink_::0.0.0.1.26.1.0.1::1::/0)::robocompdsl.impl.SequenceImpl@1909e10a (eProxyURI: file:/home/jmartinez/robocomp/Interfaces/IDSLs/RobotTrajectory.idsl#xtextLink_::0.0.0.1.26.1.0.1::2::/2) state);
	};
	interface RobotTrajectoryStorm{
		void  getState(State message);
	};
};
  
#endif