INSTANCE Info_Mod_Mattheus_Hi (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_Hi_Condition;
	information	= Info_Mod_Mattheus_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Mattheus_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mattheus_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Mattheus_Hi_09_01"); //Jestem Mateuszem, nowicjuszem ognia i poslannikiem Pyrokara, gl�wnym magikiem ognia.
	AI_Output(self, hero, "Info_Mod_Mattheus_Hi_09_02"); //Wnosze wiadomosci o Pyrokarze do lorda Hagena w miescie.
};

INSTANCE Info_Mod_Mattheus_Bote (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_Bote_Condition;
	information	= Info_Mod_Mattheus_Bote_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa to przeslania?";
};

FUNC INT Info_Mod_Mattheus_Bote_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Karras_HastDuAuftrag_2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mattheus_Bote_Info()
{
	AI_Output(hero, self, "Info_Mod_Mattheus_Bote_15_00"); //Jakie sa to przeslania?
	AI_Output(self, hero, "Info_Mod_Mattheus_Bote_09_01"); //Tak wiec wszystkie rodzaje waznych rzeczy. Nie moge powiedziec, co to m�wi.
	
	B_LogEntry	(TOPIC_MOD_KARRAS_BOTE, "Mateusz nie powie mi, jakie sa to przeslania. Moze powinienem dac mu troche wiecej do picia. Z odrobina trucizny.....");
};

INSTANCE Info_Mod_Mattheus_Alk (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_Alk_Condition;
	information	= Info_Mod_Mattheus_Alk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wez to piwo.";
};

FUNC INT Info_Mod_Mattheus_Alk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Bote))
	&& (Npc_HasItems(hero, ItFo_Beer) >= 1)
	&& (Npc_HasItems(hero, ItPo_Gift) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mattheus_Alk_Info()
{
	AI_Output(hero, self, "Info_Mod_Mattheus_Alk_15_00"); //Wez to piwo.

	Npc_RemoveInvItems(hero, ItPo_Gift, 1);
	
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	
	AI_Output(self, hero, "Info_Mod_Mattheus_Alk_09_01"); //Ach, jak ja bede....

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "DIE");

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Mattheus_WhatsNew (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_WhatsNew_Condition;
	information	= Info_Mod_Mattheus_WhatsNew_Info;
	permanent	= 1;
	important	= 0;
	description	= "Co to sa wiadomosci?";
};

FUNC INT Info_Mod_Mattheus_WhatsNew_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mattheus_WhatsNew_Info()
{
	AI_Output(hero, self, "Info_Mod_Mattheus_WhatsNew_15_00"); //Co to sa wiadomosci?
	AI_Output(self, hero, "Info_Mod_Mattheus_WhatsNew_09_01"); //Obecnie nie ma nic.
};

INSTANCE Info_Mod_Mattheus_Pickpocket (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_Pickpocket_Condition;
	information	= Info_Mod_Mattheus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mattheus_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);

	Info_AddChoice	(Info_Mod_Mattheus_Pickpocket, DIALOG_BACK, Info_Mod_Mattheus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mattheus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mattheus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);

		Info_AddChoice	(Info_Mod_Mattheus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mattheus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mattheus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mattheus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mattheus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mattheus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mattheus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mattheus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mattheus_EXIT (C_INFO)
{
	npc		= Mod_724_NOV_Mattheus_NW;
	nr		= 1;
	condition	= Info_Mod_Mattheus_EXIT_Condition;
	information	= Info_Mod_Mattheus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mattheus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mattheus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
