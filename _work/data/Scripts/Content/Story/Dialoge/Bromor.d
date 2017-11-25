INSTANCE Info_Mod_Bromor_Hi (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Hi_Condition;
	information	= Info_Mod_Bromor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bromor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_01"); //Jestem Bromor, jestem wlascicielem tego domu publicznego.
	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_02"); //Co moge dla Ciebie zrobic?
};

INSTANCE Info_Mod_Bromor_Bilgot (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bilgot_Condition;
	information	= Info_Mod_Bromor_Bilgot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze tutaj klopoty.";
};

FUNC INT Info_Mod_Bromor_Bilgot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bilgot_Mortis))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bilgot_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bilgot_15_00"); //Slysze tutaj klopoty.
	AI_Output(self, hero, "Info_Mod_Bromor_Bilgot_07_01"); //Tak, jeden z naszych klientów nie zaplaci. Nazywa sie Bartok.
};

INSTANCE Info_Mod_Bromor_Bartok (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bartok_Condition;
	information	= Info_Mod_Bromor_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dalem pieniadze (500 zlota)";
};

FUNC INT Info_Mod_Bromor_Bartok_Condition()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Bromor_Bilgot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bartok_15_00"); //Dostalem pieniadze.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Bromor_Bartok_07_01"); //Dzieki.

	Mod_BilgotBromorBartok = 1;

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Bromor_Vanja (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Vanja_Condition;
	information	= Info_Mod_Bromor_Vanja_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze bijesz swoje dziewczyny.";
};

FUNC INT Info_Mod_Bromor_Vanja_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vanja_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Vanja_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_00"); //Slysze, ze bijesz swoje dziewczyny.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_01"); //Kto ci to powiedzial?
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_02"); //Vanja to mówi.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_03"); //Cóz, moze cos doswiadczyc.... Co nadal robicie? Wyjsc stad!
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_04"); //Chce, zebys przestal bic Vanje.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_05"); //Nie mam nic wspólnego z tym, jak ja traktuje moje dziewczyny.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_06"); //Mysle, ze powinienem cie nauczyc.
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_07"); //A potem tutaj!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bromor_Umgehauen (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Umgehauen_Condition;
	information	= Info_Mod_Bromor_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Vanja))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_00"); //O, moja czaszka.
			AI_Output(hero, self, "Info_Mod_Bromor_Umgehauen_15_01"); //Wyjezdzasz z Vanji samotnie teraz?
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_02"); //Tak, to dobrze, ale zgubic sie.

			B_LogEntry	(TOPIC_MOD_VANJA_BROMOR, "Bromor mówi, ze teraz opuszcza Vanje samotnie.");

			Mod_Vanja_BromorKO = 1;

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_03"); //Duze powiedzenia zapukaja i nic za tym nie stoi. Teraz zgubisz sie i nie ingeruj w mój biznes.

			B_SetTopicStatus	(TOPIC_MOD_VANJA_BROMOR, LOG_FAILED);
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Bromor_Gardist (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Gardist_Condition;
	information	= Info_Mod_Bromor_Gardist_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Gardist_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_BromorSchuld))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Npc_RefuseTalk(self) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Gardist_Info()
{
	AI_Output(self, hero, "Info_Mod_Bromor_Gardist_07_00"); //Tu nie chcesz, wyjdz stad.

	AI_GotoWP	(hero, "NW_CITY_HABOUR_PUFF_ENTRANCE");

	Npc_SetRefuseTalk(self, 5);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bromor_Aufgeben (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Aufgeben_Condition;
	information	= Info_Mod_Bromor_Aufgeben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy przestanie Pan próbowac nas zniszczyc?";
};

FUNC INT Info_Mod_Bromor_Aufgeben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Wld_IsTime(21,00,06,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Aufgeben_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Aufgeben_15_00"); //Czy przestanie Pan próbowac nas zniszczyc?
	AI_Output(self, hero, "Info_Mod_Bromor_Aufgeben_07_01"); //Tak, ale to wszystko naprawic. Wtedy mnie nie uslyszysz.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Bromor wyrazil zgode. Opusci nas sam, kiedy wszystko naprawimy.");
};

INSTANCE Info_Mod_Bromor_Shakir (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Shakir_Condition;
	information	= Info_Mod_Bromor_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wi, duzy pimp.";
};

FUNC INT Info_Mod_Bromor_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_Frau))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_00"); //Wi, duzy pimp.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_01"); //Co masz na mysli, pimp? Wstrzymam sie. To moja torebka. 100 zlota królowa.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_02"); //Ladunek. Chce jednak zabrac osobe do domu.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_03"); //Tak piekna na Wargenfell, przy otwartym ogniu, dobra butelka klasztornego wina. Wiesz, co mam na mysli.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_04"); //O czym myslisz? Nie pozwalam, aby moje dziewczyny byly z oczu.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_05"); //Co zrobic, jesli zaplace podwójnie?
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_06"); //Zapomnij o tym. Pozostaja w domu.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_07"); //Wtedy nie mozemy robic interesów.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_08"); //Tak wlasnie to widze.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Bromor nie da mi zony.");
};

INSTANCE Info_Mod_Bromor_NadjaBeiDexter (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_NadjaBeiDexter_Condition;
	information	= Info_Mod_Bromor_NadjaBeiDexter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec jak to dziala?";
};

FUNC INT Info_Mod_Bromor_NadjaBeiDexter_Condition()
{
	if (Mod_Banditen_Mine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_NadjaBeiDexter_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_NadjaBeiDexter_15_00"); //Wiec jak to dziala?
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_01"); //Miserable. Moja najlepsza dziewczyna Nadja wyszla z rezerwacji.
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_02"); //Teraz siedzi z nowa, bogata w nowe bogactwo bastardem, który niedawno zyskal ogromne bogactwo dzieki dzialalnosci gospodarczej w sektorze rudy. Rozpalanie byków!
};

INSTANCE Info_Mod_Bromor_Pickpocket (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Pickpocket_Condition;
	information	= Info_Mod_Bromor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bromor_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_BACK, Info_Mod_Bromor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bromor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bromor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bromor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bromor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bromor_EXIT (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_EXIT_Condition;
	information	= Info_Mod_Bromor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bromor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
