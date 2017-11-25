INSTANCE Info_Mod_Brody_Hi (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_Hi_Condition;
	information	= Info_Mod_Brody_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Brody_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brody_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_Hi_09_00"); //Hey, water. Water, please.

	Info_ClearChoices	(Info_Mod_Brody_Hi);

	Info_AddChoice	(Info_Mod_Brody_Hi, "I don't have one.", Info_Mod_Brody_Hi_B);

	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Info_AddChoice	(Info_Mod_Brody_Hi, "Here you have some.", Info_Mod_Brody_Hi_A);
	};
};

FUNC VOID Info_Mod_Brody_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Brody_Hi_B_15_00"); //I don't have one.
	AI_Output(self, hero, "Info_Mod_Brody_Hi_B_09_00"); //It's not working. I won't be doing it much longer anyway. (laughs dryly and breathes out his life)

	Mod_BrodyQuest = 1;

	Info_ClearChoices	(Info_Mod_Brody_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brody_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Brody_Hi_A_15_00"); //Here you have some.

	B_GiveInvItems	(hero, self, ItFo_Water, 1);

	B_UseItem	(self, ItFo_Water);

	AI_Output(self, hero, "Info_Mod_Brody_Hi_A_09_01"); //Ahhhhh! Thanks, buddy.

	Mod_BrodyQuest = 3;

	Info_ClearChoices	(Info_Mod_Brody_Hi);
};

INSTANCE Info_Mod_Brody_WhoAreYou (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_WhoAreYou_Condition;
	information	= Info_Mod_Brody_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Brody_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_Hi))
	&& (Mod_BrodyQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_WhoAreYou_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_01"); //I'm a desert pirate.

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_02"); //No, no, no, I'm not gonna hurt you. I'm too weak for that.

	AI_RemoveWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_03"); //I was a member of a whole group. Our camp was back there, across from the temple.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_04"); //Our favorite thing we did was to annoy the pirates.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_05"); //We stole food and stuff from them, destroyed boats, spat in front of Greg's hut and peed in her grog.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_06"); //One night, I was awakened by a scream.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_07"); //These swamp rats of pirates had discovered our camp and murdered us one by one!
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_08"); //I was the only one who escaped without equipment, without boozing. And I've been frying here ever since.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_09_09"); //I can't get out of the canyon. The mountains are too high and the exit I know of is constantly guarded.

	Log_CreateTopic	(TOPIC_MOD_BRODY_CANYON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRODY_CANYON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRODY_CANYON, "Brody, a desert pirate, sits in the canyon and knows only one way out. Isn't there anyone else?");
};

INSTANCE Info_Mod_Brody_AndererWeg (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_AndererWeg_Condition;
	information	= Info_Mod_Brody_AndererWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's another way out of the canyon.";
};

FUNC INT Info_Mod_Brody_AndererWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_AndererWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Brody_AndererWeg_15_00"); //There's another way out of the canyon.
	AI_Output(self, hero, "Info_Mod_Brody_AndererWeg_09_01"); //Really? Where?
	AI_Output(hero, self, "Info_Mod_Brody_AndererWeg_15_02"); //It is a teleport platform. I'll take you there.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Brody_AmZiel (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_AmZiel_Condition;
	information	= Info_Mod_Brody_AmZiel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_AmZiel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_AndererWeg))
	&& (Npc_GetDistToWP(hero, "ADW_CANYON_TELEPORT_PATH_01") < 600)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_AmZiel_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_09_00"); //friend I don't know how to thank you.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_09_01"); //But you're lucky enough that I wasn't strong enough when you found me.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_09_02"); //Then the conversation would have taken a completely different turn, believe me.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_09_03"); //So long, and be happy when you don't hear from me anymore!

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BRODY_CANYON, "I helped Brody. As a' thank you', he leaves me alone.");
	B_SetTopicStatus	(TOPIC_MOD_BRODY_CANYON, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAFE");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Brody_FalscherWeg (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_FalscherWeg_Condition;
	information	= Info_Mod_Brody_FalscherWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_FalscherWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_AndererWeg))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_2_CANYON_01") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_FalscherWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_FalscherWeg_09_00"); //friend That's the pirate camp. You're going to turn me over to them.
	AI_Output(self, hero, "Info_Mod_Brody_FalscherWeg_09_01"); //Either you show me another way or you'll get in a lot of trouble.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Brody_PechGehabt (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_PechGehabt_Condition;
	information	= Info_Mod_Brody_PechGehabt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_PechGehabt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_FalscherWeg))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_2_CANYON_01") < 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_PechGehabt_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_PechGehabt_09_00"); //I warned you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAFE");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Brody_Heiltrank (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_Heiltrank_Condition;
	information	= Info_Mod_Brody_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(healing potion)";
};

FUNC INT Info_Mod_Brody_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	Info_AddChoice	(Info_Mod_Brody_Heiltrank, DIALOG_BACK, Info_Mod_Brody_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Essence of Healing", Info_Mod_Brody_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 3)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Elixir of Healing", Info_Mod_Brody_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Extrakt)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Extract of Healing", Info_Mod_Brody_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Essenz)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Essence of Healing", Info_Mod_Brody_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Drink of light healing", Info_Mod_Brody_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Light healing potion", Info_Mod_Brody_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_05)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Drink of fast healing", Info_Mod_Brody_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Brody_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Brody_EXIT (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_EXIT_Condition;
	information	= Info_Mod_Brody_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brody_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brody_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
