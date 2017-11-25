INSTANCE Info_Mod_Abdi_Hi (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Hi_Condition;
	information	= Info_Mod_Abdi_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're very young.";
};

FUNC INT Info_Mod_Abdi_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abdi_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_00"); //You're very young.
	AI_Output(self, hero, "Info_Mod_Abdi_Hi_31_01"); //Age plays no role for Beliar. It depends on the fervor of faith.
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_02"); //Only those who are indoctrinated at a young age have what it takes to be a real fanatic, right? What's your name?
	AI_Output(self, hero, "Info_Mod_Abdi_Hi_31_03"); //Abdi, and I'm not a fanatic. I am only capable of overcoming my emotions and not letting myself be guided by them, as is often the case with weaker meat.
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_04"); //I'm saying yes, a fanatic.
};

INSTANCE Info_Mod_Abdi_WieLang (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_WieLang_Condition;
	information	= Info_Mod_Abdi_WieLang_Info;
	permanent	= 0;
	important	= 0;
	description	= "How long have you been in?";
};

FUNC INT Info_Mod_Abdi_WieLang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_WieLang_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_WieLang_15_00"); //How long have you been in?
	AI_Output(self, hero, "Info_Mod_Abdi_WieLang_31_01"); //Beliar has chosen me to do great things. Correspondingly early on he brought me to the community.
};

INSTANCE Info_Mod_Abdi_Eltern (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Eltern_Condition;
	information	= Info_Mod_Abdi_Eltern_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did your parents say?";
};

FUNC INT Info_Mod_Abdi_Eltern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_WieLang))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_Eltern_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Eltern_15_00"); //What did your parents say?
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_01"); //I don't remember my parents.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_02"); //I grew up in this stinking Inno school, where they plagued and tortured me.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_03"); //When they sent us to collect the plants, I ran away.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_04"); //Eduard found me and brought me here. This is where I found my home.
};

INSTANCE Info_Mod_Abdi_DontTalk (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_DontTalk_Condition;
	information	= Info_Mod_Abdi_DontTalk_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Abdi_DontTalk_Condition()
{
	if ((hero.guild == GIL_PAL)
	|| (hero.guild == GIL_VLK))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_DontTalk_Info()
{
	AI_Output(self, hero, "Info_Mod_Abdi_DontTalk_31_00"); //I don't mess with you rabble.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Abdi_Belagerung (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Belagerung_Condition;
	information	= Info_Mod_Abdi_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You need some help?";
};

FUNC INT Info_Mod_Abdi_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Belagerung_15_00"); //You need some help?
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_01"); //Yeah.

	B_Say	(hero, self, "$WASISTZUTUN");

	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_02"); //In the last two nights, one of our novices was found dead.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_03"); //Both were cruelly wounded.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_04"); //However, near the camp, no one has been seen who could be responsible for this.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_05"); //So we fear that we have a traitor in our ranks.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_06"); //We need to track down the killer to prevent worse.

	B_Say	(hero, self, "$WIESOLLICHVORGEHEN");

	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_07"); //Question our people for information. And if you find him, kill the killer.
	AI_Output(hero, self, "Info_Mod_Abdi_Belagerung_15_08"); //I'll do my best.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_09"); //Don't fail!

	Log_CreateTopic	(TOPIC_MOD_BEL_DAEMON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_DAEMON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "In the last few nights some novices were killed. Abdi asked me to find the killer and kill him. I'm supposed to ask the others about that.");
};

INSTANCE Info_Mod_Abdi_DaemonTot (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_DaemonTot_Condition;
	information	= Info_Mod_Abdi_DaemonTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The demon is dead!";
};

FUNC INT Info_Mod_Abdi_DaemonTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_BesessenerNovize_Hi))
	&& (Npc_IsDead(Demon_Novize))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_DaemonTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_DaemonTot_15_00"); //The demon is dead.
	AI_Output(self, hero, "Info_Mod_Abdi_DaemonTot_31_01"); //Thank you very much. Beliar will pay you for your service. Here, take this healing rune.

	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	B_GivePlayerXP	(1000);

	B_LogEntry_More	(TOPIC_MOD_BEL_DAEMON, TOPIC_MOD_BEL_BELAGERUNG, "The demon is dead. As a thank-you, Abdi gave me a slight wound healing.", "Abdi's demon problem is solved.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_DAEMON, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Abdi_Pickpocket (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Pickpocket_Condition;
	information	= Info_Mod_Abdi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Abdi_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

	Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_BACK, Info_Mod_Abdi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Abdi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Abdi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Abdi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Abdi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Abdi_EXIT (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_EXIT_Condition;
	information	= Info_Mod_Abdi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Abdi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abdi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
