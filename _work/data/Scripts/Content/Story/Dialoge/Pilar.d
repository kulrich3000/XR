INSTANCE Info_Mod_Pilar_Hi (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_Hi_Condition;
	information	= Info_Mod_Pilar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the weather too bad for you or why are you sitting here in the tavern all day?";
};

FUNC INT Info_Mod_Pilar_Hi_Condition()
{
	if (Wld_IsTime(07,15,00,15))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pilar_Hi_15_00"); //Is the weather too bad for you or why are you sitting here in the tavern all day?
	AI_Output(self, hero, "Info_Mod_Pilar_Hi_01_01"); //Why don't you leave me alone? My mood's bad enough as it is.
	AI_Output(self, hero, "Info_Mod_Pilar_Hi_01_02"); //If you want to talk, go to Luis. If you two are talking, at least none of you guys are going to fill me in.
};

INSTANCE Info_Mod_Pilar_AtHut (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut_Condition;
	information	= Info_Mod_Pilar_AtHut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_00"); //Ah, someone's finally coming. I thought they were gonna kidnap me, too.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_01"); //Who's gonna want to kidnap you?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_02"); //Those fucking goblins, of course. Last night, they kidnapped my brother Chad.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_03"); //I could barely reach for the sword, otherwise they would have caught me too.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_04"); //Do you have any idea where they might have taken him?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_05"); //No, not really. I could hurt one of them, though. So the blood trail could lead us to them.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_06"); //What are you waiting for, your brother's chances of survival will not increase.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_07"); //I was waiting for backup. If we're going to be captured, someone must know we're here, too.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_08"); //Well, then Luis goes back to town and we follow the blood trail.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_09"); //All right, I'll follow you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOBBOZELT");
	B_StartOtherRoutine	(Mod_7567_OUT_Luis_EIS, "START");

	Mod_7567_OUT_Luis_EIS.aivar[AIV_Partymember] = FALSE;
	self.aivar[AIV_Partymember] = TRUE;

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Pilar's brother was kidnapped by goblins. We'll follow the blood trail to find him. Meanwhile, Luis will be in town telling us what's going on.");

	Wld_InsertNpc	(Mod_7720_OUT_Chad_EIS, "EIS_415");

	B_KillNpc	(Mod_7720_OUT_Chad_EIS);

	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	
	Wld_SendTrigger("CHAD_BLOOD_01");
	Wld_SendTrigger("CHAD_BLOOD_02");
	Wld_SendTrigger("CHAD_BLOOD_03");
	Wld_SendTrigger("CHAD_BLOOD_04");
	Wld_SendTrigger("CHAD_BLOOD_05");
	Wld_SendTrigger("CHAD_BLOOD_06");
};

INSTANCE Info_Mod_Pilar_AtHut2 (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut2_Condition;
	information	= Info_Mod_Pilar_AtHut2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pilar_AtHut))
	&& (Npc_GetDistToWP(hero, "EIS_415") < 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_00"); //Apparently, the goblins have built themselves a new camp. Kind of weird.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_01"); //Why is that funny?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_02"); //That the goblins built something like this last time was a long time ago.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_03"); //At that time, the demon charmer was still among them.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_04"); //Could this demon summoner really use magic?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_05"); //No, he wasn't that smart. But he has performed rituals that have never made a difference.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_06"); //Well, then the few goblins shouldn't be a problem for us. Let's attack.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_07"); //Okay, you go ahead.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOBBOZELT");
};

INSTANCE Info_Mod_Pilar_AtHut3 (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut3_Condition;
	information	= Info_Mod_Pilar_AtHut3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pilar_AtHut2))
	&& (Npc_GetDistToWP(hero, "EIS_415") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut3_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_00"); //No... those damn monsters killed my brother. Why couldn't we save him?!
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_01"); //It doesn't look to me like they killed him for fun.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_02"); //Looks like a victim to me!
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_03"); //What are these monsters up to? Why do they need a sacrifice?
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_04"); //Maybe they sacrificed him to reawaken someone else.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_05"); //I'm so worried about you. I've always wondered why these monsters have a graveyard.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_06"); //What if they sacrificed my brother to reawaken their friends?!
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_07"); //If that's what really happened, someone has to let the city know.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_08"); //I'll go to the cemetery and you let me know in town. We'll meet again later.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_09"); //Well, good luck!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOCITY");

	self.aivar[AIV_Partymember] = FALSE;

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Pilar will go into town and get some backup. Meanwhile, I'll check the cemetery.");

	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton_Eis, "FRIEDHOFF_7");
};

INSTANCE Info_Mod_Pilar_Pickpocket (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_Pickpocket_Condition;
	information	= Info_Mod_Pilar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Pilar_Pickpocket_Condition()
{
	C_Beklauen	(86, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

	Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_BACK, Info_Mod_Pilar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pilar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pilar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pilar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pilar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pilar_EXIT (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_EXIT_Condition;
	information	= Info_Mod_Pilar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pilar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pilar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
