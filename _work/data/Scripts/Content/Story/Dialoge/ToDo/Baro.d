INSTANCE Info_Mod_Baro_Hi (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Hi_Condition;
	information	= Info_Mod_Baro_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Willingham_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_00"); //Kto przerywa moja prace?
	AI_Output(hero, self, "Info_Mod_Baro_Hi_15_01"); //Pracujesz bardzo ciezko, dlaczego nie robisz przerwy?
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_02"); //Poniewaz bede tu dluzej.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_03"); //Jestem odpowiedzialny za zaopatrzenie wsi w drewno. Oznacza to równiez wycinanie drzew zima.
	AI_Output(hero, self, "Info_Mod_Baro_Hi_15_04"); //Wyglada na to, ze wykonales swoja prace w tym roku. Dowódca chce cie zobaczyc.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_05"); //W koncu myslalam, ze zamarznalem na smierc, mimo ze czulam sie cieplo.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_06"); //Kiedy wrócisz do wioski, poczuj sie swobodnie, zeby wstapic na mnie, a ja zrobie tutaj najlepsze piwo.

	B_LogEntry	(TOPIC_MOD_EIS_RAUESCHNEIDE, "Baro wróci teraz do wsi.");

	B_StartOtherRoutine	(self, "DORF");
};

INSTANCE Info_Mod_Baro_Orkring (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring_Condition;
	information	= Info_Mod_Baro_Orkring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Willingham_RaueSchneide))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_00"); //Ah, swietnie. Ciesze sie, ze moge Cie zobaczyc. Musze porozmawiac z panstwem o orkach.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_01"); //Na poczatku bylo ich bardzo niewiele. Pochodzili z gór i nalezeli do bardzo starej kasty orków.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_02"); //Wyglada jednak na to, ze w glebi okolicznych gór zapalila sie stara moc.
	AI_Output(hero, self, "Info_Mod_Baro_Orkring_15_03"); //Skad tak wiele wiesz o tych orkach? Wydaje sie, ze jest pan jedynym.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_04"); //Mam specjalnego przyjaciela. Rodzina zna go od dawna.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_05"); //Kiedy jeszcze zylismy w górach, mieszkalismy obok jego groty orkowej.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_06"); //Dorastalismy razem i wiele sie od niego ucze o orkach.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_07"); //Nazywa sie Garunh i mieszka w namiocie orkowym po drugiej stronie góry. Musze z nim porozmawiac o duzej liczbie orków.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_08"); //Wtedy z pewnoscia odpowie na Panstwa pytania.
	AI_Output(hero, self, "Info_Mod_Baro_Orkring_15_09"); //Jesli Twój chlopak wie o tym duzo, nie powinnismy go czekac.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_10"); //Doskonale, juz wyslalem mu wiadomosc. Bedzie nas oczekiwal. Podazaj za mna, idz za mna.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Baro otrzymuje informacje o orkach od orka o nazwisku Garunh. On mnie do niego poprowadzi.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOGARUNH");
};

INSTANCE Info_Mod_Baro_Orkring2 (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring2_Condition;
	information	= Info_Mod_Baro_Orkring2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Orkring))
	&& (Npc_GetDistToWP(self, "EIS_443") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring2_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring2_04_00"); //Trzymac przez sekunde. Daje mu znac, ze jest jeszcze ktos inny.

	AI_GotoNpc	(self, Mod_10045_Orc_Garunh_EIS);

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Baro_Orkring2_04_01"); //Jest gotów porozmawiac z Toba. Sledz mnie do jego namiotu.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Baro_Orkring3 (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring3_Condition;
	information	= Info_Mod_Baro_Orkring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring3_04_00"); //Wracam do wsi. Jesli pomagales Garunhowi, przyjdz do mojego domu. Kupie Ci obiad.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring3_04_01"); //W mroznych miesiacach zimowych nie nalezy cierpiec glodu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DORF");
};

INSTANCE Info_Mod_Baro_UntoteOrks (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_UntoteOrks_Condition;
	information	= Info_Mod_Baro_UntoteOrks_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_UntoteOrks_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_00"); //Ach, wróciles. Czy móglbys pomóc Garunhowi i co wazniejsze, co powiedzial o Orkach na przeleczy?
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_01"); //Wyglada na to, ze mamy do czynienia z martwymi orkami.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_02"); //Widocznie szaman o imieniu Asek zatrudnil swoich ludzi z cmentarza.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_03"); //Garunh nie wiedzial gdzie jest swiatynia, w której Asek.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_04"); //Potrzebujemy orkowego lidera, którego mozemy przesluchac, a Garunh powiedzial, ze znasz kogos, kto mówi jezykiem orkowym.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_05"); //Znam kogos, ale zanim pójdziesz do niego, powinienes udac sie do Willingham.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_06"); //Czlowiek, którego szukasz, nazywa sie Melchior i podlega dowódcy. Bedzie tez wiedzial, gdzie sie znajduje.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_07"); //Powinnismy odlozyc kolacje. Tutaj wez jedno z moich piwa i kawalek szynki, zebys na mnie nie spadl.

	CreateInvItems	(hero, ItFo_Beer, 1);
	CreateInvItems	(hero, ItFo_Bacon, 1);

	B_ShowGivenThings	("Piwo i szynka konserwowane");

	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Moja poszukiwana osoba kontaktowa jest Melchior i podlega dowódcy Willingham. Powinienem wiec najpierw porozmawiac na ten temat.");
};

INSTANCE Info_Mod_Baro_Heiltrank (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Heiltrank_Condition;
	information	= Info_Mod_Baro_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Baro_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	Info_AddChoice	(Info_Mod_Baro_Heiltrank, DIALOG_BACK, Info_Mod_Baro_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Istota uzdrawiania", Info_Mod_Baro_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Baro_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Baro_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Istota uzdrawiania", Info_Mod_Baro_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Baro_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Baro_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Baro_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Baro_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Baro_Pickpocket (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Pickpocket_Condition;
	information	= Info_Mod_Baro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Baro_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Baro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

	Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_BACK, Info_Mod_Baro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Baro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Baro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
};

FUNC VOID Info_Mod_Baro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Baro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Baro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Baro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Baro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Baro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Baro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Baro_EXIT (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_EXIT_Condition;
	information	= Info_Mod_Baro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Baro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
