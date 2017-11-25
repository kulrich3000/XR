INSTANCE Info_Mod_Jesper_REL_Hi (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Hi_Condition;
	information	= Info_Mod_Jesper_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_00"); //Ah, good of you to come.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_01"); //What's to be done?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_02"); //Rumors spread. There is an abandoned house on the market square, which would be ideal for a new accommodation.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_03"); //Unfortunately, the brewing master and the butcher have recently taken an interest in the building.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_04"); //They have plans to open a gourmet restaurant there.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_05"); //Now it's about seeing the rumor in the pub that it would haunt it.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_06"); //I understand. As soon as the inhabitants start avoiding the building, the willing buyers will lose interest in it.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_07"); //Exactly. So always apply loud and thick. Come on, let's go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TAVERNE");
};

INSTANCE Info_Mod_Jesper_REL_InTaverne (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InTaverne_Condition;
	information	= Info_Mod_Jesper_REL_InTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_305") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_00"); //Ah, good to see you.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_01"); //Yes, my friend, I'm happy to meet you here too.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_02"); //This is a really beautiful city with nice and intelligent people.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_03"); //Yeah, if only this house didn't exist... you know, the abandoned one in the marketplace, where they're about to open the restaurant.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_04"); //So is it true what you hear about it... that it's haunted?
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_05"); //That's not even an expression... I've heard so many horrible things about so many people.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_06"); //I didn't want to believe it myself at first, but then I saw it with my own eyes.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_07"); //You have to be tired of life to go there.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_08"); //Yeah, tell me more about what it's all about.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "A portal to Beliar's horrific empire itself is said to be located there.", Info_Mod_Jesper_REL_InTaverne_D);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "The remains of some villainous criminals are walled into the walls of the building.", Info_Mod_Jesper_REL_InTaverne_C);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "A community of occultists once held dark rituals there.", Info_Mod_Jesper_REL_InTaverne_B);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "The bones of a nasty witch are said to be buried there.", Info_Mod_Jesper_REL_InTaverne_A);
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_E()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_E_36_00"); //That's horrible. Adanos keep me from this building! I will avoid his presence.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_E_15_01"); //Yeah, you'd do well to. Until the next goodbye, my friend.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	B_StartOtherRoutine	(self, "TAVERNE2");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "VORTAVERNE");
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_D()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_00"); //A portal to Beliar's horrific empire itself is said to be located there.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_01"); //A visitor to the house could run the risk of being overrun by the dark forces... and walk for the rest of the day as undead.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_02"); //Some people are said to have suffered this fate.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_03"); //And if you listen carefully, you can also hear the groaning of the curses.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_C()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_00"); //The remains of some villainous criminals are walled into the walls of the building.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_01"); //They had sinned against Adanos themselves and were cursed by him to eternal undeadness.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_02"); //One would have to be insane to enter the building, because the rotten bones would undoubtedly grab the intruder from all sides and get hold of him.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_00"); //Once upon a time, a community of occultists held there sinister rituals, incantations of demonic creatures.... and even human sacrifices.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_01"); //They are said to have torn out the heart of the unlucky with their bodies alive.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_02"); //Their restless souls now dwell in the building and let each visitor fall into madness, who puts a foot in it.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_00"); //The bones of a nasty witch are said to be buried there.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_01"); //She was once judged in Khorata and now restlessly seeks revenge on her executioners.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_02"); //And every time an ignorant person enters the building, the pale bones of the witch grab him and drag his unhappy soul into the depths.

	Info_Mod_Jesper_REL_InTaverne_E();
};

INSTANCE Info_Mod_Jesper_REL_InHaus (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InHaus_Condition;
	information	= Info_Mod_Jesper_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_InHaus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_36_00"); //Man, did you see all those faces when we were telling that scary story about the house?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_36_01"); //I could have laughed....

	AI_StopProcessInfos	(self);

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Jesper_REL_Glorie (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie_Condition;
	information	= Info_Mod_Jesper_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_36_00"); //(whispers) All right, everything went as planned.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_36_01"); //The bookworm should now hopefully hand it all over to you.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie2_Condition;
	information	= Info_Mod_Jesper_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bibliothekar_Glorie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_00"); //All right, let's get you out of here.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_01"); //I'll keep distracting the librarian while I'm at it to make sure he doesn't notice.

	AI_TurnToNpc	(self, Mod_7278_OUT_Bibliothekar_REL);

	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_02"); //I hear you're looking for a visual aid?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_03"); //I think I saw something shiny back there.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "REL_CITY_151");

	AI_Teleport	(Mod_7371_OUT_Richter_REL, "REL_CITY_145");
	B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "ATBIB");
};

INSTANCE Info_Mod_Jesper_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie3_Condition;
	information	= Info_Mod_Jesper_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_00"); //Ah, there you are at last.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_01"); //That may have been a riot in the library when the theft of records was discovered, I'll tell you.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_02"); //The governor immediately called all the guards and had them search for the scholar.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_03"); //This can still become something (laughs)? even though it would offend me a little in my honor as a thief if he were to take all the credit for it now.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie4_Condition;
	information	= Info_Mod_Jesper_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie4_Condition()
{
	if (Mod_Diebe_Brunnen == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie4_36_00"); //What the fuck is that?

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Lesser_Skeleton_Diebe_01, "FP_REL_SKELETT_DIEBE_01");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_02, "FP_REL_SKELETT_DIEBE_02");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_03, "FP_REL_SKELETT_DIEBE_03");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_04, "FP_REL_SKELETT_DIEBE_04");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_05, "FP_REL_SKELETT_DIEBE_05");
};

INSTANCE Info_Mod_Jesper_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie5_Condition;
	information	= Info_Mod_Jesper_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie5_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_CITY_023") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_00"); //Oh, oh, it's you. Scared the hell out of me.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Glorie5_15_01"); //You here?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_02"); //Where else? Since the old man's jail time, you can plunder your property calmly. That's our calling. See where there's something to pick up and grab it.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_03"); //Well, keep your eyes open.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Jesper_REL_EXIT (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_EXIT_Condition;
	information	= Info_Mod_Jesper_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
