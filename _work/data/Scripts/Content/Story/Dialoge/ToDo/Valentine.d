INSTANCE Info_Mod_Valentine_Hi (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Hi_Condition;
	information	= Info_Mod_Valentine_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Valentine_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Valentine_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Valentine_Hi_12_01"); //I'm Valentine, Valentino's sister.
};

INSTANCE Info_Mod_Valentine_Kapitel2 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kapitel2_Condition;
	information	= Info_Mod_Valentine_Kapitel2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kapitel2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Hi))
	&& (Kapitel >= 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Canthar_Port))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kapitel2_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kapitel2_12_00"); //What are you doing here?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_WoValentino (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_WoValentino_Condition;
	information	= Info_Mod_Valentine_WoValentino_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm from Moe. It's about Valentino.";
};

FUNC INT Info_Mod_Valentine_WoValentino_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (Mod_Moe_Valentino == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_WoValentino_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_15_00"); //I'm from Moe. It's about Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_12_01"); //Aren't you the one Canthar wants?

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "No, who would say that?", Info_Mod_Valentine_WoValentino_B);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Yeah, that's right.", Info_Mod_Valentine_WoValentino_A);
};

FUNC VOID Info_Mod_Valentine_WoValentino_E()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_E_15_00"); //I'm trying to save Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_E_12_01"); //save Valentino? You? Alone?

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Yes, me alone. Where's he at?", Info_Mod_Valentine_WoValentino_G);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "You got a better idea?", Info_Mod_Valentine_WoValentino_F);
};

FUNC VOID Info_Mod_Valentine_WoValentino_B()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_B_15_00"); //No, who would say that?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_B_12_01"); //In his demand, Canthar described a man whose description would apply to you.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "It must be coincidence.", Info_Mod_Valentine_WoValentino_D);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Maybe I am, after all. Yeah, the more I think about it...", Info_Mod_Valentine_WoValentino_C);
};

FUNC VOID Info_Mod_Valentine_WoValentino_A()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_A_15_00"); //Yeah, that's right.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_A_12_01"); //Then what do you want from me?

	Info_Mod_Valentine_WoValentino_E();
};

FUNC VOID Info_Mod_Valentine_WoValentino_D()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_D_15_00"); //It must be coincidence.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_D_12_01"); //Aha... All right, what do you want?

	Info_Mod_Valentine_WoValentino_E();
};

FUNC VOID Info_Mod_Valentine_WoValentino_C()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_C_15_00"); //Maybe I am, after all. Yeah, the more I think about it...
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_C_12_01"); //What are you doing? Come back when you're sure.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_WoValentino_G()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_G_15_00"); //(coarse) Yes, me alone. Where's he at?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_G_12_01"); //(silver) At the height of Jack's lighthouse. Good luck to you.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Mod_Moe_Valentino = 1;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino is being held on the plateau near Jack's lighthouse. I'm gonna have to get him out of there somehow.");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

FUNC VOID Info_Mod_Valentine_WoValentino_F()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_F_15_00"); //You got a better idea?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_F_12_01"); //Canthar wants to get his hands on you, and you want to run out to him alone?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_F_12_02"); //No, you mustn't reveal yourself to his haesemen. I'll go with you.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "No way I'm taking you with me. Where are the kidnappers?", Info_Mod_Valentine_WoValentino_I);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "You don't think it's too dangerous?", Info_Mod_Valentine_WoValentino_H);
};

FUNC VOID Info_Mod_Valentine_WoValentino_I()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_I_15_00"); //No way I'm taking you with me. Where are the kidnappers?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_I_12_01"); //(silver) All right. At the height of Jack's lighthouse. Good luck to you.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Mod_Moe_Valentino = 1;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino is being held on the plateau near Jack's lighthouse. I'm gonna have to get him out of there somehow.");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

FUNC VOID Info_Mod_Valentine_WoValentino_H()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_H_15_00"); //You don't think it's too dangerous?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_H_12_01"); //I already have a plan.... Follow me, I'll take you to the hijackers' camp.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Mod_Moe_Valentino = 2;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentine will lead me to the place where Valentino is being held. She thinks she has a plan...");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

INSTANCE Info_Mod_Valentine_LosZuValentino (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_LosZuValentino_Condition;
	information	= Info_Mod_Valentine_LosZuValentino_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here we go!";
};

FUNC INT Info_Mod_Valentine_LosZuValentino_Condition()
{
	if (Mod_Moe_Valentino == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_LosZuValentino_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_LosZuValentino_15_00"); //Here we go!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VALENTINO");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Valentine_FirstStop (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_FirstStop_Condition;
	information	= Info_Mod_Valentine_FirstStop_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_FirstStop_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_LosZuValentino))
	&& (Npc_GetDistToWp(self, "NW_CITY_TO_LIGHTHOUSE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_FirstStop_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_12_00"); //The first two of these criminal gangs are already there.
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_12_01"); //Seems to me to be newcomers, they don't look like serious opponents.
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_12_02"); //I think you can take them out easily. Just make sure they don't call for backup.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FIRSTGANGSTER");
};

INSTANCE Info_Mod_Valentine_FirstStop_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_FirstStop_Fertig_Condition;
	information	= Info_Mod_Valentine_FirstStop_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_FirstStop_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_FirstStop))
	&& (Npc_IsDead(Mod_7026_OUT_Entfuehrer_NW))
	&& (Npc_IsDead(Mod_7027_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_FirstStop_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_Fertig_12_00"); //That's good! But the difficult part is yet to come. Follow me!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOZELT");
};

INSTANCE Info_Mod_Valentine_SecondStop (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_SecondStop_Condition;
	information	= Info_Mod_Valentine_SecondStop_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_SecondStop_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_FirstStop_Fertig))
	&& (Npc_GetDistToWp(self, "NW_CITY_JAEGER_08") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_SecondStop_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_12_00"); //(whispers all the time) Psst! They're right there.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_12_01"); //Now to my plan: You stand right here and I sneak up to the camp and spy on the guards.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_12_02"); //Maybe you can sort of separate them somehow or sneak past them.
	AI_Output(hero, self, "Info_Mod_Valentine_SecondStop_15_03"); //Why shouldn't I do this?
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_12_04"); //Because they're looking for you and not me. If I'm discovered, I can still do innocent.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_12_05"); //But I think it would be best if you told me what to do. This is my first enterprise of this kind!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATZELT");
};

INSTANCE Info_Mod_Valentine_Spy01 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy01_Condition;
	information	= Info_Mod_Valentine_Spy01_Info;
	permanent	= 0;
	important	= 0;
	description	= "the camp secretly.";
};

FUNC INT Info_Mod_Valentine_Spy01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_SecondStop))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy01_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Spy01_15_00"); //the camp secretly.

	AI_SetWalkMode	(self, NPC_SNEAK);

	AI_GotoWP	(self, "NW_CITY_JAEGER_11");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Spy01_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy01_Fertig_Condition;
	information	= Info_Mod_Valentine_Spy01_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Spy01_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy01_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Spy01_Fertig_12_00"); //Three men are standing around the tent and three shadows appear in the tent; one of which will be Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_Spy01_Fertig_12_01"); //What am I supposed to do now?

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino is guarded by two men in a tent. There are three more guards around the tent. It's going to take a little more than beating the hell out of Valentino...");
};

INSTANCE Info_Mod_Valentine_Spy02 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy02_Condition;
	information	= Info_Mod_Valentine_Spy02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Customers should take care of the bearing again and pay attention to special characteristics.";
};

FUNC INT Info_Mod_Valentine_Spy02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy01_Fertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy02_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Spy02_15_00"); //Customers should take care of the camp again and pay attention to the special characteristics of the guards.

	AI_SetWalkMode	(self, NPC_SNEAK);

	AI_GotoWP	(self, "NW_CITY_JAEGER_11");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Spy02_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy02_Fertig_Condition;
	information	= Info_Mod_Valentine_Spy02_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Spy02_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy02_Fertig_Info()
{
	if (!Npc_IsDead(Mod_7032_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_12_00"); //One of the guards always stops on the spot and continues to drink beer.
	};
	if (!Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_12_01"); //One of them seems to have a weak bladder, he leaves the camp about every even hour to relieve himself.
	};
	if (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_12_02"); //One of them is patrolling through the camp, but doesn't look very strong.
	};
};

INSTANCE Info_Mod_Valentine_Kill01 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill01_Condition;
	information	= Info_Mod_Valentine_Kill01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Overdose the first guard in his beer.";
};

FUNC INT Info_Mod_Valentine_Kill01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!C_NpcIsDown(Mod_7032_OUT_Entfuehrer_NW))
	&& (Mod_ValentineKill01 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_15_00"); //Get the first guard an overdose in his beer.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_12_01"); //What exactly am I supposed to mix?
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_12_02"); //If you have ten blue songs, he'll fall asleep from the overdose.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_12_03"); //If you have a portion of poison, he'll faint at least for a long time.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_12_04"); //Of three portions of poison, I'm sure he could die.

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	Info_AddChoice	(Info_Mod_Valentine_Kill01, "I'll think about it.", Info_Mod_Valentine_Kill01_D);

	if (Npc_HasItems(hero, ItPo_Gift) >= 3)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "I'm fed up with poison, it won't fail.", Info_Mod_Valentine_Kill01_C);
	};
	if (Npc_HasItems(hero, ItPo_Gift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "I only have one portion of poison.", Info_Mod_Valentine_Kill01_B);
	};
	if (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "I've got some animal poison.", Info_Mod_Valentine_Kill01_G);
	};
	if (Npc_HasItems(hero, ItPo_Pflanzengift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "I got some plant poison here.", Info_Mod_Valentine_Kill01_F);
	};
	if (Npc_HasItems(hero, ItPo_Mischgift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "I have this particular poison.", Info_Mod_Valentine_Kill01_E);
	};
	if (Npc_HasItems(hero, ItPl_BluePlant) >= 10)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Here's 10 blue songs.", Info_Mod_Valentine_Kill01_A);
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_D()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_D_15_00"); //I'll think about it.

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);
};

FUNC VOID Info_Mod_Valentine_Kill01_C()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_C_15_00"); //I'm fed up with poison, it won't fail.

	B_GiveInvItems	(hero, self, ItPo_Gift, 3);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_B()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_B_15_00"); //I only have one portion of poison.

	B_GiveInvItems	(hero, self, ItPo_Gift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_G()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_G_15_00"); //I've got some animal poison.

	B_GiveInvItems	(hero, self, ItPo_Tiergift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_F()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_F_15_00"); //I got some plant poison here.

	B_GiveInvItems	(hero, self, ItPo_Pflanzengift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_E()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_E_15_00"); //I have this particular poison.

	B_GiveInvItems	(hero, self, ItPo_Mischgift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_A()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_A_15_00"); //Here's 10 blue songs.

	B_GiveInvItems	(hero, self, ItPl_BluePlant, 10);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Kill01_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill01_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill01_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill01_Fertig_Condition()
{
	if ((Npc_HasItems(self, ItPo_Gift) >= 3)
	|| (Npc_HasItems(self, ItPo_Gift) >= 1)
	|| (Npc_HasItems(self, ItPo_Mischgift) >= 1)
	|| (Npc_HasItems(self, ItPo_Tiergift) >= 1)
	|| (Npc_HasItems(self, ItPo_Pflanzengift) >= 1)
	|| (Npc_HasItems(self, ItPl_BluePlant) >= 10))
	&& (Mod_ValentineKill01 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_Fertig_Info()
{
	if (Npc_HasItems(self, ItPo_Gift) >= 3)
	|| (Npc_HasItems(self, ItPo_Pflanzengift) >= 1)
	|| (Npc_HasItems(self, ItPo_Tiergift) >= 1)
	|| (Npc_HasItems(self, ItPo_Mischgift) >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_12_00"); //He should never get up again.

		B_GivePlayerXP	(Mod_7032_OUT_Entfuehrer_NW.level/2);

		B_KillNpc	(Mod_7032_OUT_Entfuehrer_NW);
	}
	else if (Npc_HasItems(self, ItPo_Gift) >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_12_01"); //He won't be up so soon.

		B_StartOtherRoutine	(Mod_7032_OUT_Entfuehrer_NW, "SLEEP");

		Mod_7032_OUT_Entfuehrer_NW.flags = 2;
	}
	else if (Npc_HasItems(self, ItPl_BluePlant) >= 10)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_12_02"); //He'll take a little nap first.

		B_StartOtherRoutine	(Mod_7032_OUT_Entfuehrer_NW, "SLEEP");

		Mod_7032_OUT_Entfuehrer_NW.flags = 2;
	};
};

INSTANCE Info_Mod_Valentine_Kill02 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill02_Condition;
	information	= Info_Mod_Valentine_Kill02_Info;
	permanent	= 1;
	important	= 0;
	description	= "Lure the weak guard here.";
};

FUNC INT Info_Mod_Valentine_Kill02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill02_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill02_15_00"); //Lure the weak guard here.

	AI_SetWalkMode	(self, NPC_RUN);

	Mod_ValentineKill02 = 1;

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7031_OUT_Entfuehrer_NW, "KILLER");
};

INSTANCE Info_Mod_Valentine_Kill02_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill02_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill02_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill02_Fertig_Condition()
{
	if (Mod_ValentineKill02 == 1)
	&& (Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill02_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kill02_Fertig_12_00"); //He won't get up so fast. One less to worry about.
};

INSTANCE Info_Mod_Valentine_Kill03 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill03_Condition;
	information	= Info_Mod_Valentine_Kill03_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'll take care of the guy with the weak bladder.";
};

FUNC INT Info_Mod_Valentine_Kill03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	&& (Mod_ValentineKill03 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill03_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill03_15_00"); //I'll take care of the guy with the weak bladder.

	Mod_ValentineKill03 = 1;
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Kill03_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill03_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill03_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill03_Fertig_Condition()
{
	if ((Mod_ValentineKill03 == 1)
	&& (Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW)))
	|| (Mod_ValentineKill03 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill03_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kill03_Fertig_12_00"); //Well done. What's next?
};

INSTANCE Info_Mod_Valentine_AllKills_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_AllKills_Fertig_Condition;
	information	= Info_Mod_Valentine_AllKills_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_AllKills_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_SecondStop))
	&& ((Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW))
	|| (Mod_ValentineKill03 == 2))
	&& (Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	&& ((Npc_IsDead(Mod_7032_OUT_Entfuehrer_NW))
	|| (Npc_IsInState(Mod_7032_OUT_Entfuehrer_NW, ZS_Drained)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_AllKills_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_AllKills_Fertig_12_00"); //Good! I didn't expect us to get this far.
	AI_Output(self, hero, "Info_Mod_Valentine_AllKills_Fertig_12_01"); //Now all we have to do is kill the two criminals in the tent without harming Valentino.

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "The first three guards are finished, two remain.");
};

INSTANCE Info_Mod_Valentine_ValentinoFrei (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_ValentinoFrei_Condition;
	information	= Info_Mod_Valentine_ValentinoFrei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_ValentinoFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_AllKills_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Valentino_Kidnapped))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_ValentinoFrei_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_ValentinoFrei_12_00"); //I didn't think it would be so easy.
	AI_Output(hero, self, "Info_Mod_Valentine_ValentinoFrei_15_01"); //It wasn't easy either.
	AI_Output(self, hero, "Info_Mod_Valentine_ValentinoFrei_12_02"); //However. I found it incredibly exciting.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Valentine_Pickpocket (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Pickpocket_Condition;
	information	= Info_Mod_Valentine_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Valentine_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

	Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_BACK, Info_Mod_Valentine_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Valentine_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Valentine_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Valentine_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Valentine_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Valentine_EXIT (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_EXIT_Condition;
	information	= Info_Mod_Valentine_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Valentine_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Valentine_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
