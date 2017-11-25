INSTANCE Info_Mod_Lester_REL_Hi (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Hi_Condition;
	information	= Info_Mod_Lester_REL_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You here?";
};

FUNC INT Info_Mod_Lester_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lester_REL_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_00"); //You here?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_01"); //Have you ever been high on that truck before? I'm telling you, this is an experience you won't soon forget.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_02"); //I think I'm gonna go right back and forth again.
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_03"); //Fine and well, but why are you here?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_04"); //Have you ever heard of Khorata?
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_05"); //Not really.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_06"); //From all I've heard, the city is close to paradise.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_07"); //Anyone who wants to is allowed in and can lead his or her comfortable life.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_08"); //The city council is made up of a single man who only makes sure that the chaos does not get out of hand.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_09"); //In the nearby farmhouse, something is gained that is called a giver of joy and is said to be much more effective than bogweed.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_13_10"); //I can hardly imagine that, but trying it doesn't hurt.
};

INSTANCE Info_Mod_Lester_REL_VonWem (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_VonWem_Condition;
	information	= Info_Mod_Lester_REL_VonWem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who did you hear that from?";
};

FUNC INT Info_Mod_Lester_REL_VonWem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_VonWem_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_VonWem_15_00"); //Who did you hear that from?
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_13_01"); //I picked it up on the marketplace in Khorinis. I think Baltram told me about it.
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_13_02"); //However, the level of awareness of Khorata is surprisingly low.
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_13_03"); //No one seems to have the need to brag about the benefits. That's fine by me.
};

INSTANCE Info_Mod_Lester_REL_Zusammen (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Zusammen_Condition;
	information	= Info_Mod_Lester_REL_Zusammen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's go together.";
};

FUNC INT Info_Mod_Lester_REL_Zusammen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_001") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_Zusammen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Zusammen_15_00"); //Let's go together.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Zusammen_13_01"); //Another time. I really want to do some trips with this truck first...
};

INSTANCE Info_Mod_Lester_REL_Gefallen (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Gefallen_Condition;
	information	= Info_Mod_Lester_REL_Gefallen_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you like it here?";
};

FUNC INT Info_Mod_Lester_REL_Gefallen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_111") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_Gefallen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Gefallen_15_00"); //How do you like it here?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_13_01"); //The giver of joy really kills you. (laughs) Fucking good stuff. But Khorata...
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_13_02"); //I had thought to find a free city, but Khorata is ruled by resentment and arbitrariness.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_13_03"); //The greatest problem in every community is and remains the human being.
};

INSTANCE Info_Mod_Lester_REL_FindeOrt (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_FindeOrt_Condition;
	information	= Info_Mod_Lester_REL_FindeOrt_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can hardly find my way around here.";
};

FUNC INT Info_Mod_Lester_REL_FindeOrt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_111") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_15_00"); //I can hardly find my way around here.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_13_01"); //What exactly do you not find?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, DIALOG_BACK, Info_Mod_Lester_REL_FindeOrt_BACK);

	if (Mod_Wendel_FettNehmer == 1)
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'm looking for a troll.", Info_Mod_Lester_REL_FindeOrt_D);	
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'm looking for the mine.", Info_Mod_Lester_REL_FindeOrt_C);	
	};
	if (Mod_REL_Frauenkleider >= 1)
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'm looking for bandits in Relendel.", Info_Mod_Lester_REL_FindeOrt_B);	
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Landvermessung))
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'm looking for Vincent.", Info_Mod_Lester_REL_FindeOrt_A);	
	};
};

FUNC VOID B_Lester_Say_Alleine()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_Alleine_15_00"); //I'll manage on my own.
};

FUNC VOID B_Lester_Say_Zusammen()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_Zusammen_15_00"); //Show me the way.
	AI_Output(self, hero, "DEFAULT"); //
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_BACK()
{
	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_D_15_00"); //I'm looking for a troll.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_13_01"); //(laughs) Usually you're looking for a way to avoid him.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_13_02"); //But I have heard from a trader of the court that a troll is supposed to make the passport there unsafe.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_13_03"); //Do you need my help?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'll manage on my own.", Info_Mod_Lester_REL_FindeOrt_D2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Show me the way.", Info_Mod_Lester_REL_FindeOrt_D1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTROLL");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 4;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_C_15_00"); //I'm looking for the mine.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_C_13_01"); //No problem, the mine is signposted from the city. Want me to go with you?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'll manage on my own.", Info_Mod_Lester_REL_FindeOrt_C2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Show me the way.", Info_Mod_Lester_REL_FindeOrt_C1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOMINE");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 3;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_B_15_00"); //I'm looking for bandits in Relendel.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_B_13_01"); //The farmer Erhard has often complained that there are bandits near his farm.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_B_13_02"); //They shouldn't be too difficult to find. Shall we go looking together?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'll manage on my own.", Info_Mod_Lester_REL_FindeOrt_B2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Show me the way.", Info_Mod_Lester_REL_FindeOrt_B1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOMELVIN");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 2;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_A_15_00"); //I'm looking for Vincent.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_13_01"); //Yeah, I've heard a lot about Vincent, too.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_13_02"); //He is said to have pitched his tent somewhere west of the big lake in Relendel.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_13_03"); //If you want, we can take a look together.

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "I'll manage on my own.", Info_Mod_Lester_REL_FindeOrt_A2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Show me the way.", Info_Mod_Lester_REL_FindeOrt_A1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOVINCENT");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 1;
};

INSTANCE Info_Mod_Lester_REL_AtTroll (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtTroll_Condition;
	information	= Info_Mod_Lester_REL_AtTroll_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtTroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "RELWIDNIS_20") < 500)
	&& (Mod_LesterRELGuide == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtTroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll_13_00"); //Well, if that's not a chunk. Are you sure you want to chop it down?
	AI_Output(hero, self, "Info_Mod_Lester_REL_AtTroll_15_01"); //What else have we come all this way for?
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll_13_02"); //All right, then. Two of us, we grab him.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Lester_REL_AtTroll2 (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtTroll2_Condition;
	information	= Info_Mod_Lester_REL_AtTroll2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtTroll2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "RELWIDNIS_21") < 500)
	&& (Mod_LesterRELGuide == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtTroll2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll2_13_00"); //That's a wrap.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtMine (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtMine_Condition;
	information	= Info_Mod_Lester_REL_AtMine_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_206") < 500)
	&& (Mod_LesterRELGuide == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtMine_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtMine_13_00"); //This is the mine entrance. Have fun in there.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtMelvin (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtMelvin_Condition;
	information	= Info_Mod_Lester_REL_AtMelvin_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtMelvin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_045") < 500)
	&& (Mod_LesterRELGuide == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtMelvin_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtMelvin_13_00"); //There I see a camp with several tents. Those should be the bandits you're looking for.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtVincent (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtVincent_Condition;
	information	= Info_Mod_Lester_REL_AtVincent_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtVincent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_026") < 500)
	&& (Mod_LesterRELGuide == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtVincent_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtVincent_13_00"); //Here's the big lake I was talking about. On the opposite side, you should find Vincent.
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtVincent_13_01"); //I'm going back to town now. The running is too much for me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_EXIT (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_EXIT_Condition;
	information	= Info_Mod_Lester_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lester_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lester_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
