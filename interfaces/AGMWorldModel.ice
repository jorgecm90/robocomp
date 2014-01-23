//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: AGMWorldModel.idl
//  Source: AGMWorldModel.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPAGMWORLDMODEL_ICE
#define ROBOCOMPAGMWORLDMODEL_ICE

module RoboCompAGMWorldModel{
	dictionary<string, string>StringDictionary;
	enum BehaviorResultType{InitialWorld, BehaviorBasedModification, BehaviorBasedNumericUpdate, StatusFailTimeout, StatusFailOther, StatusActive, StatusIdle};
	struct Node{
		StringDictionary attributes;
		int nodeIdentifier;
		string nodeType;
	};
	sequence <Node> NodeSequence;
	struct Edge{
		int a;
		int b;
		string edgeType;
	};
	sequence <Edge> EdgeSequence;
	struct World{
		NodeSequence nodes;
		EdgeSequence edges;
	};
	struct Event{
		BehaviorResultType why;
		World backModel;
		World newModel;
		string sender;
	};

};
  
#endif