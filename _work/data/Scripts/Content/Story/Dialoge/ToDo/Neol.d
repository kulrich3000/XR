INSTANCE Info_Mod_Neol_Hi (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Hi_Condition;
	information	= Info_Mod_Neol_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladasz jak ktos, kto jest dobry odkladajac ja na pózniej.";
};

FUNC INT Info_Mod_Neol_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neol_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_15_00"); //Wygladasz jak ktos, kto jest dobry odkladajac ja na pózniej.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_01_01"); //Mozesz to powiedziec jeszcze raz! Nie wydaje Ci sie jednak, ze mozesz wiele zabrac.

	Info_ClearChoices	(Info_Mod_Neol_Hi);

	Info_AddChoice	(Info_Mod_Neol_Hi, "Ma pani racje. Mysle, ze lepiej bym poszedl.", Info_Mod_Neol_Hi_B);
	Info_AddChoice	(Info_Mod_Neol_Hi, "Chcesz skorzystac z szansy?", Info_Mod_Neol_Hi_A);
};

FUNC VOID Info_Mod_Neol_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_B_15_00"); //Ma pani racje. Mysle, ze lepiej bym poszedl.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_B_01_01"); //Hej, to lepiej takze dla Ciebie.

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

FUNC VOID Info_Mod_Neol_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_A_15_00"); //Chcesz skorzystac z szansy?
	AI_Output(self, hero, "Info_Mod_Neol_Hi_A_01_01"); //Mozesz postawic swoje tylek, buster. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Neol_Hi_A_01_02"); //Zakladam, ze nie mozesz mnie pic pod stolem!

	Info_ClearChoices	(Info_Mod_Neol_Hi);

	Info_AddChoice	(Info_Mod_Neol_Hi, "Nie, dziekuje, ja wolalabym nie grac.", Info_Mod_Neol_Hi_D);
	Info_AddChoice	(Info_Mod_Neol_Hi, "(Silny) Jestem. Daj mi piwo!", Info_Mod_Neol_Hi_C);
};

FUNC VOID Info_Mod_Neol_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_D_15_00"); //Nie, dziekuje, ja wolalabym nie grac.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_D_01_01"); //Cokolwiek mówisz.

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

FUNC VOID Info_Mod_Neol_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_00"); //Jestem. Daj mi piwo!
	AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_01"); //Tutaj. Niech zwyciezy lepszy czlowiek!

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);
	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	if (hero.attribute[ATR_STRENGTH] >= 20)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_02"); //To nie bylo nic.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_03"); //Masz racje, maluczki. Oto kolejna butelka.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 40)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_04"); //Mmh, Yummy. Chcialbym jeszcze jeden.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_05"); //Masz racje, maluczki. Oto kolejna butelka.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 50)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_06"); //Jest jedna rzecz, która moge zrobic.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_07"); //Tak..... Wciaz dziala! Tutaj!

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 60)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_08"); //Czy to wszystko, co dostales?
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_09"); //na kólkach! Mam troche zawrotów glowy. Ale ta butelka moze.... Mysle, ze moge sobie poradzic.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_10"); //Oto kolejna dla Ciebie.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 70)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_11"); //Ciagle stoje!
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_12"); //Nie docenilam cie tak bardzo, buster..... burzuazja mój przyjaciel.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_13"); //Tutaj butelka idzie na góre!

		CreateInvItems	(hero, ItMi_Gold, 50);
		CreateInvItems	(hero, ItFo_Beer, 1);

		B_ShowGivenThings	("50 zlota i piwo otrzymane");

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_14"); //Phew, to wszystko, co moge wziac.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_15"); //Jestem rozczarowany, brudny.
	};

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

INSTANCE Info_Mod_Neol_Faice01 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice01_Condition;
	information	= Info_Mod_Neol_Faice01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio wydarzylo sie cos podejrzanego?";
};

FUNC INT Info_Mod_Neol_Faice01_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice01_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice01_15_00"); //Czy ostatnio wydarzylo sie cos podejrzanego?
	AI_Output(self, hero, "Info_Mod_Neol_Faice01_01_01"); //Nie wiem o tym. Porozmawiaj z innymi.
};

INSTANCE Info_Mod_Neol_Faice02 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice02_Condition;
	information	= Info_Mod_Neol_Faice02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy slyszales cos o zatruciu roli Faice' a?";
};

FUNC INT Info_Mod_Neol_Faice02_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice02_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice02_15_00"); //Czy slyszales cos o zatruciu roli Faice' a?
	AI_Output(self, hero, "Info_Mod_Neol_Faice02_01_01"); //Nie, nic nowego.
};

INSTANCE Info_Mod_Neol_Faice03 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice03_Condition;
	information	= Info_Mod_Neol_Faice03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest jeszcze cos innego, czego chcesz sie pozbyc?";
};

FUNC INT Info_Mod_Neol_Faice03_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice03_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice03_15_00"); //Czy jest jeszcze cos innego, czego chcesz sie pozbyc?
	AI_Output(self, hero, "Info_Mod_Neol_Faice03_01_01"); //Porozmawiaj z Furtem. Moze wiedziec wiecej.
};

INSTANCE Info_Mod_Neol_Pickpocket (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Pickpocket_Condition;
	information	= Info_Mod_Neol_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Neol_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Neol_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

	Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_BACK, Info_Mod_Neol_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neol_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neol_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);
};

FUNC VOID Info_Mod_Neol_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Neol_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

		Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Neol_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Neol_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Neol_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Neol_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Neol_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Neol_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Neol_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Neol_EXIT (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_EXIT_Condition;
	information	= Info_Mod_Neol_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neol_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neol_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
