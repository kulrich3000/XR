INSTANCE Info_Mod_Miguel_Hi (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Hi_Condition;
	information	= Info_Mod_Miguel_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miguel_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Sancho_Dam3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Miguel_Hi_11_00"); //Hey, nowy facet w magazynie. Potrzebujesz czegos?
	AI_Output(hero, self, "Info_Mod_Miguel_Hi_15_01"); //Witaj. Potrzebujesz czegos? Co masz do zaoferowania?
	AI_Output(self, hero, "Info_Mod_Miguel_Hi_11_02"); //No c�z, jako aptekarz obozowy mam kilka eliksir�w w magazynie.
	AI_Output(self, hero, "Info_Mod_Miguel_Hi_11_03"); //Zajmuje sie tez nadmiarami skradzionych towar�w, kt�rych nie mozemy sie teraz pozbyc.
	AI_Output(self, hero, "Info_Mod_Miguel_Hi_11_04"); //Mozna wiec znalezc u mnie kilka ciekawych artykul�w handlowych.... i o wiele tansi od tych, kt�rzy nazywaja sie kupcami.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_BANDITEN, "Wydaje sie, ze Miguel zajmuje sie eliksirami.");

	Npc_SetRefuseTalk	(self, 240);
};

INSTANCE Info_Mod_Miguel_Aufgabe (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Aufgabe_Condition;
	information	= Info_Mod_Miguel_Aufgabe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miguel_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Hi))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_00"); //Hej, duzo sie wyjezdzasz na droge. Mozesz mi pom�c w jednej rzeczy.
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe_15_01"); //Tak, o co to chodzi?
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_02"); //M�j klient chce miec napar, kt�ry jest wyjatkowy. Niestety brakuje mi skladnik�w.....
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe_15_03"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_04"); //Z jednej strony potrzebowalbym trzech toadstooli. Przy odrobinie szczescia, powinienes ja znalezc w lesie pod obozem.
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe_15_05"); //Co jeszcze, co jeszcze mozna zrobic?
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_06"); //A potem dochodzi do wydzielania wydzieliny sluz�wkowej, kt�ra sk�ra uwalnia od mlodych czarodziej�w.
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe_15_07"); //Jak?
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_08"); //Tak, w przypadku zagrozenia ich sk�ra wydziela trucizne.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_09"); //Musisz ja zeskrobac po tym, jak ja zabiles.... oh, po prostu od razu przynies mi cale sk�ry.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_10"); //Mozna ja latwo usunac przy pomocy maszynki do golenia u mlodych zwierzat.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe_11_11"); //O tej porze roku z pewnoscia warto znalezc wystarczajaco duzo mlodych czarodziej�w w d�l nad rzeka. Dwie sk�ry powinny wystarczyc. Zycze powodzenia.
	
	Log_CreateTopic	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, "Miguel potrzebuje do naparu trzech much�wek i dw�ch sk�rek mlodego Lurkera, kt�re wydzielaja ich trujacy sluz. Znajde rzeczy w lesie i nad rzeka pod obozem. Hmm, jakie zle plany ktos ma z takim eliksirem....");

	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_RIVER_LURKER_02");
	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_RIVER_LURKER_02");

	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_BLOODFLY_C4");
	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_BLOODFLY_C4");

	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_BLOODFLY_07_02");
	Wld_InsertNpc	(Lurker_Young,	"FP_ROAM_OW_BLOODFLY_07_02");
};

INSTANCE Info_Mod_Miguel_Aufgabe2 (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Aufgabe2_Condition;
	information	= Info_Mod_Miguel_Aufgabe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam grzyby i sluz.";
};

FUNC INT Info_Mod_Miguel_Aufgabe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Aufgabe))
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 3)
	&& (Npc_HasItems(hero, ItAt_LurkerSkin_Young) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Aufgabe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe2_15_00"); //Ich habe die Pilze und den Schleim.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe2_11_01"); //Ausgezeichnet. Dann mache ich mich mal daran ihn zu brauen. In einigen Stunden sollte ich damit fertig sein.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe2_11_02"); //Falls du Zeit hast kannst du dem Kunden gleich das Gebr�u bringen. 
	
	Npc_SetRefuseTalk	(self, 240);

	B_GivePlayerXP	(400);
	
	Npc_RemoveInvItems	(hero, ItPl_Mushroom_03, 3);
	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin_Young, 2);
	
	B_ShowGivenThings("3 much�wki i 2 sk�ra mlodego Lurkera podarowana");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BRAUEN");
};

INSTANCE Info_Mod_Miguel_Aufgabe3 (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Aufgabe3_Condition;
	information	= Info_Mod_Miguel_Aufgabe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miguel_Aufgabe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Aufgabe2))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Aufgabe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe3_11_00"); //Dobrze, to dobrze, mam mieszanke trucizn. Oto napar.

	B_GiveInvItems	(self, hero, ItPo_MiguelForDar, 1);

	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe3_11_01"); //Klient czeka w nowym magazynie i nosi nazwe Dar.
	
	B_LogEntry	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, "Miguel chce, abym przywi�zl klientowi jego napar. Czeka w nowym magazynie i nazywa sie Dar. C�z, wcale nie jestem z tego zadowolony....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BRAUEN");
};

INSTANCE Info_Mod_Miguel_Aufgabe4 (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Aufgabe4_Condition;
	information	= Info_Mod_Miguel_Aufgabe4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dalem Darowi eliksir....";
};

FUNC INT Info_Mod_Miguel_Aufgabe4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dar_Miguel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Aufgabe4_Info()
{
	AI_Output(hero, self, "Info_Mod_Miguel_Aufgabe4_15_00"); //Dalem Darowi eliksir.... A on tak naprawde ma....
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe4_11_01"); //... Tak, musi miec dobry czas.
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe4_11_02"); //Tak piekna mieszanina halucynogennych toksyn sprawia, ze kazdy ped zywicy wydaje sie blady......
	AI_Output(self, hero, "Info_Mod_Miguel_Aufgabe4_11_03"); //Nawiasem m�wiac, dobra praca. Oto Tw�j udzial.

	B_ShowGivenThings	("100 zlota i 12 rudy uzyskano");

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItMi_Nugget, 12);

	B_GivePlayerXP	(400);
	
	B_SetTopicStatus	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Miguel_Trade (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Trade_Condition;
	information	= Info_Mod_Miguel_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Miguel_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Miguel_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Miguel_Pickpocket (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_Pickpocket_Condition;
	information	= Info_Mod_Miguel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Miguel_Pickpocket_Condition()
{
	C_Beklauen	(46, ItPo_Perm_Dex, 1);
};

FUNC VOID Info_Mod_Miguel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);

	Info_AddChoice	(Info_Mod_Miguel_Pickpocket, DIALOG_BACK, Info_Mod_Miguel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Miguel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Miguel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Miguel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);
};

FUNC VOID Info_Mod_Miguel_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);

		Info_AddChoice	(Info_Mod_Miguel_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Miguel_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Miguel_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Miguel_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Miguel_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Miguel_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Miguel_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Miguel_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Miguel_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Miguel_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Miguel_EXIT (C_INFO)
{
	npc		= Mod_958_BDT_Miguel_MT;
	nr		= 1;
	condition	= Info_Mod_Miguel_EXIT_Condition;
	information	= Info_Mod_Miguel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Miguel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Miguel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
