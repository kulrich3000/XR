INSTANCE Info_Mod_Skip_DI_Hi (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_Hi_Condition;
	information	= Info_Mod_Skip_DI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skip_DI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Skip_DI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Skip_DI_Hi_08_00"); //Come on, Greg wants you to come to him right away.

	Info_ClearChoices	(Info_Mod_Skip_DI_Hi);

	Info_AddChoice	(Info_Mod_Skip_DI_Hi, "Okay.", Info_Mod_Skip_DI_Hi_Ok);
};

FUNC VOID Info_Mod_Skip_DI_Hi_Ok ()
{
	Info_ClearChoices	(Info_Mod_Skip_DI_Hi);

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "WP_DI_HEROKOMMTANLAND");
	AI_Teleport	(self, "WP_DI_SKIPKOMMTANLAND");

	Npc_ExchangeRoutine	(self, "START");

	PrintScreen ("An uneventful crossing later", -1, YPOS_LevelUp, FONT_Screen, 2);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Skip_DI_Brunhild (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_Brunhild_Condition;
	information	= Info_Mod_Skip_DI_Brunhild_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to take this woman to the ship.";
};

FUNC INT Info_Mod_Skip_DI_Brunhild_Condition()
{
	if (Npc_GetDistToWP(self, "WP_DI_SKIPKOMMTANLAND") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Brunhild))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skip_DI_Brunhild_Info()
{
	AI_Output(hero, self, "Info_Mod_Skip_DI_Brunhild_15_00"); //I want you to take this woman to the ship. Tell her to replace Samuel in the kitchen.
	AI_Output(self, hero, "Info_Mod_Skip_DI_Brunhild_08_01"); //Who is this...?
	AI_Output(hero, self, "Info_Mod_Skip_DI_Brunhild_15_02"); //She'll tell you herself.

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_7642_OUT_Brunhild_DI, "WP_DI_BRANDON_SLEEP");
	B_StartOtherRoutine	(Mod_7642_OUT_Brunhild_DI, "KUECHE");
	AI_Teleport	(Mod_7642_OUT_Brunhild_DI, "WP_DI_BRANDON_SLEEP");
	B_StartOtherRoutine	(Mod_1549_PIR_Malcom_DI, "START");

	PrintScreen ("Some time later", -1, YPOS_LevelUp, FONT_Screen, 2);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Skip_DI_Brunhild2 (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_Brunhild2_Condition;
	information	= Info_Mod_Skip_DI_Brunhild2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skip_DI_Brunhild2_Condition()
{
	if (Npc_GetDistToWP(self, "WP_DI_SKIPKOMMTANLAND") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Francis_DI_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skip_DI_Brunhild2_Info()
{
	AI_Output(self, hero, "Info_Mod_Skip_DI_Brunhild2_08_01"); //I'm glad you came. Samuel wants to see you. He's in his bridal parlor.
};

INSTANCE Info_Mod_Skip_DI_ZumSchiff (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_ZumSchiff_Condition;
	information	= Info_Mod_Skip_DI_ZumSchiff_Info;
	permanent	= 1;
	important	= 0;
	description	= "Take me to the ship.";
};

FUNC INT Info_Mod_Skip_DI_ZumSchiff_Condition()
{
	if (Npc_GetDistToWP(self, "WP_DI_SKIPKOMMTANLAND") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Alles))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skip_DI_ZumSchiff_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "WP_DI_SHIP_03");
	AI_Teleport	(self, "WP_DI_SKIP_WAITFORPLAYER");

	Npc_ExchangeRoutine	(self, "UNTERWEGS");

	PrintScreen ("An uneventful crossing later", -1, YPOS_LevelUp, FONT_Screen, 2);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Skip_DI_ZumSchiff_02 (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_ZumSchiff_02_Condition;
	information	= Info_Mod_Skip_DI_ZumSchiff_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Take me to the ship.";
};

FUNC INT Info_Mod_Skip_DI_ZumSchiff_02_Condition()
{
	if (Npc_GetDistToWP(self, "WP_DI_SKIPKOMMTANLAND") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Alles))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skip_DI_ZumSchiff_02_Info()
{
	AI_StopProcessInfos	(self);

	//AI_Teleport	(hero, "WP_DI_LEVELCHANGE");
	//AI_Teleport	(self, "WP_DI_SKIP_WAITFORPLAYER");

	Npc_ExchangeRoutine	(self, "UNTERWEGS");

	//PrintScreen ("Eine ereignislose Überfahrt später", -1, YPOS_LevelUp, FONT_Screen, 2);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Skip_DI_ZumStrand (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_ZumStrand_Condition;
	information	= Info_Mod_Skip_DI_ZumStrand_Info;
	permanent	= 1;
	important	= 0;
	description	= "Take me to the beach.";
};

FUNC INT Info_Mod_Skip_DI_ZumStrand_Condition()
{
	if (Npc_GetDistToWP(self, "WP_DI_SKIP_WAITFORPLAYER") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Alles))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skip_DI_ZumStrand_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "WP_DI_HEROKOMMTANLAND");
	AI_Teleport	(self, "WP_DI_SKIPKOMMTANLAND");

	Npc_ExchangeRoutine	(self, "START");

	PrintScreen ("An uneventful crossing later", -1, YPOS_LevelUp, FONT_Screen, 2);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
	
	if (Hlp_IsValidNpc(Mod_7642_OUT_Brunhild_DI)) {
		if (Mod_7642_OUT_Brunhild_DI.aivar[AIV_PARTYMEMBER]) {
			AI_Teleport	(Mod_7642_OUT_Brunhild_DI, "WP_DI_SKIPKOMMTANLAND");
		};
	};
};

INSTANCE Info_Mod_Skip_DI_EXIT (C_INFO)
{
	npc		= Mod_1540_PIR_Skip_DI;
	nr		= 1;
	condition	= Info_Mod_Skip_DI_EXIT_Condition;
	information	= Info_Mod_Skip_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Skip_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Skip_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
