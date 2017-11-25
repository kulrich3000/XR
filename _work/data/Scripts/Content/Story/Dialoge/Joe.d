INSTANCE Info_Mod_Joe_Hi (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Hi_Condition;
	information	= Info_Mod_Joe_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Joe_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joe_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Joe_Hi_10_01"); //Jestem Joe.
};

INSTANCE Info_Mod_Joe_Flugblaetter (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Flugblaetter_Condition;
	information	= Info_Mod_Joe_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Joe_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Joe_Flugblaetter_10_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Joe_Flugblaetter_10_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Joe_Diego (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Diego_Condition;
	information	= Info_Mod_Joe_Diego_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diego potrzebuje wymiany.";
};

FUNC INT Info_Mod_Joe_Diego_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Diego_Info()
{
	AI_Output(hero, self, "Info_Mod_Joe_Diego_15_00"); //Diego potrzebuje wymiany.
	AI_Output(self, hero, "Info_Mod_Joe_Diego_10_01"); //Dobrze, od razu bede w drodze.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Joe uwolni Diego, az znajdzie krysztal.");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "DIEGO");
};

INSTANCE Info_Mod_Joe_Wassersnapper (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper_Condition;
	information	= Info_Mod_Joe_Wassersnapper_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	&& (Mod_WM_Boeden >= 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_00"); //Powitania. Co to sa wiadomosci z tamtego miejsca?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_01"); //Slyszalem, ze na plaskowyzu pastwiskowym jest nieszczescie.... Wiecej
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_02"); //Tak, sily ciemnosci sa obecnie silne. Wspólnota wody ma swoje rece pelne pracy, aby utrzymac równowage.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_03"); //Czulem niepokój i troske w naszych szeregach.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_04"); //Jak ja równiez chcialbym w tym uczestniczyc? ale jako zwykla nowicjuszka takie zadania niestety nie sa jeszcze dla mnie otwarte.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_05"); //A test, który zostal mi narzucony na szybkie przyjecie do Wodnych Wojowników paralizuje mnie z obawa, ze moge zawiesc.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_06"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_07"); //Oh, moim zadaniem jest bezpiecznie poprowadzic lufy wody do Relendel.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_08"); //Towarzyszyc paczce krwiozerczych snapperów? Rozumiem Pana obawy....
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_09"); //Nie, to nie o to chodzi. Sa oni sami w sobie spokojne zwierzeta, które atakowalyby mnie tym mniej, ze sluzylem ich Stwórcy.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_10"); //Co 10 lat w tym czasie te swiete stworzenia pojawiaja sie na jeziorze pomiedzy wykopaliskiem a czarnym trolla.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_11"); //Pobyt tam trwa przez jakis czas, oddaja miejsce aurze blogoslawienstwa, a nastepnie wyruszaja w droge do jeziora w Relendel.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_12"); //I po czesci powierzono mi zadanie bezpiecznego towarzyszenia im.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_13"); //A co jest z tym problemem?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_14"); //Teraz, po tym jak ta próba zostala mi narzucona, przyszly mi do ucha pogloski, ze klusownicy maja sie tu wisiec.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_15"); //Potwierdzaja to obserwacje dzikich zwierzat zastrzelonych przez strazników, a mówi sie, ze handlarz w miescie niedawno nabyl skóry rzadkich i trudnych do polowania zwierzat.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_16"); //Teraz obawiam sie, ze cos moze sie zdarzyc po drodze z petla i nie bede w stanie ich chronic.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_17"); //Wtedy zrobie to w moim biznesie, aby zapewnic sukces waszej misji.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_18"); //Naprawde! Byloby to dla mnie nieoceniona usluga.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_19"); //Teraz moge spokojnie isc do jeziora i tam czekac. Dziekuje bardzo.

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SNAPPER");

	Log_CreateTopic	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JOE_WASSERSNAPPER, "Joe ma za zadanie bezpiecznie eskortowac niektóre snappery wodne do Relendel. Poniewaz w okolicy sa obecnie prawdopodobnie klusownicy, raczej bede mu towarzyszyl i spotykam sie z nim nad jeziorem niedaleko Relendelpass.");
};

INSTANCE Info_Mod_Joe_Wassersnapper2 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper2_Condition;
	information	= Info_Mod_Joe_Wassersnapper2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PATH_76") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper2_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper2_10_00"); //Ach, tam jestescie.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper2_15_01"); //Jak to wyglada?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper2_10_02"); //Wszystko bylo do tej pory spokojne. Moze jednak wszystko bedzie dzialac bez komplikacji.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper2_15_03"); //Przejdzmy do przepustki.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Wassersnapper_Joe_01,	"NW_TROLLAREA_PATH_76");
	Wld_InsertNpc	(Wassersnapper_Joe_02,	"NW_TROLLAREA_PATH_76");
	Wld_InsertNpc	(Wassersnapper_Joe_03,	"NW_TROLLAREA_PATH_76");

	Wld_InsertNpc	(Mod_7587_OUT_Wilderer_NW,	"NW_TROLLAREA_PATH_13");
	Wld_InsertNpc	(Mod_7588_OUT_Wilderer_NW,	"NW_TROLLAREA_PATH_13");
};

INSTANCE Info_Mod_Joe_Wassersnapper3 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper3_Condition;
	information	= Info_Mod_Joe_Wassersnapper3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper2))
	&& (Npc_IsDead(Mod_7587_OUT_Wilderer_NW))
	&& (Npc_IsDead(Mod_7588_OUT_Wilderer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper3_Info()
{
	if (Npc_IsDead(Wassersnapper_Joe_01))
	&& (Npc_IsDead(Wassersnapper_Joe_02))
	&& (Npc_IsDead(Wassersnapper_Joe_03)) {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_00"); //Cóz za niesprawiedliwych? Teraz wszystko jest stracone.
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_01"); //Tak, nie moglismy jej pomóc. Wrócmy.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "START");
	} else if ((Npc_IsDead(Wassersnapper_Joe_01)))
	|| (Npc_IsDead(Wassersnapper_Joe_02))
	|| (Npc_IsDead(Wassersnapper_Joe_03)) {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_02"); //Cóz za niesprawiedliwych? Tylko dzieki panstwa wsparciu udalo sie zapobiec gorszym zjawiskom.
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_03"); //Tak, oni równiez dostali los na loterie, na która zasluzyli. Poruszajmy sie dalej.

		AI_StopProcessInfos	(self);
	} else {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_04"); //Cóz za niesprawiedliwych?
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_05"); //Tak, oni tez otrzymali dobytek tym klusownikom. Poruszajmy sie dalej.

		AI_StopProcessInfos	(self);
	};
};

INSTANCE Info_Mod_Joe_Wassersnapper4 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper4_Condition;
	information	= Info_Mod_Joe_Wassersnapper4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper3))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PLANE_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper4_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_00"); //Oto jestesmy. Tak naprawde to uczynilismy. Bez waszej pomocy nigdy nie byloby to mozliwe. Nie wiem, jak wam podziekowac.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_01"); //To wszystko jest w porzadku. Mysle, ze.... co sie dzieje? me---

	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_01, Wassersnapper_Joe_01, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_02, Wassersnapper_Joe_02, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_03, Wassersnapper_Joe_03, 0, 0, 0, FALSE );

	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_02"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_03"); //l-- Wydaje mi sie, ze snaperzy dali nam czesc swojej aury.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_04"); //Czuje, jak wzrosla wiedza i magiczna moc we mnie.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_05"); //Znikly.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_06"); //Tak, do innego miejsca, do którego poblogoslawia Adano..... az do dziesieciu lat od teraz, bedzie tu wracala.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_07"); //I to glównie dzieki Tobie. Oto moje podziekowania.

	B_ShowGivenThings	("Uzyskane eliksiry Kronstöckla i 2 eliksiry maneksu");

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPo_Mana_03, 2);

	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_08"); //Mam nadzieje, ze bedziecie mogli z niej skorzystac, nawet jesli nie odzwierciedla ona oczywiscie prawdziwej wartosci waszej uslugi.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;

	B_RemoveNpc	(Wassersnapper_Joe_01);
	B_RemoveNpc	(Wassersnapper_Joe_02);
	B_RemoveNpc	(Wassersnapper_Joe_03);

	hero.attribute[ATR_MANA_MAX] += 20;
	hero.attribute[ATR_MANA] += 20;

	B_GivePlayerXP	(2000);

	B_SetTopicStatus	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Joe_Pickpocket (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Pickpocket_Condition;
	information	= Info_Mod_Joe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Joe_Pickpocket_Condition()
{
	C_Beklauen	(47, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Joe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

	Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_BACK, Info_Mod_Joe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
};

FUNC VOID Info_Mod_Joe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joe_EXIT (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_EXIT_Condition;
	information	= Info_Mod_Joe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
