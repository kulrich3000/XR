INSTANCE Info_Mod_Akahasch_Hi (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Hi_Condition;
	information	= Info_Mod_Akahasch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Akahasch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_01"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_02"); //Chcialem tylko wiedziec, co robiles....?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_03"); //Nie nalezysz do nich?
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_04"); //Dla nich?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_05"); //Ten szalenca, który próbowal mnie zabic.
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_06"); //Nie wiem o zadnych szalencach......
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_07"); //Wtedy mozesz mi pomóc?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Ryzyki, mój tylek. To chyba bardziej jak ludzie, gdzie stoisz w kredzie....", Info_Mod_Akahasch_Hi_D);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Brak zainteresowania.", Info_Mod_Akahasch_Hi_B);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Co o tym chodzi?", Info_Mod_Akahasch_Hi_A);
};

FUNC VOID Info_Mod_Akahasch_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_B_15_00"); //Brak zainteresowania.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_B_24_01"); //Co ja robie?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Akahasch_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_E_15_00"); //Przyniose rachunek. To dzien wyplaty.....
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_E_24_01"); //(z wstrzasem) Nie.... Nie... Ch, Innos, stoje przy mnie.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 2);
};

FUNC VOID Info_Mod_Akahasch_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_D_15_00"); //Ryzyki, mój tylek. To chyba bardziej jak ludzie, gdzie stoisz w kredzie....
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_D_24_01"); //Co? Kim jestes, czym sie zajmujesz?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Przyniose rachunek. To dzien wyplaty.....", Info_Mod_Akahasch_Hi_E);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Nie martw sie o to. Zabiore cie do bezpieczenstwa.", Info_Mod_Akahasch_Hi_F);
};

FUNC VOID Info_Mod_Akahasch_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_A_15_00"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_A_24_01"); //Czy mozesz mnie cofnac do klasztoru? Wole raczej nie brac zadnych szans.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Brak zainteresowania.", Info_Mod_Akahasch_Hi_B);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Wszystko w porzadku, podazaj za mna.", Info_Mod_Akahasch_Hi_C);
};

FUNC VOID Info_Mod_Akahasch_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_C_15_00"); //Wszystko w porzadku, podazaj za mna.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_C_24_01"); //Dziekuje bardzo.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_Akahasch_Guiding = 1;
};

FUNC VOID Info_Mod_Akahasch_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_F_15_00"); //Nie martw sie o to. Zabiore cie do bezpieczenstwa.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_F_24_01"); //Tak? Dziekuje bardzo. Najlepsza rzecza, jaka mozesz zrobic jest przeniesienie mnie do klasztoru.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_Akahasch_Guiding = 1;
};

INSTANCE Info_Mod_Akahasch_AtKloster (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_AtKloster_Condition;
	information	= Info_Mod_Akahasch_AtKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akahasch_AtKloster_Condition()
{
	if (Mod_Akahasch_Guiding == 1)
	&& ((Npc_GetDistToWP(hero, "NW_MONASTERY_ENTRY_01") < 500)
	|| (Npc_KnowsInfo(hero, Info_Mod_Daron_Akahasch2)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_AtKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_00"); //Dzieki temu, w jaki sposób moge to zrobic dla Ciebie?
	AI_Output(hero, self, "Info_Mod_Akahasch_AtKloster_15_01"); //Cóz, wiem cos.....
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_02"); //Ach, mysle o czyms. Wez to pod uwage!

	B_GiveInvItems	(self, hero, ItMi_Weinlieferung, 1);

	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_03"); //Wezcie go do Ulfa w miescie, on za to zaplaci.
	AI_Output(hero, self, "Info_Mod_Akahasch_AtKloster_15_04"); //(grozy) Wszystkie w prawo.....
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_05"); //Jeszcze raz bardzo panstwu dziekuje.
	
	B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "Zabralem Akahasha do klasztoru. W tym celu dal mi paczke winiarska, która powinienem przywiezc na Ulf.");

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KLOSTER");

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Akahasch_Fertig (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Fertig_Condition;
	information	= Info_Mod_Akahasch_Fertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak jestes teraz?";
};

FUNC INT Info_Mod_Akahasch_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_AkahaschTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_Fertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Fertig_15_00"); //Jak jestes teraz?
	AI_Output(self, hero, "Info_Mod_Akahasch_Fertig_24_01"); //Jestem tu bezpiecznie. Nie odwazylem sie wyjsc na zewnatrz tak szybko.
};

INSTANCE Info_Mod_Akahasch_Heiltrank (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Heiltrank_Condition;
	information	= Info_Mod_Akahasch_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Akahasch_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, DIALOG_BACK, Info_Mod_Akahasch_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Istota uzdrawiania", Info_Mod_Akahasch_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Akahasch_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Akahasch_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Istota uzdrawiania", Info_Mod_Akahasch_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Akahasch_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Akahasch_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Akahasch_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Akahasch_Pickpocket (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Pickpocket_Condition;
	information	= Info_Mod_Akahasch_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Akahasch_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

	Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_BACK, Info_Mod_Akahasch_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Akahasch_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Akahasch_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Akahasch_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Akahasch_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Akahasch_EXIT (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_EXIT_Condition;
	information	= Info_Mod_Akahasch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akahasch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
