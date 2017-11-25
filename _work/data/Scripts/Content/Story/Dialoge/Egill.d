INSTANCE Info_Mod_Egill_Hi (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_Hi_Condition;
	information	= Info_Mod_Egill_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, co tu robisz?";
};

FUNC INT Info_Mod_Egill_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Egill_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Egill_Hi_15_00"); //Co Pan tutaj robi? Jest to obszar niebezpieczny.
	AI_Output(self, hero, "Info_Mod_Egill_Hi_37_01"); //(traumatyzowany) Co.... co mnie do mnie dotarlo? l-- Zabilem go. Mój wlasny brat....
};

INSTANCE Info_Mod_Egill_Ehnim01 (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_Ehnim01_Condition;
	information	= Info_Mod_Egill_Ehnim01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Brat twój nie umarl.";
};

FUNC INT Info_Mod_Egill_Ehnim01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Hi))
	&& (!Npc_IsDead(Mod_903_BAU_Ehnim_NW))
	&& (Npc_GetDistToWP(Mod_903_BAU_Ehnim_NW, "TOT") > 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Egill_Ehnim01_Info()
{
	AI_Output(hero, self, "Info_Mod_Egill_Ehnim01_15_00"); //Brat twój nie umarl.
	AI_Output(self, hero, "Info_Mod_Egill_Ehnim01_37_01"); //Co.....? Co mówisz? On zyje?
	AI_Output(hero, self, "Info_Mod_Egill_Ehnim01_15_02"); //Tak, po prostu go skrzywdziles, a nie zabiles.

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	{
		if (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllZombies))
		{
			AI_Output(hero, self, "Info_Mod_Egill_Ehnim01_15_03"); //Siedzi przy ognisku i odzyskuje zdrowie.
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Egill_Ehnim01_15_04"); //Jest w miescie z Telborem.
		};
	};

	AI_Output(self, hero, "Info_Mod_Egill_Ehnim01_37_05"); //(propleased, relved) I...... Nie wiem, co powiedziec. Dziekuje za wiadomosc. Bede chodzil od razu, aby go pielegnowac.

	AI_StopProcessInfos	(self);

	if (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllZombies))
	{
		B_StartOtherRoutine	(self, "EHNIM");
	}
	else
	{
		B_StartOtherRoutine	(self, "CITY");
	};

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Egill_Ehnim02 (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_Ehnim02_Condition;
	information	= Info_Mod_Egill_Ehnim02_Info;
	permanent	= 0;
	important	= 0;
	description	= "To nie Twoja wina. Prowadzily cie ciemne moce.";
};

FUNC INT Info_Mod_Egill_Ehnim02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Hi))
	&& (Npc_IsDead(Mod_903_BAU_Ehnim_NW))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Egill_Ehnim02_Info()
{
	AI_Output(hero, self, "Info_Mod_Egill_Ehnim02_15_00"); //To nie Twoja wina. Prowadzily cie ciemne moce.
	AI_Output(self, hero, "Info_Mod_Egill_Ehnim02_37_01"); //Mówisz, ze zlowieszcze sily....? Tak, ten pielgrzym. To jego wina. Jesli moge miec na nim rece....
	AI_Output(hero, self, "Info_Mod_Egill_Ehnim02_15_02"); //Teraz wrócisz na podwórko. Jestes jeszcze tam potrzebny. Opiekuje sie pielgrzymem.
	AI_Output(self, hero, "Info_Mod_Egill_Ehnim02_37_03"); //Nieco spokojniej) Tak, chyba masz racje, mnie potrzebuja. (znowu) Tak, ale znajdz ten grzmot!
	AI_Output(self, hero, "Info_Mod_Egill_Ehnim02_37_04"); //Przygotuj mu powolna i bolesna smierc, tego przyjaciela, aby mógl dusic sie w królestwie Beliara.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Egill_Ehnim03 (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_Ehnim03_Condition;
	information	= Info_Mod_Egill_Ehnim03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Calkiem tak. A teraz trzeba wziac za to odpowiedzialnosc.";
};

FUNC INT Info_Mod_Egill_Ehnim03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Hi))
	&& (Npc_IsDead(Mod_903_BAU_Ehnim_NW))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Egill_Ehnim03_Info()
{
	AI_Output(hero, self, "Info_Mod_Egill_Ehnim03_15_00"); //Calkiem tak. A teraz trzeba wziac za to odpowiedzialnosc.
	AI_Output(self, hero, "Info_Mod_Egill_Ehnim03_37_01"); //(podpisany) Tak..... Tak, masz racje.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BRIDGE");

	Mod_EgillSelbstmord = 1;

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Egill_Pickpocket (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_Pickpocket_Condition;
	information	= Info_Mod_Egill_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Egill_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Egill_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Egill_Pickpocket);

	Info_AddChoice	(Info_Mod_Egill_Pickpocket, DIALOG_BACK, Info_Mod_Egill_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Egill_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Egill_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Egill_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Egill_Pickpocket);
};

FUNC VOID Info_Mod_Egill_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Egill_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Egill_Pickpocket);

		Info_AddChoice	(Info_Mod_Egill_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Egill_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Egill_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Egill_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Egill_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Egill_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Egill_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Egill_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Egill_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Egill_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Egill_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Egill_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Egill_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Egill_EXIT (C_INFO)
{
	npc		= Mod_902_BAU_Egill_NW;
	nr		= 1;
	condition	= Info_Mod_Egill_EXIT_Condition;
	information	= Info_Mod_Egill_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Egill_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Egill_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
