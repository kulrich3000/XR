var int MerkLebenspunkteGidan;
var int MerkLebenspunkteHeldGidan;

INSTANCE Info_Mod_Gidan_Hi (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Hi_Condition;
	information	= Info_Mod_Gidan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Gidan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gidan_Hi_13_01"); //Jestem Gidanem.
};

INSTANCE Info_Mod_Gidan_Kampf (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Kampf_Condition;
	information	= Info_Mod_Gidan_Kampf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Kampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier3))
	&& (Mod_MilizTurnier == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Kampf_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_00"); //Huh, jestes moim nastepnym przeciwnikiem? Nie daj mi sie smiac!
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_01"); //Dlaczego nie poddajecie sie teraz? Skróciloby to cala sprawe.
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_15_02"); //Jedyne, co sie skraca, to Ty, na glowie, jesli sie nie zamknales.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_03"); //(smiech) Predzej sie! Zróbmy to z tym.

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);

	Info_AddChoice	(Info_Mod_Gidan_Kampf, "Nie, poczekaj minute.", Info_Mod_Gidan_Kampf_B);
	Info_AddChoice	(Info_Mod_Gidan_Kampf, "Wlasciwie, jestem gotowy.", Info_Mod_Gidan_Kampf_A);
};

FUNC VOID Info_Mod_Gidan_Kampf_B()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_B_15_00"); //Nie, poczekaj minute.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_B_13_01"); //Potem wróc, gdy bedziesz gotowy.

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);
};

FUNC VOID Info_Mod_Gidan_Kampf_A()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_A_15_00"); //Wlasciwie, jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_A_13_01"); //Teraz koncze cie!

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);

	self.fight_tactic = FAI_HUMAN_STRONG;

	Mod_MilizTurnier = 10;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Gidan_Kampf2 (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Kampf2_Condition;
	information	= Info_Mod_Gidan_Kampf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pokaz mi, co mozesz zrobic!";
};

FUNC INT Info_Mod_Gidan_Kampf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Kampf))
	&& (Mod_MilizTurnier == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Kampf2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf2_15_00"); //Pokaz mi, co mozesz zrobic!
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf2_13_01"); //Przyjdzcie wiec tutaj.

	self.fight_tactic = FAI_HUMAN_STRONG;

	Mod_MilizTurnier = 10;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Gidan_KampfEnde (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_KampfEnde_Condition;
	information	= Info_Mod_Gidan_KampfEnde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_KampfEnde_Condition()
{
	if (Mod_MilizTurnier == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_KampfEnde_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_00"); //(roars) Oszustwa! Zostalem oszukany!
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_03"); //Nigdy nikt nie chcialby, zeby udalo ci sie pokonac tego rodzaju wojownika!
			AI_Output(hero, self, "Info_Mod_Gidan_KampfEnde_15_04"); //Wez to latwo! Bity uczciwie i uczciwie.
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_05"); //Nie wytrzymam tego!

			Mod_MilizTurnier = 11;
			
			B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW,	"SAUER");
				
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Zwyciezylem w walce z Gidanem. Powinienem teraz porozmawiac z Panem Andre.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_01"); //No cóz, to bylo nic. Teraz moge zostac czlonkiem milicji.

			Mod_MilizTurnier = 12;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Stracilem walke z Gidanem. Powinienem teraz porozmawiac z Panem Andre.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		}
		else //FIGHT_CANCEL
		{
			AI_Output (self, other,"Info_Mod_Gidan_KampfEnde_13_02"); //Uciekles i tak wygralem. To bylo dla Ciebie glupia rzecza.

			Mod_MilizTurnier = 12;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Stracilem walke z Gidanem. Powinienem teraz porozmawiac z Panem Andre.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		};
		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	self.fight_tactic = FAI_HUMAN_STRONG;

	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "START");
};

INSTANCE Info_Mod_Gidan_Andre (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Andre_Condition;
	information	= Info_Mod_Gidan_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Andre_Condition()
{
	if (Kapitel >= 2)
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_00"); //Spotykamy sie wiec ponownie.
	AI_Output(hero, self, "Info_Mod_Gidan_Andre_15_01"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_02"); //Spelniam jedynie mój obowiazek milicji w tym miescie.
	AI_Output(hero, self, "Info_Mod_Gidan_Andre_15_03"); //Mysle, ze kupiles prace, huh?
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_04"); //Ts, nie reaguje na takie obelgi. Musze teraz wykonac swój obowiazek!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gidan_Golem (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Golem_Condition;
	information	= Info_Mod_Gidan_Golem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Golem_Condition()
{
	if (Mod_PalaKapitel3 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Golem_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_00"); //Ocaliles moje zycie.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_01"); //Tak wyglada.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_02"); //Jeszcze Ci sie nie podoba! Ale mysle, ze zawdzieczam ci....
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_03"); //Spójrzcie na to golem. Czy kiedykolwiek widziales taka golemie?
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_04"); //Masz racje, masz racje. Zelazny golem.... Jest tylko ogien, lód, kamien i bagno.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_05"); //Tak, ze golem tam jest tylko maszyna.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_06"); //Maszyna? To wiele wyjasnia....
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_07"); //Tak, jak znikniecie wynalazcy. Sekta porwala go, aby zrobic te maszyny.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_08"); //Prawdopodobnie trzymajac go w niewoli na wzgórzu przed Khorinis, przy latarni morskiej.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_10"); //Zobacze to.

	Mod_PalaKapitel3 = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "UNTERWEGS");

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Zelazny golem zaatakowal Gidana.... bardzo tajemniczy. Gidan wierzy, ze wynalazca jest z pewnoscia przetrzymywany w niewoli latarni morskiej. Tam powinienem sie za chwile zatrzymac.");
};

INSTANCE Info_Mod_Gidan_Pickpocket (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Pickpocket_Condition;
	information	= Info_Mod_Gidan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Gidan_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

	Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_BACK, Info_Mod_Gidan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gidan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gidan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gidan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gidan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gidan_EXIT (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_EXIT_Condition;
	information	= Info_Mod_Gidan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gidan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
