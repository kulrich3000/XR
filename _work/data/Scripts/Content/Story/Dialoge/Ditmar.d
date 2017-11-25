INSTANCE Info_Mod_Ditmar_Hi (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Hi_Condition;
	information	= Info_Mod_Ditmar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why is it so quiet around here?";
};

FUNC INT Info_Mod_Ditmar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ditmar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_00"); //Why is it so quiet around here? Shouldn't there be any noise in the taverns?
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_01"); //Look at that table over there. There are the three reasons why no one here wants to say anything.
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_02"); //A... a somewhat unusual picture.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_03"); //You say it.
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_04"); //How could this have happened?
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_05"); //I don't know! They simply march in here like the Orcs in Myrtana and insist that they are allowed to stay here.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_06"); //Since then, my guests can no longer have regular meetings because the women listen to everything.

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);

	Info_AddChoice	(Info_Mod_Ditmar_Hi, "Call me if there are more serious problems.", Info_Mod_Ditmar_Hi_C);
	Info_AddChoice	(Info_Mod_Ditmar_Hi, "So what? Women are perfectly right.", Info_Mod_Ditmar_Hi_B);
	Info_AddChoice	(Info_Mod_Ditmar_Hi, "I understand the problem.", Info_Mod_Ditmar_Hi_A);
};

FUNC VOID Info_Mod_Ditmar_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_C_15_00"); //Call me if there are more serious problems.

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);
};

FUNC VOID Info_Mod_Ditmar_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_D_15_00"); //I'll have a look.

	Mod_Kneipe_Ditmar = 1;

	Log_CreateTopic	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Three women of sedate age have set their minds on spending their days in the inn. But the host doesn't like it at all, because there is no room for his regulars' get-togethers. I'm supposed to find a solution to scare the three of them away.");

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);
};

FUNC VOID Info_Mod_Ditmar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_B_15_00"); //So what? Women are perfectly right.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_B_26_01"); //Yes, yes, that's why I just tried to get them to leave by asking them to leave. But fruitless, as you can see.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_B_26_02"); //Maybe you'll find a way to drive them away from here.... it shouldn't be to your detriment either!

	Info_Mod_Ditmar_Hi_D();
};

FUNC VOID Info_Mod_Ditmar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_A_15_00"); //I understand the problem.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_A_26_01"); //Somebody's got to get them out of here... all the petitions didn't help.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_A_26_02"); //If you succeed, it shall not be your damage!

	Info_Mod_Ditmar_Hi_D();
};

INSTANCE Info_Mod_Ditmar_DickeLuft (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_DickeLuft_Condition;
	information	= Info_Mod_Ditmar_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear life has returned.";
};

FUNC INT Info_Mod_Ditmar_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_DickeLuft_15_00"); //I hear life has returned.
	AI_Output(self, hero, "Info_Mod_Ditmar_DickeLuft_26_01"); //You said it! They were good guests, the three of them. But women in the economy? It's going to take centuries for this to become normal.
	AI_Output(self, hero, "Info_Mod_Ditmar_DickeLuft_26_02"); //Let's drink to your salvation!
	
	CreateInvItems(self, ItFo_Beer_Khorata, 2);
	B_GiveInvItems(self, hero, ItFo_Beer_Khorata, 1);
	
	B_UseItem(self, ItFo_Beer_Khorata);
	B_UseItem(hero, ItFo_Beer_Khorata);
	
	B_GivePlayerXP(250);
};

INSTANCE Info_Mod_Ditmar_DeinLaden (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_DeinLaden_Condition;
	information	= Info_Mod_Ditmar_DeinLaden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is this your place?";
};

FUNC INT Info_Mod_Ditmar_DeinLaden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ditmar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_DeinLaden_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_DeinLaden_15_00"); //Is this your place?
	AI_Output(self, hero, "Info_Mod_Ditmar_DeinLaden_26_01"); //(skilled) Yes, yes. A real family business.
	AI_Output(self, hero, "Info_Mod_Ditmar_DeinLaden_26_02"); //My daughter has something to drink, only my wife is no longer alive, Adanos has her blessed.
};

INSTANCE Info_Mod_Ditmar_Geruechte (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Geruechte_Condition;
	information	= Info_Mod_Ditmar_Geruechte_Info;
	permanent	= 1;
	important	= 0;
	description	= "What do you have to offer in rumors?";
};

FUNC INT Info_Mod_Ditmar_Geruechte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ditmar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_Geruechte_Info()
{
	var int didicounter;
	didicounter = 0;

	AI_Output(hero, self, "Info_Mod_Ditmar_Geruechte_15_00"); //What do you have to offer in rumors?

	if (Mod_Jim_Schutz < 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Endres_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_01"); //It is said to haunt the cemetery near the pass to the Hofstaatler.
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_02"); //Several Buddler want to have heard from there on the way home to hear the sound of bloodcurdling bells.

		didicounter += 1;
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anna_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_03"); //Maria was supposedly caught with the witch again.
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_04"); //If you ask me, it's only a matter of time before she's finally burned.

		didicounter += 1;
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen4))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_05"); //Theodorus doesn't exactly make himself popular with people. If I were him, I'd be more careful.

		didicounter += 1;
	};
	if (didicounter == 0)
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_06"); //There's so much weird going on in Khorata, but something special hasn't been there lately.
	};
};

INSTANCE Info_Mod_Ditmar_Buerger (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Buerger_Condition;
	information	= Info_Mod_Ditmar_Buerger_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ditmar_Buerger_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_Buerger_Info()
{
	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_00"); //Everyone knows you're with us as of today.
	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_01"); //That wants to be watered!

	CreateInvItems	(self, ItFo_Beer, 1);
	CreateInvItems	(hero, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_02"); //Have fun here! And you can have fun. Just not with my Salmey, all right?
};

INSTANCE Info_Mod_Ditmar_Pickpocket (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Pickpocket_Condition;
	information	= Info_Mod_Ditmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Ditmar_Pickpocket_Condition()
{
	C_Beklauen	(98, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_BACK, Info_Mod_Ditmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ditmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ditmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ditmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ditmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ditmar_EXIT (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_EXIT_Condition;
	information	= Info_Mod_Ditmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ditmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ditmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
