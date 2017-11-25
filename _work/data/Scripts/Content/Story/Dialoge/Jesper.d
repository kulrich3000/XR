INSTANCE Info_Mod_Jesper_Dieb (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Dieb_Condition;
	information	= Info_Mod_Jesper_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Pokaz znak zlodziejstwa)";
};

FUNC INT Info_Mod_Jesper_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_00"); //Widze, ze jestes jednym z nas.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_01"); //Jako powitanie powitalne otrzymasz od mnie wskazówke: Naucz sie poruszac!
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_02"); //Straszyles sie jak bocian. Slysze Cie bez wzgledu na to, w jakim pomieszczeniu jestes.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_03"); //Jesli potrzebujesz kogos, kto nauczylby Cie plynnych ruchów, skontaktuj sie ze mna.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_04"); //Móglbys miec wieksza szanse na ciche wkradanie sie.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Jesper moze mnie nauczyc wymykac sie.");
};

INSTANCE Info_Mod_Jesper_WieLangDabei (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_WieLangDabei_Condition;
	information	= Info_Mod_Jesper_WieLangDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dlugo jestes obecny/a?";
};

FUNC INT Info_Mod_Jesper_WieLangDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_WieLangDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_WieLangDabei_15_00"); //Jak dlugo jestes obecny/a?
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_01"); //Nigdy nie zrobilem nic wiecej. Moje dziecinstwo i mlodziencze zabawy byly wciaz nieplanowane, zawsze bralem to, co trzeba bylo przezyc.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_02"); //Z Cassia to sie zmienilo. Bez nich pozostalbym malym oszustem, ale dzis zyjemy daleko poza tym, co jest konieczne.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_03"); //Szczególnie w duzych firmach bardzo wazna jest praca zespolowa. Mam wiec nadzieje, ze wie pan, jak sie zaangazowac.
};

INSTANCE Info_Mod_Jesper_Tipps (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Tipps_Condition;
	information	= Info_Mod_Jesper_Tipps_Info;
	permanent	= 0;
	important	= 0;
	description	= "Otrzymales wiecej wskazówek dla mnie?";
};

FUNC INT Info_Mod_Jesper_Tipps_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Tipps_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Tipps_15_00"); //Otrzymales wiecej wskazówek dla mnie?
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_01"); //Okradanie sie to moja specjalnosc. Jesli jestes zainteresowany zablokowanymi pniami, porozmawiaj z Ramirez.
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_02"); //Jestem pewien, ze Cassia juz powiedziala panstwu, ze wie lepiej niz ktokolwiek inny, jak odciac pieniadze od niczego nie podejrzewajacych obywateli.
};

INSTANCE Info_Mod_Jesper_Coup (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Coup_Condition;
	information	= Info_Mod_Jesper_Coup_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki byl Twój najwiekszy wynik?";
};

FUNC INT Info_Mod_Jesper_Coup_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_WieLangDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Coup_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Coup_15_00"); //Jaki byl Twój najwiekszy wynik?
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_01"); //Nie musze o tym dlugo myslec, chociaz minelo kilka lat!
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_02"); //Ramirez zostal wysadzony w powietrze i wyladowal w lochu. Cassia i ja i Cassia musielismy byc szybcy, zanim milicja mogla sie o nas przekonac.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_03"); //Sposób, w jaki minelismy posterunek strazy przed celami byl dla nas niemozliwy - nie udalo nam sie to bez jego obejrzenia.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_04"); //Wzielismy wiec cala noc i usunelismy mur z drugiego kamienia po kamieniu. Musielismy byc spokojni i ostrozni - ale to zrobilismy.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_05"); //W koncu Ramirezowi udalo sie uciec, gdy straznik zrobil przerwe na pszczólke. Takiego wybuchu nigdy wczesniej nie zaobserwowano w miescie, a on rozmawial przez wiele tygodni.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_06"); //Oczywiscie pózniej bylo nam to jeszcze trudniejsze, poniewaz wzmocniono wszystkie patrole i kontrole. Od tamtej pory uwazalismy, zeby nie zlapac sie.
};

INSTANCE Info_Mod_Jesper_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_AndreVermaechtnis_Condition;
	information	= Info_Mod_Jesper_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_AndreVermaechtnis_Info()
{
	AI_TurnToNpc	(self, Mod_598_MIL_Mika_NW);

	AI_Output(self, hero, "Info_Mod_Jesper_AndreVermaechtnis_36_00"); //Wszystkie prawa, wiec tylko 40 zlotych monet. Wezcie to, co placze..... Cutroat. Ale.... Kto pieklo....?

	AI_TurnToNpc	(self, hero);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_Lernen (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Lernen_Condition;
	information	= Info_Mod_Jesper_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Nauka sneakingu (5 MP)";
};

FUNC INT Info_Mod_Jesper_Lernen_Condition()
{
	Info_Mod_Jesper_Lernen.description = B_BuildLearnString("Nauczyc sie wymykac", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Lernen_15_00"); //Naucz mnie, jak ukrasc sie.

	B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK);
};

INSTANCE Info_Mod_Jesper_Pickpocket (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Pickpocket_Condition;
	information	= Info_Mod_Jesper_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jesper_Pickpocket_Condition()
{
	C_Beklauen	(110, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_BACK, Info_Mod_Jesper_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jesper_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jesper_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jesper_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jesper_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jesper_EXIT (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_EXIT_Condition;
	information	= Info_Mod_Jesper_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
