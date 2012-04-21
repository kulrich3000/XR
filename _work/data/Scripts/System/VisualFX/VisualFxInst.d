

//////////////////////////////////////
//
// 	Visual Effects
//	Instance-Definitions
//
//////////////////////////////////////

// visual effects config instance
// WICHTIG:
// die Parameter der Keys ver�ndern die effekte/visuals nur wenn ein Wert ungleich NULL angegeben wird,
// ausser bei INTEGER Variablen. Das heisst wenn ein KEY benutzt wird und ein Parameter den FX/das Visual �ndern
// soll, so muss dieser bei Floats leicht von 0 verschieden sein (z.B. 0.000001).
//
// Parameter der Keys wirken sich immer nur auf den ersten definierten PFX aus, bei Multi-PFX's nicht auf die Childs

INSTANCE SPELLFX_Lichtschwert (CFX_BASE_PROTO)
{
	visname_S 			= "MFX_LICHTSCHWERT";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	emAdjustShpToOrigin		= 1;
};

INSTANCE spellFX_Pyrokinesis_g1(CFx_Base_Proto)
{
		visname_S 		= "MFX_Pyrokinesis_g1_INIT";
		visAlpha		= 1;
		
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjtargetnode 	= "BIP01 HEAD";
		emtrjnumkeys 		= 1;
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 15.;
		emtrjangleheadvar 	= 0.;
		emtrjdynupdatedelay 	= 0.;
		emFXInvestTarget_S 	= "spellFX_Pyrokinesis_g1_target";
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		};

		INSTANCE spellFX_Pyrokinesis_g1_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1; 			
};

INSTANCE spellFX_Pyrokinesis_g1_TARGET(CFx_Base_Proto)
{
	visname_S 		= "MFX_Pyrokinesis_g1_TARGET";
	
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01 HEAD";
	lightPresetname 	= "FIRESMALL";
	emTrjTargetRange	= 0;
	emTrjTargetElev 	= 0;
	sendAssessMagic		= 1;
	emtrjdynupdatedelay = 0.01;
	
	sfxid				= "MFX_Pyrokinesis_g1_target";
	sfxisambient		= 1;
};

INSTANCE spellFX_Telekinese(CFx_Base_Proto)
{
		visname_S 		= "MFX_Telekinese_INIT";
		visAlpha		= 1;
		
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjtargetnode 	= "BIP01 HEAD";
		emtrjnumkeys 		= 1;
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 15.;
		emtrjangleheadvar 	= 0.;
		emtrjdynupdatedelay 	= 0.;
		emFXInvestTarget_S 	= "spellFX_Telekinese_target";
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		};

		INSTANCE spellFX_Telekinese_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1; 			
};

INSTANCE spellFX_Telekinese_TARGET(CFx_Base_Proto)
{
	visname_S 		= "MFX_Telekinese_TARGET";
	
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01 HEAD";
	lightPresetname 	= "FIRESMALL";
	emTrjTargetRange	= 0;
	emTrjTargetElev 	= 0;
	sendAssessMagic		= 1;
	emtrjdynupdatedelay = 0.01;
	
	sfxid				= "MFX_Telekinese_target";
	sfxisambient		= 1;
};

instance spellFX_engel(CFx_Base_Proto)
{
		visname_S 			= "MFX_engel_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_engel_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_Feuerschwert_CAST";
			emCreateFXID	= "spellFX_Feuerschwert_LEFTHAND";
		};

		instance spellFX_engel_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_Feuerschwert_ORIGIN";
};

instance spellFX_engel_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Feuerschwert_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_engel_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Feuerschwert_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "FIRE";
		};

		INSTANCE spellFX_engel_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_engel_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 500;
};
instance spellFX_soulsplit(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_soulsplit_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_soulsplit_LEFTHAND";
		};

		instance spellFX_soulsplit_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_soulsplit_ORIGIN";
};

instance spellFX_soulsplit_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_soul_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_soulsplit_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_soulsplit_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_soulsplit_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};

instance SPELLFX_DEATHWAVE(CFX_BASE_PROTO)
{
	visname_s = "MFX_DEATHWAVE_INIT";
	emtrjmode_s = "FIXED";
	emtrjoriginnode = "ZS_RIGHTHAND";
	emtrjloopmode_s = "NONE";
	emfxcreatedowntrj = 0;
};

instance SPELLFX_DEATHWAVE_KEY_INIT(C_PARTICLEFXEMITKEY)
{
	visname_s = "MFX_DEATHWAVE_INIT";
};

instance SPELLFX_DEATHWAVE_KEY_Invest(C_PARTICLEFXEMITKEY)
{
	visname_s = "MFX_DEATHWAVE_RIGHTHAND";
	emcreatefxid = "SPELLFX_DEATHWAVE_LEFTHAND";
};

instance SPELLFX_DEATHWAVE_KEY_CAST(C_PARTICLEFXEMITKEY)
{
	emcreatefxid = "spellFX_DEATHWAVE_EXPLOSION";
	pfx_ppsisloopingchg = 1;
};


instance spellFX_DeathWave_Invest		(CFx_Base_Proto)
{
		visname_s = "MFX_DEATHWAVE_RIGHTHAND";
		emtrjmode_s 		= "FIXED";
	emfxcolldyn_s = "spellFX_DEATHWAVE_LEFTHAND";
};

instance SPELLFX_DEATHWAVE_EXPLOSION(CFX_BASE_PROTO)
{
	visname_s = "MFX_DEATHWAVE_EXPLOSION";
	emtrjmode_s = "FIXED";
	emtrjoriginnode = "Bip01 L Hand";
	emfxcreate_s = "spellFX_DEATHWAVE_GROUND";
};

instance SPELLFX_DEATHWAVE_GROUND(CFX_BASE_PROTO)
{
	visname_s = "MFX_DEATHWAVE_CAST";
	emtrjoriginnode = "BIP01 R Foot";
	emactioncolldyn_s = "CREATEONCE";
	emfxcolldyn_s = "spellFX_DEATHWAVE_COLLIDEDYNFX";
	emfxcolldynalign_s = "COLLISIONNORMAL";
	emcheckcollision = 1;
	lightpresetname = "REDAMBIENCE";
	sfxid = "MFX_DEATHWAVE_Cast";
	sfxisambient = 1;
};

instance SPELLFX_DEATHWAVE_LEFTHAND(CFX_BASE_PROTO)
{
	visname_s = "MFX_DEATHWAVE_LEFTHAND";
	visalpha = 1;
	emtrjmode_s = "FIXED";
	emtrjoriginnode = "Bip01 L Hand";
	emfxcreate_s = "FX_EARTHQUAKE";
};

instance SPELLFX_DEATHWAVE_SUB(CFX_BASE_PROTO)
{
	visname_s = "";
	emtrjmode_s = "FIXED";
	emtrjoriginnode = "BIP01 HEAD";
};

instance SPELLFX_DEATHWAVE_COLLIDEDYNFX(CFX_BASE_PROTO)
{
	visname_s = "MFX_DEATHWAVE_TARGET";
	emtrjoriginnode = "BIP01";
	emfxcreatedowntrj = 1;
	emtrjmode_s = "FIXED";
	sfxid = "MFX_DEATHWAVE_Target";
};

INSTANCE spellFX_Control(CFx_Base_Proto)
{
		visName_S			=  "MFX_CONTROL_INIT";
		vissize_s			= "1 1";
		
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjtargetnode 	= "BIP01 HEAD";
		emtrjloopmode_s 	= "none";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;
		//lightPresetname 	= "POISON";
		//emselfrotvel_s 	= "0 0 50";
		emTrjTargetRange 	= 0;
		emTrjTargetElev  	= 0;
		
		emFXInvestTarget_S 	= "spellFX_Control_TARGET";	
		emFXInvestOrigin_S	= "spellFX_Control_BRIDGE";
		};

		INSTANCE spellFX_Control_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
				visname_s	= "simpleglow.tga";
				sfxid		= "MFX_CONTROL_STARTINVEST";
				sfxisambient= 1;
				
		};
		
		INSTANCE spellFX_Control_KEY_CAST		(C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg 	= 1;
				emCreateFXID			= "CONTROL_CASTBLEND";
				sfxid					= "MFX_CONTROL_CAST";
				sfxisambient			= 1;
};

INSTANCE spellFX_Control_TARGET(CFx_Base_Proto)
{
		visname_S 			= "MFX_CONTROL_TARGET";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01 HEAD";
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		sendAssessMagic		= 1;
};

INSTANCE spellFX_Control_BRIDGE	(CFx_Base_Proto)
{
		visname_S 			= "MFX_CONTROL_BRIDGE";
		
		emtrjmode_s 		= "TARGET LINE";
		emTrjOriginNode 	= "BIP01 HEAD";
		emtrjtargetnode 	= "BIP01 HEAD";
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		emFXCreate_S		= "spellFX_Control_ORIGIN";
		
		sfxid				= "MFX_CONTROL_INVEST";
		sfxisambient		= 1;
		
		};
		
		INSTANCE spellFX_Control_BRIDGE_KEY_INIT	(C_ParticleFXEmitKey)
		{
				emtrjeasevel	= 0.01;
};

instance spellFX_Teleport4(CFx_Base_Proto)
{
		visname_S 			= "MFX_Teleport_INIT";
		//visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		emFXInvestOrigin_S 	= "spellFX_Teleport_ORIGIN";
		lightpresetname		= "AURA";

		};

		instance spellFX_Teleport4_KEY_OPEN(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport4_KEY_INIT		(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport4_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			lightrange		= 100;
		};

		instance spellFX_Teleport4_KEY_CAST 	(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_Teleport_CAST";
			pfx_ppsIsLoopingChg = 1;
			lightrange 			= 200;
		};

instance spellFX_Teleport4_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_INVEST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		emFXCreate_S		= "spellFX_Teleport_Ring";
		sfxid				= "MFX_teleport_invest";
		sfxisambient		= 1;
};

instance spellFX_Teleport4_RING	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_RING";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

instance spellFX_Teleport4_CAST	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_CAST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		sfxid				= "MFX_teleport_Cast";
		sfxisambient		= 1;

		emtrjmode_s 		= "FIXED";
};

instance spellFX_Teleport5(CFx_Base_Proto)
{
		visname_S 			= "MFX_Teleport_INIT";
		//visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		emFXInvestOrigin_S 	= "spellFX_Teleport_ORIGIN";
		lightpresetname		= "AURA";

		};

		instance spellFX_Teleport5_KEY_OPEN(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport5_KEY_INIT		(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport5_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			lightrange		= 100;
		};

		instance spellFX_Teleport5_KEY_CAST 	(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_Teleport_CAST";
			pfx_ppsIsLoopingChg = 1;
			lightrange 			= 200;
		};

instance spellFX_Teleport5_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_INVEST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		emFXCreate_S		= "spellFX_Teleport_Ring";
		sfxid				= "MFX_teleport_invest";
		sfxisambient		= 1;
};

instance spellFX_Teleport5_RING	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_RING";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

instance spellFX_Teleport5_CAST	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_CAST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		sfxid				= "MFX_teleport_Cast";
		sfxisambient		= 1;

		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_Altern	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SUCKENERGY_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "PINGPONG_ONCE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S	   		= "spellFX_Whirlwind_SENDPERCEPTION";
     	emFXCollDynPerc_S	   	= "spellFX_SuckEnergy_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		emFXInvestOrigin_S		= "spellFX_SuckEnergy_Invest";
		
		};

		INSTANCE spellFX_Altern_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Altern_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SUCKENERGY_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 800;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_SuckEnergy_Cast";
	 			
		};

		INSTANCE spellFX_Altern_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


instance spellFX_Altern_Invest		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_INVEST";
		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_Altern_SlowTime(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


instance spellFX_Altern_BloodFly (CFx_Base_Proto)
{
	visname_S 			= "MFX_SUCKENERGY_FLYTOPLAYER";

	emtrjeasevel 		= 0.01;
	emtrjmode_s 		= "TARGET LINE";
	emTrjOriginNode 	= "Bip01 Spine2";
	emTrjTargetNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};

instance spellFX_Altern_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_TARGET";
		sendAssessMagic		= 1;
		sfxid				= "MFX_SuckEnergy_Target";
};

INSTANCE spellFX_Blutopfer	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Energyball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_Energyball_TARGET";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		};

		INSTANCE spellFX_Blutopfer_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Blutopfer_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
		};


		INSTANCE spellFX_Blutopfer_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_ENERGYBALL_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 900;
		     	sfxid					= "MFX_Thunderball_Collide3";
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Blutopfer_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};
instance spellFX_Blutopfer_TARGET	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_ENERGYBALL_TARGET";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	sendAssessMagic		= 1;
	
	sfxid				= "MFX_Lightning_ORIGIN";
	sfxisambient		= 1;
};

INSTANCE spellFX_ManaEntzug	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SUCKENERGY_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "PINGPONG_ONCE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S	   		= "spellFX_Whirlwind_SENDPERCEPTION";
     	emFXCollDynPerc_S	   	= "spellFX_SuckEnergy_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		emFXInvestOrigin_S		= "spellFX_SuckEnergy_Invest";
		
		};

		INSTANCE spellFX_ManaEntzug_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_ManaEntzug_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SUCKENERGY_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 800;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_SuckEnergy_Cast";
	 			
		};

		INSTANCE spellFX_ManaEntzug_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


instance spellFX_ManaEntzug_Invest		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_INVEST";
		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_ManaEntzug_SlowTime(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


instance spellFX_ManaEntzug_BloodFly (CFx_Base_Proto)
{
	visname_S 			= "MFX_SUCKENERGY_FLYTOPLAYER";

	emtrjeasevel 		= 0.01;
	emtrjmode_s 		= "TARGET LINE";
	emTrjOriginNode 	= "Bip01 Spine2";
	emTrjTargetNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};

instance spellFX_ManaEntzug_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_TARGET";
		sendAssessMagic		= 1;
		sfxid				= "MFX_SuckEnergy_Target";
};

INSTANCE spellFX_Seelenraub	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SLEEP_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Sleep_ORIGIN";
		//emFXInvestTarget_S 	= "spellFX_Sleep_TARGET";

		};

		INSTANCE spellFX_Seelenraub_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_SLEEP_INIT";
		};

		INSTANCE spellFX_Seelenraub_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SLEEP_ORIGIN";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_Sleep_Cast";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_Seelenraub_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "MFX_SLEEP_ORIGIN";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_Seelenraub_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "MFX_SLEEP_TARGET";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};

INSTANCE spellFX_Wahnsinn	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SLEEP_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Sleep_ORIGIN";
		//emFXInvestTarget_S 	= "spellFX_Sleep_TARGET";

		};

		INSTANCE spellFX_Wahnsinn_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_SLEEP_INIT";
		};

		INSTANCE spellFX_Wahnsinn_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SLEEP_ORIGIN";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_Sleep_Cast";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_Wahnsinn_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "MFX_SLEEP_ORIGIN";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_Wahnsinn_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "MFX_SLEEP_TARGET";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};

INSTANCE spellFX_Geisterspell	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SUCKENERGY_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "PINGPONG_ONCE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S	   		= "spellFX_Whirlwind_SENDPERCEPTION";
     	emFXCollDynPerc_S	   	= "spellFX_SuckEnergy_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		emFXInvestOrigin_S		= "spellFX_SuckEnergy_Invest";
		
		};

		INSTANCE spellFX_Geisterspell_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Geisterspell_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SUCKENERGY_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 800;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_SuckEnergy_Cast";
	 			
		};

		INSTANCE spellFX_Geisterspell_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


instance spellFX_Geisterspell_Invest		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_INVEST";
		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_Geisterspell_SlowTime(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


instance spellFX_Geisterspell_BloodFly (CFx_Base_Proto)
{
	visname_S 			= "MFX_SUCKENERGY_FLYTOPLAYER";

	emtrjeasevel 		= 0.01;
	emtrjmode_s 		= "TARGET LINE";
	emTrjOriginNode 	= "Bip01 Spine2";
	emTrjTargetNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};

instance spellFX_Geisterspell_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_TARGET";
		sendAssessMagic		= 1;
		sfxid				= "MFX_SuckEnergy_Target";
};

INSTANCE STARGATE_SCREENBLEND	(CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "10";
	userString[1]	=	"0 0 0 255";
	userString[2]	=	"3";
	userString[3]	=	"STARGATE_BLEND.TGA";
	visAlphaBlendFunc_S = "ADD";
 	
 	emFXLifeSpan    =	10;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  T H U N D E R S T O R M  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



INSTANCE spellFX_Thunderstorm(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Thunderstorm_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "FX_EARTHQUAKE";  // "spellFX_Thunderstorm_INVESTGLOW";
		};

		INSTANCE spellFX_Thunderstorm_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_Thunderstorm_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_Thunderstorm_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		//emFXCollDyn_S     		= "spellFX_Thunderstorm_COLLIDEDYNFX";
		emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "CATACLYSM";
     	//sfxid					= "MFX_Firerain_rain";
     	//sfxisambient			= 1;
     	
     	emFXCreatedOwnTrj 		= 1;
     	
     	emFXCreate_S			= "spellFX_ThunderStorm_Flash";
     	
     	sfxid					= "MFX_Thunderstorm_IceRain";
     	sfxisambient			= 1;
};


INSTANCE spellFX_Thunderstorm_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_InvestGlow";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetName 		= "REDAMBIENCE";
		//sfxid					= "MFX_Firerain_INVEST";
		//sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};



/*INSTANCE spellFX_Thunderstorm_Dome	(CFx_Base_Proto)
{
		//visname_S 				= "MFX_Thunderstorm_Dome";
		emtrjmode_s 			= "FIXED";
		
		emTrjOriginNode 		= "BIP01";
		//LightPresetName 		= "CATACLYSM";
		emFXCreatedOwnTrj 		= 1;
     	
     	
};*/

INSTANCE spellFX_Thunderstorm_Flash	(CFx_Base_Proto)
{
		emFXCreatedOwnTrj 		= 1;
		visname_S 				= "MFX_Thunderstorm_Flashes";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	
     	emFXCreate_S			=	"spellFX_ThunderStorm_Screenblend";
     	
     	sfxid					= "MFX_Thunderstorm_Thunder";
     	sfxisambient			= 1;
     	
};


INSTANCE spellFX_ThunderStorm_Screenblend	(CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "10";
	userString[1]	=	"0 0 0 120";
	userString[2]	=	"3";
	visAlphaBlendFunc_S = "BLEND";
 	
 	//userString[3]	=	"simpleglow.tga";
	emFXLifeSpan    =	10;
};

/*INSTANCE spellFX_ThunderStorm_Screenblend	(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "0.5";
	userString[1]	=	"255 255 255 255";
	userString[2]	=	"0.25";
	emFXLifeSpan    =	0.5;
	
};
*/


INSTANCE spellFX_ModifiedZap(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Thunderstorm_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "FX_EARTHQUAKE";  // "spellFX_ModifiedZap_INVESTGLOW";
		};

		INSTANCE spellFX_ModifiedZap_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_ModifiedZap_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_ModifiedZap_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		//emFXCollDyn_S     		= "spellFX_ModifiedZap_COLLIDEDYNFX";
		emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "CATACLYSM";
     	//sfxid					= "MFX_Firerain_rain";
     	//sfxisambient			= 1;
     	
     	emFXCreatedOwnTrj 		= 1;
     	
     	emFXCreate_S			= "spellFX_ModifiedZap_Flash";
     	
     	sfxid					= "MFX_Thunderstorm_IceRain";
     	sfxisambient			= 1;
};


INSTANCE spellFX_ModifiedZap_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_InvestGlow";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetName 		= "REDAMBIENCE";
		//sfxid					= "MFX_Firerain_INVEST";
		//sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};



/*INSTANCE spellFX_ModifiedZap_Dome	(CFx_Base_Proto)
{
		//visname_S 				= "MFX_Thunderstorm_Dome";
		emtrjmode_s 			= "FIXED";
		
		emTrjOriginNode 		= "BIP01";
		//LightPresetName 		= "CATACLYSM";
		emFXCreatedOwnTrj 		= 1;
     	
     	
};*/

INSTANCE spellFX_ModifiedZap_Flash	(CFx_Base_Proto)
{
		emFXCreatedOwnTrj 		= 1;
		visname_S 				= "MFX_Thunderstorm_Flashes";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	
     	emFXCreate_S			=	"spellFX_ModifiedZap_Screenblend";
     	
     	sfxid					= "MFX_Thunderstorm_Thunder";
     	sfxisambient			= 1;
     	
};


INSTANCE spellFX_ModifiedZap_Screenblend	(CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "10";
	userString[1]	=	"0 0 0 120";
	userString[2]	=	"3";
	visAlphaBlendFunc_S = "BLEND";
 	
 	//userString[3]	=	"simpleglow.tga";
	emFXLifeSpan    =	10;
};

/*INSTANCE spellFX_ModifiedZap_Screenblend	(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "0.5";
	userString[1]	=	"255 255 255 255";
	userString[2]	=	"0.25";
	emFXLifeSpan    =	0.5;
	
};
*/


INSTANCE spellFX_Hagel(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Thunderstorm_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "FX_EARTHQUAKE";  // "spellFX_Hagel_INVESTGLOW";
		};

		INSTANCE spellFX_Hagel_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_Hagel_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_Hagel_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		//emFXCollDyn_S     		= "spellFX_Hagel_COLLIDEDYNFX";
		emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "CATACLYSM";
     	//sfxid					= "MFX_Firerain_rain";
     	//sfxisambient			= 1;
     	
     	emFXCreatedOwnTrj 		= 1;
     	
     	emFXCreate_S			= "spellFX_Hagel_Flash";
     	
     	sfxid					= "MFX_Thunderstorm_IceRain";
     	sfxisambient			= 1;
};


INSTANCE spellFX_Hagel_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderstorm_InvestGlow";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetName 		= "REDAMBIENCE";
		//sfxid					= "MFX_Firerain_INVEST";
		//sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};

INSTANCE spellFX_Hagel_Flash	(CFx_Base_Proto)
{
		emFXCreatedOwnTrj 		= 1;
		visname_S 				= "MFX_Thunderstorm_Flashes";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	
     	emFXCreate_S			=	"spellFX_Hagel_Screenblend";
     	
     	sfxid					= "MFX_Thunderstorm_Thunder";
     	sfxisambient			= 1;
     	
};


INSTANCE spellFX_Hagel_Screenblend	(CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "10";
	userString[1]	=	"0 0 0 120";
	userString[2]	=	"3";
	visAlphaBlendFunc_S = "BLEND";
 	
 	//userString[3]	=	"simpleglow.tga";
	emFXLifeSpan    =	10;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S K U L L          XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Skull (CFX_BASE_PROTO)
{
     visname_s = "MFX_SKULL_INIT";
     visalpha = 1;
     //visalphablendfunc_s = "ADD";
     emtrjmode_s = "FIXED";
     emtrjoriginnode = "ZS_RIGHTHAND";
     emtrjtargetrange = 20;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 1;
     emtrjangleelevvar = 0;
     emtrjangleheadvar = 0;
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 100;
     emtrjdynupdatedelay = 20000;
     emFXCreatedOwnTrj = 1;
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};

		INSTANCE spellFX_Skull_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Skull_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCreateFXID		=  "spellFX_Skull_Skull";
	 			pfx_ppsIsLoopingChg		= 1;
	 			sfxid					= "MFX_Skull_Cast";
	 			sfxisambient			= 1;
};

		
INSTANCE spellFX_Skull_Skull (CFX_BASE_PROTO)
{
     visname_s = "MFX_SKULL_CAST";
     emtrjmode_s = "TARGET SPLINE RANDOM";
     emtrjoriginnode = "ZS_RIGHTHAND";
     emtrjtargetrange = 20;
     emtrjangleelevvar = 15;
     emtrjangleheadvar = 25;
     emtrjnumkeys		= 2;
     emtrjnumkeysvar	= 1;
     emtrjeasefunc_s = "LINEAR";
     emtrjdynupdatedelay = 0.1;
     emtrjdynupdatetargetonly = 1;
     emactioncolldyn_s = "COLLIDE CREATEONCE"; 	//"COLLIDE CREATEONCE";
//     emactioncollstat_s = "COLLIDE CREATEONCE";
     emfxcollstat_s = "spellFX_Skull_COLLIDEFX";
     emfxcolldyn_s = "spellFX_Skull_SPREAD";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
     
     emtrjeasevel = 700;	 
	};
	
	INSTANCE spellFX_Skull_Skull_KEY_CAST	(C_ParticleFXEmitKey)
	{
		emCheckCollision 		= 1;
		sfxid				= "MFX_Skull_Fly";
	};
	
	

INSTANCE spellFX_Skull_SPREAD	(CFx_Base_Proto)
{
     	visname_S 				= "MFX_SKULL_SPREAD";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	
     	emActionCollStat_S		= "CREATE CREATEQUAD";
     	emActionCollDyn_S 		= "CREATEONCE";
		emFXCollDyn_S     		= "spellFX_Skull_COLLIDEFX";
		
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emCheckCollision		= 1;
		
		sfxid					= "MFX_FIrestorm_Collide";
		sfxisambient			= 1;
};


instance spellFX_Skull_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Skull_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_Skull_Collide";
		lightPresetname   	= "REDAMBIENCE";
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U C K   E N E R G Y     XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_SuckEnergy	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SUCKENERGY_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "PINGPONG_ONCE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S	   		= "spellFX_Whirlwind_SENDPERCEPTION";
     	emFXCollDynPerc_S	   	= "spellFX_SuckEnergy_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		emFXInvestOrigin_S		= "spellFX_SuckEnergy_Invest";
		
		};

		INSTANCE spellFX_SuckEnergy_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_SuckEnergy_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SUCKENERGY_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 800;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_SuckEnergy_Cast";
	 			
		};

		INSTANCE spellFX_SuckEnergy_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


instance spellFX_SuckEnergy_Invest		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_INVEST";
		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_SuckEnergy_SlowTime(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


instance spellFX_SuckEnergy_BloodFly (CFx_Base_Proto)
{
	visname_S 			= "MFX_SUCKENERGY_FLYTOPLAYER";

	emtrjeasevel 		= 0.01;
	emtrjmode_s 		= "TARGET LINE";
	emTrjOriginNode 	= "Bip01 Spine2";
	emTrjTargetNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};

instance spellFX_SuckEnergy_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_TARGET";
		sendAssessMagic		= 1;
		sfxid				= "MFX_SuckEnergy_Target";
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  E N E R G Y B A L L       XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Schwaechen	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SUCKENERGY_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "PINGPONG_ONCE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S	   		= "spellFX_Whirlwind_SENDPERCEPTION";
     	emFXCollDynPerc_S	   	= "spellFX_Schwaechen_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		emFXInvestOrigin_S		= "spellFX_Schwaechen_Invest";
		
		};

		INSTANCE spellFX_Schwaechen_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Schwaechen_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SUCKENERGY_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 800;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_SuckEnergy_Cast";
	 			
		};

		INSTANCE spellFX_Schwaechen_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


instance spellFX_Schwaechen_Invest		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_INVEST";
		emtrjmode_s 		= "FIXED";
};

INSTANCE spellFX_Schwaechen_SlowTime(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


instance spellFX_Schwaechen_BloodFly (CFx_Base_Proto)
{
	visname_S 			= "MFX_SUCKENERGY_FLYTOPLAYER";

	emtrjeasevel 		= 0.01;
	emtrjmode_s 		= "TARGET LINE";
	emTrjOriginNode 	= "Bip01 Spine2";
	emTrjTargetNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};

instance spellFX_Schwaechen_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_SUCKENERGY_TARGET";
		sendAssessMagic		= 1;
		sfxid				= "MFX_SuckEnergy_Target";
};

INSTANCE spellFX_Energyball	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Energyball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_Energyball_TARGET";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		lightPresetname   		= "REDAMBIENCE";

		};

		INSTANCE spellFX_Energyball_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Energyball_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
		};


		INSTANCE spellFX_Energyball_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_ENERGYBALL_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 900;
		     	sfxid					= "MFX_Thunderball_Collide3";
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Energyball_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};
instance spellFX_Energyball_TARGET	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_ENERGYBALL_TARGET";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	sendAssessMagic		= 1;
	
	sfxid				= "MFX_Lightning_ORIGIN";
	sfxisambient		= 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  I C E L A N C E    XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Icelance	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Icelance_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollStat_S	   		= "spellFX_Icelance_COLLIDEFX";
     	emFXCollDyn_S	   		= "spellFX_Icelance_COLLIDEFX";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emFXCreatedOwnTrj		= 0;
	 			
		
		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_Icelance_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Icelance_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Icelance_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Icelance_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_Icelance_Cast";
	 			//emCreateFXID			=  "spellFX_InvisibleProjectile";
		};

		INSTANCE spellFX_Icelance_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_Icelance_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Icelance_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
		lightPresetname   	= "FIRESMALL";
		sfxid				= "MFX_Icelance_Collide";
};

/*instance spellFX_Icelance_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "TENTACLE01_MESH.MMS";
		emTrjOriginNode 	= "BIP01";
     	visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};*/


INSTANCE spellFX_Firelance	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Firelance_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollStat_S	   		= "spellFX_Firelance_COLLIDEFX";
     	emFXCollDyn_S	   		= "spellFX_Firelance_COLLIDEFX";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emFXCreatedOwnTrj		= 0;
	 			
		
		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_Firelance_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Firelance_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Firelance_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Firelance_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_Icelance_Cast";
	 			//emCreateFXID			=  "spellFX_InvisibleProjectile";
		};

		INSTANCE spellFX_Firelance_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_Firelance_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Firelance_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
		lightPresetname   	= "FIRESMALL";
		sfxid				= "MFX_Icelance_Collide";
};
///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  W A T E R F I S T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE SPELLFX_WATERFIST (CFX_BASE_PROTO)
{
     visname_s = "MFX_WATERFIST_INIT";
     visalpha = 1;
     //visalphablendfunc_s = "ADD";
     emtrjmode_s = "FIXED";
     emtrjoriginnode = "ZS_RIGHTHAND";
     emtrjtargetrange = 50;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 1;
     emtrjangleelevvar = 0;
     emtrjangleheadvar = 0;
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 100;
     emtrjdynupdatedelay = 20000;
     emFXCreatedOwnTrj = 1;
     //emactioncolldyn_s = "COLLIDE CREATEONCE";
     //emactioncollstat_s = "COLLIDE CREATE";
     //emfxcollstat_s = "SPELLFX_WATERFIST_COLLIDEFX";
     //emfxcolldyn_s = "SPELLFX_WATERFIST_COLLIDEDYNFX";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};

		INSTANCE spellFX_Waterfist_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Waterfist_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Waterfist_INIT";
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Waterfist_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCreateFXID		=  "spellfx_waterfist_Abyss";
	 			pfx_ppsIsLoopingChg		= 1;
};

		

instance spellFX_Waterfist_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_waterfist_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
		
		sfxid				= "MFX_Waterfist_Collide";
		sfxisambient		= 1;
};

instance spellFX_Waterfist_COLLIDEDYNFX  (CFx_Base_Proto)
{
		visname_S 			= "MFX_waterfist_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
		
		sfxid				= "MFX_Waterfist_Collide";
		sfxisambient		= 1;
};

INSTANCE SPELLFX_WATERFIST_ABYSS (CFX_BASE_PROTO)
{
     visname_s = "MFX_WATERFIST_CAST";
     visalpha = 1;
     visalphablendfunc_s = "ADD";
     emtrjmode_s = "TARGET SPLINE RANDOM";
     emtrjoriginnode = "ZS_RIGHTHAND";
     //emtrjtargetrange = 20;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 2;
     emtrjangleelevvar = 5;
     emtrjangleheadvar = 10;
     emtrjloopmode_s = "NONE";
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 900;
     emtrjdynupdatedelay = 0.1;
     emtrjdynupdatetargetonly = 1;
     emactioncolldyn_s = "COLLIDE CREATEONCE";
     emactioncollstat_s = "COLLIDE CREATE";
     emfxcollstat_s = "SPELLFX_WATERFIST_COLLIDEFX";
     emfxcolldyn_s = "SPELLFX_WATERFIST_COLLIDEDYNFX";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};
		
		INSTANCE spellFX_Waterfist_Abyss_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCheckCollision 		= 1;
				sfxid					= "MFX_Waterfist_Cast";
		};

		INSTANCE spellFX_Waterfist_Abyss_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};



INSTANCE SPELLFX_Spucke (CFX_BASE_PROTO)
{
     visname_s = "MFX_Spucke_INIT";
     visalpha = 1;
     //visalphablendfunc_s = "ADD";
     emtrjmode_s = "FIXED";
     emtrjoriginnode = "BIP01 HEAD";
     emtrjtargetrange = 50;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 1;
     emtrjangleelevvar = 0;
     emtrjangleheadvar = 0;
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 100;
     emtrjdynupdatedelay = 20000;
     emFXCreatedOwnTrj = 1;
     //emactioncolldyn_s = "COLLIDE CREATEONCE";
     //emactioncollstat_s = "COLLIDE CREATE";
     //emfxcollstat_s = "SPELLFX_Spucke_COLLIDEFX";
     //emfxcolldyn_s = "SPELLFX_Spucke_COLLIDEDYNFX";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};

		INSTANCE spellFX_Spucke_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Spucke_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Spucke_INIT";
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Spucke_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCreateFXID		=  "spellfx_Spucke_Abyss";
	 			pfx_ppsIsLoopingChg		= 1;
};

		

instance spellFX_Spucke_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Spucke_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
		
		sfxid				= "MFX_Waterfist_Collide";
		sfxisambient		= 1;
};

instance spellFX_Spucke_COLLIDEDYNFX  (CFx_Base_Proto)
{
		visname_S 			= "MFX_Spucke_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
		
		sfxid				= "MFX_Waterfist_Collide";
		sfxisambient		= 1;
};

INSTANCE SPELLFX_Spucke_ABYSS (CFX_BASE_PROTO)
{
     visname_s = "MFX_Spucke_CAST";
     visalpha = 1;
     visalphablendfunc_s = "ADD";
     emtrjmode_s = "TARGET SPLINE";
     emtrjoriginnode = "BIP01 HEAD";
     //emtrjtargetrange = 20;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 2;
     emtrjangleelevvar = 5;
     emtrjangleheadvar = 10;
     emtrjloopmode_s = "NONE";
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 900;
     emtrjdynupdatedelay = 0.1;
     emtrjdynupdatetargetonly = 1;
     emactioncolldyn_s = "COLLIDE CREATEONCE";
     emactioncollstat_s = "COLLIDE CREATE";
     emfxcollstat_s = "SPELLFX_Spucke_COLLIDEFX";
     emfxcolldyn_s = "SPELLFX_Spucke_COLLIDEDYNFX";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};
		
		INSTANCE spellFX_Spucke_Abyss_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCheckCollision 		= 1;
				sfxid					= "MFX_Waterfist_Cast";
		};

		INSTANCE spellFX_Spucke_Abyss_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};





///   													XXXXXXXXXXXXXXXXX
///   													XX  S W A R M  XX
///   													XXXXXXXXXXXXXXXXX


INSTANCE spellFX_Swarm	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_SWARM_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	
     	emtrjangleelevvar 	= 15;
     	emtrjangleheadvar 	= 25;
     	emtrjnumkeys		= 2;
     	emtrjnumkeysvar		= 1;
     
     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "CREATEONCE";
     	emFXCollDynPerc_S	   	= "spellFX_Whirlwind_SENDPERCEPTION";
     	
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		
		};

		INSTANCE spellFX_Swarm_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SWARM_CAST";
     	
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 500;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_Swarm_Cast";
		};

		INSTANCE spellFX_Swarm_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  G R E E N T E N T A C L E  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Greententacle	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_GREENTENTACLE_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	
     	};

		INSTANCE spellFX_Greententacle_KEY_CAST (C_ParticleFXEmitKey)
		{
				
				emCreateFXID			= "spellFX_Greententacle_Bridge";
				
				emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
		     	
				
				emtrjmode_s 			= "TARGET SPLINE RANDOM";
				emtrjeasevel 			= 500;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Greententacle_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	
};

INSTANCE spellFX_Greententacle_Bridge (CFX_BASE_PROTO)
{
     visname_S 		= "MFX_GREENTENTACLE_CAST";
     visalpha		= 1;
     visalphablendfunc_s = "ADD";
     emtrjmode_s = "TARGET SPLINE RANDOM";
     emtrjoriginnode = "ZS_RIGHTHAND";
     //emtrjtargetrange = 20;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 2;
     emtrjangleelevvar = 5;
     emtrjangleheadvar = 10;
     emtrjloopmode_s = "NONE";
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 900;
     emtrjdynupdatedelay = 0.1;
     emtrjdynupdatetargetonly = 1;
     emactioncolldyn_s = "COLLIDE CREATEONCE";
     emactioncollstat_s = "COLLIDE";
     emfxcolldynPerc_s = "SPELLFX_Greententacle_Target";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};
		
		INSTANCE spellFX_Greententacle_Bridge_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Greententacle_Bridge_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};


instance SpellFX_Greententacle_TARGET(CFx_Base_Proto)
{
		emTrjOriginNode 	= "BIP01";
     	visname_S 			= "MFX_Greententacle_Target";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_Greententacle_Grow";
		sendAssessMagic		= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  G E Y S E R      XX
///  													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Laehmen	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Laehmen_INIT";
     	
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	
     	};

		INSTANCE spellFX_Laehmen_KEY_CAST (C_ParticleFXEmitKey)
		{
				
				emCreateFXID			= "spellFX_Laehmen_Bridge";
				
				emtrjeasevel 			= 0.000001;
		     	pfx_ppsisloopingchg		= 1;
		     	
				
				emtrjmode_s 			= "TARGET SPLINE RANDOM";
				emtrjeasevel 			= 500;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Laehmen_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	
};

INSTANCE spellFX_Laehmen_Bridge (CFX_BASE_PROTO)
{
     visname_S 		= "MFX_Laehmen_CAST";
     visalpha		= 1;
     visalphablendfunc_s = "ADD";
     emtrjmode_s = "TARGET SPLINE RANDOM";
     emtrjoriginnode = "ZS_RIGHTHAND";
     //emtrjtargetrange = 20;
     emtrjnumkeys = 4;
     emtrjnumkeysvar = 2;
     emtrjangleelevvar = 5;
     emtrjangleheadvar = 10;
     emtrjloopmode_s = "NONE";
     emtrjeasefunc_s = "LINEAR";
     emtrjeasevel = 900;
     emtrjdynupdatedelay = 0.1;
     emtrjdynupdatetargetonly = 1;
     emactioncolldyn_s = "COLLIDE CREATEONCE";
     emactioncollstat_s = "COLLIDE";
     emfxcolldynPerc_s = "SPELLFX_Laehmen_Target";
     emfxlifespan = -1;
     emselfrotvel_s = "0 0 0";
     secsperdamage = -1;
};
		
		INSTANCE spellFX_Laehmen_Bridge_KEY_CAST (C_ParticleFXEmitKey)
		{
				emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Laehmen_Bridge_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	emtrjeasevel 			= 0.000001;
};


instance SpellFX_Laehmen_TARGET(CFx_Base_Proto)
{
		emTrjOriginNode 	= "BIP01";
     	visname_S 			= "MFX_Laehmen_Target";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_Laehmen_Grow";
		sendAssessMagic		= 1;
};  			


INSTANCE spellFX_Geyser (CFx_Base_Proto)
{

     	visname_S 				= "MFX_GEYSER_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_Geyser_FOUNTAIN";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		

		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_Geyser_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_Geyser_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
			emCreateFXID			= "spellFX_Geyser_Rumble";
				
		};


		INSTANCE spellFX_Geyser_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_GEYSER_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 1000;
		     	lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_Geyser_Rumble";
				sfxisambient			= 1;
		};

		INSTANCE spellFX_Geyser_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_Geyser_FOUNTAIN	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_GEYSER_FOUNTAIN";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	//sendAssessMagic		= 1;

	sfxid				= "MFX_Geyser_Fountain";
	sfxisambient		= 1;
};

instance spellFX_Geyser_RUMBLE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	
	sfxid				= "MFX_Geyser_Rumble";
	sfxisambient		= 1;
}; 	

INSTANCE spellFX_GolemGeyser (CFx_Base_Proto)
{

     	visname_S 				= "MFX_GEYSER_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_GolemGeyser_FOUNTAIN";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		

		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_GolemGeyser_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_GolemGeyser_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
			emCreateFXID			= "spellFX_GolemGeyser_Rumble";
				
		};


		INSTANCE spellFX_GolemGeyser_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_GEYSER_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 1000;
		     	lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_Geyser_Rumble";
				sfxisambient			= 1;
		};

		INSTANCE spellFX_GolemGeyser_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_GolemGeyser_FOUNTAIN	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_GEYSER_FOUNTAIN";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	//sendAssessMagic		= 1;

	sfxid				= "MFX_Geyser_Fountain";
	sfxisambient		= 1;
};

instance spellFX_GolemGeyser_RUMBLE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	
	sfxid				= "MFX_Geyser_Rumble";
	sfxisambient		= 1;
}; 				


INSTANCE spellFX_ZERFLEISCHEN (CFx_Base_Proto)
{

     	visname_S 				= "MFX_ZERFLEISCHEN_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_ZERFLEISCHEN_FOUNTAIN";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		

		lightPresetname   		= "REDAMBIENCE";

		};

		INSTANCE spellFX_ZERFLEISCHEN_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_ZERFLEISCHEN_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
			emCreateFXID			= "spellFX_ZERFLEISCHEN_Rumble";
				
		};


		INSTANCE spellFX_ZERFLEISCHEN_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_ZERFLEISCHEN_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 1000;
		     	lightrange 				= 100;
	 			emCheckCollision 		= 1;
	 			sfxid					= "MFX_ZERFLEISCHEN_Rumble";
				sfxisambient			= 1;
		};

		INSTANCE spellFX_ZERFLEISCHEN_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_ZERFLEISCHEN_FOUNTAIN	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_ZERFLEISCHEN_FOUNTAIN";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	//sendAssessMagic		= 1;

	sfxid				= "MFX_ZERFLEISCHEN_Fountain";
	sfxisambient		= 1;
};

instance spellFX_ZERFLEISCHEN_RUMBLE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	
	sfxid				= "MFX_ZERFLEISCHEN_Rumble";
	sfxisambient		= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  W H I R L W I N D    XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXX





INSTANCE spellFX_Whirlwind	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_WHIRLWIND_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		//emFXCollStat_S	   		= "spellFX_Whirlwind_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Whirlwind_TARGET";
		emFXCollDynPerc_S     	= "spellFX_Whirlwind_SENDPERCEPTION";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		

		emFXInvestOrigin_S		= "spellFX_Whirlwind_Invest";
		//visAlpha				= 0;

		};

		INSTANCE spellFX_Whirlwind_KEY_OPEN(C_ParticleFXEmitKey)
		{
				Lightrange				= 0.01;
		};

		INSTANCE spellFX_Whirlwind_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_WHIRLWIND_INIT";
				Lightrange				= 0.01;
				scaleDuration			= 0.5;
		};
		
		INSTANCE spellFX_Whirlwind_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_WHIRLWIND_GROW";
				//emCreateFXID			= "spellFX_Whirlwind_Invest";
				Lightrange				= 0.01;
				pfx_visAlphaStart		= 100;
		};


		INSTANCE spellFX_Whirlwind_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_visAlphaStart		= 150;
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 400.;
	 			emCheckCollision		= 1;
	 			Lightrange				= 100;
	 			sfxid					= "MFX_Windfist_Cast";
				sfxisambient			= 1;

		};

		INSTANCE spellFX_Whirlwind_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
		     	pfx_ppsIsLoopingChg		= 1;
				//emCheckCollision		= 0;
};

instance spellFX_Whirlwind_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ICESPELL_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_ICECUBE_COLLIDE";
};

instance spellFX_Whirlwind_Invest		(CFx_Base_Proto)
{
		//visname_S 			= "MFX_WHIRLWIND_ORIGIN";
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_WHIRLWIND_INVEST";
		sfxisambient		= 1;
};


instance spellFX_Whirlwind_Sound		(CFx_Base_Proto)
{
		visname_S 			= "";
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_WHIRLWIND_INVEST";
		sfxisambient		= 1;
};


// HUMAN oder VOB ist gefangen in einer WindHose

instance spellFX_Whirlwind_TARGET(CFx_Base_Proto)
{
		emTrjOriginNode 	= "BIP01";
     	visname_S 			= "MFX_Whirlwind_Target";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		//sendAssessMagic		= 1;
		sfxid				= "MFX_Whirlwind_Target";
		sfxisambient		= 1;
};

instance spellFX_Whirlwind_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "";
		sendAssessMagic		= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  I N V O C A T I O N  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_INCOVATION_RED (CFx_Base_Proto)
{
		visname_S 			= "INVOCATION_RED";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		lightpresetname		= "REDAMBIENCE";
    	sfxid				= "SFX_Circle";
     	sfxisambient		= 1;
};

INSTANCE spellFX_INCOVATION_GREEN (CFx_Base_Proto)
{
		visname_S 			= "INVOCATION_GREEN";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		lightpresetname		= "POISON";
    	sfxid				= "SFX_Circle";
     	sfxisambient		= 1;
};

INSTANCE spellFX_INCOVATION_BLUE (CFx_Base_Proto)
{
		visname_S 			= "INVOCATION_BLUE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		lightpresetname		= "REDAMBIENCE";
    	sfxid				= "SFX_Circle";
     	sfxisambient		= 1;
};

INSTANCE spellFX_INCOVATION_VIOLET (CFx_Base_Proto)
{
		visname_S 			= "INVOCATION_VIOLET";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		lightpresetname		= "CATACLYSM";
    	sfxid				= "SFX_Circle";
     	sfxisambient		= 1;
};

INSTANCE spellFX_INCOVATION_WHITE (CFx_Base_Proto)
{
		visname_S 			= "INVOCATION_WHITE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		lightpresetname		= "WHITEBLEND";
    	sfxid				= "SFX_Circle";
     	sfxisambient		= 1;
};
///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  L I G H T S T A R  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_LIGHTSTAR_VIOLET (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_VIOLET";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

INSTANCE spellFX_LIGHTSTAR_WHITE (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_WHITE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

INSTANCE spellFX_LIGHTSTAR_BLUE (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_BLUE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};
INSTANCE spellFX_LIGHTSTAR_RED (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_RED";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};
INSTANCE spellFX_LIGHTSTAR_GREEN (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_GREEN";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};
INSTANCE spellFX_LIGHTSTAR_ORANGE (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_ORANGE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX Innosauge anlegen   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_Innoseye	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Innoseye";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	   // emFXCreate_S	 	= "spellFX_PalHeal_START";
		emtrjmode_s 		= "FIXED";
		LightPresetname		= "REDAMBIENCE";
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX Schreine helen	   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_HealShrine	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HealShrine";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	   // emFXCreate_S	 	= "spellFX_PalHeal_START";
		emtrjmode_s 		= "FIXED";
		LightPresetname		= "WHITEBLEND";
};

///   													XXXXXXXXXXXXXXXXX
///   													XX RingRitual  XX
///   													XXXXXXXXXXXXXXXXX
instance spellFX_RingRitual1	(CFx_Base_Proto) //ADDON
{
     	visname_S 				= "MFX_Firestorm_SPREAD_SMALL";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "CREATE CREATEQUAD";
     	//emActionCollDyn_S 		= "CREATEONCE";
		//emFXCollStat_S	   	= "spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
		emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		//emFXCollDynPerc_S     	= "vob_magicburn";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emCheckCollision		= 1;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "40 40";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		emFXCreate_S			= "spellFX_Firestorm_COLLIDE";

		sfxid					= "MFX_FIrestorm_Collide";
		sfxisambient			= 1;
		};

		INSTANCE spellFX_RingRitual1_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_RingRitual1_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
		};
		
instance spellFX_RingRitual2	(CFx_Base_Proto) //ADDON
{
		visname_S 			= "MFX_RINGRITUAL2";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		//lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_LIGHTSTAR_RingRitual (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_ORANGE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
    	sfxid				= "MFX_Firerain_Invest";
		sfxisambient		= 1;
};

INSTANCE spellFX_Prisma (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_PRISMA";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
    	sfxid				= "MFX_Firerain_Invest";
		sfxisambient		= 1;
};

INSTANCE spellFX_Blueglow (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_BLUE";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
    	sfxid				= "MFX_Firerain_Invest";
		sfxisambient		= 1;
};

INSTANCE spellFX_Redglow (CFx_Base_Proto)
{
		visname_S 			= "LIGHTSTAR_RED";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
    	sfxid				= "MFX_Firerain_Invest";
		sfxisambient		= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXX
///   													XX ItemAusbuddeln  XX
///   													XXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_ItemAusbuddeln	(CFx_Base_Proto)
{
		visname_S 			= "";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
     	emtrjeasevel 		= 0.;
     	emTrjOriginNode 	= "BIP01 Head";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.4;
		emTrjTargetRange	= 1.2;
		emTrjTargetElev 	= 89;
		lightPresetname 	= "JUSTWHITE";

		};

		INSTANCE spellFX_ItemAusbuddeln_KEY_OPEN (C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_ItemAusbuddeln_KEY_INIT(C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_ItemAusbuddeln_KEY_CAST 	(C_ParticleFXEmitKey)
		{
				visName_S		= "MFX_Light_ORIGIN";
				lightRange		= 1000;
				sfxid			= "MFX_Light_CAST";
				sfxisambient	= 1;
				emtrjeasevel 	= 1400.;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX BeliarsWeapon  Upgrate  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_BeliarsWeapon_Upgrate  (CFx_Base_Proto)
{
		visname_S			= "MFX_ArmyOfDarkness_Origin";
		lightPresetName 	= "JUSTWHITE";
		emtrjmode_s 		= "FIXED";
     	emTrjOriginNode 	= "BIP01";
};
///   													XXXXXXXXXXXXXXXXXXXXX
///   													XX MayaGhost	  XX
///   													XXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Maya_Ghost (CFx_Base_Proto)
{
		visname_S			= "CS_FOKUS1";
		lightPresetName 	= "JUSTWHITE";
		emtrjmode_s 		= "FIXED";
     	emTrjOriginNode 	= "BIP01";
};
///   													XXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX Beliars BlitzinArsch	  XXd
///   													XXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_BELIARSRAGE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_BELIARSRAGE_FLASH";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emFXCreate_S	 	= "spellFX_BELIARSRAGE_target_Cloud";
	lightPresetName 	= "JUSTWHITE";
	sfxid				= "MFX_Barriere_Shoot";
	sfxisambient		= 1;
};
instance spellFX_BELIARSRAGE_target_Cloud (CFx_Base_Proto)
{
	visname_S 			= "MFX_BELIARSRAGE_TARGET";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};
instance spellFX_BELIARSRAGE_COLLIDE		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_Collide1";
		visAlpha				= 1;
		emTrjOriginNode			= "ZS_RIGHTHAND";
		emtrjmode_s 			= "FIXED";
		lightPresetname   		= "FIRESMALL";
		sfxid					= "MFX_BeliarWeap";
		sfxisambient			= 1;
};
instance spellFX_INNOSRAGE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_INNOSRAGE_FLASH";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emFXCreate_S	 	= "spellFX_INNOSRAGE_target_Cloud";
	lightPresetName 	= "JUSTWHITE";
	sfxid				= "MFX_Barriere_Shoot";
	sfxisambient		= 1;
};
instance spellFX_INNOSRAGE_target_Cloud (CFx_Base_Proto)
{
	visname_S 			= "MFX_INNOSRAGE_TARGET";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};
instance spellFX_ADANOSRAGE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_ADANOSRAGE_FLASH";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emFXCreate_S	 	= "spellFX_ADANOSRAGE_target_Cloud";
	lightPresetName 	= "AURA";
	sfxid				= "MFX_Barriere_Shoot";
	sfxisambient		= 1;
};
instance spellFX_ADANOSRAGE_target_Cloud (CFx_Base_Proto)
{
	visname_S 			= "MFX_ADANOSRAGE_TARGET";
	visAlpha			= 1;
	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "ZS_RIGHTHAND";
	emtrjdynupdatedelay = 0.01;
};
///   													XXXXXXXXXXXXXXXXX
///   													XX  L I G H T  XX
///   													XXXXXXXXXXXXXXXXX

// [EDENFELD] Die spellFX_Light_ACTIVE Instanz muss als Child mit eigener Trajectory an die Haupt spellFX_Light Instanz
// geh�ngt werden, und darf erst beim Casten ein Visual bekommen.
// nur so kann getestet werden, ob ein etwaiges gecastetes Licht noch aktiv ist. Vorher wurde die spellFX_Light_ACTIVE
// Instanz �ber die emCreateFXID Variable getriggert. Die so erzeugten Effekte haben dann aber keinen Bezug mehr zum Licht Spell.





INSTANCE spellFX_Light(CFx_Base_Proto)
{
		visname_S 			= "MFX_Light_INIT";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emFXCreate_S 		= "spellFX_Light_ACTIVE";
		emFXCreatedOwnTrj 	= 1;

		};

		INSTANCE spellFX_Light_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1;


};


INSTANCE spellFX_Light_ACTIVE	(CFx_Base_Proto)
{
		visname_S 			= "";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
     	emtrjeasevel 		= 0.;
     	emTrjOriginNode 	= "BIP01 Head";
		emtrjloopmode_s 	= "HALT";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.4;
		emTrjTargetRange	= 1.2;
		emTrjTargetElev 	= 89;
		lightPresetname 	= "JUSTWHITE";
		
		};

		INSTANCE spellFX_Light_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_Light_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_Light_ACTIVE_KEY_CAST 	(C_ParticleFXEmitKey)
		{
				visName_S		= "MFX_Light_ORIGIN";
				lightRange		= 1000;
				sfxid			= "MFX_Light_CAST";
				sfxisambient	= 1;
				emtrjeasevel 	= 1400.;
				
};


INSTANCE spellFX_Unsichtbarkeit(CFx_Base_Proto)
{
		visname_S 			= "MFX_Unsichtbarkeit_INIT";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emFXCreate_S 		= "spellFX_Unsichtbarkeit_ACTIVE";
		emFXCreatedOwnTrj 	= 1;

		};

		INSTANCE spellFX_Unsichtbarkeit_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1;


};


INSTANCE spellFX_Unsichtbarkeit_ACTIVE	(CFx_Base_Proto)
{
		visname_S 			= "";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
     	emtrjeasevel 		= 0.;
     	emTrjOriginNode 	= "BIP01 Head";
		emtrjloopmode_s 	= "HALT";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.4;
		emTrjTargetRange	= 1.2;
		emTrjTargetElev 	= 89;
		//lightPresetname 	= "JUSTWHITE";
		
		};

		INSTANCE spellFX_Unsichtbarkeit_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_Unsichtbarkeit_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_Unsichtbarkeit_ACTIVE_KEY_CAST 	(C_ParticleFXEmitKey)
		{
				visName_S		= "MFX_Unsichtbarkeit_ORIGIN";
				lightRange		= 1000;
				sfxid			= "MFX_Unsichtbarkeit_CAST";
				sfxisambient	= 1;
				emtrjeasevel 	= 1400.;
				
};



///   													XXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  P A L  L I G H T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_PalLight(CFx_Base_Proto)
{
		visname_S 			= "MFX_PalLight_INIT";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emFXCreate_S 		= "spellFX_PalLight_ACTIVE";
		emFXCreatedOwnTrj 	= 1;

		};

		INSTANCE spellFX_PalLight_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1;


};


INSTANCE spellFX_PalLight_ACTIVE	(CFx_Base_Proto)
{
		visname_S 			= "";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
     	emtrjeasevel 		= 0.;
     	emTrjOriginNode 	= "BIP01 Head";
		emtrjloopmode_s 	= "HALT";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.4;
		emTrjTargetRange	= 1.2;
		emTrjTargetElev 	= 89;
		lightPresetname 	= "AURA";

		};

		INSTANCE spellFX_PalLight_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_PalLight_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_PalLight_ACTIVE_KEY_CAST 	(C_ParticleFXEmitKey)
		{
				visName_S		= "MFX_PalLight_ORIGIN";
				lightRange		= 1000;
				sfxid			= "MFX_Light_CAST";
				sfxisambient	= 1;
				emtrjeasevel 	= 1400.;
};

INSTANCE spellFX_BeliarCity(CFx_Base_Proto)
{
		visname_S 			= "MFX_PalLight_INIT";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emFXCreate_S 		= "spellFX_BeliarCity_ACTIVE";
		emFXCreatedOwnTrj 	= 1;

		};

		INSTANCE spellFX_BeliarCity_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1;


};


INSTANCE spellFX_BeliarCity_ACTIVE	(CFx_Base_Proto)
{
		visname_S 			= "";
		visAlpha			= 1;
		emtrjmode_s 		= "FOLLOW TARGET";
     	emtrjeasevel 		= 0.;
     	emTrjOriginNode 	= "BIP01 Head";
		emtrjloopmode_s 	= "HALT";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.4;
		emTrjTargetRange	= 1.2;
		emTrjTargetElev 	= 89;
		lightPresetname 	= "AURA";

		};

		INSTANCE spellFX_BeliarCity_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_BeliarCity_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
		{
			lightRange 		= 0.01;
		};

		INSTANCE spellFX_BeliarCity_ACTIVE_KEY_CAST 	(C_ParticleFXEmitKey)
		{
				visName_S		= "MFX_PalLight_ORIGIN";
				lightRange		= 1000;
				sfxid			= "MFX_Light_CAST";
				sfxisambient	= 1;
				emtrjeasevel 	= 1400.;
};
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E B O L T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Firebolt	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Firebolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE CREATE CREATEQUAD";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollStat_S	   		= "spellFX_Firebolt_COLLIDEFX";
     	emFXCollDyn_S	   		= "spellFX_Firebolt_COLLIDEDYNFX";
     	emFXCollDynPerc_S	   	= "VOB_MAGICBURN";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		lightPresetname   		= "FIRESMALL";

		// quadmark
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "40 40";
		userString[2]			= "MUL";


		};

		INSTANCE spellFX_Firebolt_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Firebolt_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Firebolt_INIT";
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Firebolt_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "mfx_firebolt_cast";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "Torch_Enlight";
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Firebolt_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			sfxid		  			= "TORCH_ENLIGHT";
};

instance spellFX_Firebolt_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Firebolt_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

instance spellFX_Firebolt_COLLIDEDYNFX  (CFx_Base_Proto)
{
		visname_S 			= "MFX_Firebolt_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_Fackel	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Firebolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollStat_S		= "COLLIDE CREATE CREATEQUAD";
     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollStat_S	   		= "spellFX_Fackel_COLLIDEFX";
     	emFXCollDyn_S	   		= "spellFX_Fackel_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		lightPresetname   		= "FIRESMALL";

		// quadmark
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "40 40";
		userString[2]			= "MUL";


		};

		INSTANCE spellFX_Fackel_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				lightrange = 0.001;
		};

		INSTANCE spellFX_Fackel_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Firebolt_INIT";
				lightrange 			= 0.001;
		};

		INSTANCE spellFX_Fackel_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "mfx_firebolt_cast";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "Torch_Enlight";
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Fackel_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	visname_S 				= "";
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			sfxid		  			= "TORCH_ENLIGHT";
};

instance spellFX_Fackel_COLLIDEFX		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Firebolt_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

instance spellFX_Fackel_COLLIDEDYNFX  (CFx_Base_Proto)
{
		visname_S 			= "MFX_Firebolt_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};


///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E B A L L  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX     CHARGE		 XX
///   													XXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_ChargeFireball(CFx_Base_Proto)
{

     	visname_S 				= "MFX_ChargeFB_CAST";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_ChargeFireball_COLLIDE";
		emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 30.000;

		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_ChargeFireball_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_ChargeFireball_KEY_INIT (C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_ChargeFB_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_ChargeFireball_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_ChargeFireball_InVEST_BLAST1";
				visname_s		= "MFX_ChargeFB_CAST_L2";
				lightrange		= 150;
				sfxid			= "MFX_Fireball_invest1";
				sfxisambient	= 1;
		}								;
		INSTANCE spellFX_ChargeFireball_KEY_INVEST_2 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_ChargeFireball_InVEST_BLAST2";
				visname_s		= "MFX_ChargeFB_CAST_L3";
				sfxid			= "MFX_Fireball_invest2";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_ChargeFireball_KEY_INVEST_3 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_ChargeFireball_InVEST_BLAST3";
				visname_s		= "MFX_ChargeFB_CAST_L4";
				sfxid			= "MFX_Fireball_invest3";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_ChargeFireball_KEY_INVEST_4 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_ChargeFireball_InVEST_BLAST4";
				visname_s		= "MFX_ChargeFB_CAST_L5";
				sfxid			= "MFX_Fireball_invest4";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_ChargeFireBall_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 100;
				//pfx_ppsIsLoopingChg 	= 1;
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCheckCollision 		= 1;
		};
		INSTANCE spellFX_ChargeFireBall_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_ChargeFireball_InVEST_BLAST1		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest1";
		sfxisambient	= 1;
		visAlpha 		= 0.3;
};

instance spellFX_ChargeFireball_InVEST_BLAST2	(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest2";
		sfxisambient	= 1;
		visAlpha 		= 0.5;
};

instance spellFX_ChargeFireball_InVEST_BLAST3		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest3";
		sfxisambient	= 1;
		visAlpha 		= 0.8;
};

instance spellFX_ChargeFireball_InVEST_BLAST4		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest4";
		sfxisambient	= 1;
		visAlpha 		= 1;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_ChargeFireball_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ChargeFB_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_ChargeFireball_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_ChargeFireball_COLLIDE_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide2";		};
INSTANCE spellFX_ChargeFireball_COLLIDE_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_ChargeFireball_COLLIDE_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide4";		};

instance spellFX_ChargeFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide2";		sfxid	= "MFX_Fireball_Collide2";		};
INSTANCE spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide3";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide4";		sfxid	= "MFX_Fireball_Collide4";		};

instance spellFX_IceRainChargeFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
		visname_S 			= "MFX_IceRainFireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "AURA";
};

INSTANCE spellFX_IceRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_IceRainFireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_IceRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_IceRainFireball_Collide2";		sfxid	= "MFX_ireball_Collide2";		};
INSTANCE spellFX_IceRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_IceRainFireball_Collide3";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_IceRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_IceRainFireball_Collide4";		sfxid	= "MFX_Fireball_Collide4";		};




instance spellFX_HolyRainChargeFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
		visname_S 			= "MFX_HolyRainFireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_HolyRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_HolyRainFireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_HolyRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_HolyRainFireball_Collide2";		sfxid	= "MFX_Fireball_Collide2";		};
INSTANCE spellFX_HolyRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_HolyRainFireball_Collide3";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_HolyRainChargeFireball_COLLIDEDYNFX_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_HolyRainFireball_Collide4";		sfxid	= "MFX_Fireball_Collide4";		};
//
INSTANCE spellFX_GolemChargeFireball(CFx_Base_Proto)
{

     	visname_S 				= "MFX_ChargeFB_CAST";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_GolemChargeFireball_COLLIDE";
		emFXCollDyn_S     		= "spellFX_GolemChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 30.000;

		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_GolemChargeFireball_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_GolemChargeFireball_KEY_INIT (C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_ChargeFB_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_GolemChargeFireball_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_GolemChargeFireball_InVEST_BLAST1";
				visname_s		= "MFX_ChargeFB_CAST_L2";
				lightrange		= 150;
				sfxid			= "MFX_Fireball_invest1";
				sfxisambient	= 1;
		}								;
		INSTANCE spellFX_GolemChargeFireball_KEY_INVEST_2 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_GolemChargeFireball_InVEST_BLAST2";
				visname_s		= "MFX_ChargeFB_CAST_L3";
				sfxid			= "MFX_Fireball_invest2";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_GolemChargeFireball_KEY_INVEST_3 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_GolemChargeFireball_InVEST_BLAST3";
				visname_s		= "MFX_ChargeFB_CAST_L4";
				sfxid			= "MFX_Fireball_invest3";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_GolemChargeFireball_KEY_INVEST_4 (C_ParticleFXEmitKey)
		{
				emCreateFXID	= "spellFX_GolemChargeFireball_InVEST_BLAST4";
				visname_s		= "MFX_ChargeFB_CAST_L5";
				sfxid			= "MFX_Fireball_invest4";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_GolemChargeFireball_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 100;
				//pfx_ppsIsLoopingChg 	= 1;
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCheckCollision 		= 1;
		};
		INSTANCE spellFX_GolemChargeFireball_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_GolemChargeFireball_InVEST_BLAST1		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest1";
		sfxisambient	= 1;
		visAlpha 		= 0.3;
};

instance spellFX_GolemChargeFireball_InVEST_BLAST2	(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest2";
		sfxisambient	= 1;
		visAlpha 		= 0.5;
};

instance spellFX_GolemChargeFireball_InVEST_BLAST3		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest3";
		sfxisambient	= 1;
		visAlpha 		= 0.8;
};

instance spellFX_GolemChargeFireball_InVEST_BLAST4		(CFx_Base_Proto)
{
		visname_S 		= "MFX_ChargeFB_INVESTBLAST";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest4";
		sfxisambient	= 1;
		visAlpha 		= 1;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_GolemChargeFireball_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ChargeFB_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_GolemChargeFireball_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDE_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide2";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDE_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDE_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide";		sfxid	= "MFX_Fireball_Collide4";		};

instance spellFX_GolemChargeFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_GolemChargeFireball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDEDYNFX_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide2";		sfxid	= "MFX_Fireball_Collide2";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDEDYNFX_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide3";		sfxid	= "MFX_Fireball_Collide3";		};
INSTANCE spellFX_GolemChargeFireball_COLLIDEDYNFX_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide4";		sfxid	= "MFX_Fireball_Collide4";		};


///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E B A L L  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX     INSTANT		 XX
///   													XXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_InstantFireball(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Fireball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_InstantFireball_COLLIDE";
		emFXCollDyn_S     		= "spellFX_InstantFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "VOB_MAGICBURN";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay	= 20000;
		//emTrjDynUpdateDelay		= 0.4;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_InstantFireball_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_InstantFireball_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Fireball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_InstantFireBall_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 100;
				visname_S 				= "MFX_IFB_PFXTRAIL";
				emtrjmode_s 			= "TARGET";
		     	emSelfRotVel_S			= "100 100 100";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCreateFXID			= "spellFX_InstantFireball_FIRECLOUD";
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_InstantFireBall_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_InstantFireball_FIRECLOUD		(CFx_Base_Proto)
{
		emtrjeasevel 	= 1400.;
		visname_S 		= "MFX_IFB_CAST";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
		emTrjDynUpdateDelay	= 20000;
     	emCheckCollision 		= 2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (n�tig, da dieser FX nicht als Child eingef�gt wurde, sondern komplett
     													// unabh�ngig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
		emActionCollDyn_S 		= "COLLIDE";
		emActionCollStat_S 		= "COLLIDE";
		};

		INSTANCE spellFX_InstantFireBall_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_InstantFireball_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_InstantFireball_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

// KOLLISION MIT DYNAMISCHER WELT:  WOHL PERCEPTION

instance spellFX_InstantFireball_COLLIDEDYNFX	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_InstantFireball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

INSTANCE spellFX_InstantIceball(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Iceball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_InstantIceball_COLLIDE";
		emFXCollDyn_S     		= "spellFX_InstantIceball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "VOB_MAGICICE";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay	= 20000;
		//emTrjDynUpdateDelay		= 0.4;
		userString[0]			= "Iceballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_InstantIceball_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_InstantIceball_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Iceball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_InstantIceBall_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 100;
				visname_S 				= "MFX_Ice_PFXTRAIL";
				emtrjmode_s 			= "TARGET";
		     	emSelfRotVel_S			= "100 100 100";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCreateFXID			= "spellFX_InstantIceball_FIRECLOUD";
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_InstantIceBall_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_InstantIceball_FIRECLOUD		(CFx_Base_Proto)
{
		emtrjeasevel 	= 1400.;
		visname_S 		= "MFX_Ice_CAST";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
		emTrjDynUpdateDelay	= 20000;
     	emCheckCollision 		= 2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (n�tig, da dieser FX nicht als Child eingef�gt wurde, sondern komplett
     													// unabh�ngig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
		emActionCollDyn_S 		= "COLLIDE";
		emActionCollStat_S 		= "COLLIDE";
		};

		INSTANCE spellFX_InstantIceBall_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_InstantIceball_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Iceball_Collide1";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "AURA";
};

INSTANCE spellFX_InstantIceball_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Iceball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

// KOLLISION MIT DYNAMISCHER WELT:  WOHL PERCEPTION

instance spellFX_InstantIceball_COLLIDEDYNFX	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Iceball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "AURA";
};

INSTANCE spellFX_InstantIceball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Iceball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E S T O R M  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Firestorm	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_FireStorm_Init";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Firestorm_SPREAD";
		emFXCollDyn_S     		= "spellFX_Firestorm_SPREAD";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emFXInvestORIGIN_S 		= "spellFX_Firestorm_INVESTSOUND";

		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";

		lightPresetname   		= "FIRESMALL";
		};

		INSTANCE spellFX_Firestorm_KEY_OPEN(C_ParticleFXEmitKey)
		{
				lightrange			= 0.01;
		};

		INSTANCE spellFX_Firestorm_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange			= 0.01;
		};

		INSTANCE spellFX_Firestorm_KEY_INVEST_1	(C_ParticleFXEmitKey)	{	lightrange	= 100;	emCreateFXID	= "spellFX_Firestorm_INVESTBLAST1";	};
		INSTANCE spellFX_Firestorm_KEY_INVEST_2	(C_ParticleFXEmitKey)	{	lightrange	= 150;	emCreateFXID	= "spellFX_Firestorm_INVESTBLAST2";	};
		INSTANCE spellFX_Firestorm_KEY_INVEST_3	(C_ParticleFXEmitKey)	{	lightrange	= 200;	emCreateFXID	= "spellFX_Firestorm_INVESTBLAST3";	};
		INSTANCE spellFX_Firestorm_KEY_INVEST_4	(C_ParticleFXEmitKey)	{	lightrange	= 250;	emCreateFXID	= "spellFX_Firestorm_INVESTBLAST4";	};

		INSTANCE spellFX_Firestorm_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Firestorm_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Firestorm_Cast";
	 			sfxisambient			= 1;
				emCheckCollision 		= 1;
				lightrange				= 100;
		};

		INSTANCE spellFX_Firestorm_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};


INSTANCE spellFX_FireStorm_INVESTSOUND	(CFX_Base_Proto)
{
		visname_s		= "simpleglow.tga";
		visalpha		= 0.01;
		sfxid			= "MFX_Firestorm_Invest";
		sfxisambient	= 1;
};


INSTANCE spellFX_FireStorm_INVESTBLAST1	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST1";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest1";
		sfxisambient	= 1;
};

INSTANCE spellFX_FireStorm_INVESTBLAST2	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST2";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest2";
		sfxisambient	= 1;
};

INSTANCE spellFX_FireStorm_INVESTBLAST3	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST3";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest3";
		sfxisambient	= 1;
};

INSTANCE spellFX_FireStorm_INVESTBLAST4	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST4";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest4";
		sfxisambient	= 1;
};


INSTANCE spellFX_Firestorm_SPREAD	(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Firestorm_SPREAD_SMALL";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "CREATE CREATEQUAD";
     	emActionCollDyn_S 		= "CREATEONCE";
		//emFXCollStat_S	   	= "spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
		emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emCheckCollision		= 1;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "40 40";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		emFXCreate_S			= "spellFX_Firestorm_COLLIDE";

		sfxid					= "MFX_FIrestorm_Collide";
		sfxisambient			= 1;
		};

		INSTANCE spellFX_Firestorm_SPREAD_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_Firestorm_SPREAD_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



instance spellFX_Firestorm_COLLIDE		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Fireball_Collide3";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		sfxid					= "MFX_Fireball_Collide3";
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  P Y R O K I N E S I S  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Pyrokinesis (CFx_Base_Proto)
{

     	visname_S 				= "MFX_FireStorm_Init";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Pyrokinesis_SPREAD";
		emFXCollDyn_S     		= "spellFX_Pyrokinesis_SPREAD";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emFXInvestORIGIN_S 		= "spellFX_Pyrokinesis_INVESTSOUND";

		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";

		lightPresetname   		= "FIRESMALL";
		};

		INSTANCE spellFX_Pyrokinesis_KEY_OPEN(C_ParticleFXEmitKey)
		{
				lightrange			= 0.01;
		};

		INSTANCE spellFX_Pyrokinesis_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange			= 0.01;
		};

		INSTANCE spellFX_Pyrokinesis_KEY_INVEST_1	(C_ParticleFXEmitKey)	{	lightrange	= 100;	emCreateFXID	= "spellFX_Pyrokinesis_INVESTBLAST1";	};
		INSTANCE spellFX_Pyrokinesis_KEY_INVEST_2	(C_ParticleFXEmitKey)	{	lightrange	= 150;	emCreateFXID	= "spellFX_Pyrokinesis_INVESTBLAST2";	};
		INSTANCE spellFX_Pyrokinesis_KEY_INVEST_3	(C_ParticleFXEmitKey)	{	lightrange	= 200;	emCreateFXID	= "spellFX_Pyrokinesis_INVESTBLAST3";	};
		INSTANCE spellFX_Pyrokinesis_KEY_INVEST_4	(C_ParticleFXEmitKey)	{	lightrange	= 250;	emCreateFXID	= "spellFX_Pyrokinesis_INVESTBLAST4";	};

		INSTANCE spellFX_Pyrokinesis_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Firestorm_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Firestorm_Cast";
	 			sfxisambient			= 1;
				emCheckCollision 		= 1;
				lightrange				= 150;
		};

		INSTANCE spellFX_Pyrokinesis_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};


INSTANCE spellFX_Pyrokinesis_INVESTSOUND	(CFX_Base_Proto)
{
		visname_s		= "simpleglow.tga";
		visalpha		= 0.01;
		sfxid			= "MFX_Firestorm_Invest";
		sfxisambient	= 1;
};


INSTANCE spellFX_Pyrokinesis_INVESTBLAST1	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST1";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest1";
		sfxisambient	= 1;
};

INSTANCE spellFX_Pyrokinesis_INVESTBLAST2	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST2";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest2";
		sfxisambient	= 1;
};

INSTANCE spellFX_Pyrokinesis_INVESTBLAST3	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST3";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest3";
		sfxisambient	= 1;
};

INSTANCE spellFX_Pyrokinesis_INVESTBLAST4	(CFX_Base_Proto)
{
		visname_S 		= "MFX_Firestorm_INVESTBLAST4";
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Fireball_invest4";
		sfxisambient	= 1;
};


INSTANCE spellFX_Pyrokinesis_SPREAD	(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Firestorm_SPREAD";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "CREATE CREATEQUAD";
     	emActionCollDyn_S 		= "CREATEONCE";
		//emFXCollStat_S	   	= "spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
		emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicburn";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		emCheckCollision		= 1;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "40 40";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		emFXCreate_S			= "spellFX_Firestorm_COLLIDE";

		sfxid					= "MFX_FIrestorm_Collide";
		sfxisambient			= 1;
		};

		INSTANCE spellFX_Pyrokinesis_SPREAD_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_Pyrokinesis_SPREAD_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E R A I N  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_FireRain(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Firerain_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "spellFX_FireRAin_INVESTGLOW";
		};

		INSTANCE spellFX_FireRain_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_FireRain_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_FireRain_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_FireRain_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicburn";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "CATACLYSM";
     	sfxid					= "MFX_Firerain_rain";
     	sfxisambient			= 1;
};


INSTANCE spellFX_FireRain_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


INSTANCE spellFX_FireRain_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_FireRain_INVESTGLOW";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		lightPresetName 		= "REDAMBIENCE";
		sfxid					= "MFX_Firerain_INVEST";
		sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};

INSTANCE spellFX_IceRain(CFx_Base_Proto)
{

     	visname_S 				= "MFX_ICERAIN_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "spellFX_ICERAIN_INVESTGLOW";
		};

		INSTANCE spellFX_IceRain_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_ICERAIN_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_IceRain_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_ICERAIN_RAIN";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		emFXCollDyn_S     		= "spellFX_IceRainChargeFireball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "vob_magicice";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "AURA";
     	sfxid					= "MFX_ICERAIN_RAIN";
     	sfxisambient			= 1;
};


INSTANCE spellFX_IceRain_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


INSTANCE spellFX_IceRain_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_ICERAIN_INVESTGLOW";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		lightPresetName 		= "AURA";
		sfxid					= "MFX_ICERAIN_INVEST";
		sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};


INSTANCE spellFX_HolyRain(CFx_Base_Proto)
{

     	visname_S 				= "MFX_HolyRain_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "spellFX_HolyRain_INVESTGLOW";
		};

		INSTANCE spellFX_HolyRain_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_HolyRain_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_HolyRain_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_HolyRain_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		emFXCollDyn_S     		= "spellFX_HolyRainChargeFireball_COLLIDEDYNFX";
//		emFXCollDynPerc_S     	= "vob_magicburn";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "AURA";
     	sfxid					= "MFX_HolyRain_rain";
     	sfxisambient			= 1;
};


INSTANCE spellFX_HolyRain_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


INSTANCE spellFX_HolyRain_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_HolyRain_INVESTGLOW";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		lightPresetName 		= "AURA";
		sfxid					= "MFX_HolyRain_INVEST";
		sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};

//
INSTANCE spellFX_EARTHQUAKENEW(CFx_Base_Proto)
{

     	visname_S 				= "MFX_EARTHQUAKENEW_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";

     	emFXInvestOrigin_S 		= "spellFX_EARTHQUAKENEW_INVESTGLOW";
		};

		INSTANCE spellFX_EARTHQUAKENEW_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_EARTHQUAKENEW_RAIN";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_EARTHQUAKENEW_RAIN		(CFx_Base_Proto)
{
		visname_S 				= "MFX_EARTHQUAKENEW_Rain";
		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
		//emFXCollDyn_S     		= "spellFX_ChargeFireball_COLLIDEDYNFX";
		//emFXCollDynPerc_S     	= "vob_magicburn";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName 		= "CATACLYSM";
     //	sfxid					= "MFX_EARTHQUAKENEW_rain";
     //	sfxisambient			= 1;
};


INSTANCE spellFX_EARTHQUAKENEW_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


INSTANCE spellFX_EARTHQUAKENEW_INVESTGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_EARTHQUAKENEW_INVESTGLOW";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		lightPresetName 		= "REDAMBIENCE";
		sfxid					= "MFX_EARTHQUAKENEW_INVEST";
		sfxisambient			= 1;
		emFXCreate_S			= "FX_EARTHQUAKE";
};
///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  T E L E P O R T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_Teleport(CFx_Base_Proto)
{
		visname_S 			= "MFX_Teleport_INIT";
		//visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		emFXInvestOrigin_S 	= "spellFX_Teleport_ORIGIN";
		lightpresetname		= "AURA";

		};

		instance spellFX_Teleport_KEY_OPEN(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport_KEY_INIT		(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_Teleport_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			lightrange		= 100;
		};

		instance spellFX_Teleport_KEY_CAST 	(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_Teleport_CAST";
			pfx_ppsIsLoopingChg = 1;
			lightrange 			= 200;
		};

instance spellFX_Teleport_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_INVEST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		emFXCreate_S		= "spellFX_Teleport_Ring";
		sfxid				= "MFX_teleport_invest";
		sfxisambient		= 1;
};

instance spellFX_Teleport_RING	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_RING";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

instance spellFX_Teleport_CAST	(CFx_Base_Proto)
{
		visname_S 			= "MFX_TELEPORT_CAST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		sfxid				= "MFX_teleport_Cast";
		sfxisambient		= 1;

		emtrjmode_s 		= "FIXED";
};


instance spellFX_RedTeleport(CFx_Base_Proto)
{
		visname_S 			= "MFX_RedTeleport_INIT";
		//visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		emFXInvestOrigin_S 	= "spellFX_RedTeleport_ORIGIN";
		lightpresetname		= "FIRESMALL";

		};

		instance spellFX_RedTeleport_KEY_OPEN(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_RedTeleport_KEY_INIT		(C_ParticleFXEmitKey)
		{
			lightrange 		= 0.1;
		};

		instance spellFX_RedTeleport_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			lightrange		= 100;
		};

		instance spellFX_RedTeleport_KEY_CAST 	(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_RedTeleport_CAST";
			pfx_ppsIsLoopingChg = 1;
			lightrange 			= 200;
		};

instance spellFX_RedTeleport_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_RedTELEPORT_INVEST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		emFXCreate_S		= "spellFX_RedTeleport_Ring";
		sfxid				= "MFX_Redteleport_invest";
		sfxisambient		= 1;
};

instance spellFX_RedTeleport_RING	(CFx_Base_Proto)
{
		visname_S 			= "MFX_RedTELEPORT_RING";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
};

instance spellFX_RedTeleport_CAST	(CFx_Base_Proto)
{
		visname_S 			= "MFX_RedTELEPORT_CAST";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		sfxid				= "MFX_Redteleport_Cast";
		sfxisambient		= 1;

		emtrjmode_s 		= "FIXED";
};
///   													XXXXXXXXXXXXXXXXXXXXXX
///   													XX  P A L  H E A L  XX
///   													XXXXXXXXXXXXXXXXXXXXXX

instance spellFX_PalHeal(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		//emFXInvestOrigin_S 	= "spellFX_PalHeal_ORIGIN";			// in gothic 2 sind die heal zauber instant spells, daher gibts keine investphase

		};

		instance spellFX_PalHeal_KEY_CAST 	(C_ParticleFXEmitKey)
		{
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_Heal_ORIGIN";
};

instance spellFX_PalHeal_START		(CFx_Base_Proto)			// HEAL START wird im 1. Invest-Key getriggert. S�ule aus dem Boden.
{
		visname_S 			= "MFX_Heal_Start";
		sfxID			  	= "MFX_Heal_CAST";
		sfxisambient		= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01 R FOOT";
};

instance spellFX_PalHeal_ORIGIN	(CFx_Base_Proto)		// HEAL ORIGIN wird automatisch �ber emFXInvestOrigin_S getriggert. Aura um den Spieler
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emFXCreate_S	 	= "spellFX_PalHeal_START";
		emtrjmode_s 		= "FIXED";
		LightPresetname		= "AURA";
		};

		INSTANCE spellFX_PalHeal_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_PalHeal_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



///   													XXXXXXXXXXXXXXX
///   													XX  H E A L  XX
///   													XXXXXXXXXXXXXXX

instance spellFX_Heal(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_Heal_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_Heal_LEFTHAND";
		};

		instance spellFX_Heal_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_Heal_ORIGIN";
};

instance spellFX_Heal_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_Heal_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_Heal_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_Heal_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};

instance spellFX_Beeinflussung(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_Beeinflussung_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_Beeinflussung_LEFTHAND";
		};

		instance spellFX_Beeinflussung_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_Beeinflussung_ORIGIN";
};

instance spellFX_Beeinflussung_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_Beeinflussung_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_Beeinflussung_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_Beeinflussung_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};

instance spellFX_SPRINT(CFx_Base_Proto)
{
		visname_S 			= "MFX_SPRINT_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_SPRINT_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_SPRINT_CAST";
			emCreateFXID	= "spellFX_SPRINT_LEFTHAND";
		};

		instance spellFX_SPRINT_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_SPRINT_ORIGIN";
};

instance spellFX_SPRINT_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SPRINT_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_SPRINT_CAST";
	    sfxisambient		= 1;
};

instance spellFX_SPRINT_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SPRINT_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "KRAEUTERGARTEN";
		};

		INSTANCE spellFX_SPRINT_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_SPRINT_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



instance spellFX_AURABERSERKER(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_AURABERSERKER_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_AURABERSERKER_LEFTHAND";
		};

		instance spellFX_AURABERSERKER_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_AURABERSERKER_ORIGIN";
};

instance spellFX_AURABERSERKER_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_AURABERSERKER_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_AURABERSERKER_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_AURABERSERKER_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};

instance spellFX_AURADESSTEHLENS(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_AURADESSTEHLENS_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_AURADESSTEHLENS_LEFTHAND";
		};

		instance spellFX_AURADESSTEHLENS_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_AURADESSTEHLENS_ORIGIN";
};

instance spellFX_AURADESSTEHLENS_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_AURADESSTEHLENS_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_AURADESSTEHLENS_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_AURADESSTEHLENS_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



instance spellFX_AURAFROST(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_AURAFROST_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_AURAFROST_LEFTHAND";
		};

		instance spellFX_AURAFROST_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_AURAFROST_ORIGIN";
};

instance spellFX_AURAFROST_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_AURAFROST_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_AURAFROST_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_AURAFROST_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



instance spellFX_AURAFEUER(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_AURAFEUER_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_AURAFEUER_LEFTHAND";
		};

		instance spellFX_AURAFEUER_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_AURAFEUER_ORIGIN";
};

instance spellFX_AURAFEUER_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_AURAFEUER_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_AURAFEUER_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_AURAFEUER_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};



instance spellFX_AURAHEILUNG(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		};

		instance spellFX_AURAHEILUNG_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
			visname_S		= "MFX_HEAL_CAST";
			emCreateFXID	= "spellFX_AURAHEILUNG_LEFTHAND";
		};

		instance spellFX_AURAHEILUNG_KEY_CAST	 	(C_ParticleFXEmitKey)
		{
			// Noki: wieder aktiviert, da er an der Hand bliebt
			pfx_ppsisloopingChg = 1;
			emCreateFXID		= "spellFX_AURAHEILUNG_ORIGIN";
};

instance spellFX_AURAHEILUNG_ORIGIN	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Heal_HEAVENLIGHT";
		emTrjOriginNode 	= "BIP01";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    sfxid				= "MFX_HEAL_CAST";
	    sfxisambient		= 1;
};

instance spellFX_AURAHEILUNG_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_HEAL_CAST";
		emTrjOriginNode 	= "ZS_LEFTHAND";
		visAlpha			= 1;
	    emtrjmode_s 		= "FIXED";
	    LightPresetname		= "AURA";
		};

		INSTANCE spellFX_AURAHEILUNG_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
		{
				lightrange 				= 0.001;
		};

		INSTANCE spellFX_AURAHEILUNG_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange 				= 150;
};
///   													XXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  T R A N S F O R M   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Transform	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Transform_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 5000;
		};

		instance spellFX_transform_KEY_INVEST_0		(C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_Transform_ORIGIN";
				emCreateFXID		= "spellFX_Transform_ORIGIN";
		};

		instance spellFX_transform_KEY_INVEST_1		(C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_Transform_ORIGIN";
				emCreateFXID		= "spellFX_Transform_ORIGIN";
		};

		instance spellFX_transform_KEY_CAST			(C_ParticleFXEmitKey)
		{
				pfx_ppsisloopingChg = 1;
				emCreateFXID		= "spellFX_Transform_BLEND";
};


instance spellFX_Transform_ORIGIN	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Transform_ORIGIN";
		emtrjoriginnode 		= "BIP01";
		emtrjmode_s 			= "FIXED";
		emtrjdynupdatedelay 	= 0;
		emselfrotvel_s 			= "0 0 50";
};

instance spellFX_Transform_BLEND	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Transform_BLEND";
		emtrjmode_s 			= "FIXED";
		emtrjoriginnode 		= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
		sfxid					= "MFX_Transform_Cast";
		sfxisambient			= 1;

};


///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  L I G H T N I N G  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Lightning	(CFx_Base_Proto)
{
		visName_S 			= "MFX_Lightning_Origin";
		visSize_S 			= "40 40";
		visAlphaBlendFunc_S = "ADD";
		visTexAniFPS 		= 17;
		visTexAniIsLooping 	= 1;

		emtrjmode_s 		= "FIXED";
		emtrjNumKeys    	= 4;
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 20.;
		emtrjangleheadvar 	= 20.;
		emtrjloopmode_s 	= "PINGPONG";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.05;
		emselfrotvel_s 		= "0 0 50";
		emTrjTargetRange	= 20;
		emTrjTargetElev 	= 0;
		emTrjKeyDistVar		= 2;
		emTrjEaseVel		= 150;
		};

		INSTANCE spellFX_Lightning_KEY_INIT			(C_ParticleFXEmitKey)
		{
				visName_S 			= "MFX_Lightning_Origin";
		};

		INSTANCE spellFX_Lightning_KEY_INVEST_1		(C_ParticleFXEmitKey)
		{
				visName_S 			= "Lightning_Single.ltn";
				emtrjmode_s 		= "TARGET LINE RANDOM";
				emtrjeasevel 			= 3000.;
		};

		INSTANCE spellFX_Lightning_KEY_CAST			(C_ParticleFXEmitKey)
		{

};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX 			Lightning Flash		   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

///   													XXXXXXXXXXXXXXXXXXXXXXX
///   													XX  F I R E B O L T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_LightningFlash (CFx_Base_Proto)
{

     	visname_S 				= "MFX_Lightning_Origin";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";

     	emActionCollDyn_S		= "COLLIDE CREATEONCE";
     	emFXCollDyn_S	   		= "spellFX_LightningFlash_HEAVENSRAGE";
     	emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_LightningFlash_KEY_INIT (C_ParticleFXEmitKey)
		{
			lightrange 				= 0.001;
		};

		INSTANCE spellFX_LightningFlash_KEY_INVEST (C_ParticleFXEmitKey)
		{
			lightrange 				= 100;
		};


		INSTANCE spellFX_LightningFlash_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_HEAVENSRAGE_CAST";
				emtrjmode_s 			= "TARGET";
				emtrjeasevel 			= 2000;
		     	sfxid					= "MFX_Thunderball_Collide3";
	 			lightrange 				= 100;
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_LightningFlash_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};
instance spellFX_LightningFlash_HEAVENSRAGE	(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_HEAVENSRAGE_FLASH";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	sendAssessMagic		= 1;
	emFXCreate_S	 	= "spellFX_LightningFlash_target_CLOUD";

	sfxid				= "MFX_Lightning_ORIGIN";
	sfxisambient		= 1;
};

instance spellFX_LightningFlash_target_Cloud (CFx_Base_Proto)
{
	visname_S 			= "MFX_HEAVENSRAGE_TARGET";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emtrjdynupdatedelay = 0.01;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX 	OLD Lightning Flash	OLD 	   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

/*
INSTANCE spellFX_LightningFlash	(CFx_Base_Proto)
{
		visName_S 			= "MFX_Lightning_Origin";
		visSize_S 			= "140";
		visAlphaBlendFunc_S = "ADD";
		visTexAniFPS 		= 5;
		visTexAniIsLooping 	= 1;

		emtrjmode_s 		= "FIXED";
		emtrjNumKeys    	= 1; //4
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 20.;
		emtrjangleheadvar 	= 20.;
		//emtrjloopmode_s 	= "COLLIDE";
		emTrjOriginNode 	= "ZS_RIGHTHAND";

		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.01;
		emFXInvestTarget_S 	= "spellFX_LightningFlash_target";
		emselfrotvel_s 		= "0 0 250";
		emTrjTargetRange	= 20;
		emTrjTargetElev 	= 0;
		userString[0]		= "1";
		};

		INSTANCE spellFX_LightningFlash_KEY_INIT			(C_ParticleFXEmitKey)
		{
				//visName_S 			= "lightning_origin_a0.tga";
		};

		INSTANCE spellFX_LightningFlash_KEY_INVEST_1		(C_ParticleFXEmitKey)
		{

		};

		INSTANCE spellFX_LightningFlash_KEY_CAST			(C_ParticleFXEmitKey)
		{

};

instance spellFX_LightningFlash_target(CFx_Base_Proto)  //FLASH
{
	visname_S 			= "MFX_HEAVENSRAGE_FLASH";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	lightPresetname 	= "AURA";
	sendAssessMagic		= 1;
	emFXCreate_S	 	= "spellFX_LightningFlash_target_CLOUD";

	sfxid				= "MFX_Lightning_ORIGIN";
	sfxisambient		= 1;
};

instance spellFX_LightningFlash_target_Cloud (CFx_Base_Proto)
{
	visname_S 			= "MFX_HEAVENSRAGE_TARGET";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emtrjdynupdatedelay = 0.01;
	//emFXCreate_S	 	= "spellFX_LightningFlash_target_GROUND";

};

/*instance spellFX_LightningFlash_target_GROUND (CFx_Base_Proto)
{
	visname_S 			= "MFX_HEAVENSRAGE_GROUND";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emtrjdynupdatedelay = 0.01;
	emFXCreate_S	 	= "spellFX_LightningFlash_target_cloud";

	sfxid				= "MFX_Lightning_Target";
	sfxisambient		= 1;
};*/

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX 			Z A P				   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Zap	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Icebolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Zap_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Zap_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		//visAlpha				= 0;

		};

		INSTANCE spellFX_Zap_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Icebolt_INIT";
				scaleDuration		= 0.5;
		};

		INSTANCE spellFX_Zap_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_HEAVENSRAGE_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 2000.;
	 			sfxid					= "MFX_Thunderball_Collide3";
	 			emCheckCollision		= 1;
				//emCreateFXID 			= "FX_CAST2";
		};

		INSTANCE spellFX_Zap_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			emCheckCollision		= 0;
};

instance spellFX_Zap_COLLIDE	(CFx_Base_Proto)
{
		visname_S 		= "MFX_Icebolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};

instance spellFX_Zap_COLLIDEDYNFX		(CFx_Base_Proto)
{
		visname_S 		= "MFX_Thunderbolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
		SendAssessMagic	= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  H O L Y 	  B O L T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_PalHolyBolt	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_PalHolyBolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_PalHolyBolt_COLLIDE";
		emFXCollDyn_S     		= "spellFX_PalHolyBolt_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		//visAlpha				= 0;

		};

		INSTANCE spellFX_PalHolyBolt_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_PalHolyBolt_INIT";
				scaleDuration		= 0.5;
		};

		INSTANCE spellFX_PalHolyBolt_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_PalHolyBolt_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1600.;
	 			sfxid					= "MFX_Thunderbolt_Cast";
	 			emCheckCollision		= 1;
				//emCreateFXID 			= "FX_CAST2";
		};

		INSTANCE spellFX_PalHolyBolt_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			emCheckCollision		= 0;
};

instance spellFX_PalHolyBolt_COLLIDE		(CFx_Base_Proto)
{
		visname_S 		= "MFX_PalHolyBolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};

instance spellFX_PalHolyBolt_COLLIDEDYNFX		(CFx_Base_Proto)
{
		visname_S 		= "MFX_PalHolyBolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  T H U N D E R B O L T  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Icebolt	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Icebolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Icebolt_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Icebolt_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		//visAlpha				= 0;

		};

		INSTANCE spellFX_Icebolt_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Icebolt_INIT";
				scaleDuration		= 0.5;
		};

		INSTANCE spellFX_Icebolt_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Icebolt_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "mfx_thunderbolt_cast";
	 			emCheckCollision		= 1;
				//emCreateFXID 			= "FX_CAST2";
		};

		INSTANCE spellFX_Icebolt_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			emCheckCollision		= 0;
};

instance spellFX_Icebolt_COLLIDE	(CFx_Base_Proto)
{
		visname_S 		= "MFX_Icebolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};

instance spellFX_Icebolt_COLLIDEDYNFX		(CFx_Base_Proto)
{
		visname_S 		= "MFX_Thunderbolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
		SendAssessMagic	= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  C H A R G E Z A P      XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_chargezap	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Thunderball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_chargezap_COLLIDE";
		emFXCollDyn_S     		= "spellFX_chargezap_COLLIDE";
		emFXCollDynPerc_S     	= "spellFX_Thunderspell_SENDPERCEPTION";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_chargezap_KEY_OPEN(C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_chargezap_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_chargezap_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST";
				emCreateFXID	= "spellFX_chargezap_InVEST_BLAST1";
				lightrange		= 50;
				sfxid			= "MFX_Thunderball_invest1";
				sfxisambient	= 1;
		}								;
		INSTANCE spellFX_chargezap_KEY_INVEST_2 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L2";
				emCreateFXID	= "spellFX_chargezap_InVEST_BLAST2";
				sfxid			= "MFX_Thunderball_invest2";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_chargezap_KEY_INVEST_3 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L3";
				emCreateFXID	= "spellFX_chargezap_InVEST_BLAST3";
				sfxid			= "MFX_Thunderball_invest3";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_chargezap_KEY_INVEST_4 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L4";
				emCreateFXID	= "spellFX_chargezap_InVEST_BLAST4";
				sfxid			= "MFX_Thunderball_invest4";
				sfxisambient	= 1;
		};


		INSTANCE spellFX_chargezap_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange		= 100;
				visname_S 		= "MFX_Thunderball_CAST";
				emtrjmode_s 	= "TARGET";
		     	emtrjeasevel 	= 1400.;
	 			sfxid			= "MFX_Thunderball_Cast";
	 			sfxisambient	= 1;
	 			emCheckCollision= 1;
		};

		INSTANCE spellFX_chargezap_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s= "0 0.0002 0";
		     	emtrjeasevel 	= 0.000001;
};

instance spellFX_chargezap_InVEST_BLAST1		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest1";
		sfxisambient			= 1;
		visAlpha 				= 0.3;
};

instance spellFX_chargezap_InVEST_BLAST2	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest2";
		sfxisambient			= 1;
		visAlpha 				= 0.5;
};

instance spellFX_chargezap_InVEST_BLAST3		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest3";
		sfxisambient			= 1;
		visAlpha 				= 0.8;
};

instance spellFX_chargezap_InVEST_BLAST4		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest4";
		sfxisambient			= 1;
		visAlpha 				= 1;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_chargezap_COLLIDE		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_Collide1";
		visAlpha				= 1;
		emTrjOriginNode			= "BIP01";
		emtrjmode_s 			= "FIXED";
		lightPresetname   		= "FIRESMALL";

};

INSTANCE spellFX_chargezap_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide1";		sfxid	= "MFX_Thunderball_Collide1";		};
INSTANCE spellFX_chargezap_COLLIDE_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide2";		sfxid	= "MFX_Thunderball_Collide2";		};
INSTANCE spellFX_chargezap_COLLIDE_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide3";		sfxid	= "MFX_Thunderball_Collide3";		};
INSTANCE spellFX_chargezap_COLLIDE_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide4";		sfxid	= "MFX_Thunderball_Collide4";		};

//Monster z�hmen
INSTANCE spellFX_Zaehmen	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Thunderball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Zaehmen_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Zaehmen_COLLIDE";
		emFXCollDynPerc_S     	= "spellFX_Thunderspell_SENDPERCEPTION";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "AURA";

		};

		INSTANCE spellFX_Zaehmen_KEY_OPEN(C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_Zaehmen_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_Zaehmen_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST";
				emCreateFXID	= "spellFX_Zaehmen_InVEST_BLAST1";
				lightrange		= 50;
				sfxid			= "MFX_Thunderball_invest1";
				sfxisambient	= 1;
		}								;
		INSTANCE spellFX_Zaehmen_KEY_INVEST_2 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L2";
				emCreateFXID	= "spellFX_Zaehmen_InVEST_BLAST2";
				sfxid			= "MFX_Thunderball_invest2";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_Zaehmen_KEY_INVEST_3 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L3";
				emCreateFXID	= "spellFX_Zaehmen_InVEST_BLAST3";
				sfxid			= "MFX_Thunderball_invest3";
				sfxisambient	= 1;
		};
		INSTANCE spellFX_Zaehmen_KEY_INVEST_4 (C_ParticleFXEmitKey)
		{
				visname_S 		= "MFX_Thunderball_INVEST_L4";
				emCreateFXID	= "spellFX_Zaehmen_InVEST_BLAST4";
				sfxid			= "MFX_Thunderball_invest4";
				sfxisambient	= 1;
		};


		INSTANCE spellFX_Zaehmen_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange		= 100;
				visname_S 		= "MFX_Thunderball_CAST";
				emtrjmode_s 	= "TARGET";
		     	emtrjeasevel 	= 1400.;
	 			sfxid			= "MFX_Thunderball_Cast";
	 			sfxisambient	= 1;
	 			emCheckCollision= 1;
		};

		INSTANCE spellFX_Zaehmen_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s= "0 0.0002 0";
		     	emtrjeasevel 	= 0.000001;
};

instance spellFX_Zaehmen_InVEST_BLAST1		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest1";
		sfxisambient			= 1;
		visAlpha 				= 0.3;
};

instance spellFX_Zaehmen_InVEST_BLAST2	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest2";
		sfxisambient			= 1;
		visAlpha 				= 0.5;
};

instance spellFX_Zaehmen_InVEST_BLAST3		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest3";
		sfxisambient			= 1;
		visAlpha 				= 0.8;
};

instance spellFX_Zaehmen_InVEST_BLAST4		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_INVEST_BLAST";
		visAlpha				= 1;
		emtrjmode_s 			= "FIXED";
		//lightPresetname 		= "WHITEBLEND";
		sfxid					= "MFX_Thunderball_invest4";
		sfxisambient			= 1;
		visAlpha 				= 1;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_Zaehmen_COLLIDE		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Thunderball_Collide1";
		visAlpha				= 1;
		emTrjOriginNode			= "BIP01";
		emtrjmode_s 			= "FIXED";
		lightPresetname   		= "FIRESMALL";

};

INSTANCE spellFX_Zaehmen_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide1";		sfxid	= "MFX_Thunderball_Collide1";		};
INSTANCE spellFX_Zaehmen_COLLIDE_KEY_INVEST_2	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide2";		sfxid	= "MFX_Thunderball_Collide2";		};
INSTANCE spellFX_Zaehmen_COLLIDE_KEY_INVEST_3	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide3";		sfxid	= "MFX_Thunderball_Collide3";		};
INSTANCE spellFX_Zaehmen_COLLIDE_KEY_INVEST_4	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Thunderball_Collide4";		sfxid	= "MFX_Thunderball_Collide4";		};

///   													XXXXXXXXXXXXXXXXXXXXX
///   													XX  I C E C U B E  XX
///   													XXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_IceCube	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_Icecube_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_IceCube_COLLIDE";
		//emFXCollDyn_S     		= "spellFX_Icespell_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "spellFX_Icespell_SENDPERCEPTION";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		emFXInvestOrigin_S		= "spellFX_Icespell_Invest";
		//visAlpha				= 0;

		lightPresetname   		= "AURA";
		};

		INSTANCE spellFX_IceCube_KEY_OPEN(C_ParticleFXEmitKey)
		{
				Lightrange				= 0.01;
		};

		INSTANCE spellFX_IceCube_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_Icecube_INIT";
				Lightrange				= 0.01;
				scaleDuration			= 0.5;
		};

		INSTANCE spellFX_IceCube_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_ICECUBE_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1000.;
	 			emCheckCollision		= 1;
	 			sfxid					= "MFX_Icecube_cast";
	 			sfxisambient			= 1;
				//emCreateFXID 			= "FX_CAST2";
				Lightrange				= 100;
		};

		INSTANCE spellFX_IceCube_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
	 			//emCheckCollision		= 0;
};

instance spellFX_Freeze		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ICESPELL_TARGET";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
};

instance spellFX_IceCube_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ICESPELL_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_ICECUBE_COLLIDE";
};

instance spellFX_Icespell_Invest		(CFx_Base_Proto)
{
		visname_S 			= "";
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_ICECUBE_INVEST";
		sfxisambient		= 1;
};

INSTANCE spellFX_GolemIceCube	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_GolemIceCube_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_GolemIceCube_COLLIDE";
		//emFXCollDyn_S     		= "spellFX_Icespell_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "spellFX_Icespell_SENDPERCEPTION";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		emFXInvestOrigin_S		= "spellFX_Icespell_Invest";
		//visAlpha				= 0;

		lightPresetname   		= "AURA";
		};

		INSTANCE spellFX_GolemIceCube_KEY_OPEN(C_ParticleFXEmitKey)
		{
				Lightrange				= 0.01;
		};

		INSTANCE spellFX_GolemIceCube_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_GolemIceCube_INIT";
				Lightrange				= 0.01;
				scaleDuration			= 0.5;
		};

		INSTANCE spellFX_GolemIceCube_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_GolemIceCube_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1000.;
	 			emCheckCollision		= 1;
	 			sfxid					= "MFX_GolemIceCube_cast";
	 			sfxisambient			= 1;
				//emCreateFXID 			= "FX_CAST2";
				Lightrange				= 100;
		};

		INSTANCE spellFX_GolemIceCube_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
	 			//emCheckCollision		= 0;
};

instance spellFX_GolemIceCube_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ICESPELL_Collide";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sfxid				= "MFX_GolemIceCube_COLLIDE";
};


///   													XXXXXXXXXXXXXXXXXXXXX
///   													XX  I C E W A V E  XX
///   													XXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Icewave(CFx_Base_Proto)
{

     	visname_S 			= "MFX_IceCUBE_INIT";
     	emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
     	emtrjloopmode_s 	= "NONE";

     	emFXInvestOrigin_S	= "spellFX_Icespell_Invest";
     	};

		INSTANCE spellFX_Icewave_KEY_INIT(C_ParticleFXEmitKey)
		{
				visname_S 	= "MFX_IceCUBE_INIT";
		};

		INSTANCE spellFX_Icewave_KEY_CAST(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_Icewave_WAVE";
				pfx_ppsIsLoopingChg = 1;
				sfxid				= "MFX_Icewave_Cast";
				sfxisambient		= 1;
};

INSTANCE spellFX_Icewave_WAVE	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Icewave_WAVE";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
     	//emFXCollDyn_S			= "spellFX_IceSpell_COLLIDEDYNFX";
     	emFXCollDynPerc_S     	= "spellFX_Icespell_SENDPERCEPTION";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName			= "WHITEBLEND";
};

INSTANCE spellFX_Icewave_FAKE	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Icewave_WAVE";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emActionCollDyn_S		= "CREATEONCE";
     	LightPresetName			= "WHITEBLEND";
};


INSTANCE spellFX_IceWave_WAVE_KEY_OPEN		(C_ParticleFXEmitKey)
{
		LightRange			= 0.01;
};

INSTANCE spellFX_IceWave_WAVE_KEY_INIT		(C_ParticleFXEmitKey)
{
		LightRange			= 0.01;
};


INSTANCE spellFX_IceWave_WAVE_KEY_CAST		(C_ParticleFXEmitKey)
{
		LightRange			= 100;
};



INSTANCE spellFX_Icewave_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    G O L E M         XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonCreature_ORIGIN (CFx_Base_Proto)
{
		visname_S 				= "MFX_ArmyOfDarkness_Origin";
		emtrjmode_s 			= "FIXED";
		emtrjoriginnode 		= "BIP01";
		emtrjdynupdatedelay 	= 0;
		sfxid					= "MFX_Transform_Cast";
		sfxisambient			= 1;
		emFXCreate_S 			= 	"FX_EARTHQUAKE";

};

instance spellFX_SummonCreature_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT2";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "Bip01 L Hand";

};

instance spellFX_SummonGolem		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonGolem_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGolem_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGolem_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonGolem_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonGeist		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonGeist_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGeist_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGeist_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonGeist_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_Giftteppich		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "MOOS";

		};

		instance spellFX_Giftteppich_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_Giftteppich_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_Giftteppich_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_Giftteppich_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonHagen		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonHagen_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonHagen_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonHagen_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonHagen_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonCrawler		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonCrawler_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonCrawler_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonCrawler_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonCrawler_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_Nebel		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_Nebel_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_Nebel_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_Nebel_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_Nebel_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonFireGolem		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonFireGolem_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonFireGolem_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonFireGolem_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonFireGolem_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonSwampGolem		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonSwampGolem_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonSwampGolem_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonSwampGolem_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonSwampGolem_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonIceGolem		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonIceGolem_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonIceGolem_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonIceGolem_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonIceGolem_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonUDSwampshark		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonUDSwampshark_KEY_OPEN	(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonUDSwampshark_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonUDSwampshark_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonUDSwampshark_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    S K E L E T O N   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonSkeleton		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonSkeleton_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonSkeleton_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonSkeleton_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonSkeleton_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    G O B L I N S K   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonGoblinSkeleton		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonGoblinSkeleton_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGoblinSkeleton_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGoblinSkeleton_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonGoblinSkeleton_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonGoblinKrieger		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonGoblinKrieger_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGoblinKrieger_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGoblinKrieger_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonGoblinKrieger_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonEisgoblin		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonEisgoblin_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonEisgoblin_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonEisgoblin_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonEisgoblin_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};



///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    W O L F           XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonWolf (CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonWolf_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonWolf_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonWolf_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonWolf_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonRabbit (CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonRabbit_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonRabbit_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonRabbit_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonRabbit_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonRats (CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonRats_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonRats_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonRats_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonRats_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};



///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    D E M O N         XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonDemon	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonDemon_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonDemon_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonDemon_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonDemon_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonDragon	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonDragon_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonDragon_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonDragon_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonDragon_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

instance spellFX_SummonFeuerbeast	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonFeuerbeast_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonFeuerbeast_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonFeuerbeast_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonFeuerbeast_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    G U A R D I A N   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonGuardian	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonGuardian_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGuardian_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonGuardian_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonGuardian_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    Z O M B I E       XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonZombie	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonZombie_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonZombie_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonZombie_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonZombie_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  S U M M O N    M U D       XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_SummonMud	(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonMud_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonMud_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonMud_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"FX_EARTHQUAKE";
		};
		instance spellFX_SummonMud_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  A R M Y   O F   D A R K N E S S  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_ArmyOfDarkness		(CFx_Base_Proto)
{
		visname_S 			= "MFX_ArmyOfDarkness_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_ArmyOfDarkness_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_ArmyOfDarkness_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_ArmyOfDarkness_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"spellFX_SummonCreature_LEFTHAND";
		};
		instance spellFX_ArmyOfDarkness_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};


instance spellFX_SummonZombieArmy		(CFx_Base_Proto)
{
		visname_S 			= "MFX_SummonZombieArmy_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		LightPresetname 	= "REDAMBIENCE";

		};

		instance spellFX_SummonZombieArmy_KEY_OPEN(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonZombieArmy_KEY_INIT		(C_ParticleFXEmitKey)
		{
				LightRange = 0.01;
		};

		instance spellFX_SummonZombieArmy_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
			LightRange = 200;
			emCreateFXID = 	"spellFX_SummonCreature_LEFTHAND";
		};
		instance spellFX_SummonZombieArmy_KEY_CAST		(C_ParticleFXEmitKey)
		{
			emCreateFXID		= "spellFX_SummonCreature_ORIGIN";
			pfx_ppsisloopingchg = 1;
};
///   													XXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  M A S S D E A T H  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXX
INSTANCE spellFX_MassDeath(CFx_Base_Proto)
{

     	visname_S 				= "MFX_MassDeath_INIT";		
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
		emFXInvestOrigin_S	   	= "spellFX_Massdeath_INITGLOW";
		emFXCreatedOwnTrj 		= 0; 
		
		};

		INSTANCE spellFX_MassDeath_KEY_INIT(C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_MassDeath_INIT";		
		};

		INSTANCE spellFX_MassDeath_KEY_CAST(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_MassDeath_GROUND";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_MassDeath_GROUND		(CFx_Base_Proto)
{
		visname_S 				= "MFX_MassDeath_CAST";		
		emTrjOriginNode 		= "BIP01 R Foot";
		emActionCollDyn_S		= "CREATEONCE";
     	emFXCollDyn_S			= "spellFX_MassDeath_Target";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName			= "REDAMBIENCE";
     	sfxid					= "MFX_Massdeath_Cast";
		sfxisambient			= 1;
};



INSTANCE spellFX_MassDeath_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};
	
		
INSTANCE spellFX_MassDeath_Target(CFx_Base_Proto)
{
		visname_S 				= "MFX_Massdeath_TARGET";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 	= 1;
		emtrjmode_s 			= "FIXED";
		sfxid					= "MFX_MassdeatH_Target";
		sendassessmagic			= 1;
};

INSTANCE spellFX_MassDeath_INITGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_Massdeath_INIT_GLOW";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emFXCreatedOwnTrj 		= 0;
		emtrjmode_s 			= "FIXED";
		LightPresetName			= "REDAMBIENCE";
};
/*
INSTANCE spellFX_MassDeath(CFx_Base_Proto)
{

     	visname_S 				= "MFX_MassDeath_INIT";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
		emFXCreatedOwnTrj 		= 0;

		};

		INSTANCE spellFX_MassDeath_KEY_INIT(C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_MassDeath_INIT";
		};

		INSTANCE spellFX_MassDeath_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_MASSDEATH_RIGHTHAND";
				emCreateFXID		= "spellFX_MassDeath_LEFTHAND";
		};


		INSTANCE spellFX_MassDeath_KEY_CAST(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_MassDeath_EXPLOSION";
				pfx_ppsIsLoopingChg = 1;
};


instance spellFX_Massdeath_EXPLOSION	(CFx_Base_Proto)
{
		visname_S 			= "MFX_MASSDEATH_EXPLOSION";

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "Bip01 L Hand";
		emFXCreate_S		=  "spellFX_MassDeath_GROUND";

};


INSTANCE spellFX_MassDeath_GROUND		(CFx_Base_Proto)
{
		visname_S 				= "MFX_MassDeath_CAST";
		emTrjOriginNode 		= "BIP01 R Foot";
		emActionCollDyn_S		= "CREATEONCE";
     	emFXCollDyn_S			= "spellFX_MassDeath_COLLIDEDYNFX";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName			= "REDAMBIENCE";
     	sfxid					= "MFX_Massdeath_Cast";
		sfxisambient			= 1;
};

instance spellFX_Massdeath_LEFTHAND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_MASSDEATH_LEFTHAND";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "Bip01 L Hand";

		emFXCreate_S		= "FX_EARTHQUAKE";

};

INSTANCE spellFX_MassDeath_SUB			(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};


INSTANCE spellFX_MassDeath_COLLIDEDYNFX		(CFx_Base_Proto)
{
		visname_S 				= "MFX_Massdeath_TARGET";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 		= 1;
		emtrjmode_s 			= "FIXED";
		sfxid					= "MFX_MassdeatH_Target";
};
*/


INSTANCE spellFX_HolyWave(CFx_Base_Proto)
{

     	visname_S 				= "MFX_HolyWave_INIT";		
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
		emFXInvestOrigin_S	   	= "spellFX_HolyWave_INITGLOW";
		emFXCreatedOwnTrj 		= 0; 
		
		};

		INSTANCE spellFX_HolyWave_KEY_INIT(C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_HolyWave_INIT";		
		};

		INSTANCE spellFX_HolyWave_KEY_CAST(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_HolyWave_GROUND";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_HolyWave_GROUND		(CFx_Base_Proto)
{
		visname_S 				= "MFX_HolyWave_CAST";		
		emTrjOriginNode 		= "BIP01 R Foot";
		emActionCollDyn_S		= "CREATEONCE";
     	emFXCollDyn_S			= "spellFX_HolyWave_Target";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName			= "REDAMBIENCE";
     	sfxid					= "MFX_HolyWave_Cast";
		sfxisambient			= 1;
};



INSTANCE spellFX_HolyWave_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};
	
		
INSTANCE spellFX_HolyWave_Target(CFx_Base_Proto)
{
		visname_S 				= "MFX_HolyWave_TARGET";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 	= 1;
		emtrjmode_s 			= "FIXED";
		sfxid					= "MFX_HolyWave_Target";
		sendassessmagic			= 1;
};

INSTANCE spellFX_HolyWave_INITGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_HolyWave_INIT_GLOW";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emFXCreatedOwnTrj 		= 0;
		emtrjmode_s 			= "FIXED";
		LightPresetName			= "REDAMBIENCE";
};



INSTANCE spellFX_FireWave(CFx_Base_Proto)
{

     	visname_S 				= "MFX_FireWave_INIT";		
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjloopmode_s 		= "NONE";
		emFXInvestOrigin_S	   	= "spellFX_FireWave_INITGLOW";
		emFXCreatedOwnTrj 		= 0; 
		
		};

		INSTANCE spellFX_FireWave_KEY_INIT(C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_FireWave_INIT";		
		};

		INSTANCE spellFX_FireWave_KEY_CAST(C_ParticleFXEmitKey)
		{
				emCreateFXID		= "spellFX_FireWave_GROUND";
				pfx_ppsIsLoopingChg = 1;
};

INSTANCE spellFX_FireWave_GROUND		(CFx_Base_Proto)
{
		visname_S 				= "MFX_FireWave_CAST";		
		emTrjOriginNode 		= "BIP01 R Foot";
		emActionCollDyn_S		= "CREATEONCE";
     	emFXCollDyn_S			= "spellFX_FireWave_Target";
     	emFXCollDynAlign_S		= "COLLISIONNORMAL";
     	emCheckCollision		= 1;
     	LightPresetName			= "REDAMBIENCE";
     	sfxid					= "MFX_FireWave_Cast";
		sfxisambient			= 1;
};



INSTANCE spellFX_FireWave_SUB(CFx_Base_Proto)		// vorr�bergehend, bis er hardcodiert nicht mehr gesucht wird
{
     	visname_S 				= "";
     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "BIP01 HEAD";
};
	
		
INSTANCE spellFX_FireWave_Target(CFx_Base_Proto)
{
		visname_S 				= "MFX_FireWave_TARGET";
		emTrjOriginNode 		= "BIP01";
		emFXCreatedOwnTrj 	= 1;
		emtrjmode_s 			= "FIXED";
		sfxid					= "MFX_FireWave_Target";
		sendassessmagic			= 1;
};

INSTANCE spellFX_FireWave_INITGLOW	(CFx_Base_Proto)
{
		visname_S 				= "MFX_FireWave_INIT_GLOW";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
		emFXCreatedOwnTrj 		= 0;
		emtrjmode_s 			= "FIXED";
		LightPresetName			= "REDAMBIENCE";
};

///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  D E S T R O Y   U N D E A D  XX
///  													



INSTANCE spellFX_DestroyUndead(CFx_Base_Proto)
{

     	visname_S 				= "MFX_DestroyUndead_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Destroyundead_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Destroyundead_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		};

		INSTANCE spellFX_DestroyUndead_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_DestroyUndead_INIT";
		};

		INSTANCE spellFX_DestroyUndead_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_DestroyUndead_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 800.;
	 			sfxid					= "MFX_DestroyUndead_Cast";
	 			sfxisambient			= 1;
				//emCreateFXID 			= "FX_CAST2";
				emCheckCollision 		= 1;
};


INSTANCE spellFX_Destroyundead_COLLIDE		(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};

INSTANCE spellFX_Destroyundead_COLLIDEDYNFX	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX     R E P E L    E V I L		 XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



INSTANCE spellFX_PalRepelEvil(CFx_Base_Proto)
{

     	visname_S 				= "MFX_REPELEVIL_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_PalRepelEvil_COLLIDE";
		emFXCollDyn_S     		= "spellFX_PalRepelEvil_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		};

		INSTANCE spellFX_PalRepelEvil_KEY_INIT (C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_DestroyUndead_INIT";
		};

		INSTANCE spellFX_PalRepelEvil_KEY_CAST (C_ParticleFXEmitKey)
		{
				//visname_S 				= "MFX_RepelEvil_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 800.;
	 			sfxid					= "MFX_DestroyUndead_Cast";
	 			emCreateFXID			= "spellFX_RepelEvil_TRAIL";
	 			sfxisambient			= 1;
				emCheckCollision 		= 1;
		};

		INSTANCE spellFX_PalRepelEvil_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
			emtrjeasevel = 0.0001;

};

instance spellFX_REPELEVIL_TRAIL		(CFx_Base_Proto)
{
		emtrjeasevel 	= 800.;
		visname_S 		= "MFX_REPELEVIL_TRAIL";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
		emCheckCollision 		= 1;
		emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S 		= "COLLIDE";
		};

		INSTANCE spellFX_REPELEVIL_TRAIL_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};


INSTANCE spellFX_PalRepelEvil_COLLIDE		(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_RepelEvil_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};

INSTANCE spellFX_PalRepelEvil_COLLIDEDYNFX(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_RepelEvil_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX     M A S T E R   O F  D I S A S T E R   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



INSTANCE spellFX_MasterOfDisaster	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_MasterOfDisaster_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_MasterOfDisaster_COLLIDE";
		emFXCollDyn_S     		= "spellFX_MasterOfDisaster_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		};

		INSTANCE spellFX_MasterOfDisaster_KEY_INIT (C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_DestroyUndead_INIT";
		};

		INSTANCE spellFX_MasterOfDisaster_KEY_CAST (C_ParticleFXEmitKey)
		{
				//visname_S 				= "MFX_RepelEvil_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 2500.;
	 			sfxid					= "MFX_DestroyUndead_Cast";
	 			sfxisambient			= 1;
				emCheckCollision 		= 1;
};

instance spellFX_MasterOfDisaster_TRAIL		(CFx_Base_Proto)
{
		emtrjeasevel 	= 800.;
		visname_S 		= "MFX_MasterOfDisaster_TRAIL";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
		emCheckCollision 		= 1;
		emActionCollStat_S		= "COLLIDE";
     	emActionCollDyn_S 		= "COLLIDE";
		};

		INSTANCE spellFX_MasterOfDisaster_TRAIL_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};


INSTANCE spellFX_MasterOfDisaster_COLLIDE		(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_MasterOfDisaster_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};

INSTANCE spellFX_MasterOfDisaster_COLLIDEDYNFX(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_MasterOfDisaster_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};



///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  D E S T R O Y   E V I L		 XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



INSTANCE spellFX_PalDestroyEvil(CFx_Base_Proto)
{

     	visname_S 				= "MFX_DestroyUndead_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_PalDestroyEvil_COLLIDE";
		emFXCollDyn_S     		= "spellFX_PalDestroyEvil_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;
		};

		INSTANCE spellFX_PalDestroyEvil_KEY_INIT (C_ParticleFXEmitKey)
		{
				//visname_S 			= "MFX_DestroyUndead_INIT";
		};

		INSTANCE spellFX_PalDestroyEvil_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_DestroyUndead_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 800.;
	 			sfxid					= "MFX_DestroyUndead_Cast";
	 			sfxisambient			= 1;
				//emCreateFXID 			= "FX_CAST2";
				emCheckCollision 		= 1;
};


INSTANCE spellFX_PalDestroyEvil_COLLIDE		(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};

INSTANCE spellFX_PalDestroyEvil_COLLIDEDYNFX(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01";
	visname_S 			= "MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient		= 1;
};

///   													XXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  W I N D F I S T   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_WindFist(CFx_Base_Proto)
{
		visname_S 			= "MFX_WINDFIST_INIT";
		vissize_s			= "1 1";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjnumkeys 		= 7;
		emtrjnumkeysvar 	= 3;
		emtrjangleelevvar 	= 5.;
		emtrjangleheadvar 	= 20.;
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 200000;
		emTrjTargetRange	= 100;
		emTrjTargetElev 	= 1;
		emActionCollDyn_S 	= "CREATEONCE";
		emFXCollDyn_S	   	= "spellFX_Windfist_COLLIDEDYNFX";	//Sendet perception
		emFXInvestOrigin_S	= "spellFX_Windfist_Invest";


		};

		INSTANCE spellFX_WINDFIST_KEY_INIT (C_ParticleFXEmitKey)
		{
				emCheckCollision	= 0;
		};

		// INSTANCE spellFX_Windfist_KEY_INVEST_1	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_Windfist_INVESTBLAST";	};
		// INSTANCE spellFX_Windfist_KEY_INVEST_2	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_Windfist_INVESTBLAST";	};
		// INSTANCE spellFX_Windfist_KEY_INVEST_3	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_Windfist_INVESTBLAST";	};
		// INSTANCE spellFX_Windfist_KEY_INVEST_4	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_Windfist_INVESTBLAST";	};


		INSTANCE spellFX_WINDFIST_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_WINDFIST_COLLISIONDUMMY";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 2500.;
	 			emCheckCollision		= 1;
				emCreateFXID			= "spellFX_WINDFIST_CAST";
};


INSTANCE spellFX_Windfist_Invest (CFx_Base_Proto)
{
		visname_S			= "MFX_WINDFIST_INVEST";
		sfxid				= "MFX_WINDFIST_INVEST";
		sfxisambient		= 1;
};

INSTANCE spellFX_Windfist_INVESTBLAST	(CFX_Base_Proto)
{
		visname_S			= "MFX_WINDFIST_INVEST_BLAST";
		sfxid				= "MFX_WINDFIST_INVESBLAST";
		sfxisambient		= 1;
};


INSTANCE spellFX_Windfist_Cast (CFx_Base_Proto)
{
		visname_S			= "MFX_WINDFIST_Cast";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		sfxid				= "MFX_Windfist_Cast";
		sfxisambient		= 1;
};


INSTANCE spellFX_Windfist_COLLIDEDYNFX (CFx_Base_Proto)	//Sendet perception
{
		visname_S			= "MFX_WINDFIST_COLLIDE";
		sendAssessMagic	= 1;
};

INSTANCE spellFX_GolemWindFist(CFx_Base_Proto)
{
		visname_S 			= "MFX_GolemWINDFIST_INIT";
		vissize_s			= "1 1";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjnumkeys 		= 7;
		emtrjnumkeysvar 	= 3;
		emtrjangleelevvar 	= 5.;
		emtrjangleheadvar 	= 20.;
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 200000;
		emTrjTargetRange	= 100;
		emTrjTargetElev 	= 1;
		emActionCollDyn_S 	= "CREATEONCE";
		emFXCollDyn_S	   	= "spellFX_GolemWindfist_COLLIDEDYNFX";	//Sendet perception
		emFXInvestOrigin_S	= "spellFX_GolemWindfist_Invest";


		};

		INSTANCE spellFX_GolemWINDFIST_KEY_INIT (C_ParticleFXEmitKey)
		{
				emCheckCollision	= 0;
		};

		// INSTANCE spellFX_GolemWindfist_KEY_INVEST_1	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_GolemWindfist_INVESTBLAST";	};
		// INSTANCE spellFX_GolemWindfist_KEY_INVEST_2	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_GolemWindfist_INVESTBLAST";	};
		// INSTANCE spellFX_GolemWindfist_KEY_INVEST_3	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_GolemWindfist_INVESTBLAST";	};
		// INSTANCE spellFX_GolemWindfist_KEY_INVEST_4	(C_ParticleFXEmitKey)	{	emCreateFXID	= "spellFX_GolemWindfist_INVESTBLAST";	};


		INSTANCE spellFX_GolemWINDFIST_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_GolemWINDFIST_COLLISIONDUMMY";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 2500.;
	 			emCheckCollision		= 1;
				emCreateFXID			= "spellFX_GolemWINDFIST_CAST";
};


INSTANCE spellFX_GolemWindfist_Invest (CFx_Base_Proto)
{
		visname_S			= "MFX_GolemWINDFIST_INVEST";
		sfxid				= "MFX_GolemWINDFIST_INVEST";
		sfxisambient		= 1;
};

INSTANCE spellFX_GolemWindfist_INVESTBLAST	(CFX_Base_Proto)
{
		visname_S			= "MFX_GolemWINDFIST_INVEST_BLAST";
		sfxid				= "MFX_GolemWINDFIST_INVESBLAST";
		sfxisambient		= 1;
};


INSTANCE spellFX_GolemWindfist_Cast (CFx_Base_Proto)
{
		visname_S			= "MFX_GolemWINDFIST_Cast";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		sfxid				= "MFX_GolemWindfist_Cast";
		sfxisambient		= 1;
};


INSTANCE spellFX_GolemWindfist_COLLIDEDYNFX (CFx_Base_Proto)	//Sendet perception
{
		visname_S			= "MFX_GolemWINDFIST_COLLIDE";
		sendAssessMagic	= 1;
};



///   													XXXXXXXXXXXXXXXXX
///   													XX  S L E E P  XX
///   													XXXXXXXXXXXXXXXXX


INSTANCE spellFX_Sleep	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SLEEP_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Sleep_ORIGIN";
		//emFXInvestTarget_S 	= "spellFX_Sleep_TARGET";

		};

		INSTANCE spellFX_Sleep_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_SLEEP_INIT";
		};

		INSTANCE spellFX_Sleep_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SLEEP_ORIGIN";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_Sleep_Cast";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_Sleep_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "MFX_SLEEP_ORIGIN";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_Sleep_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "MFX_SLEEP_TARGET";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};

INSTANCE spellFX_Poison	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SLEEP_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Poison_ORIGIN";
		//emFXInvestTarget_S 	= "spellFX_Poison_TARGET";

		};

		INSTANCE spellFX_Poison_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_SLEEP_INIT";
		};

		INSTANCE spellFX_Poison_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "PRACTICEMAGIC_01A";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_FIRESTORM_COLLIDE";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_Poison_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "PRACTICEMAGIC_01A";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01 HEAD";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_Poison_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "PRACTICEMAGIC_01A";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};


// Rune der Eisklinge

INSTANCE spellFX_Eisklinge	(CFx_Base_Proto)
{
		visname_S 			= "MFX_SLEEP_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Eisklinge_ORIGIN";
		//emFXInvestTarget_S 	= "spellFX_Eisklinge_TARGET";

		};

		INSTANCE spellFX_Eisklinge_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_SLEEP_INIT";
		};

		INSTANCE spellFX_Eisklinge_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_SLEEP_ORIGIN";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_Sleep_Cast";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_Eisklinge_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "MFX_SLEEP_ORIGIN";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_Eisklinge_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "MFX_SLEEP_TARGET";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};

///   													XXXXXXXXXXXXXXXXX
///   													XX  C H A R M  XX
///   													XXXXXXXXXXXXXXXXX



INSTANCE spellFX_Charm (CFx_Base_Proto)
{
		visname_S 			= "MFX_CHARM_INIT";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjmode_s 		= "fixed";
		emtrjloopmode_s 	= "NONE";
		emtrjeasefunc_s 	= "LINEAR";
		emtrjdynupdatedelay = 0.;

		//emFXInvestOrigin_S 	= "spellFX_Sleep_ORIGIN";
		emFXInvestTarget_S 	= "spellFX_Charm_TARGET";

		};

		INSTANCE spellFX_CHARM_KEY_INIT	(C_ParticleFXEmitKey)
		{
				visname_S				= "MFX_CHARM_INIT";
		};

		INSTANCE spellFX_CHARM_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_CHARM_ORIGIN";
				//emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1400.;
		     	sfxid					= "MFX_Sleep_Cast";

				//emCreateFXID 			= "FX_CAST2";
};



instance spellFX_CHARM_ORIGIN	(CFx_Base_Proto)
{
		visname_S 		= "MFX_CHARM_ORIGIN";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};

instance spellFX_CHARM_TARGET	(CFx_Base_Proto)
{
		lightPresetname 	= "AURA";
		visname_S 		= "MFX_CHARM_TARGET";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "BIP01";
		emtrjdynupdatedelay 	= 0;

		//sendAssessMagic	= 1;
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  P Y R O K I N E S I S  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX


/*
INSTANCE spellFX_Pyrokinesis(CFx_Base_Proto)
{
		visname_S 			= "MFX_Firestorm_INIT";
		visAlpha			= 1;

		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjtargetnode 	= "BIP01 HEAD";
		emtrjnumkeys 		= 1;
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 15.;
		emtrjangleheadvar 	= 0.;
		emtrjdynupdatedelay 	= 0.;
		emFXInvestTarget_S 	= "spellFX_Pyrokinesis_target";
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		};

		INSTANCE spellFX_Pyrokinesis_KEY_CAST (C_ParticleFXEmitKey)
		{
				pfx_ppsIsLoopingChg = 1;
				emCreateFXID 	= "spellFX_Pyrokinesis_BRIDGE";
};

INSTANCE spellFX_Pyrokinesis_TARGET(CFx_Base_Proto)
{
	visname_S 			= "MFX_Pyrokinesis_TARGET";

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01 HEAD";
	lightPresetname 	= "FIRESMALL";
	emTrjTargetRange	= 0;
	emTrjTargetElev 	= 0;
	sendAssessMagic		= 1;
	emtrjdynupdatedelay = 0.01;

	sfxid				= "MFX_Pyrokinesis_target";
	sfxisambient		= 1;
};

instance spellFX_Pyrokinesis_BRIDGE	(CFx_Base_Proto)
{
		visname_S 		= "MFX_PYROKINESIS_BRIDGE";
		emtrjmode_s 		= "FIXED";
		emtrjoriginnode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay 	= 0;
};


*/


///   													XXXXXXXXXXXXXXX
///   													XX  F E A R  XX
///   													XXXXXXXXXXXXXXX


INSTANCE spellFX_Fear(CFx_Base_Proto)
{
		visname_S 			= "MFX_FEAR_INIT";
		emtrjmode_s 		= "FIXED";
		emtrjeasefunc_s 	= "linear";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjdynupdatedelay = 10000;
		};

		INSTANCE spellFX_Fear_KEY_OPEN (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 	= 0.;
		};

		INSTANCE spellFX_Fear_KEY_INVEST_1	(C_ParticleFXEmitKey)
		{
				//emCreateFXID	= "spellFX_Fear_WINGS2";
		};

		INSTANCE spellFX_Fear_KEY_CAST		(C_ParticleFXEmitKey)
		{
		     	emCreateFXID	= "spellFX_Fear_GROUND";
		     	pfx_ppsIsLoopingChg		= 1;
};


INSTANCE spellFX_Fear_WINGS		(CFx_Base_Proto)
{
		visname_S 			= "MFX_FEAR_WINGS";


		emtrjmode_s 		= "FIXED";
		emtrjeasefunc_s 	= "linear";
		emTrjOriginNode 	= "BIP01";
		emtrjdynupdatedelay = 10000;
		//emFXCreatedOwnTrj 	= 0;

		emFXCreate_S		=  "FX_EARTHQUAKE";

};

INSTANCE spellFX_Fear_WINGS2		(CFx_Base_Proto)
{
		visname_S 			= "MFX_FEAR_WINGS2";

		emtrjmode_s 		= "FIXED";
		emtrjeasefunc_s 	= "linear";
		emTrjOriginNode 	= "BIP01";
		emtrjdynupdatedelay = 10000;

		emFXCreate_S		=  "spellFX_Fear_GROUND";

};

INSTANCE spellFX_Fear_GROUND	(CFx_Base_Proto)
{
		visname_S 			= "MFX_FEAR_ORIGIN";

		emtrjmode_s 		= "FIXED";
		emtrjeasefunc_s 	= "linear";
		emTrjOriginNode 	= "BIP01";
		emtrjdynupdatedelay = 10000;

		sfxid				= "MFX_FEAR_CAST";
		sfxisambient		= 1;


};

INSTANCE spellFX_FEAR_SENDPERCEPTION	(CFx_Base_Proto)	//Sendet perception
{
		visname_S			= "";
		sfxid				= "HAMMER";
		sendassessmagic		= 1;
};



///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  B R E A T H   O F   D E A T H  XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance spellFX_BreathOfDeath		(CFx_Base_Proto)
{
		visname_S 				= "MFX_BreathOfDeath_INIT";
		visAlpha				= 1;

		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollDyn_S 		= "CREATEONCE";
		emFXCollDyn_S	   		= "spellFX_BreathOfDeath_Target";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 30.000;

		};

		INSTANCE spellFX_BreathOfDeath_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				//emCreateFXID		= "SpellFX_BreathOfDeath_Invest";
		};


		INSTANCE spellFX_BreathOfDeath_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				pfx_ppsisloopingchg		= 1;
				emCreateFXID			= "spellFX_BreathOfDeath_CAST";
};


INSTANCE spellFX_BreathOfDeath_Invest (CFx_Base_Proto)
{
		visname_S			= "MFX_BREATHOFDEATH_INVEST";
		sfxid				= "MFX_BREATHOFDEATH_INVEST";
		sfxisambient		= 1;
};


INSTANCE spellFX_BreathOfDeath_Cast (CFx_Base_Proto)
{
		visname_S				= "MFX_BreathOfDeath_Cast";

		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01";

     	/*emTrjNumKeys			= 8;
		emTrjNumKeysVar			= 3;

		emTrjAngleElevVar		= 30;
		emTrjAngleHeadVar		= 30;*/

     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollDyn_S 		= "CREATEONCE";
		emFXCollDyn_S	   		= "spellFX_BreathOfDeath_Target";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 30.000;

		sfxid				= "MFX_BreathOfDeath_Cast";
		sfxisambient		= 1;

		};

		INSTANCE spellFX_BreathOfDeath_Cast_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 800.;
	 			emCheckCollision		= 1;
};


INSTANCE spellFX_BreathOfDeath_Target (CFx_Base_Proto)
{
		visname_S			= "MFX_BREATHOFDEATH_COLLIDE";
		sfxid				= "MFX_BREATHOFDEATH_TARGET";
		sfxisambient		= 1;
};





instance spellFX_ArgezVision		(CFx_Base_Proto)
{
		visname_S 				= "MFX_ARGEZVISION_INIT";
		visAlpha				= 1;

		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollDyn_S 		= "CREATEONCE";
		emFXCollDyn_S	   		= "spellFX_ArgezVision_Target";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 30.000;

		};

		INSTANCE spellFX_ArgezVision_KEY_INVEST_1 (C_ParticleFXEmitKey)
		{
				//emCreateFXID		= "spellFX_ArgezVision_Invest";
		};


		INSTANCE spellFX_ArgezVision_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				pfx_ppsisloopingchg		= 1;
				emCreateFXID			= "spellFX_ArgezVision_CAST";
};


INSTANCE spellFX_ArgezVision_Invest (CFx_Base_Proto)
{
		visname_S			= "MFX_ARGEZVISION_INVEST";
		sfxid				= "MFX_BREATHOFDEATH_INVEST";
		sfxisambient		= 1;
};


INSTANCE spellFX_ArgezVision_Cast (CFx_Base_Proto)
{
		visname_S				= "MFX_ARGEZVISION_Cast";

		emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01";

     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollDyn_S 		= "CREATEONCE";
		emFXCollDyn_S	   		= "spellFX_ArgezVision_Target";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 1;

		sfxid				= "MFX_BreathOfDeath_Cast";
		sfxisambient		= 1;

		};

		INSTANCE spellFX_ArgezVision_Cast_KEY_CAST	 (C_ParticleFXEmitKey)
		{
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 800.;
	 			emCheckCollision		= 1;
};


INSTANCE spellFX_ArgezVision_Target (CFx_Base_Proto)
{
		visname_S			= "MFX_ARGEZVISION_COLLIDE";
		sfxid				= "MFX_BREATHOFDEATH_TARGET";
		sfxisambient		= 1;
};


///   													XXXXXXXXXXXXXXXXXXXX
///   													XX  S H R I N K   XX
///   													XXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Shrink(CFx_Base_Proto)
{
		visname_S 			= "MFX_SHRINK_INIT";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "ZS_RIGHTHAND";
		emtrjtargetnode 	= "BIP01";
		emtrjnumkeys 		= 5;
		emtrjnumkeysvar 	= 1;
		emtrjangleelevvar 	= 15.;
		emtrjangleheadvar 	= 0.;
		emtrjeasefunc_s 	= "LINEAR";
		emtrjloopmode_s		= "HALT";
		emtrjdynupdatedelay = 0.;
		emTrjTargetRange	= 0;
		emTrjTargetElev 	= 0;
		lightpresetname		= "AURA";
		emFXInvestOrigin_S	= "spellFX_SHRINK_ORIGIN";

		};


		INSTANCE spellFX_Shrink_KEY_OPEN(C_ParticleFXEmitKey)
		{
				emtrjeasevel		= 0.01;
				LightRange			= 0.01;
		};

		INSTANCE spellFX_Shrink_KEY_INIT	(C_ParticleFXEmitKey)
		{
				emtrjeasevel		= 0.01;
				LightRange			= 0.01;
		};

		INSTANCE spellFX_Shrink_KEY_CAST	(C_ParticleFXEmitKey)
		{
				emtrjmode_s 		= "TARGET LINE";
				visname_S 			= "MFX_SHRINK_TARGET";
				emtrjeasevel		= 6000;
				LightRange			= 100;
				sfxid				= "MFX_SHRINK_CAST";
				sfxisambient		= 1;

};

INSTANCE spellFX_Shrink_Origin (CFx_Base_Proto)
{
		emFXCreatedOwnTrj 	= 0;
		visname_S			= "";
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode 	= "BIP01";
		sfxid				= "MFX_SHRINK_INVEST";
		sfxisambient		= 1;
};

//   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  	Concussionbolt	   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE spellFX_Concussionbolt	(CFx_Base_Proto)
{

     	visname_S 				= "MFX_PalHolyBolt_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATE";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Concussionbolt_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Concussionbolt_COLLIDEDYNFX";
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay		= 20000;

		//visAlpha				= 0;

		};

		INSTANCE spellFX_Concussionbolt_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_PalHolyBolt_INIT";
				scaleDuration		= 0.5;
		};

		INSTANCE spellFX_Concussionbolt_KEY_CAST (C_ParticleFXEmitKey)
		{
				visname_S 				= "MFX_PalHolyBolt_CAST";
				emtrjmode_s 			= "TARGET";
		     	emtrjeasevel 			= 1600.;
	 			sfxid					= "MFX_PalHolyBolt_Cast";
	 			emCheckCollision		= 1;
				//emCreateFXID 			= "FX_CAST2";
		};

		INSTANCE spellFX_Concussionbolt_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
	 			emCheckCollision		= 0;
};

instance spellFX_Concussionbolt_COLLIDE		(CFx_Base_Proto)
{
		visname_S 		= "MFX_PalHolyBolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};

instance spellFX_Concussionbolt_COLLIDEDYNFX		(CFx_Base_Proto)
{
		visname_S 		= "MFX_PalHolyBolt_Collide";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "Torch_Enlight";
};
//   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  	Deathbolt	   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX



INSTANCE spellFX_Deathbolt(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Fireball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Deathbolt_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Deathbolt_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "VOB_MAGICBURN";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay	= 20000;
		//emTrjDynUpdateDelay		= 0.4;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_Deathbolt_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_Deathbolt_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Fireball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_Deathbolt_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 100;
				visname_S 				= "MFX_IFB_PFXTRAIL";
				emtrjmode_s 			= "TARGET";
		     	emSelfRotVel_S			= "100 100 100";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCreateFXID			= "spellFX_InstantFireball_FIRECLOUD";
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Deathbolt_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_Deathbolt_FIRECLOUD		(CFx_Base_Proto)
{
		emtrjeasevel 	= 1400.;
		visname_S 		= "MFX_IFB_CAST";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
		emTrjDynUpdateDelay	= 20000;
     	emCheckCollision 		= 2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (n�tig, da dieser FX nicht als Child eingef�gt wurde, sondern komplett
     													// unabh�ngig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
		emActionCollDyn_S 		= "COLLIDE";
		emActionCollStat_S 		= "COLLIDE";
		};

		INSTANCE spellFX_Deathbolt_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_Deathbolt_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_Deathbolt_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

// KOLLISION MIT DYNAMISCHER WELT:  WOHL PERCEPTION

instance spellFX_Deathbolt_COLLIDEDYNFX	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_Deathbolt_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};


//   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  	Deathball	   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXX


INSTANCE spellFX_Deathball(CFx_Base_Proto)
{
     	visname_S 				= "MFX_Fireball_INIT";

     	emtrjmode_s 			= "FIXED";
		emTrjOriginNode 		= "ZS_RIGHTHAND";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
     	emActionCollStat_S		= "COLLIDE CREATEONCE CREATEQUAD";
     	emActionCollDyn_S 		= "COLLIDE CREATEONCE";
		emFXCollStat_S	   		= "spellFX_Deathball_COLLIDE";
		emFXCollDyn_S     		= "spellFX_Deathball_COLLIDEDYNFX";
		emFXCollDynPerc_S     	= "VOB_MAGICBURN";
		emFXCollStatAlign_S		= "COLLISIONNORMAL";
		emFXCreatedOwnTrj 		= 0;
		emTrjTargetRange	 	= 20;
		emTrjTargetElev 		= 0;
		emTrjDynUpdateDelay	= 20000;
		//emTrjDynUpdateDelay		= 0.4;
		userString[0]			= "fireballquadmark.tga";
		userString[1]			= "100 100";
		userString[2]			= "MUL";
		lightPresetname   		= "FIRESMALL";

		};

		INSTANCE spellFX_Deathball_KEY_OPEN (C_ParticleFXEmitKey)
		{
				lightrange		= 0.01;
		};


		INSTANCE spellFX_Deathball_KEY_INIT (C_ParticleFXEmitKey)
		{
				visname_S 			= "MFX_Fireball_INIT";
				lightrange		= 0.01;
		};

		INSTANCE spellFX_Deathball_KEY_CAST (C_ParticleFXEmitKey)
		{
				lightrange				= 200;
				visname_S 				= "MFX_IFB_PFXTRAIL";
				emtrjmode_s 			= "TARGET";
		     	emSelfRotVel_S			= "100 100 100";
		     	emtrjeasevel 			= 1400.;
	 			sfxid					= "MFX_Fireball_Cast";
	 			sfxisambient			= 1;
	 			emCreateFXID			= "spellFX_InstantFireball_FIRECLOUD";
	 			emCheckCollision 		= 1;
		};

		INSTANCE spellFX_Deathball_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	pfx_flygravity_s		= "0 0.0002 0";
		     	emtrjeasevel 			= 0.000001;
};

instance spellFX_Deathball_FIRECLOUD		(CFx_Base_Proto)
{
		emtrjeasevel 	= 1400.;
		visname_S 		= "MFX_IFB_CAST";
		visAlpha		= 1;
		emtrjmode_s 	= "TARGET";
     	emtrjtargetnode 		= "BIP01 FIRE";
     	emtrjloopmode_s 		= "NONE";
     	emtrjeasefunc_s 		= "LINEAR";
		emTrjDynUpdateDelay	= 20000;
     	emCheckCollision 		= 2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (n�tig, da dieser FX nicht als Child eingef�gt wurde, sondern komplett
     													// unabh�ngig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
		emActionCollDyn_S 		= "COLLIDE";
		emActionCollStat_S 		= "COLLIDE";
		};

		INSTANCE spellFX_Deathball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
		{
		     	emtrjeasevel 			= 0.000001;
};

// KOLLISION MIT STATISCHER WELT:  KEINE PERCEPTION

instance spellFX_Deathball_COLLIDE		(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		emTrjOriginNode		= "BIP01";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_Deathball_COLLIDE_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};

// KOLLISION MIT DYNAMISCHER WELT:  WOHL PERCEPTION

instance spellFX_Deathball_COLLIDEDYNFX	(CFx_Base_Proto)
{
		visname_S 			= "MFX_Fireball_Collide1";
		visAlpha			= 1;
		emTrjOriginNode		= "BIP01";
		emtrjmode_s 		= "FIXED";
		lightPresetname   	= "FIRESMALL";
};

INSTANCE spellFX_Deathball_COLLIDEDYNFX_KEY_INVEST_1	(C_ParticleFXEmitKey)  {	visname_S 	= "MFX_Fireball_Collide1";		sfxid	= "MFX_Fireball_Collide1";		};





///   													XXXXXXXXXXXXXXXXXXXX
///   													XXXXXXXXXXXXXXXXXXXX
///   													XX  G L O B A L   XX
///   													XXXXXXXXXXXXXXXXXXXX
///   													XXXXXXXXXXXXXXXXXXXX



// HUMAN oder VOB brennt nach Feuerschaden (-> diese Instanz wird auf einem NSC/Monster gestartet, wenn er mit einem Feuerschaden Visual/Spell getroffen wird

INSTANCE VOB_BURN			(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD1";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "FIRESMALL";
	sfxid				= "MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD1	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R UPPERARM";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD2";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD2	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L UPPERARM";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD3";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD3	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L HAND";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD4";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD4	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R HAND";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD5";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD5	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L FOOT";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "VOB_BURN_CHILD6";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_BURN_CHILD6	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R FOOT";
	visname_S 			= "MFX_Firespell_HUMANBURN";
	emFXCreate_S 		= "spellFX_Firespell_HUMANSMOKE";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};


// HUMAN oder VOB brennt nach Magie-schaden (-> diese Instanz wird auf einem NSC/Monster gestartet, wenn er mit einem Feuerschaden Visual/Spell getroffen wird

INSTANCE VOB_MAGICBURN			(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "FIRESMALL";
	sfxid				= "MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD1	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R UPPERARM";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD2	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L UPPERARM";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD3	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L HAND";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD4	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R HAND";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD5	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L FOOT";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICBURN_CHILD6	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R FOOT";
	visname_S 			= "MFX_MagicFire_HUMANBURN";
	emFXCreate_S 		= "spellFX_MagicFire_HUMANSMOKE";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	sendAssessMagic		= 1;
	//emAdjustShpToOrigin = 1;
};


INSTANCE INFERNALFIRE			(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD1";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "FIRESMALL";
	sfxid				= "MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD1	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R UPPERARM";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD2";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD2	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L UPPERARM";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD3";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD3	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L HAND";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD4";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD4	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R HAND";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD5";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD5	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L FOOT";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "INFERNALFIRE_CHILD6";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};

INSTANCE INFERNALFIRE_CHILD6	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R FOOT";
	visname_S 			= "MFX_INFERNALFIRE";
	emFXCreate_S 		= "spellFX_MagicFire_HUMANSMOKE";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	sendAssessMagic		= 1;
	//emAdjustShpToOrigin = 1;
	emFXLifespan = 999999999;
};



INSTANCE spellFX_MagicFire_HUMANSMOKE	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_MagicFire_HUMANSMOKE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	emAdjustShpToOrigin = 1;
};


INSTANCE VOB_MAGICICE			(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD1";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	lightpresetname		= "AURA";
	sfxid				= "MFX_ICEspell_Humanburn";
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD1	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R UPPERARM";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD2";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD2	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L UPPERARM";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD3";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD3	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L HAND";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD4";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD4	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R HAND";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD5";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD5	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 L FOOT";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "VOB_MAGICICE_CHILD6";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	//emAdjustShpToOrigin = 1;
};

INSTANCE VOB_MAGICICE_CHILD6	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 R FOOT";
	visname_S 			= "MFX_MagicICE_HUMANBURN";
	emFXCreate_S 		= "spellFX_MagicICE_HUMANSMOKE";
	emFXCreatedOwnTrj 	= 1;
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	sendAssessMagic		= 1;
	//emAdjustShpToOrigin = 1;
};



INSTANCE spellFX_MagicICE_HUMANSMOKE	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_MagicICE_HUMANSMOKE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	emAdjustShpToOrigin = 1;
};
INSTANCE spellFX_Firespell_HUMANSMOKE	(CFx_Base_Proto)
{
	emTrjOriginNode 	= "BIP01 FIRE";
	visname_S 			= "MFX_firespell_HUMANSMOKE";
	emtrjmode_s 		= "FIXED";
	emtrjdynupdatedelay = 0.;
	emAdjustShpToOrigin = 1;
};


// HUMAN oder VOB ist elektrisiert von ThunderSpell

instance spellFX_Lightning_TARGET			(CFx_Base_Proto)
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 Head";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sfxid			= "MFX_Lightning_Target";
		emfxcreate_s	= "spellFX_Thunderspell_TARGET_CHILD1";
};

instance spellFX_Thunderspell_SENDPERCEPTION			(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 Head";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		sendAssessMagic	= 1;
		sfxid			= "MFX_Lightning_Target";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD1";
		emFXCreatedOwnTrj 	= 1;
};


instance spellFX_Thunderspell_SENDPERCEPTION_CHILD1		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 R UPPERARM";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD2";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD2		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 L UPPERARM";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD3";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD3		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 L HAND";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD4";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD4		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 R HAND";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD5";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD5		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 L FOOT";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD6";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD6		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 R FOOT";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD7";
		emFXCreatedOwnTrj 	= 1;
};
instance spellFX_Thunderspell_TARGET_CHILD7		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 L THIGH";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD8";
		emFXCreatedOwnTrj 	= 1;
};
instance spellFX_Thunderspell_TARGET_CHILD8		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 R THIGH";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD9";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD9		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 L CALF";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD10";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD10		(CFx_Base_Proto)			// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01 R CALF";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emfxcreate_s	= "spellFX_Thunderspell_SENDPERCEPTION_CHILD11";
		emFXCreatedOwnTrj 	= 1;
};

instance spellFX_Thunderspell_TARGET_CHILD11		(CFx_Base_Proto)		// geh�rt zu FX-Kette. DO NOT DELETE
{
		visname_S 		= "MFX_Thunderball_Target";
		emTrjOriginNode = "BIP01";
		visAlpha		= 1;
		emtrjmode_s 	= "FIXED";
		emFXCreatedOwnTrj 	= 1;
};



// HUMAN oder VOB ist eingefroren von IceSpell


instance spellFX_IceSpell_SENDPERCEPTION(CFx_Base_Proto)
{
		visname_S 			= "MFX_IceSpell_Target";
		visAlpha			= 1;
		emtrjmode_s 		= "FIXED";
		sendAssessMagic		= 1;
		emAdjustShpToOrigin = 1;
		sfxid				= "MFX_Icecube_Target";

};

// Earth Quake FX

INSTANCE FX_EARTHQUAKE(CFx_Base_Proto)
{
	visName_S 		= 	"EARTHQUAKE.eqk";
	userString[0]	= 	"1000";
	userString[1]	=	"5";
	userString[2]	=	"5 5 5";
	sfxid			= 	"MFX_EARTHQUAKE";
	sfxIsAmbient	=	1;
};

// Various FX

INSTANCE CONTROL_LEAVERANGEFX(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "1";
	userString[1]	=	"0 100 0 100";
	userString[2]	=	"0.5";
};

INSTANCE CONTROL_CASTBLEND(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "0.5";
	userString[1]	=	"255 255 255 255";
	userString[2]	=	"0.5";
	emFXLifeSpan    =	0.6;
};

INSTANCE TRANSFORM_CASTBLEND(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "0.5";
	userString[1]	=	"255 0 0 255";
	userString[2]	=	"0.5";
	emFXLifeSpan    =	0.6;
};

INSTANCE TRANSFORM_NOPLACEFX(CFx_Base_Proto)
{
	visName_S 		= 	"screenblend.scx";
	userString[0]	=   "1";
	userString[1]	=	"255 0 0 100";
	userString[2]	=	"1.5";
	emFXLifeSpan    =	0.6;
};


INSTANCE DEMENTOR_FX(CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	visName_S      		= "screenblend.scx";
	emfxcreate_s		= "FOV_MORPH1";
 	userString[0]     	= "100000000000";
 	userString[1]     	= "0 0 0 100";
 	userString[2]     	= "0.5";
 	userString[3]     	= "ScreenFX_Dem_a0";
 	userString[4]     	= "8";
 	visAlphaBlendFunc_S = "BLEND";
 	sfxid      			= "Dementhor_Talk";
 	sfxisambient     	= 1;
};

INSTANCE FOV_MORPH1(CFx_Base_Proto)
{
 	// userstring 0: fov morph amplitude scaler
 	// userstring 1: fov morph speed scaler
 	// userString 2: fov base x (leave empty for default)
 	// userString 3: fov base y (leave empty for default)

 	visName_S      		= "morph.fov";
 	userString[0]     	= "1.0";
 	userString[1]     	= "1.0";
 	userString[2]		= "90";
 	userString[3]		= "67";
};


INSTANCE FOV_MORPH2(CFx_Base_Proto)
{
 	// userstring 0: fov morph amplitude scaler
 	// userstring 1: fov morph speed scaler
 	// userString 2: fov base x (leave empty for default)
 	// userString 3: fov base y (leave empty for default)

 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};

INSTANCE FOV_MORPH3(CFx_Base_Proto)
{
 	// userstring 0: fov morph amplitude scaler
 	// userstring 1: fov morph speed scaler
 	// userString 2: fov base x (leave empty for default)
 	// userString 3: fov base y (leave empty for default)

 	visName_S      		= "morph.fov";
 	userString[0]     	= "1.0";
 	userString[1]     	= "0.5";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


INSTANCE SLOW_MOTION(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.5";
 	userString[1]     	= "1.0";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 15;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};


INSTANCE SLOW_MOTION_SWORD(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.5";
 	userString[1]     	= "1.0";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 15;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 150;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};

INSTANCE KILL_SPECIAL_BULLET_EFFECT(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.5";
 	userString[1]     	= "1.0";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 20;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};


INSTANCE SLOW_MOTION_ARGEZVISION (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.2";
 	userString[1]     	= "1.0";
 	emFxCreate_s		= "FOV_MORPH3";
	emFXLifeSpan    	= 150;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 1;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};


INSTANCE SLOW_MOTION_FUN (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.3";
 	userString[1]     	= "3.5";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 150;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 1;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};



INSTANCE FOCUS_HIGHLIGHT(CFx_Base_Proto)
{
	visname_S 			= "FOCUS_HIGHLIGHT.TGA";
	visSize_S			= "100 100";
	emAdjustShpToOrigin = 1;

	emtrjmode_s 		= "FIXED";
	emTrjOriginNode 	= "BIP01";
	emTrjTargetRange	= 0;
	emTrjTargetElev 	= 0;
};


INSTANCE SLOW_TIME(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
 	visName_S      		= "time.slw";
 	userString[0]     	= "0.5";
 	userString[1]     	= "0.5";
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXCreate_S		= "SLOW_TIME_CHILD";
	emTrjOriginNode 	= "BIP01";
};


INSTANCE SLOW_TIME_CHILD(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
 	visName_S      		= "SMOKE_JOINT_SLOW_TIME";
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	sfxid      			= "MFX_Telekinesis_StartInvest";
 	sfxisambient     	= 1;
	emFXCreate_S		= "SLOW_TIME_CHILD2";
};


INSTANCE SLOW_TIME_CHILD2(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	emFXTriggerDelay	= 6;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    	= 30;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      		= "morph.fov";
 	userString[0]     	= "0.8";
 	userString[1]     	= "1.0";
 	userString[2]		= "120";
 	userString[3]		= "90";
};


// Used by PlayVideoEx(..., TRUE, ...);

INSTANCE BLACK_SCREEN(CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	visName_S      		= "screenblend.scx";
 	userString[0]     	= "100000000000";
 	userString[1]     	= "0 0 0 255";
 	userString[2]     	= "0";
 	visAlphaBlendFunc_S = "BLEND";
	emFXLifeSpan    	= 2;						// Dauer is Sekunden (�ber timer skaliert)
};

INSTANCE WHITE_SCREEN(CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	visName_S      		= "screenblend.scx";
	visAlpha			= 1;
 	userString[0]     	= "100000000000";
 	userString[1]     	= "128 128 128 255";
 	userString[2]     	= "0.08";
 	visAlphaBlendFunc_S = "BLEND";
	emFXLifeSpan    	= 0.25;						// Dauer is Sekunden (�ber timer skaliert)
	sfxid			= "MFX_Barriere_Shoot";
	sfxisambient		= 1;
};


// Used by Sleepabit (im Moment deaktiviert)

INSTANCE SLEEP_BLEND(CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps
 	visName_S      		= "screenblend.scx";
 	userString[0]     	= "100000000000";
 	userString[1]     	= "0 0 0 255";
 	userString[2]     	= "0";
 	visAlphaBlendFunc_S = "BLEND";
	emFXLifeSpan    	= 2;						// Dauer is Sekunden (�ber timer skaliert)
};


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Modell/Item-Effekte (Addon)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


INSTANCE SPELLFX_LIGHTCONE (CFX_BASE_PROTO)
{
     visname_s				= "LIGHTCONE";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emTrjOriginNode 	= "BIP01 FOKUS";
     emtrjtargetnode 	= "BIP01 FOKUS";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "FIRESMALL";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
     
};


INSTANCE SPELLFX_FIREARMOR (CFX_BASE_PROTO)
{
     visname_s				= "FIRE_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "FIRESMALL";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
     
     emFXCreate_S			= "SPELLFX_FIREARMOR_SMOKE";
     
};

INSTANCE SPELLFX_FIREARMOR_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};


INSTANCE SPELLFX_FIREARMOR_SMOKE (CFX_BASE_PROTO)
{
     visname_s				= "SMOKE_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "FIRESMALL";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
};

INSTANCE SPELLFX_FIREARMOR_SMOKE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};

INSTANCE SPELLFX_ICEARMOR (CFX_BASE_PROTO)
{
     visname_s				= "ICE_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "AURA";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
     
     emFXCreate_S			= "SPELLFX_ICEARMOR_SMOKE";
     
};

INSTANCE SPELLFX_ICEARMOR_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};


INSTANCE SPELLFX_ICEARMOR_SMOKE (CFX_BASE_PROTO)
{
     visname_s				= "ICESMOKE_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "AURA";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
};

INSTANCE SPELLFX_ICEARMOR_SMOKE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};

INSTANCE SPELLFX_DARKARMOR (CFX_BASE_PROTO)
{
     visname_s				= "DARK_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "WHITEBLEND";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
     
     emFXCreate_S			= "SPELLFX_FIREARMOR_SMOKE";
     
};

INSTANCE SPELLFX_DARKARMOR_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};


INSTANCE SPELLFX_DARKARMOR_SMOKE (CFX_BASE_PROTO)
{
     visname_s				= "SMOKE_MODEL_KAIRO";
     visalpha				= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s			= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys			= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan			= -1;
     emselfrotvel_s			= "0 0 0";
     lightpresetname		= "WHITEBLEND";//Joly: nicht FIRE
     secsperdamage			= -1;
     emAdjustShpToOrigin	= 1;
};

INSTANCE SPELLFX_DARKARMOR_SMOKE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};

////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_FIRESWORD (CFX_BASE_PROTO)
{
	visname_S 				= "FIRE_SWORD";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};
INSTANCE SPELLFX_FIRESWORDBLACK (CFX_BASE_PROTO)
{
	visname_S 				= "FIRE_SWORDBLACK";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	//lightPresetname			= "JUSTWHITE";
	emAdjustShpToOrigin		= 1;
};
INSTANCE SPELLFX_FIRESWORDBLACK_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 200;
};

INSTANCE SPELLFX_FIRESWORD_ATTACK (CFX_BASE_PROTO)
{
	visname_S				= "FIRE_SWORD_ATTACK";
	emTrjOriginNode			= "ZS_RIGHTHAND";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin 	= 1;
};

INSTANCE SPELLFX_FIRESWORD_HIT (CFX_BASE_PROTO)
{
	visname_S				= "FIRE_SWORD_HIT";
	emTrjOriginNode			= "ZS_RIGHTHAND";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_FIRESWORD_KEY_CAST (C_ParticleFxEmitKey)
{
	lightrange				= 500;
};

// Wegstecken
INSTANCE SPELLFX_FIRESWORD_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	visname_S				= "FIRE_SWORD";
	lightrange				= 100;
	pfx_ppsValue			= 100;
};

// Ziehen
INSTANCE SPELLFX_FIRESWORD_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	visname_S				= "FIRE_SWORD";
	lightrange				= 300;
	pfx_ppsValue			= 150;
};

// Schlagen
INSTANCE SPELLFX_FIRESWORD_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			= "SPELLFX_FIRESWORD_ATTACK";
	lightrange				= 400;
};

// Treffer
INSTANCE SPELLFX_FIRESWORD_KEY_INVEST_4 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			= "SPELLFX_FIRESWORD_HIT";
	lightrange				= 600;
	pfx_ppsValue			= 300;
};

// Ende
INSTANCE SPELLFX_FIRESWORD_KEY_INVEST_5 (C_PARTICLEFXEMITKEY)	
{
	visname_S				= "FIRE_SWORD";
	lightrange				= 100;
	pfx_ppsValue			= 150;
};

INSTANCE SPELLFX_ICESWORD (CFX_BASE_PROTO)
{
	visname_S 				= "FIRE_SWORD";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	lightPresetname			= "AURA";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_ICESWORD_ATTACK (CFX_BASE_PROTO)
{
	visname_S				= "ICE_SWORD_ATTACK";
	emTrjOriginNode			= "ZS_RIGHTHAND";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin 	= 1;
};

INSTANCE SPELLFX_ICESWORD_HIT (CFX_BASE_PROTO)
{
	visname_S				= "ICE_SWORD_HIT";
	emTrjOriginNode			= "ZS_RIGHTHAND";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_ICESWORD_KEY_CAST (C_ParticleFxEmitKey)
{
	lightrange				= 500;
};

// Wegstecken
INSTANCE SPELLFX_ICESWORD_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	visname_S				= "ICE_SWORD";
	lightrange				= 100;
	pfx_ppsValue			= 100;
};

// Ziehen
INSTANCE SPELLFX_ICESWORD_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	visname_S				= "ICE_SWORD";
	lightrange				= 300;
	pfx_ppsValue			= 150;
};

// Schlagen
INSTANCE SPELLFX_ICESWORD_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			= "SPELLFX_ICESWORD_ATTACK";
	lightrange				= 400;
};

// Treffer
INSTANCE SPELLFX_ICESWORD_KEY_INVEST_4 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			= "SPELLFX_ICESWORD_HIT";
	lightrange				= 600;
	pfx_ppsValue			= 300;
};

// Ende
INSTANCE SPELLFX_ICESWORD_KEY_INVEST_5 (C_PARTICLEFXEMITKEY)	
{
	visname_S				= "ICE_SWORD";
	lightrange				= 100;
	pfx_ppsValue			= 150;
};

//***************************************************************************

INSTANCE SPELLFX_BLUELIGHT (CFX_BASE_PROTO)
{
	visname_S 				= "MFX_CHARM_INIT";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_REDLIGHT (CFX_BASE_PROTO)
{
	visname_S 				= "MFX_BERZERK_INIT";
	visAlpha				= 1;
	emtrjmode_s				= "FIXED";
	emAdjustShpToOrigin		= 1;
};


INSTANCE SPELLFX_MAGESTAFF1 (CFX_BASE_PROTO)
{
	visname_S 			= "MAGESTAFF1";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	//Joly:lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_MAGESTAFF2 (CFX_BASE_PROTO)
{
	visname_S 			= "MAGESTAFF2";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	//Joly:lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_MAGESTAFF3 (CFX_BASE_PROTO)
{
	visname_S 			= "MAGESTAFF3";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	//Joly:lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_MAGESTAFF4 (CFX_BASE_PROTO)
{
	visname_S 			= "MAGESTAFF4";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	//Joly:lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_MAGESTAFF5 (CFX_BASE_PROTO)
{
	visname_S 			= "MAGESTAFF5";
	visAlpha			= 1;
	emtrjmode_s			= "FIXED";
	//Joly:lightPresetname			= "FIRESMALL";
	emAdjustShpToOrigin		= 1;
};




////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_BOW (CFX_BASE_PROTO)
{
	visname_s			= "MAGIC_BOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_FIREBOW (CFX_BASE_PROTO)
{
	visname_s			= "FIRE_BOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};


INSTANCE SPELLFX_ARROW (CFX_BASE_PROTO)
{
	visname_s			= "MAGIC_ARROW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
	lightpresetname			= "AURA";
};

// NSC wird anvisiert
INSTANCE SPELLFX_ARROW_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	lightrange			= 100;
};

// Pfeil schiesst los
INSTANCE SPELLFX_ARROW_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 300;
};

// Pfeil kollidiert
INSTANCE SPELLFX_ARROW_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 400;
};



INSTANCE SPELLFX_FIREARROW (CFX_BASE_PROTO)
{
	visname_s			= "FIRE_ARROW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
	lightpresetname			= "FIRESMALL";
};


// NSC wird anvisiert
INSTANCE SPELLFX_FIREARROW_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	lightrange			= 100;
};

// Pfeil schiesst los
INSTANCE SPELLFX_FIREARROW_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 300;
};

// Pfeil kollidiert
INSTANCE SPELLFX_FIREARROW_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 400;
};



INSTANCE SPELLFX_ICEARROW (CFX_BASE_PROTO)
{
	visname_s			= "ICE_ARROW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
	lightpresetname			= "AURA";
};


// NSC wird anvisiert
INSTANCE SPELLFX_ICEARROW_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	lightrange			= 100;
};

// Pfeil schiesst los
INSTANCE SPELLFX_ICEARROW_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 300;
};

// Pfeil kollidiert
INSTANCE SPELLFX_ICEARROW_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	lightrange			= 400;
};




////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_CROSSBOW (CFX_BASE_PROTO)
{
	visname_s			= "MAGIC_CROSSBOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_BOLT (CFX_BASE_PROTO)
{
	visname_s			= "MAGIC_BOLT";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
	lightpresetname			= "AURA";
};

INSTANCE SPELLFX_BOLT_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				= 200;
};

////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_ITEMGLIMMER (CFX_BASE_PROTO)
{
	visname_s			= "ITEM_GLIMMER";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};


////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_MANAPOTION (CFX_BASE_PROTO)
{
	visname_s			= "MANA_POTION";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_HEALTHPOTION (CFX_BASE_PROTO)
{
	visname_s			= "HEALTH_POTION";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_YELLOWPOTION (CFX_BASE_PROTO)
{
	visname_s			= "YELLOW_POTION";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};

////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_WEAKGLIMMER (CFX_BASE_PROTO)
{
	visname_s			= "WEAK_GLIMMER";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_WEAKGLIMMER_RED (CFX_BASE_PROTO)
{
	visname_s			= "WEAK_GLIMMER_RED";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_WEAKGLIMMER_BLUE (CFX_BASE_PROTO)
{
	visname_s			= "WEAK_GLIMMER_BLUE";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_WEAKGLIMMER_YELLOW (CFX_BASE_PROTO)
{
	visname_s			= "WEAK_GLIMMER_YELLOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};

INSTANCE SPELLFX_ITEMSTARS (CFX_BASE_PROTO)
{
	visname_s			= "ITEM_STARS";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 0.1;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
INSTANCE SPELLFX_ITEMSTARS_RED (CFX_BASE_PROTO)
{
	visname_s			= "ITEM_STARS_RED";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 0.1;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
INSTANCE SPELLFX_ITEMSTARS_BLUE (CFX_BASE_PROTO)
{
	visname_s			= "ITEM_STARS_BLUE";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 0.1;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};
INSTANCE SPELLFX_ITEMSTARS_YELLOW (CFX_BASE_PROTO)
{
	visname_s			= "ITEM_STARS_YELLOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 0.1;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	emAdjustShpToOrigin		= 1;
};


////////////////////////////////////////////////////////////////////////////////

INSTANCE SPELLFX_GLOW (CFX_BASE_PROTO)
{
	visname_s			= "GOLD_GLOW";
	visalpha			= 1;
	visalphablendfunc_s		= "ADD";
	emtrjmode_s			= "FIXED";
	emtrjloopmode_s			= "NONE";
	emtrjeasefunc_s			= "LINEAR";
	emtrjdynupdatedelay		= 2000000;
	emfxlifespan			= -1;
	emselfrotvel_s			= "0 0 0";
	secsperdamage			= -1;
	lightpresetname			= "JUSTWHITE";
};

INSTANCE SPELLFX_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				= 100;
};


INSTANCE SPELLFX_UNDEAD_DRAGON(CFX_BASE_PROTO)
{
     visname_s			= "UNDEAD_DRAGON";
     visalpha			= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s		= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys		= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan		= -1;
     emselfrotvel_s		= "0 0 0";
     lightpresetname		= "AURA";//Joly: nicht FIRE
     secsperdamage		= -1;
     emAdjustShpToOrigin	= 1;
     emFXCreate_S		= "SPELLFX_DRAGONEYE_LEFT";
     emFXCreatedOwnTrj		= 1;				// alle children dieses fx haben eine eigene flugbahn!!!
          
};

INSTANCE SPELLFX_DRAGONEYE_LEFT(CFX_BASE_PROTO)
{
     visname_s			= "DRAGON_EYE_LEFT";
     visalpha			= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s		= "FIXED";
     emtrjoriginnode		= "BIP01 HEAD";
     emtrjtargetrange		= 10;
     emtrjnumkeys		= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan		= -1;
     emselfrotvel_s		= "0 0 0";
     secsperdamage		= -1;
     emAdjustShpToOrigin	= 1;
     emFXCreate_S		= "SPELLFX_DRAGONEYE_RIGHT";
     emFXCreatedOwnTrj		= 1;				// alle children dieses fx haben eine eigene flugbahn!!!
};

INSTANCE SPELLFX_DRAGONEYE_RIGHT(CFX_BASE_PROTO)
{
     visname_s			= "DRAGON_EYE_RIGHT";
     visalpha			= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s		= "FIXED";
     emtrjoriginnode		= "BIP01 HEAD";
     emtrjtargetrange		= 10;
     emtrjnumkeys		= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan		= -1;
     emselfrotvel_s		= "0 0 0";
     secsperdamage		= -1;
     emAdjustShpToOrigin	= 1;
     emFXCreatedOwnTrj		= 1;				// alle children dieses fx haben eine eigene flugbahn!!!
};



INSTANCE SPELLFX_UNDEAD_DRAGON_KEY_CAST (C_PARTICLEFXEMITKEY)
{
     lightrange				= 500;
};

INSTANCE SPELLFX_UNDEAD_SKELETONLORD(CFX_BASE_PROTO)
{
     visname_s			= "UNDEAD_DRAGON";
     visalpha			= 1;
     visalphablendfunc_s	= "ADD";
     emtrjmode_s		= "FIXED";
     emtrjoriginnode		= "=";
     emtrjtargetrange		= 10;
     emtrjnumkeys		= 10;
     emtrjloopmode_s		= "NONE";
     emtrjeasefunc_s		= "LINEAR";
     emtrjdynupdatedelay	= 2000000;
     emfxlifespan		= -1;
     emselfrotvel_s		= "0 0 0";
     lightpresetname		= "AURA";//Joly: nicht FIRE
     secsperdamage		= -1;
     emAdjustShpToOrigin	= 1;			// alle children dieses fx haben eine eigene flugbahn!!!
};






////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


INSTANCE SPELLFX_WATERFIST_CAST(CFx_Base)
{
};


///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///   													XX  I N V I S I B L E   P R O J E C T I L E   XX
///   													XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


instance spellFX_InvisibleProjectile		(CFx_Base_Proto)
{
	emtrjeasevel 		= 1400.;
	visname_S 		= "MFX_INVISIBLEPROJECTILE";
	visAlpha		= 1;
	emtrjmode_s 		= "TARGET";
     	emtrjtargetnode 	= "BIP01 FIRE";
     	emtrjloopmode_s 	= "NONE";
     	emtrjeasefunc_s 	= "LINEAR";
	emTrjDynUpdateDelay	= 20000;
     	emCheckCollision 	= 2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (n�tig, da dieser FX nicht als Child eingef�gt wurde, sondern komplett
     													// unabh�ngig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
	emActionCollDyn_S 	= "COLLIDE";
	emActionCollStat_S 	= "COLLIDE";
	};

	INSTANCE spellFX_InvisibleProjectile_KEY_COLLIDE (C_ParticleFXEmitKey)
	{
	     	emtrjeasevel 			= 0.000001;
};
INSTANCE SLOW_MOTION_1(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.7";
 	userString[1]     	= "0.9";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 15;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};
INSTANCE SLOW_MOTION_2(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.6";
 	userString[1]     	= "0.9";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 25;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};
INSTANCE SLOW_MOTION_3(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.5";
 	userString[1]     	= "0.9";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 35;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};
INSTANCE SLOW_MOTION_4(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.4";
 	userString[1]     	= "0.9";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 48;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};
INSTANCE SLOW_MOTION_5(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.3";
 	userString[1]     	= "0.9";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 60;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};
INSTANCE SLOW_MOTION_6(CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      		= "time.slw";
 	userString[0]     	= "0.1";
 	userString[1]     	= "1.0";
 	emFxCreate_s		= "FOV_MORPH2";
	emFXLifeSpan    	= 120;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay	= 3;						// achtung, zeitdauer ist hier skaliert mit dem time scaler
};




instance SCREENBLEND_SCHWARZ(CFX_BASE_PROTO)

{

	visname_s = "screenblend.scx";

	userstring[0] = "100000000000";

	userstring[1] = "0 0 0 255";

	userstring[2] = "1";

	visalphablendfunc_s = "BLEND";

	emfxlifespan = 4;

};

instance HERO_HURT(CFx_Base_Proto)
{
    visName_S = "screenblend.scx";
    userString[0] = "0.1";
    userString[1] = "128 0 0 64";
    userString[2] = "0.1";
    userString[3] = "";
    visAlphaBlendFunc_S = "ADD";
    emFXLifeSpan = 0.1;
};