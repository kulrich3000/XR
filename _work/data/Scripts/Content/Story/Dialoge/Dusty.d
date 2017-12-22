INSTANCE Info_Mod_Dusty_Hi (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Hi_Condition;
	information	= Info_Mod_Dusty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dusty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_00"); //Ty tutaj? Oni powiedzieli, ze zostaliscie pochowani w swiatyni dla sypialni.
	AI_Output(hero, self, "Info_Mod_Dusty_Hi_15_01"); //Dluga, nieprzyjemna historia. Ale dlaczego tu jestes?
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_02"); //Mialem pojechac na lad, rodzine i rzeczy. (smiertelnicy torturowani)
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_03"); //Jedyny problem polega na tym, ze obecnie w porcie nie ma statku, który w niedalekiej przyszlosci bedzie opuszczal port.
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_04"); //A poniewaz paladyny powoduja stres nawet w dzielnicy portowej, znowu wychodze na polowanie.
};

INSTANCE Info_Mod_Dusty_Lehrer (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Lehrer_Condition;
	information	= Info_Mod_Dusty_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jako mysliwy, czy masz dla mnie jakies rady?";
};

FUNC INT Info_Mod_Dusty_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lehrer_15_00"); //Jako mysliwy, czy masz dla mnie jakies rady?
	AI_Output(self, hero, "Info_Mod_Dusty_Lehrer_24_01"); //Moge zdecydowanie pokazac wam podstawy. Pomagales mi w kolonii, czyz nie ty?

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Kurzacy moze nauczyc mnie, jak zdobyc trofea mysliwskie.");
};

INSTANCE Info_Mod_Dusty_Infos (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Infos_Condition;
	information	= Info_Mod_Dusty_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos na temat przyczep podkladowych?";
};

FUNC INT Info_Mod_Dusty_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Fanatiker))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_00"); //Czy wiesz cos na temat przyczep podkladowych?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_01"); //Tak, widzialem kilka. Byly to dwie male grupy.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_02"); //Gdzie moge ja znalezc?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_03"); //Wiesz cos wiesz? Od wielu dni jestem na wycofywaniu sie. Mój mózg nie dziala tak szybko, jesli wiesz, co mam na mysli.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_04"); //Potrzebujesz kolejnej dawki chwastu bagiennego?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_05"); //Och, tak! Jesli przyniosa mi Panstwo dobry lódz, wyprostuje moje mysli.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Zanim Dusty powie mi, gdzie znajduja sie przyczepy sypialne, musze go zabrac na mokradlo.");
};

INSTANCE Info_Mod_Dusty_Kippe (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Kippe_Condition;
	information	= Info_Mod_Dusty_Kippe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoja rdestnica bagnista.";
};

FUNC INT Info_Mod_Dusty_Kippe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Infos))
	&& (Npc_HasItems(hero, ItMi_Joint) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Kippe_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_00"); //Oto Twoja rdestnica bagnista.
	
	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_01"); //Ach, bardzo milo. Moje oczy znów sa jasne.
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_02"); //Potem powiedz mi, gdzie moge znalezc fanatyków.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_03"); //Jedna grupa osiedlila sie w latarni morskiej. To jest wieksza grupa. Kiedy idziesz tam, musisz byc bardzo ostrozny.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_04"); //Druga grupa znajduje sie w jaskini w lesie na poludnie od miasta. Najpierw powinienes sie zatrzymac.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_05"); //Lepiej zostawic latarnie, zanim dowiesz sie wiecej.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Dusty powiedzial mi, ze jedna grupa ma swój obóz przy latarni morskiej, druga w jaskini na poludnie od miasta. Powinienem zostawic latarnie samotnie do czasu, az bede wiedzial wiecej.");
};

INSTANCE Info_Mod_Dusty_Crawlersekret (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Crawlersekret_Condition;
	information	= Info_Mod_Dusty_Crawlersekret_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad moge siegnac po silna wydzieline miotacza?";
};

FUNC INT Info_Mod_Dusty_Crawlersekret_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Crawlersekret_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Crawlersekret_15_00"); //Skad moge siegnac po silna wydzieline miotacza?
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_24_01"); //Slyszalem od innych mysliwych, ze minecrawlerzy zostali zauwazeni na pólnocy.
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_24_02"); //Jesli masz szczescie, jest równiez królowa, której jaja mozna ukrasc, aby wygrac tajemnice.
};

INSTANCE Info_Mod_Dusty_OtherHunters (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_OtherHunters_Condition;
	information	= Info_Mod_Dusty_OtherHunters_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mi powiedziec, gdzie moge znalezc innych mysliwych?";
};

FUNC INT Info_Mod_Dusty_OtherHunters_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_OtherHunters_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_00"); //Czy mozesz mi powiedziec, gdzie moge znalezc innych mysliwych?
	AI_Output(self, hero, "Info_Mod_Dusty_OtherHunters_24_01"); //Bei der Taverne "Do martwej harfy" nordöstlich von hier ist ein großes Lager, an dem ich vorbeigekommen bin. Ob es noch andere Treffpunkte gibt, weiß ich nicht.
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_02"); //Bardzo mi to pomoze.
};

INSTANCE Info_Mod_Dusty_Bruderschaft (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Bruderschaft_Condition;
	information	= Info_Mod_Dusty_Bruderschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dzieje sie po upadku zapory z braterstwem (....)? )";
};

FUNC INT Info_Mod_Dusty_Bruderschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Bruderschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Bruderschaft_15_00"); //Co sie stalo z braterstwem po upadku zapory?
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_24_01"); //Nie wiem, nie bylo zbyt wiele sensu wyjazdu ani niczego. Wiekszosc z nich zbudowala nowe zycie w obozie i nie chce opuscic obozu.
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_24_02"); //Ze sypialnia byla archipelag demonem musial oczywiscie troche trawic, ale nie wiem, czy szukali zamienników, czy po prostu palili ziola bagienne.
};

INSTANCE Info_Mod_Dusty_BosperFelle (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_BosperFelle_Condition;
	information	= Info_Mod_Dusty_BosperFelle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie zdarzyloby Ci sie miec pieknych wilków, czy móglbys?";
};

FUNC INT Info_Mod_Dusty_BosperFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_BosperFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_00"); //Nie zdarza Ci sie miec jakies ladne futra z wilkami, których juz nie potrzebujesz?
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_01"); //Strzelilem kilka wilków, mimo ze sa one niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_02"); //Ale ja ich nie zdusilem. Odczekac minute..... Mam dwie nieuszkodzone skóry. Interesuje?
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_03"); //Daj mi ja. Jak moge wam podziekowac?

	B_GiveInvItems	(self, hero, ItAt_WolfFur_Rein, 2);

	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_04"); //Usunieto bariere. To wszystko, co musisz dla mnie zrobic.
};

INSTANCE Info_Mod_Dusty_Lernen (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr          	= 1;
	condition	= Info_Mod_Dusty_Lernen_Condition;
	information	= Info_Mod_Dusty_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czego mozesz mnie nauczyc?";
};

FUNC INT Info_Mod_Dusty_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Lehrer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lernen_15_00"); //Czego mozesz mnie nauczyc?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_24_01"); //Zalezy od tego, co chcesz wiedziec.

		Info_ClearChoices	(Info_Mod_Dusty_Lernen);

		Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_24_02"); //Nie moge cie nauczyc wiecej niz juz wiesz. Przepraszam za to.
	};
};

FUNC void Info_Mod_Dusty_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Dusty_Lernen);
};

FUNC void Info_Mod_Dusty_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_00"); //Zwierzeta nie lubia oddawac pazurów. Musisz trafic dokladnie tam, gdzie idziesz nozem.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_01"); //Postawa dloni powinna byc lekko uwiklana. Z mocnym wstrzasem odciales pazur.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_02"); //Sprzet jest zawsze pozadanym srodkiem platniczym dla przedsiebiorcy.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
		
};

FUNC void Info_Mod_Dusty_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_24_00"); //Najprostsza rzecza, która mozna wyciagnac ze zwierzat jest ich zeby. Jezdzisz nozem dookola protezy w ustach.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_24_01"); //Potem umiejetnie oddziela sie go od czaszki zwierzecia szarpnieciem.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_00"); //mucha ma miekkie miejsce na plecach.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_01"); //Jesli wcisna Panstwo dlon do niej dociskajac, uklucie wysuwa sie bardzo daleko i mozna ja przeciac nozem.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_24_00"); //Najlepszym sposobem usuniecia siersci jest wykonanie glebokiego ciecia na tylnych nogach zwierzecia.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_24_01"); //Dzieki temu zawsze mozna latwo sciagnac futro z przodu do tylu.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

INSTANCE Info_Mod_Dusty_EXIT (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_EXIT_Condition;
	information	= Info_Mod_Dusty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dusty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
