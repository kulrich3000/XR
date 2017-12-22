INSTANCE Info_Mod_Pablo_Hi (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Hi_Condition;
	information	= Info_Mod_Pablo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Pablo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pablo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Pablo_Hi_12_01"); //Hi.
};

INSTANCE Info_Mod_Pablo_Mortis (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Mortis_Condition;
	information	= Info_Mod_Pablo_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mortis wyslal mnie.";
};

FUNC INT Info_Mod_Pablo_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mortis_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Mortis_15_00"); //Mortis wyslal mnie. Chce zapytac, czy wszystko jest w porzadku.
	AI_Output(self, hero, "Info_Mod_Pablo_Mortis_12_01"); //Przynies mi chleb, ser i butelke wody.
};

INSTANCE Info_Mod_Pablo_Infos (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Infos_Condition;
	information	= Info_Mod_Pablo_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zaladuj jedzenie.";
};

FUNC INT Info_Mod_Pablo_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Mortis))
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Infos_15_00"); //Zaladuj jedzenie.

	Npc_RemoveInvItems	(hero, ItFo_Water, 1);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);

	B_ShowGivenThings	("Woda, ser i chleb dodano");

	AI_Output(self, hero, "Info_Mod_Pablo_Infos_12_01"); //Dzieki.
	AI_Output(hero, self, "Info_Mod_Pablo_Infos_15_02"); //Czy powiesz mi, czy wszystko jest w porzadku?
	AI_Output(self, hero, "Info_Mod_Pablo_Infos_12_03"); //Wszystko jest mi w porzadku.

	B_LogEntry	(TOPIC_MOD_MORTIS_KONTROLLE, "Nie ma nic zlego w Pablo.");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Pablo_RLMord (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_RLMord_Condition;
	information	= Info_Mod_Pablo_RLMord_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_RLMord_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_12_00"); //Osoby nieupowaznione nie maja nie..... Och, jestes jednym z nas.
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_12_01"); //Andre juz powiedzial mi, ze wyslal ci gonne. Przesluchujemy tylko tych obecnych. Na drugim pietrze na górze korpusu. pokój.

	Info_ClearChoices	(Info_Mod_Pablo_RLMord);

	Info_AddChoice	(Info_Mod_Pablo_RLMord, "Z która z prostytutek mial Jason?", Info_Mod_Pablo_RLMord_C);
	Info_AddChoice	(Info_Mod_Pablo_RLMord, "Kto byl obecny w czasie morderstwa?", Info_Mod_Pablo_RLMord_B);
	Info_AddChoice	(Info_Mod_Pablo_RLMord, "Kiedy doszlo do morderstwa?", Info_Mod_Pablo_RLMord_A);
};

FUNC VOID Info_Mod_Pablo_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_C_15_00"); //Z która z prostytutek mial Jason?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_C_12_01"); //Giselle, ten z niebieska sukienka.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_B_15_00"); //Kto byl obecny w czasie morderstwa?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_B_12_01"); //Cóz, z jednej strony Giselle, która.... trzech innych prostytutek i dwóch suitorów.
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_B_12_02"); //Pozostale dwie pary sa przesluchiwane, ale najwyrazniej byly w.... kiedy zabójstwo zostalo popelnione.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_A_15_00"); //Kiedy doszlo do morderstwa?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_A_12_01"); //Dzis rano okolo godziny 4:00.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

INSTANCE Info_Mod_Pablo_Giselle (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Giselle_Condition;
	information	= Info_Mod_Pablo_Giselle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_Giselle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Giselle_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_12_00"); //Dowiedz sie jeszcze czegokolwiek?
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_15_01"); //Jest cos dziwnego w tym miejscu, ze to miejsce jest.

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);

	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... bron mordercy.", Info_Mod_Pablo_Giselle_E);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... bron stosowana przez ofiare.", Info_Mod_Pablo_Giselle_D);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... rane.", Info_Mod_Pablo_Giselle_C);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... pokój.", Info_Mod_Pablo_Giselle_B);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... polozenie ciala.", Info_Mod_Pablo_Giselle_A);
};

FUNC VOID Info_Mod_Pablo_Giselle_F()
{
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_F_12_00"); //Nie, to wszystko wydaje sie pasowac do obrazu.

	Mod_PAL_Pablo_FirstRaetsel += 1;
};

FUNC VOID Info_Mod_Pablo_Giselle_E()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_E_15_00"); //... bron mordercy.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_D()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_D_15_00"); //... bron stosowana przez ofiare.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_D_12_01"); //Masz racje.... cos niewlasciwego...... Ale co?

	if (Mod_PAL_Pablo_FirstRaetsel == 0)
	{
		B_GivePlayerXP	(1500);
	}
	else if (Mod_PAL_Pablo_FirstRaetsel == 1)
	{
		B_GivePlayerXP	(500);
	}
	else if (Mod_PAL_Pablo_FirstRaetsel == 2)
	{
		B_GivePlayerXP	(100);
	};

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);

	Info_AddChoice	(Info_Mod_Pablo_Giselle, "Pistolet jest wyciagniety.", Info_Mod_Pablo_Giselle_I);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "Bron jest tepa.", Info_Mod_Pablo_Giselle_H);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "To nie jest jego bron.", Info_Mod_Pablo_Giselle_G);
};

FUNC VOID Info_Mod_Pablo_Giselle_C()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_C_15_00"); //... rane.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_B()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_B_15_00"); //... pokój.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_A()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_A_15_00"); //... lozyska korpusu.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_I()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_I_15_00"); //Pistolet jest wyciagniety.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_I_12_01"); //Masz racje.... Giselle powiedzial, ze zginal bez ostrzezenia.

	if (Mod_PAL_Pablo_SecondRaetsel == 0)
	{
		B_GivePlayerXP	(1000);
	}
	else if (Mod_PAL_Pablo_SecondRaetsel == 1)
	{
		B_GivePlayerXP	(250);
	};

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Jason wyciagnal swoja bron. Nie mógl wiec zginac niespodziewanie. Powinienem jeszcze raz porozmawiac z Giselle.");

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);
};

FUNC VOID Info_Mod_Pablo_Giselle_H()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_H_15_00"); //Bron jest tepa.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_H_12_01"); //Ona jest ostra jak brzytwa.

	Mod_PAL_Pablo_SecondRaetsel += 1;
};

FUNC VOID Info_Mod_Pablo_Giselle_G()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_G_15_00"); //To nie jest jego bron.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_G_12_01"); //Tak, nalezy do niego. Bron serwisowa.

	Mod_PAL_Pablo_SecondRaetsel += 1;
};

INSTANCE Info_Mod_Pablo_GiselleFlucht (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GiselleFlucht_Condition;
	information	= Info_Mod_Pablo_GiselleFlucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Giselle trzymajac cos przed nami.";
};

FUNC INT Info_Mod_Pablo_GiselleFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Jason))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GiselleFlucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_GiselleFlucht_15_00"); //Giselle trzymajac cos przed nami. Zamknela sie w komorze wlasciciela i odmawia wyjscia.
	AI_Output(self, hero, "Info_Mod_Pablo_GiselleFlucht_12_01"); //Zawsze te histeryczne piskleta. To tak jak ona ucieka od nas. Polece Neronowi rozwiazac problem. Do tego czasu mozna znalezc wiecej dowodów.

	Wld_InsertNpc	(Mod_7235_NONE_Galf_NW, "NW_CITY_HABOUR_PUFF_NADJA");

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Pablo zadba o to, aby Giselle dotarla do jej zmyslów. W miedzyczasie powinienem nieco rozejrzec sie dookola i poszukac dowodów.");
};

INSTANCE Info_Mod_Pablo_GalfKo (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GalfKo_Condition;
	information	= Info_Mod_Pablo_GalfKo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GalfKo_Condition()
{
	if (Mod_PAL_Galf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GalfKo_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_GalfKo_12_00"); //Powiedzialem, ze szukam dowodów i nie rzucam ludzi do lobby! Nazywa sie to praca dochodzeniowa? Kim jednak jest ten facet?
	AI_Output(hero, self, "Info_Mod_Pablo_GalfKo_15_01"); //Nazywa sie Galf. To wszystko, co wiem.
	AI_Output(self, hero, "Info_Mod_Pablo_GalfKo_12_02"); //Dobrze, spróbuje go obudzic.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pablo_GalfCall (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GalfCall_Condition;
	information	= Info_Mod_Pablo_GalfCall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GalfCall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_GalfKo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GalfCall_Info()
{
	AI_TurnToNpc	(self, Mod_7235_NONE_Galf_NW);

	AI_Output(self, hero, "Info_Mod_Pablo_GalfCall_12_00"); //Zaloba! Obudzic sie!
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7234_OUT_Giselle_NW, "GALF");
};

INSTANCE Info_Mod_Pablo_GiselleGeknackt (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GiselleGeknackt_Condition;
	information	= Info_Mod_Pablo_GiselleGeknackt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GiselleGeknackt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Galf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GiselleGeknackt_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_GiselleGeknackt_12_00"); //Dobrze wykonane. Teraz zglos sie do Pana Andre' a o tym, co sie tutaj wydarzylo.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pablo_Pickpocket (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Pickpocket_Condition;
	information	= Info_Mod_Pablo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Pablo_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

	Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_BACK, Info_Mod_Pablo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pablo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pablo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pablo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pablo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pablo_EXIT (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_EXIT_Condition;
	information	= Info_Mod_Pablo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pablo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pablo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
