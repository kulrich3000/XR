INSTANCE Info_Mod_Elvrich_Hi (C_INFo)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Hi_Condition;
	information	= Info_Mod_Elvrich_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes praktykantem?";
};

FUNC INT Info_Mod_Elvrich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_00"); //Jestes praktykantem?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_01"); //Nie dlugo. Tymczasem jestem lepszy niz Thorben. Nie jest to jednak trudne, ale....
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_02"); //A co z Thorbenem?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_03"); //Dlaczego nie ogladasz go, gdy noca jest w pubie?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_04"); //Codziennie pije tyle, ze nastepnego ranka juz nie trzezwi.
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_05"); //Jakies szczególne powody?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_06"); //Mysle, ze nie zawsze mial dobre zycie.
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_07"); //Nie ma nic poza wskazówkami, ze nie mozesz sie z niego wydostac.
};

INSTANCE Info_Mod_Elvrich_WieGehts (C_INFo)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_WieGehts_Condition;
	information	= Info_Mod_Elvrich_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to robisz?";
};

FUNC INT Info_Mod_Elvrich_WieGehts_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_WieGehts_15_00"); //Jak to robisz?
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_01"); //Nie moga narzekac, tylko w swiezym zwiazku.
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_02"); //Czlowiek, nigdy nie pomyslalem, ze na takich smiertelnikach jak ja bylo takie piekno.
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_03"); //Praca tutaj jest oczywiscie dosc zmudna, poniewaz musze pracowac dla dwóch osób. Thorben nie moze nic osiagnac.
};

INSTANCE Info_Mod_Elvrich_Liste (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Liste_Condition;
	information	= Info_Mod_Elvrich_Liste_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan dzisiaj robi?";
};

FUNC INT Info_Mod_Elvrich_Liste_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_ErsteInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvrich_Liste_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_Liste_15_00"); //Co Pan dzisiaj robi?
	AI_Output(self, hero, "Info_Mod_Elvrich_Liste_24_01"); //Pracuje troche wiecej, a potem wieczorem spotykam sie z moja dziewczyna.
	AI_Output(hero, self, "Info_Mod_Elvrich_Liste_15_02"); //Gdzie sie spotykasz?
	AI_Output(self, hero, "Info_Mod_Elvrich_Liste_24_03"); //Napisala do mnie list, w którym powiedziala, ze spotkamy sie dzis wieczorem w dzielnicy portowej w cichym miejscu w poblizu owiec.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KURGAN");

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Elvrich spotyka dzis wieczorem swoja dziewczyne w dzielnicy portowej niedaleko owiec.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Elvrich_Pickpocket (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Pickpocket_Condition;
	information	= Info_Mod_Elvrich_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Elvrich_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_Saw, 1);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

	Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_BACK, Info_Mod_Elvrich_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elvrich_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elvrich_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elvrich_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elvrich_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elvrich_EXIT (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_EXIT_Condition;
	information	= Info_Mod_Elvrich_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvrich_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
