INSTANCE Info_Mod_Andre_Argez (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Argez_Condition;
	information	= Info_Mod_Andre_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Argez_08_00"); //To juz wystarczy, mój przyjaciel. Przyjezdzacie ze mna do koszar, a my mamy o czym porozmawiac.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Chce nasladowac Pana Andre' a do koszar.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Andre_Argez2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Argez2_Condition;
	information	= Info_Mod_Andre_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_00"); //Tam tam. Nowe w miescie i w klopotach.
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_01"); //To nie moja wina.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_02"); //Wiem. Garond jest czyms..... nadgorliwy w nowym zadaniu. Ale on sie do tego przyzwyczai.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_03"); //Tylko - jesli masz jakies watpliwosci, jest to niewlasciwy adres. Zauwazylem, ze miales kogos zabrac do miasta. Czy to prawda?
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_04"); //Tak.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_05"); //Czy popelnil w miescie jakakolwiek zbrodnie, dlatego mógl zostac wygnany?
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_06"); //Z tego, co wiem, nie mial zadnych szans.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_07"); //A zatem wszystko w porzadku. Sugeruje poprowadzic przyjaciela przez druga brame miasta przy rynku. Upewnie sie, ze nie zatrzymacie sie panstwo.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_08_08"); //Ale nie pokazuj sie w Garond' s. Prawdopodobnie.... niecierpliwie reagowac.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Pan Andre zalecil, ze poprowadze Argeza do bardziej wysunietej na pólnoc bramy miasta, aby uniknac Garonda.");
};

INSTANCE Info_Mod_Andre_Hi (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Hi_Condition;
	information	= Info_Mod_Andre_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Andre_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Andre_Hi_08_01"); //Jestem Panem Andrem, dowódca milicji i zastepca przywódcy paladynów.
	AI_Output(self, hero, "Info_Mod_Andre_Hi_08_02"); //Co moge dla Ciebie zrobic?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Andre_Alvares (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Alvares_Condition;
	information	= Info_Mod_Andre_Alvares_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co musze zrobic, aby sklonic Cie do wydania Alvares?";
};

FUNC INT Info_Mod_Andre_Alvares_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alvares_Soeldner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Alvares_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Alvares_15_00"); //Co musze zrobic, aby sklonic Cie do wydania Alvares?
	AI_Output(self, hero, "Info_Mod_Andre_Alvares_08_01"); //Walczyl z jedna z naszych milicji. Ale bedzie siedzial przez kilka nastepnych dni.
};

INSTANCE Info_Mod_Andre_AlvaresSchneller (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresSchneller_Condition;
	information	= Info_Mod_Andre_AlvaresSchneller_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie ma sposobu na szybsze jego wydanie?";
};

FUNC INT Info_Mod_Andre_AlvaresSchneller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Alvares))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresSchneller_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresSchneller_15_00"); //Czy nie ma sposobu na szybsze jego wydanie?
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_01"); //Mozesz zaplacic jego grzywne.
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresSchneller_15_02"); //Ile to kosztuje?
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_03"); //Po swoich wykroczeniach? Nie bedzie tani. Ubij 500 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_04"); //Poza tym do naszego miasta trzeba przywiezc jeszcze jednego zbrodnie.

	if (Mod_AlvaresAndre_Taeter == 1)
	{
		AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_07"); //Jesli dobrze pamietam, to juz to zrobiles.
	};

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_05"); //Albo pokonac bandytów, którzy maja swój obóz gdzies w poblizu gospodarstwa Akila w lesie i przyniesc mi swoja bron.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_08_06"); //Czesto rabuja podrózujacych dealerów.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, "Alvarez moze byc bardzo obiecujacym kandydatem najemnikiem. Aby jednak Andre wyprowadzil go z wiezienia, musze nie tylko zaplacic 500 monet zlota, ale musze równiez zglosic innego przestepce do Andre' a lub zniszczyc trzech bandytów w poblizu sadu Akila i przyniesc mu swoja bron.");

	Wld_InsertNpc	(Mod_7217_BDT_Bandit_NW, "FARM2");
	Wld_InsertNpc	(Mod_7218_BDT_Bandit_NW, "FARM2");
	Wld_InsertNpc	(Mod_7219_BDT_Bandit_NW, "FARM2");
};

INSTANCE Info_Mod_Andre_AlvaresBanditen (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresBanditen_Condition;
	information	= Info_Mod_Andre_AlvaresBanditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bandyci nie spowoduja juz wiecej klopotów.";
};

FUNC INT Info_Mod_Andre_AlvaresBanditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Alvares))
	&& (Npc_IsDead(Mod_7217_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7218_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7219_BDT_Bandit_NW))
	&& (Npc_HasItems(hero, ItMw_Banditenschwert_Andre) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresBanditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresBanditen_15_00"); //Bandyci nie spowoduja juz wiecej klopotów.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresBanditen_08_01"); //Bardzo dobry. A ich bron?
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresBanditen_15_02"); //Oto one.

	B_GiveInvItems	(hero, self, ItMw_Banditenschwert_Andre, 3);

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresBanditen_08_03"); //Doskonaly. Dzieki temu otoczenie miasta jest znacznie bezpieczniejsze.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Andre_AlvaresGeld (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresGeld_Condition;
	information	= Info_Mod_Andre_AlvaresGeld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let Alvares go free (500 zlota)";
};

FUNC INT Info_Mod_Andre_AlvaresGeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_AlvaresSchneller))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Andre_AlvaresBanditen))
	|| (Mod_AlvaresAndre_Taeter == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresGeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresGeld_15_00"); //Zwolnic Alvares.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresGeld_08_01"); //No cóz, mozesz go zabrac razem z toba.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, "Za Alvares zaplacilem zloto i moge go teraz zabrac.");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Andre_Miliz (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Miliz_Condition;
	information	= Info_Mod_Andre_Miliz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce dolaczyc do milicji.";
};

FUNC INT Info_Mod_Andre_Miliz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Miliz_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Miliz_15_00"); //Chce dolaczyc do milicji.
	AI_Output(self, hero, "Info_Mod_Andre_Miliz_08_01"); //Zapisujemy tylko to, co najlepsze. Dzis organizujemy turniej, a zwyciezca zostanie przyjety przez milicje.
	AI_Output(self, hero, "Info_Mod_Andre_Miliz_08_02"); //Masz szczescie, ze jest tam miejsce na jeszcze jedno.

	Mod_MilizTurnier	=	0;

	Log_CreateTopic	(TOPIC_MOD_MILIZTURNIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_MILIZTURNIER, "Jesli chce dolaczyc do milicji, musze wygrac turniej.", "Jesli chce dolaczyc do milicji, musze wygrac turniej.");
};

INSTANCE Info_Mod_Andre_Kristall (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kristall_Condition;
	information	= Info_Mod_Andre_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lothar wysyla mi (wystarczy krysztal)";
};

FUNC INT Info_Mod_Andre_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kristall_15_00"); //Lothar wyslal mnie. Mam przyniesc krysztal.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kristall_08_01"); //Gdzie dostaniesz krysztal?
	AI_Output(hero, self, "Info_Mod_Andre_Kristall_15_02"); //Zdjalem zlodziej.
	AI_Output(self, hero, "Info_Mod_Andre_Kristall_08_03"); //Bardzo dobry. Jesli chcesz, mozesz teraz dolaczyc do milicji.

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_SÖLDNER, "Pan Andre jest gotów przyjac mnie do milicji.", "Udzielilem krysztalu Panu Andre' owi. Torlof nie spodoba sie zbytnio.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Andre_TurnierSinbad (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TurnierSinbad_Condition;
	information	= Info_Mod_Andre_TurnierSinbad_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem o turnieju....";
};

FUNC INT Info_Mod_Andre_TurnierSinbad_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Andre_Regeln))
	&& (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TurnierSinbad_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_TurnierSinbad_15_00"); //Slyszalem o turnieju....
	AI_Output(self, hero, "Info_Mod_Andre_TurnierSinbad_08_01"); //To prawda. Jeden fotel jest nadal dostepny, jesli chcesz wziac udzial.

	Mod_MilizTurnier = 0;
};

INSTANCE Info_Mod_Andre_Regeln (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Regeln_Condition;
	information	= Info_Mod_Andre_Regeln_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa zasady turnieju?";
};

FUNC INT Info_Mod_Andre_Regeln_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Miliz))
	|| (Npc_KnowsInfo(hero, Info_Mod_Andre_TurnierSinbad))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Regeln_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Regeln_15_00"); //Jakie sa zasady turnieju?
	AI_Output(self, hero, "Info_Mod_Andre_Regeln_08_01"); //Czary i walki na odleglosc nie sa dozwolone w turnieju, poniewaz nie wolno Ci zabijac.
};

INSTANCE Info_Mod_Andre_Turnier1 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier1_Condition;
	information	= Info_Mod_Andre_Turnier1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jest mój pierwszy przeciwnik?";
};

FUNC INT Info_Mod_Andre_Turnier1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Regeln))
	&& (Mod_Gilde == 0)
	&& (Mod_MilizTurnier ==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier1_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier1_15_00"); //Kim jest mój pierwszy przeciwnik?
	AI_Output(self, hero, "Info_Mod_Andre_Turnier1_08_01"); //Nazwisko: Do smierci. Powinien byc tu w kazdej chwili.

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "TURNIER");
	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

	AI_Teleport	(Mod_541_NONE_Till_NW, "NW_CITY_HABOUR_KASERN_11");

	if (Assassinen_Dabei == 0)
	{
		B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Mój pierwszy przeciwnik na turnieju to Till.");
	};
};

INSTANCE Info_Mod_Andre_Turnier2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier2_Condition;
	information	= Info_Mod_Andre_Turnier2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Walczylem do konca.";
};

FUNC INT Info_Mod_Andre_Turnier2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier2_15_00"); //Walczylem do konca.

	if (Mod_MilizTurnier	==	2)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_08_01"); //Bity go pan. Teraz jestes w kolejnej rundzie.
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_08_02"); //Nastepnym przeciwnikiem jest Alrik.

		AI_Teleport	(Mod_547_NONE_Alrik_NW, "NW_CITY_HABOUR_KASERN_11");
		B_StartOtherRoutine	(Mod_547_NONE_Alrik_NW,	"TURNIER");
		B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

		AI_Teleport	(Mod_547_NONE_Alrik_NW, "NW_CITY_HABOUR_KASERN_11");

		if (Assassinen_Dabei == 0)
		{
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Mój drugi przeciwnik w turnieju to Alrik.");
		};

		Mod_MilizTurnier	=	4;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(100);
	}
	else if (Mod_MilizTurnier	==	3)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_08_03"); //Straciles. Teraz jestes juz poza turniejem.
		AI_Output(hero, self, "Info_Mod_Andre_Turnier2_15_04"); //Czy jest inny sposób na dolaczenie do milicji?

		Mod_AndreTurnier = 2;

		Mod_MilizErnst	=	r_max(99);
		
		if (Mod_MilizErnst	<=	25)
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier2_08_05"); //Jesli naprawde chcesz dolaczyc do milicji, idz na hipoteze. Znajdziesz go w baraku kuzni.

			Mod_MilizTurnier	=	9;

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Jesli chce dolaczyc do milicji mimo porazki w turnieju, powinienem udac sie do Mortisa.");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier2_08_06"); //Straciles do chlopa. Nie mozemy uzyc kogos takiego jak Ty w milicji.

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Pan Andre nie pozwoli mi przylaczyc sie do milicji z powodu mojej kleski przeciwko Tillowi.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Turnier3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier3_Condition;
	information	= Info_Mod_Andre_Turnier3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Walczylem przeciwko Alrikowi.";
};

FUNC INT Info_Mod_Andre_Turnier3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier3_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier3_15_00"); //Walczylem przeciwko Alrikowi.

	if (Mod_MilizTurnier	==	6)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_08_01"); //Gratuluje, bijecie go. Teraz pozostalo ci tylko jedna walka.
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_08_06"); //Nastepnym przeciwnikiem jest Gidan. Powodzenia!
		
		if (Assassinen_Dabei == 0)
		{
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Ja równiez pobilem Alrika. Pan Andre mówi, ze mam przed soba tylko jedna walke.");
		};

		B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

		Mod_MilizTurnier	=	8;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(200);
	}
	else if (Mod_MilizTurnier	==	7)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_08_02"); //Straciles. Teraz jestes juz poza turniejem.
		AI_Output(hero, self, "Info_Mod_Andre_Turnier3_15_03"); //Czy jest inny sposób na dolaczenie do milicji?

		Mod_AndreTurnier = 2;

		Mod_MilizErnst	=	r_max(99);
		
		if (Mod_MilizErnst	<=	50)
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier3_08_04"); //Jesli naprawde chcesz dolaczyc do milicji, idz na hipoteze. Znajdziesz go w baraku kuzni.

			Mod_MilizTurnier	=	9;

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Jesli chce dolaczyc do milicji mimo porazki w turnieju, powinienem udac sie do Mortisa.");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier3_08_05"); //Straciles i przegapiles szanse dolaczenia do milicji.

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Z powodu przegranej z Alrikiem, zablokowalem sobie droge do milicji.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Turnier4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier4_Condition;
	information	= Info_Mod_Andre_Turnier4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Walczylem przeciwko Gidanowi.";
};

FUNC INT Info_Mod_Andre_Turnier4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier4_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_00"); //Walczylem przeciwko Gidanowi.

	if (Mod_MilizTurnier	==	11)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_01"); //Gratuluje, bijecie go. Zarobiles sobie miejsce w milicji.

		if (Mod_Gilde == 0)
		{		
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Ja równiez pobilem Gidana. Pan Andre mówi, ze moge teraz dolaczyc do milicji.");
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_06"); //Naleze juz do innej grupy. To bylo dla mnie tylko trening.
			AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_07"); //Jestes niesamowitym facetem. Szkoda, ze moglabym cie uzyc.

			if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_08"); //Ale wezmiesz ten dokument.

				B_GiveInvItems	(self, hero, ItWr_TurnierUrkunde, 1);
			};
		};

		if (Assassinen_Dabei == 0)
		{
			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_SUCCESS);
		};

		Mod_AndreTurnier = 1;

		Mod_MilizTurnier	=	13;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(300);
	}
	else if (Mod_MilizTurnier	==	12)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_02"); //Straciles. Teraz jestes juz poza turniejem.

		if (Assassinen_Dabei == 0)
		{
			AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_03"); //Czy jest inny sposób na dolaczenie do milicji?

			Mod_AndreTurnier = 2;

			Mod_MilizErnst	=	r_max(99);
		
			if (Mod_MilizErnst	<=	75)
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_04"); //Jesli naprawde chcesz dolaczyc do milicji, idz na hipoteze. Znajdziesz go w baraku kuzni.

				Mod_MilizTurnier	=	9;

				B_LogEntry	(TOPIC_MOD_MILIZ, "Jesli chce dolaczyc do milicji mimo porazki w turnieju, powinienem udac sie do Mortisa.");
			}
			else
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_08_05"); //Straciles i przegapiles szanse dolaczenia do milicji.

				B_LogEntry	(TOPIC_MOD_MILIZ, "Z powodu przegranej z Gidanem, zablokowalem sobie droge do milicji.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Aufnahme (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Aufnahme_Condition;
	information	= Info_Mod_Andre_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem gotów dolaczyc do milicji.";
};

FUNC INT Info_Mod_Andre_Aufnahme_Condition()
{
	if (Mod_Gilde	==	0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	|| (Mod_MilizTurnier == 13)
	|| (Npc_KnowsInfo(hero, Info_Mod_Mortis_OK)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_15_00"); //Jestem gotów dolaczyc do milicji.
	
	if (hero.level	>=	5)
	&& (Diebe_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_01"); //Jestescie gotowi dolaczyc do milicji.
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_02"); //Ale gdy tylko nosisz zbroje naszych zolnierzy, nie ma juz odwrotu.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus <= 8)
			{
				AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_05"); //Nalezy jednak najpierw zrobic kilka rzeczy na korzysc Innosa.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Andre_Aufnahme);

				Info_AddChoice	(Info_Mod_Andre_Aufnahme, "Zmienilam zdanie.", Info_Mod_Andre_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Andre_Aufnahme, "Chce do Panstwa dolaczyc.", Info_Mod_Andre_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_04"); //Najpierw powinienes zdobyc neutralna zbroje.
		};
	}
	else if (Diebe_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_06"); //Slysze, ze masz sie zatrzymac z zlobieniem w doku. Nie mozemy miec takiej osoby w milicji.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_08_03"); //Lepiej zdobyc wiecej doswiadczenia.
	};
};

FUNC VOID Info_Mod_Andre_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Nein_15_00"); //Zmienilam zdanie.
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Nein_08_01"); //Cokolwiek mówisz.

	Info_ClearChoices	(Info_Mod_Andre_Aufnahme);
};

FUNC VOID Info_Mod_Andre_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	&& (Mod_MilizTurnier != 13)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mortis_OK)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_57);
	
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Ja_15_00"); //Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_08_01"); //Dobre. Oto Twoja zbroja.

	CreateInvItems	(self, ITAR_MIL_L, 1);
	B_GiveInvItems	(self, hero, ITAR_MIL_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Mil_L);

	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_08_02"); //Obserwuj tam, gdzie dajesz sie widziec, najemnicy i wyznawcy Beliaranu nie zawahaja sie cie zabic.
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Ja_15_03"); //A co z pistoletem?
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_08_04"); //Milicja ma z nami miecze. Idz na targowisko, sprzedadza troche.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_Miliz, "Jestem teraz czlonkiem milicji.", "Jestem teraz czlonkiem milicji.");
	B_SetTopicStatus	(TOPIC_MOD_Miliz, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Aufnahme);

	Mod_Gilde	=	1;

	hero.guild = GIL_PAL;
	Npc_SetTrueGuild	(hero, GIL_PAL);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	Monster_Max += 7;

	B_Göttergefallen(1, 5);

	AI_UnequipArmor	(Mod_1723_MIL_Gidan_NW);

	CreateInvItems	(Mod_1723_MIL_Gidan_NW, ItAr_Mil_M, 1);

	AI_EquipArmor	(Mod_1723_MIL_Gidan_NW, ItAr_Mil_M);
};

INSTANCE Info_Mod_Andre_Sinbad01 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad01_Condition;
	information	= Info_Mod_Andre_Sinbad01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pamietasz mnie?";
};

FUNC INT Info_Mod_Andre_Sinbad01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Mod_AndreTurnier == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad01_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_00"); //Pamietasz mnie?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_08_01"); //Oczywiscie tak jest. Zwyciezyles w konkursie.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_02"); //Dokladnie. Teraz chcialbym miec cos w rodzaju czynu.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_08_03"); //Nie dalem ci ich.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_04"); //Nie.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_08_05"); //Oczywiscie masz do tego prawo. Tutaj jestes.

	B_GiveInvItems	(self, hero, ItWr_TurnierUrkunde, 1);
};

INSTANCE Info_Mod_Andre_Sinbad02 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad02_Condition;
	information	= Info_Mod_Andre_Sinbad02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce wrócic do turnieju.";
};

FUNC INT Info_Mod_Andre_Sinbad02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Mod_AndreTurnier == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad02_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_00"); //Chce wrócic do turnieju.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_08_01"); //Zgubiles juz sie. Gidan jest zwyciezca turnieju. On jednak ucieka.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_02"); //Co to oznacza?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_08_03"); //Mówi sie, ze byl pijany, a nastepnie chwycil za cien biegacza w dolinie przy wschodniej bramie. Zreszta nie pojawil sie.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_04"); //Wtedy miejsce jest ponownie wolne?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_08_05"); //Zasadniczo tak. W prawo, idziesz na dól i widzisz, co sie dzieje.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_08_06"); //Jesli Gidan jest martwy, masz Bieguna Cienia jako przeciwnika. Jesli go pokonasz, mozesz zachowac trofeum.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_07"); //Juz nie jestem.

	B_KillNpc	(Mod_1723_MIL_Gidan_NW);
};

INSTANCE Info_Mod_Andre_Sinbad03 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad03_Condition;
	information	= Info_Mod_Andre_Sinbad03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gidan minal, a biegacz cieni jest historia.";
};

FUNC INT Info_Mod_Andre_Sinbad03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Sinbad02))
	&& (Npc_HasItems(hero, ItMi_TurnierPokal) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad03_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad03_15_00"); //Gidan minal, a biegacz cieni jest historia. Oto trofeum.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad03_08_01"); //Czysta praca. Mozesz ja zachowac. A jesli chcesz do nas dolaczyc.....
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad03_15_02"); //Zastanowie sie nad tym. Do zobaczenia dookola.
};

INSTANCE Info_Mod_Andre_Auftrag (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Auftrag_Condition;
	information	= Info_Mod_Andre_Auftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Auftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_00"); //Dobrze, ze jestes tutaj, jest wiele do zrobienia!
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_01"); //Ach, tak? Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_02"); //Po pierwsze, z górnego miasta zniknal naukowiec, prawdopodobnie porwany.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_03"); //Z drugiej strony, stare fanatyczne kultowe blystki zdaja sie cos planowac. Co gorsza, ostatni karawana w drodze do klasztoru zostala zaatakowana przez dziwne golemy.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_04"); //Oby, dosc duzo na raz.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_05"); //Tak, dlatego nie pracujesz sam.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_06"); //Was meinst du mit "nie sam"?
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_07"); //Gidan bedzie nadzorowal przyczepy kempingowe.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_08"); //Wszystko w porzadku.... Wtedy zatroszcze sie o sekte i wynalazce.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_08_09"); //No cóz, daj mi znac, czy cos znajdziesz.

	Wld_InsertNpc	(Mod_1745_PSIGUR_Guru_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7392_PSITPL_Templer_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7393_PSITPL_Templer_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7394_PSINOV_Novize_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7395_PSINOV_Novize_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7396_PSINOV_Novize_NW, "BIGFARM");

	Wld_InsertItem	(ItWr_SektisTeleport2, "FP_ITEM_OV_02");
	Wld_InsertItem	(ItWr_ErfinderBrief, "FP_ITEM_ERFINDERBRIEF");

	Wld_InsertNpc	(Mod_1729_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1727_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1725_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1726_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1728_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");

	Mob_CreateItems	("SEKTENTRUHE1", ItWr_SektisTeleport1, 1);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_wISSENSCHAFTLER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, TOPIC_MOD_MILIZ_SEKTENSPINNER, "Musze sie dowiedziec na czym polega znikniecie wynalazcy.", "Jest cos zlego w kultowych pajakach. Powinienem porozmawiac z Cor Angar w Minentalu.");

	B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW,	"TOT");

	B_StartOtherRoutine	(Mod_586_NONE_Jack_NW, "ATCITY");
};

INSTANCE Info_Mod_Andre_WoErfinder (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_WoErfinder_Condition;
	information	= Info_Mod_Andre_WoErfinder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc informacje o wynalazcy?";
};

FUNC INT Info_Mod_Andre_WoErfinder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_WoErfinder_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_WoErfinder_15_00"); //Gdzie moge znalezc informacje o wynalazcy?
	AI_Output(self, hero, "Info_Mod_Andre_WoErfinder_08_01"); //Rozejrzyj sie po jego domu. Przejdz do górnej czesci dzielnicy i przez szose w kierunku kupca Salandril.
	AI_Output(self, hero, "Info_Mod_Andre_WoErfinder_08_02"); //Tam po lewej stronie dom nalezy do wynalazcy.

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Powinienem rozejrzec sie po domu wynalazcy. Znajduje ja w górnej dzielnicy w drodze do Salandril po lewej stronie po luku.");

};

INSTANCE Info_Mod_Andre_WoFanatiker (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_WoFanatiker_Condition;
	information	= Info_Mod_Andre_WoFanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc informacje na temat kultowych blystek?";
};

FUNC INT Info_Mod_Andre_WoFanatiker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_WoFanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_WoFanatiker_15_00"); //Gdzie moge znalezc informacje na temat kultowych blystek?
	AI_Output(self, hero, "Info_Mod_Andre_WoFanatiker_08_01"); //Dlaczego nie idziesz do obozu bagiennego w Minental? Albo u twojego przyjaciela, o którym Gidan mi opowiedzial, ze Lester.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Pan Andre uwaza, ze powinienem udac sie do obozu na bagnie lub do Lester' s, aby dowiedziec sie wiecej o fanatycznych blystkach kultowych.");

};

INSTANCE Info_Mod_Andre_Erfahrung_Erfinder (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Erfinder_Condition;
	information	= Info_Mod_Andre_Erfahrung_Erfinder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dowiedzialem sie o wynalazcy!";
};

FUNC INT Info_Mod_Andre_Erfahrung_Erfinder_Condition()
{
	if (Mod_MitLawrenceGesprochen == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Erfinder_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_00"); //Dowiedzialem sie o wynalazcy!
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Erfinder_08_01"); //Wszystkie sluszne, zglosic.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_02"); //Wynalazca zostal porwany na rozkaz pewnego Cor Kolama. Z jego pomoca chce zmartwychwstac sypialnia.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_03"); //Gubernator Larius, handlarz Lutero i milicja Lawrence' a zdaja sie wspólpracowac z nim.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_04"); //Zabilem ich, kiedy próbowali mnie zabic. Znalazlem tez kolejna polowe pergaminu.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Erfinder_08_05"); //To sa wazne informacje.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Erfahrung_Fanatiker (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Fanatiker_Condition;
	information	= Info_Mod_Andre_Erfahrung_Fanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dowiedzialem sie o fanatykach!";
};

FUNC INT Info_Mod_Andre_Erfahrung_Fanatiker_Condition()
{
	if (Npc_HasItems(hero, ItWr_SektisTeleport1) == 1)
	&& (Npc_HasItems(hero, ItWr_SektisTeleport2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Fanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_00"); //Dowiedzialem sie o fanatykach!
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Fanatiker_08_01"); //Wszystkie sluszne, zglosic.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_02"); //W okolicach Khorinis znajduje sie kilka grup bylych czlonków kultowych.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_03"); //Wyglada na to, ze próbuja ponownie obudzic sypialnie. Jedna z tych grup objela w posiadanie latarnie morska, druga zas po poludniowej stronie miasta zniszczylam.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_04"); //Znalazlem tam pól pergaminu.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Fanatiker_08_05"); //Hm, musimy byc ostrozni....

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Powinienem spróbowac polaczyc dwie polówki pergaminu. Moze Xardas moze mi w tym pomóc.....");
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Erfahrung (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Condition;
	information	= Info_Mod_Andre_Erfahrung_Info;
	permanent	= 0;
	important	= 0;
	description	= "To wszystko, czego moglem sie dowiedziec teraz.";
};

FUNC INT Info_Mod_Andre_Erfahrung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Erfinder))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_00"); //To wszystko, czego moglem sie dowiedziec teraz.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_08_01"); //No cóz, to nie brzmi dobrze. Gidan jeszcze nie wrócil, co oznacza, ze musimy czekac az wróci do domu, zanim dowiemy sie wiecej.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_08_02"); //Pójdziesz do Minental tak dlugo, jak chcesz. Tam mielismy kopalnie w okolicy orksu kolo wiezy. Ale ostatnio zostala zaatakowana. Musisz ja uwolnic!
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_03"); //Kto ukradl kopalnie?
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_08_04"); //Wedlug naszych raportów, przez bandytów. Prawdopodobnie chcac zarobic fortune, magiczna ruda jest dzis dosc zmudna i kosztowna.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_05"); //Bede w drodze od razu!

	B_GivePlayerXP	(500);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_MINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_MINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_MINE, "W kopalni Paladin w dolinie Minentalnej niedaleko wiezy Xardas doszlo do nalotu bandytów. Powinienem zadbac o tych bandytów.");

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Banditen (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Banditen_Condition;
	information	= Info_Mod_Andre_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kopalnia jest wolna.";
};

FUNC INT Info_Mod_Andre_Banditen_Condition()
{
	if (Mod_PalaStory_Mine_Sektis == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Banditen_15_00"); //Kopalnia jest wolna. Okupowali ich przyczepy sypialne.
	AI_Output(self, hero, "Info_Mod_Andre_Banditen_08_01"); //Damn to! Musza miec palce we wszystkim.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_MINE, LOG_SUCCESS);

	B_Göttergefallen(1, 2);
};

INSTANCE Info_Mod_Andre_GidanBack (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_GidanBack_Condition;
	information	= Info_Mod_Andre_GidanBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy Gidan jeszcze wrócil?";
};

FUNC INT Info_Mod_Andre_GidanBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Banditen))
	&& (Mod_PalaKapitel3 == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_GidanBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_00"); //Czy Gidan jeszcze wrócil?

	if (Kapitel < 3)
	{
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_08_01"); //Nie, jeszcze nie. Wróc do domu pózniej.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_08_02"); //Tak, ale on odszedl znowu!
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_03"); //Gdzie?
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_04"); //Jeden z naszych obozów dozoru zostal zaatakowany.....
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_05"); //Obóz koncentracyjny?
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_08_06"); //Tak. Konfigurujemy ja tak, aby monitorowac karawany z klasztoru do miasta. Tuz przed wejsciem do nas dotarl poslannik, który powiedzial, ze zostalismy zaatakowani.
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_07"); //Gdzie znajduje sie ten magazyn?
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_08_08"); //Pod mostem w drodze do tawerny.
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_09"); //Dobrze, od razu bede w drodze.

		AI_StopProcessInfos	(self);

		Mod_PalaKapitel3 = 1;

		Npc_ExchangeRoutine	(Mod_1723_MIL_Gidan_NW,	"GOLEM");
		Wld_InsertNpc	(EisenGolem,	"FP_ROAM_CITY_TO_FOREST_42");

		Mod_1723_MIL_Gidan_NW.flags = 2;

		Log_CreateTopic	(TOPIC_MOD_MILIZ_GIDAN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_MILIZ_GIDAN, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Gidan znajduje sie w obozie dozorowania milicji w poblizu tawerny pod mostem, który zostal napadniety. Powinienem isc do niego i zobaczyc, co sie dowiedzial.");		
	};
};

INSTANCE Info_Mod_Andre_FIFinished (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_FIFinished_Condition;
	information	= Info_Mod_Andre_FIFinished_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rozwiazywalem tajemnice sekty i rozbilem wynalazce.";
};

FUNC INT Info_Mod_Andre_FIFinished_Condition()
{
	if (FI_Story == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_FIFinished_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_00"); //Rozwiazywalem tajemnice sekty i rozbilem wynalazce.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_08_01"); //Co dostales? Mialo to byc odwrotnie.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_02"); //To bylo tak: wynalazca nie zostal porwany, a uzyty tylko jako przyneta dla mnie.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_03"); //Brat Cor Kalom' a, Cor Kolam, zbudowal robota, który wygladal jak sypialnia, czyniac wyznawców kultów nasladowcami.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_04"); //Pogladal on na idealna maszyne i oczywiscie myslalem, ze to byl bot sypialny. Ale po tym jak go zniszczylem, pokazal prawdziwy cud.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_05"); //Kiedy jednak próbowal mnie ulozyc na mnie, przyszedl Gidan i zabral ich z nim. Ofiarowal sie za sprawiedliwosc.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_08_06"); //Tak bylo.... Cóz, w kazdym razie zarobiles sobie nagrode.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_08_07"); //Niniejszym oswiadczam, ze jestes rycerzem. Oto Twoja zbroja.

	CreateInvItems	(hero, ItAr_Pal_M, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Pal_M);

	B_ShowGivenThings	("uzyskac zbroje rycerska");

	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_08_08"); //W tej chwili wszystko jest spokojne, jesli jest jeszcze cos do zrobienia, dowiesz sie tutaj.

	B_GivePlayerXP	(2000);

	B_Göttergefallen(1, 5);

	Mod_Gilde = 2;

	B_SetTopicStatus	(TOPIC_MOD_PAL_FI, LOG_SUCCESS);
};

INSTANCE Info_Mod_Andre_RLMord (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_RLMord_Condition;
	information	= Info_Mod_Andre_RLMord_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, czy jest cos do zrobienia?";
};

FUNC INT Info_Mod_Andre_RLMord_Condition()
{
	if (FI_Story == 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_RLMord_Info()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Neron_Hi))
	{
		AI_Output(hero, self, "Info_Mod_Andre_RLMord_15_00"); //Cóz, czy jest cos do zrobienia?
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_RLMord_15_01"); //Neron mnie wyslal.
	};

	AI_Output(self, hero, "Info_Mod_Andre_RLMord_08_02"); //Dobrze, ze to Ty! Pekniecie piekla w doku. Zginela milicja Jason!

	B_StartOtherRoutine	(Mod_1260_RIT_Neron_NW, "START");

	Log_CreateTopic	(TOPIC_MOD_PAL_RL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PAL_RL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PAL_RL, "Zolnierz milicji Jason zostal zamordowany w dzielnicy portowej.");

	Info_ClearChoices	(Info_Mod_Andre_RLMord);

	Info_AddChoice	(Info_Mod_Andre_RLMord, "Gdzie?", Info_Mod_Andre_RLMord_C);
	Info_AddChoice	(Info_Mod_Andre_RLMord, "Po kogo?", Info_Mod_Andre_RLMord_B);
	Info_AddChoice	(Info_Mod_Andre_RLMord, "Jak?", Info_Mod_Andre_RLMord_A);
};

FUNC VOID Info_Mod_Andre_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_C_15_00"); //Gdzie?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_C_08_01"); //Na czerwonej latarni.
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_C_15_02"); //Byl w domu publicznym? Biznes?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_C_08_03"); //Nie sadze. Byl nagi.....

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Zabójstwo mialo miejsce w Czerwonym Lancecie.");

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

FUNC VOID Info_Mod_Andre_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_B_15_00"); //Po kogo?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_B_08_01"); //Gdybysmy wiedzieli, ze wisi ten syn suki!

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

FUNC VOID Info_Mod_Andre_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_A_15_00"); //Jak?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_A_08_01"); //Stabbed.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

INSTANCE Info_Mod_Andre_Giselle (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Giselle_Condition;
	information	= Info_Mod_Andre_Giselle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Giselle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Galf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Giselle_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_08_00"); //Dobra praca, zolnierz. Masz go nie tylko w miesniach, ale takze w glowie! Jason zostanie pochowany na cmentarzu, oddamy mu szacunek.
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_08_01"); //Oto Twoja wyplata. Mam nadzieje, ze teraz zmierzamy ku ciszy.....

	B_GiveInvItems	(self, hero, ItMi_Gold, 2000);

	AI_Output(hero, self, "Info_Mod_Andre_Giselle_15_02"); //Was ist mit der "Ciemna cyfra"?
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_08_03"); //Szukamy dla niej tajnosci. Ostatnia rzecza, której potrzebujemy, jest masowa panika.
	AI_Output(hero, self, "Info_Mod_Andre_Giselle_15_04"); //Czy cos jeszcze znalazles?
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_08_05"); //Nie, jeszcze nie.

	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_7234_OUT_Giselle_NW, "KNAST");
	B_StartOtherRoutine	(Mod_7235_NONE_Galf_NW, "KNAST");

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Sprawa powinna byc zamknieta, teraz trwa tylko ukryte poszukiwanie ciemnej figury, aby zapobiec masowej panice.");

	Mod_PAL_MISH_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_Bernd (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Bernd_Condition;
	information	= Info_Mod_Andre_Bernd_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Bernd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Giselle))
	&& (Wld_GetDay() > Mod_PAL_MISH_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Bernd_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Bernd_08_00"); //Ciesze sie, ze wlasnie przyszliscie. Wlasnie otrzymalem raport o przemocy domowej.
	AI_Output(self, hero, "Info_Mod_Andre_Bernd_08_01"); //Bernd, pijak z dzielnicy portowej, po raz kolejny wypil pijanego o pragnieniu i zostawia swój grobat zaraz na zonie, prosze idz tam i "spokojny" go.
	AI_Output(hero, self, "Info_Mod_Andre_Bernd_15_02"); //To juz wszystko.

	B_StartOtherRoutine	(Mod_1062_VLK_Bernd_NW, "GEKILLT");
	B_StartOtherRoutine	(Mod_1064_VLK_Jana_NW, "BERND");

	B_KillNpc	(Mod_1062_VLK_Bernd_NW);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Bernd, pijak z dzielnicy portowej, ma pobic zone. Chce, abym go uspokoil.");
};

INSTANCE Info_Mod_Andre_Jana (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Jana_Condition;
	information	= Info_Mod_Andre_Jana_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bernd jest pewny.";
};

FUNC INT Info_Mod_Andre_Jana_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jana_BerndTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Jana_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_00"); //Bernd jest pewny.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_08_01"); //Lubie to? To bylo szybkie.
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_02"); //Tak, a takze trwale. On nie zyje.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_08_03"); //Damn to, nie mozna zabic kazdego pijaka, który uciekl tylko dlatego, ze chcesz uratowac sie od papierkowej roboty!
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_04"); //Ich war‘s nicht, sondern ein "ciemny facet w milicji pancernej".
	AI_Output(self, hero, "Info_Mod_Andre_Jana_08_05"); //Nie masz na mysli?
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_06"); //Tak, tak. Mamy do czynienia z seryjnym zabójca w pancerzu Jasona.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_08_07"); //Wtedy chyba bedziemy musieli pójsc na jaw....
	AI_Output(self, hero, "Info_Mod_Andre_Jana_08_08"); //Przygotuje tu wszystko, prosze w miedzyczasie udac sie na targowisko, jest dziwak, chyba stary guru z obozu kultowego, który ostrzega ludzi przed koncem swiata i jest dosc dyskretny. Wyprowadzic go z miasta.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Pan Andre oznacza, ze musimy pójsc publicznie. Kiedy wszystko przygotowuje, wypuszcze na rynek zwariowanego guru, który prorokuje koniec swiata.");

	Wld_InsertNpc	(Mod_7236_GUR_Guru_NW, "MARKT");
};

INSTANCE Info_Mod_Andre_HeroBot (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HeroBot_Condition;
	information	= Info_Mod_Andre_HeroBot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiem, kim jest teraz nasz seryjny zabójca.";
};

FUNC INT Info_Mod_Andre_HeroBot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HeroBot_Weg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HeroBot_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_00"); //Wiem, kim jest teraz nasz seryjny zabójca.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_01"); //Wiesz? Kto?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_02"); //Robot bojowy Kolam.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_03"); //Co? Co sprawia, ze myslisz o tym?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_04"); //Widzialam go. Na targowisko wybil szalonego faceta.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_05"); //Przypuszczam, ze nie musze sie martwic o to, jak to jeszcze moze dzialac, ani dlaczego jest on jak dotad tylko kluc przestepcami, poniewaz to zrobiles...... Oto prawda?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_06"); //Nieprawidlowe. Próbowalem go zabic, ale Kolam swietnie sie spisal z urzadzeniem. Móglbym go ledwie porysowac, ale za kazdym razem stracilem energie.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_07"); //Dlaczego wiec stoisz tutaj?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_08"); //Der Roboter hat mich nicht angegriffen. Er faselte irgendwas von "Zagrozenie w kazdym razie nalezy uznac za przestepstwo." oder was weiß ich und hat sich wegteleportiert.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_09"); //"Zagrozenie, które nalezy uznac za przestepstwo kryminalne" ... das kommt mir merkwürdig bekannt vor. Hat der Roboter sonst noch was gesagt?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_10"); //Ja ... zu Jana hat er irgendwas davon gefaselt, dass "dobra milicja zawsze chroni slabe strony" ...
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_11"); //Wszystko wydaje sie tak znajome. Skad to wiem? Czy robot powiedzial cos wiecej?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_12"); //Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_08_13"); //To nowe zadanie dla Ciebie. Dowiedz sie, co jeszcze. Próbuje powstrzymac masowa panike! I spieszyc sie, czy pan?

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Mówienia robota sa bardzo znane lorda Andre' owi, ale nie moze on jeszcze je sklasyfikowac. Chce, abym dowiedzial sie od niego innej linii. Powinienem wiec porozmawiac z Giselle w wiezieniu.");
};

INSTANCE Info_Mod_Andre_Kerze (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kerze_Condition;
	information	= Info_Mod_Andre_Kerze_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Kerze_Condition()
{
	if (Mod_PAL_HeroBot == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kerze_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_00"); //Najwyzszy czas, zebys przyszedl, cos wycieklo, pieklo peka tu luzno.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_01"); //Nakladalismy godzine powszednia, ale to nie robi na nas wrazenia.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_02"); //Musimy natychmiast rozwiazac ten problem! Mam nadzieje, ze wiecie jak.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_03"); //Ich habe mit Giselle gesprochen. Laut ihrer Aussage hat der Roboter etwas gesagt wie "To sa milicje w ich wzorcu...."
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_04"); //(setzt in den Satz des Helden ein) "... ich modelowy efekt nie pozwala na praktykowanie nieuczciwych praktyk". Natürlich! Das sind alles Grundregeln der Milizenschule.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_05"); //Szkola milicyjna?
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_06"); //To on, którego uciekles przed Toba, chcesz wygrac turniej, pamietaj? Kolam musial zaprogramowac robota nieprawidlowo.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_07"); //Nie tylko nagral twój styl walki, ale pewnie przyjales na nim jakas maksyme milicji. A teraz rozbija zbrodnie i niesprawiedliwosc.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_08"); //Dlaczego wiec mielibysmy cos z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_09"); //Zobacz, co robi! Robot porusza sie po trupach.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_10"); //A jesli nie wymyslimy sposobu na szybkie doprowadzenie tego do skutku, kazdy zrobi to, poniewaz ulice beda wybrukowane bezzyciowymi cialami przestepców!
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_11"); //Musimy go zniszczyc, wspólnie wezwac wszystkie milicje, bedziemy go atakowac otwarcie.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_12"); //Jeden: Jak chcesz go znalezc i moze on teleportowac.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_13"); //Jak mu zaszkodzisz? Powiedzialem ci, ze robot jest niezniszczalny!
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_14"); //Wykonana jest z poteznej magicznej rudy! Nie moglismy go nawet walczyc, gdybysmy mieli miecze lukowe.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_15"); //Wtedy bedziemy musieli go po prostu zlapac w pulapke. Najpierw znajdujemy sie, a nastepnie niszczymy.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_16"); //Poczekaj chwile.... Mam tu gdzies jakies stare profile, które nam sie przydadza.

	AI_GotoWp	(self, "WP_ANDRE_STECKBRIEFE");

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoWP	(self, "NW_CITY_ANDRE");

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_17"); //Oni pochodza z dawnej sprawy. Zadany zawsze pojawial sie w kolorowym kostiumie z kolnierzem szachowym. Wykorzystajmy to teraz.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_18"); //Doloze wszelkich staran, aby kazdy straznik dostal jeden. Chce, zebyscie je pokazywali.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_19"); //W miedzyczasie powiesz heraldowi na targowisku, aby ostrzec ludzi przed niebezpiecznymi szalenczymi spacerami po kolorowych kostiumach z kolnierzykami szachownicowymi, a wczoraj wieczorem klujac ich w czterech zolnierzach milicji podczas snu.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_20"); //Ale to tylko poglebi panike.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_08_21"); //Prosze pozwolic mi sie tym martwic. Chodz, spiesz sie.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_PAL_RL, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_PAL_BOT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PAL_BOT, "Lord Andre ma plan zniszczenia robota. Bedzie on mial nakaz zatrzymania przekazany straznikom. Tymczasem mam powiedziec zwiastunowi, aby ostrzec zabójce w kolorowym kostiumie z kolnierzem szachowym, który rzekomo zabil wczoraj wieczorem czterech zolnierzy milicji.");

	B_Göttergefallen(1, 2);
};

INSTANCE Info_Mod_Andre_Herold (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Herold_Condition;
	information	= Info_Mod_Andre_Herold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Herold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Verbrecher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Herold_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_00"); //Bardzo dobry. Podjalem wszystkie przygotowania. Wez to tutaj.

	B_GiveInvItems	(self, hero, ItPo_Speed_Andre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_01"); //I to wlasnie musisz nosic.

	CreateInvItems	(hero, ItAr_Gangster, 1);

	B_ShowGivenThings	("Zdobadz swój strój");

	AI_Output(hero, self, "Info_Mod_Andre_Herold_15_02"); //Co mam z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_03"); //Mamy tylko jedna szanse polowac na ten robot, musimy go stopic.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_04"); //W tym celu musimy go wabic do wielkiego pieca w Khoracie, jedynego miejsca, które jest na tyle gorace, ze moze stopic magiczna rude i z którego nie moze sie teleportowac.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_05"); //Sciany sa równiez wykonane z magicznej rudy, nie ma magii. Bedziesz wabikiem.
	AI_Output(hero, self, "Info_Mod_Andre_Herold_15_06"); //Chcesz, abym poszedl do wielkiego pieca? Mialem raczej plan, zeby nie palic.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_07"); //Prosze pozwolic mi sie tym martwic. Teraz naniesc kostium i napic sie eliksiru.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_08"); //Nastepnie biegna Panstwo do Khoraty i bezposrednio do wielkiego pieca. W miedzyczasie bede tam teleportowal i przygotowywal wszystko.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_09"); //Piec zostanie wylaczony po wejsciu, a ja przygotuje dla Ciebie wyjscie.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_08_10"); //Idz dalej, biegnij po miescie z kostiumem, az robot cie zlapie, przyjedzie po tobie. Do zobaczenia w Khorata.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_PAL_BOT, "Dostalem od Pana Andre' a eliksir predkosci i kostium. Mam na sobie nosic kostium i nosic na mnie robota. Jesli podaza za mna, powinienem jak najszybciej dotrzec do Khoraty i wsiasc bezposrednio do wielkiego pieca. Pan Andre trzyma w tej chwili tam wyjscie dla mnie.");
};

INSTANCE Info_Mod_Andre_Ramirez (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Ramirez_Condition;
	information	= Info_Mod_Andre_Ramirez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Ramirez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_ZuAndre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Ramirez_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_00"); //Co cie do mnie sprowadza?
	AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_01"); //Zlapalem zlodziej próbujacy ukrasc niewinnego mieszkanca tego miasta.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_02"); //Dziekuje Innosowi, jest jeszcze sprawiedliwosc. Odczekaj minute, to Ramirez, lider gangu zlodziei.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_03"); //Jak móglbys go zlapac?
	AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_04"); //Kiedy on wlasnie sie przewrócil, moglem go z tylu obezwladnic.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_05"); //Widze ogien Innosa w twoim sercu, przekonales mnie.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_06"); //Moglibysmy uzyc takiego faceta jak ty. To juz drugie zdarzenie. Druga osoba nazywa sie Attila i jest morderca.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_07"); //Jesli bedziemy nadal tak postepowac, obywatele wkrótce beda mogli spac spokojnie.

	if (Mod_Gilde < 1)
	|| (Mod_Gilde > 3)
	{
		AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_08"); //Czy jestem teraz czlonkiem milicji?
		AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_09"); //Mozesz zrobic wyjatek, ale nie chwalic sie tym, bo oboje bedziemy miec problemy.
		AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_10"); //Widze.
		AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_11"); //Dobrze, oto twoja zbroja.

		CreateInvItems	(self, ItAr_Mil_L, 1);
		B_GiveInvItems	(self, hero, ItAr_Mil_L, 1);
	};

	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_08_12"); //Oto Twoja laska dla Ramirez.

	CreateInvItems	(self, ItMi_Gold, 1000);
	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_StartOtherRoutine	(Mod_746_NONE_Ramirez_NW, "KNAST");
	AI_Teleport	(Mod_746_NONE_Ramirez_NW, "NW_CITY_HABOUR_KASERN_NAGUR");

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Lord Andre mysli, ze aresztowalem Ramireza. Jestem teraz czlonkiem milicji. Zobaczmy, czy wszystko dziala tak, jak zaplanowala Cassia.");
};

INSTANCE Info_Mod_Andre_Keller (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Keller_Condition;
	information	= Info_Mod_Andre_Keller_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cokolwiek zrobic?";
};

FUNC INT Info_Mod_Andre_Keller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Ramirez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Keller_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Keller_15_00"); //Cokolwiek zrobic?
	AI_Output(self, hero, "Info_Mod_Andre_Keller_08_01"); //Jestes na czasie. Jeden z dealerów opowiedzial mi o dziwnych rzeczach w moim spiworze.
	AI_Output(self, hero, "Info_Mod_Andre_Keller_08_02"); //W nocy z piwnicy wychodzi kilka dziwnych stworzen.
	AI_Output(self, hero, "Info_Mod_Andre_Keller_08_03"); //Udac sie na dno.
	AI_Output(hero, self, "Info_Mod_Andre_Keller_15_04"); //Zrobie to.

	Log_CreateTopic	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_HANNA, "Z piwnicy Hanny najwyrazniej w nocy zlodziei wyszli kupcy. Pan Andre chce, abym dotarl do dna. Powinienem porozmawiac z Hanna.");
};

INSTANCE Info_Mod_Andre_Hanna (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Hanna_Condition;
	information	= Info_Mod_Andre_Hanna_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem w piwnicy spiacego worka na pieniadze.";
};

FUNC INT Info_Mod_Andre_Hanna_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Keller))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Hanna_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_00"); //Bylem w piwnicy spiacego worka na pieniadze.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_08_01"); //A co znalazles?
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_02"); //W ciemnej dziurze byly tylko szczury, nic wiecej.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_08_03"); //Prawdopodobnie wlasnie tam kupiec marzyl.
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_04"); //Z pewnoscia to zrobil.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_08_05"); //Wszystko w porzadku, oto twoje wynagrodzenie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Andre_Hanna_08_06"); //Pózniej wróc do domu, na razie wszystko jest cicho.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_NewsMilizDead (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_NewsMilizDead_Condition;
	information	= Info_Mod_Andre_NewsMilizDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy w miedzyczasie cos sie wydarzylo?";
};

FUNC INT Info_Mod_Andre_NewsMilizDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Milizangriff))
	&& (Npc_IsDead(Mod_1893_MIL_Miliz_NW))
	&& (Npc_IsDead(Mod_1894_MIL_Miliz_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_NewsMilizDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_00"); //Czy w miedzyczasie cos sie wydarzylo?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_08_01"); //Poniewaz nie moglo byc inaczej, tesknimy za dwiema milicjami, które nie byly tu od jakiegos czasu.
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_08_03"); //Mortis, nasz kowal, powiedzial nam, ze prawdopodobnie Meldor próbuje zamknac jakis biznes chwastów.
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_04"); //Czy nie moge sie tym zajac?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_08_05"); //Wyglada na to, ze jestes tutaj jedynym. W porzadku, oczy pozostana otwarte dla pozostalych dwóch.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_MILIZANGRIFF, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_MELDOR, "Mortis powiedzial Lorda Andre' o handlu kapusta w Meldorze. Powinienem ostrzec Meldora i wymyslic klamstwo, aby go chronic.");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_Meldor (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Meldor_Condition;
	information	= Info_Mod_Andre_Meldor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ogladalem Meldora i przeszukiwalem go, to byl falszywy alarm.";
};

FUNC INT Info_Mod_Andre_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Mortis))
	&& (Mob_HasItems("MORTISTRUHE", ItMi_HerbPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Meldor_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Meldor_15_00"); //Ogladalem Meldora i przeszukiwalem go, to byl falszywy alarm.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_08_01"); //Jak ostatni raz. Mortis równiez staje sie coraz bardziej nierzetelny.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_08_02"); //Jaka jest twoja zaplata za pieklo?

	CreateInvItems	(self, ItMi_Gold, 200);
	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(hero, self, "Info_Mod_Andre_Meldor_15_03"); //Czy moge znalezc cichsze miejsce, moze strzezyc wiezniów?
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_08_04"); //Dlaczego nie, wykonales wiele pracy.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_08_05"); //Mówie straznikowi, jutro bedziesz mógl pilnowac wiezniów.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_Andre_WaitForKnast = Wld_GetDay();

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_RamirezAttilaFlucht (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_RamirezAttilaFlucht_Condition;
	information	= Info_Mod_Andre_RamirezAttilaFlucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_RamirezAttilaFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_RamirezAttilaFlucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_08_00"); //Gdzie byles/as? Gdzie sa zlodzieje? Gdzie jest cale zloto z mojej klatki piersiowej?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_01"); //l--
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_08_02"); //Jestes tak niewiarygodny jak pozostale dwie osoby, które jeszcze nie przyszly. Czekam na dobre wyjasnienie.
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_03"); //Ramirez i Attyla zorganizowali mnie. Kiedy byli na zewnatrz, Ramirez zlamal tulów i walczylem z Attyla.
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_04"); //Potem biegnalem za nimi i stracilem je.
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_08_05"); //Jak to wszystko moglo sie zdarzyc?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_06"); //Nie wiem, to sie stalo tak szybko. Uciekli i podziekowali Mortisowi!
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_08_07"); //Z hipoteka? Pomógl im pomóc?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_08"); //Moze warto przyjrzec sie blizej jego kuzni.
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_08_09"); //I jestem gonna porzadku to teraz. Wróc jutro.

	Mod_Andre_WaitForKnast = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_MortisBadGuy (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_MortisBadGuy_Condition;
	information	= Info_Mod_Andre_MortisBadGuy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_MortisBadGuy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_RamirezAttilaFlucht))
	&& (Mod_Andre_WaitForKnast < Wld_GetDay())
	&& (Npc_HasItems(hero, ItAr_Mil_L) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_MortisBadGuy_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_08_00"); //Masz racje, Mortis mial bagazowa torebke na kapuste ukryta w klatce piersiowej. Prawdopodobnie postawil nas wszystkich na niewlasciwym torze.
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_08_01"); //Bedziemy najwiekszym posmiewiskiem w miescie. Dwóch zbrodniarzy ucieklo przed nami, jeden z naszych wlasnych ludzi nas zdradzil, a cale zloto milicji zniknelo.
	AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_02"); //Nie ma nic, co mozesz z tym zrobic.
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_08_03"); //Co zamierzasz teraz zrobic? Nigdy nie zabiore Cie z powrotem do wiezienia jako straznika.
	
	if (Mod_Gilde < 1)
	|| (Mod_Gilde > 3)
	{
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_04"); //Chcialem oglosic, ze chcialem opuscic miasto. Dlatego wlasnie oddaje prace milicji.
		AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_08_05"); //Czy jestes o tym naprawde pewien?
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_06"); //Zrobilem juz swój umysl.
		AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_08_07"); //Cóz, nigdy nie zapomnij, ze jestes mile widziany, jesli chcesz zaczac.
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_08"); //Bede o tym pamietac.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_09"); //Bede teraz wykonywal swoje inne prace.
	};

	var C_Item itm;
	
	itm = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(itm, ITAR_MIL_L) == TRUE)
	{
		AI_UnequipArmor	(hero);

		AI_EquipBestArmor	(hero);
	};

	Npc_RemoveInvItems	(hero, ItAr_MIL_L, 1);

	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "START");
	B_StartOtherRoutine	(Mod_742_MIL_Mortis_NW, "KNAST");

	AI_Teleport	(Mod_742_MIL_Mortis_NW, "NW_CITY_HABOUR_KASERN_HALVOR");
};

INSTANCE Info_Mod_Andre_Rangar (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Rangar_Condition;
	information	= Info_Mod_Andre_Rangar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sa pogloski o milicji.";
};

FUNC INT Info_Mod_Andre_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (Mod_DensGeruechtVerbreitet == TRUE)
	&& ((Mob_HasItems("RANGARSTRUHE", ItMi_Joint) > 0)
	|| (Mob_HasItems("RANGARSTRUHE", ItMi_HerbPaket) > 0))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_00"); //Sa pogloski o milicji.
	AI_Output(self, hero, "Info_Mod_Andre_Rangar_08_01"); //Co do kogo?
	AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_02"); //Rangar. Obywatele mówia sobie nawzajem wiele róznych rzeczy.

	if (Mob_HasItems("RANGARSTRUHE", ItMi_HerbPaket) > 0)
	{
		AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_03"); //Poza tym widzialem go, jak w jego pien wkladal paczke bagna.

		B_GivePlayerXP	(150);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_04"); //Poza tym widzialem, jak w jego klatke piersiowa wkladal bagniste lodygi.

		B_GivePlayerXP	(100);
	};

	AI_Output(self, hero, "Info_Mod_Andre_Rangar_08_05"); //Natychmiast to sprawdze. Dziekuje za powiadomienie mnie.
	AI_Output(self, hero, "Info_Mod_Andre_Rangar_08_06"); //Oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Pan Andre przeanalizuje sprawe wraz z Rangarem. Powinienem mu do tej pory powiedziec.");
};

INSTANCE Info_Mod_Andre_Ole (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Ole_Condition;
	information	= Info_Mod_Andre_Ole_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce Ci przekazac ten list od Olego Gwardii Królewskiej.";
};

FUNC INT Info_Mod_Andre_Ole_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ole_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_OleForAndre) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Ole_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Ole_15_00"); //Chce Ci przekazac ten list od Olego Gwardii Królewskiej.

	B_GiveInvItems	(hero, self, ItWr_OleForAndre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Ole_08_01"); //Wszystko w porzadku, zobaczmy.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Andre_Ole_08_02"); //Tell Ole, dopóki nie moze mi zagwarantowac rudy, nie dostaje zadnych paladynów jako dodatkowych mezczyzn.
	AI_Output(self, hero, "Info_Mod_Andre_Ole_08_03"); //Powinien przyniesc mi co najmniej piecdziesiat kawalków rudy, jako dowód na to, ze znowu wydobywa rude, wtedy mozemy mówic o dodatkowych ludziach.
	AI_Output(self, hero, "Info_Mod_Andre_Ole_08_04"); //Idz i powiedz mu to.

	B_LogEntry	(TOPIC_MOD_KG_OLEBRIEF, "Lord Andre nie chce wysylac zbrojen do straznika, dopóki nie bedzie gwarancji na rude. Jestem pewien, ze Ole nie spodoba sie.");
};

INSTANCE Info_Mod_Andre_Knast (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Knast_Condition;
	information	= Info_Mod_Andre_Knast_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Knast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Engor_ToHagen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Knast_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast_08_00"); //Zostales zgloszony jako zbrodni przez szanowanego obywatela. Co masz do powiedzenia na temat tego oskarzenia?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Czy sa jakies dowody przeciwko mnie?", Info_Mod_Andre_Knast_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Nie jestem przestepca.", Info_Mod_Andre_Knast_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Ten obywatel jest zdradzajacy.", Info_Mod_Andre_Knast_A);
};

FUNC VOID Info_Mod_Andre_Knast_Ok ()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast_Ok_08_00"); //Sprawdze to. Dziekuje za odpowiedzi.
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "KASERNE");
};

FUNC VOID Info_Mod_Andre_Knast_C ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_15_00"); //Czy sa jakies dowody przeciwko mnie?
	AI_Output(self, hero, "Info_Mod_Andre_Knast_C_08_01"); //Nietrudno jest uzyskac potwierdzenie, ze jestes z kolonii karnej, a czlonkowie Starego Obozu nadal sa jedynie powaznymi biznesmenami, wiec jestes weryfikowalnym czlonkiem organizacji przestepczej.
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Wyslal mnie Alissandro, znajomy Pana Hagena.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo nosi bron demonicznego rycerza.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_C_B ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_B_15_00"); //Wyslal mnie Alissandro, znajomy Pana Hagena.
	
	Info_Mod_Andre_Knast_Ok();
};

FUNC VOID Info_Mod_Andre_Knast_C_A ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_A_15_00"); //Bodo nosi bron demonicznego rycerza.
	
	Info_Mod_Andre_Knast_Ok();
};

FUNC VOID Info_Mod_Andre_Knast_B ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_B_15_00"); //Nie jestem przestepca.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_B_08_01"); //Czy posiadasz jakies dowody na to, czy tez zarzuty te sa przenoszone droga powietrzna?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Nie jestem jednak przestepca, w przeciwienstwie do Bodo.", Info_Mod_Andre_Knast_AB_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Wyslal mnie Alissandro, znajomy Pana Hagena.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo nosi bron demonicznego rycerza.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_A ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_A_15_00"); //Ten obywatel jest zdradzajacy.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_A_08_01"); //Czy posiadasz jakies dowody na to, czy tez zarzuty te sa przenoszone droga powietrzna?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Nie jestem jednak przestepca, w przeciwienstwie do Bodo.", Info_Mod_Andre_Knast_AB_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Wyslal mnie Alissandro, znajomy Pana Hagena.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo nosi bron demonicznego rycerza.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_AB_C ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_AB_C_15_00"); //Nie jestem jednak przestepca, w przeciwienstwie do Bodo.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_AB_C_08_01"); //Czy moze pan to udowodnic?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Wyslal mnie Alissandro, znajomy Pana Hagena.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo nosi bron demonicznego rycerza.", Info_Mod_Andre_Knast_C_A);
};

INSTANCE Info_Mod_Andre_Knast2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Knast2_Condition;
	information	= Info_Mod_Andre_Knast2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Knast2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Knast))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_PRISON_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Knast2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast2_08_00"); //Sprawdzilismy wasze wypowiedzi i wydaja sie one poprawne. Przepraszam za spowodowane przez nas niedogodnosci.
	AI_Output(self, hero, "Info_Mod_Andre_Knast2_08_01"); //Pan Hagen przyjmie cie i chcialbym zauwazyc, ze obywatel Bodo opuscil miasto.

	if (Wld_IsMobAvailable(self,"LEVER"))
	{
		AI_UseMob (self, "LEVER", 1);
	};

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Powiedzialem mu wszystko i zostalem zwolniony. Pan Hagen zobaczy mnie teraz.");

	B_StartOtherRoutine	(Mod_516_SNOV_Bodo_NW, "TOT");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_Steinmonster (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Steinmonster_Condition;
	information	= Info_Mod_Andre_Steinmonster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto piecdziesiat kawalków rudy do udowodnienia.";
};

FUNC INT Info_Mod_Andre_Steinmonster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_SpecialErzguardian))
	&& (Npc_HasItems(hero, ItMi_ErzPaketAndre) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Steinmonster_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster_15_00"); //Oto piecdziesiat kawalków rudy do udowodnienia. A co z kopia zapasowa teraz?

	B_GiveInvItems	(hero, self, ItMi_ErzPaketAndre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_08_01"); //Ach, bardzo milo. Mysle, ze warto zainwestowac w kopalnie.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_08_02"); //Niedawno przybyl Paladin Trent z Wysp Poludniowych. Mysle, ze ma racje do pracy.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_08_03"); //Niestety, nie skontaktowal sie jeszcze ze mna. Powinienes go najpierw szukac na nabrzezu.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_08_04"); //Przynies go do mnie po tym, ja to z nim zalatwie.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster_15_05"); //W porzadku, bede szukal go.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Paladin Trent ma mi pomóc w mojej kopalni, ale jeszcze nie pokazal sie Panu Androwi. Powiedziano mi, ze powinienem szukac innych paladynów na nabrzezu.");
};

INSTANCE Info_Mod_Andre_Steinmonster2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Steinmonster2_Condition;
	information	= Info_Mod_Andre_Steinmonster2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Steinmonster2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_Shadowbeast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Steinmonster2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_08_00"); //No cóz, czy go znalazles?
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_01"); //Znalazlem go, ale on juz wyjechal do Minentala.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_08_02"); //Jak? Nie rozumiem, mial sie najpierw skontaktowac ze mna.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_03"); //Najwyrazniej chcial raczej dzialac niz mówic.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_08_04"); //Co przychodzi mu do glowy, aby nie wypelniac rozkazu przelozonego? Powiedz mu natychmiast skontaktowac sie ze mna, w przeciwnym razie jestem zmuszony go zdemotowac.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_08_05"); //Wiem, ze otrzymal on wiele nagród w Myrtanie, ale nie moze sie zachowywac wobec mnie.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_06"); //Nie sadzisz, ze troche za bardzo reagujesz?
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_08_07"); //W ogóle nie. Musi przestrzegac moich zasad. Teraz udaj sie do niego i dostarcz go.
};

INSTANCE Info_Mod_Andre_Trent (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Trent_Condition;
	information	= Info_Mod_Andre_Trent_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Trent_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_00"); //Co myslales o przeksztalceniu jednej z paladynów w wrak psychiczny?
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_01"); //Zostal przeklety czarna ruda, jak ktos mógl wiedziec?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_02"); //Poprzez wstepne spotkanie ze mna!
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_03"); //Ale cóz, dostales moja kopalnie do pracy i nie zostales przydzielony do mnie na te misje, ale do Hymira.
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_04"); //Paladyn Trent musi jednak poniesc konsekwencje.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_05"); //Jakie sa konsekwencje?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_06"); //No cóz, ja mam nad nim pelne polecenie i dlatego prowadzi teraz w Minentalu szpiegostwo, aby dowiedziec sie, co to jest nastepny ruch Orków.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_07"); //A gdzie dokladnie maja szpiegowac?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_08"); //W poblizu starego fortu, nad duzym jeziorem, nad którym znajduje sie stara wieza demoniczna. Orkiestry zdaja sie budowac tam swego rodzaju miejsce rytualu.
	AI_Output(self, hero, "Info_Mod_Andre_Trent_08_09"); //Jesli chcesz, mozesz je poprzec. Równiez dzieki temu mozna odzyskac moje zaufanie.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_10"); //Jezeli musze.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_11"); //(samo siebie) Complain do mnie, ale wyslij wrak psychiczny na srodek rejonu orka.....

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Mialem pomagac Trentowi z jego szpiegowska misja w Minentalu. Powinien byc gdzies w poblizu starego fortu na starej wiezy Xardasa.");
};

INSTANCE Info_Mod_Andre_Trent2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Trent2_Condition;
	information	= Info_Mod_Andre_Trent2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Trent2_Condition()
{
	if (Mod_KG_OrkTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Trent2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_00"); //Minelo juz kilka dni, wiec co nowego z orków?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_01"); //Orki w jaskini sa martwe. Prowadzil ich szaman z jakims nieprzyjemnym rzeczownikiem.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_02"); //Brzmi to dobrze, gdy zadanie zostalo wykonane. Gdzie sa inni?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_03"); //Oni wszyscy umarli! Trzech z nich juz nie zylo, a reszta zostala zabita magia szamana.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_04"); //A co z Paladyniem?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_05"); //Nie byl tam przez caly czas walki i nie zwracal uwagi w odpowiednim momencie. Moze najpierw powinien byl odzyskac zdrowie.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_06"); //Cóz, mimo wszystko, to dobra wiadomosc, ze orki nie zyja.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_07"); //Tutaj 500 zlotych monet mialo zrekompensowac Ci straty.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_Trent2_08_08"); //Wkrótce przejmiemy opuszczona kopalnie wraz z naszymi narodami, ale oczywiscie nadal otrzymasz swój udzial.

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Andre_Mario (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Mario_Condition;
	information	= Info_Mod_Andre_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Mario_Condition()
{
	if (Mod_Mario == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Mario_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_00"); //Musimy powaznie porozmawiac o waszej roli w zniknieciu Mario.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_01"); //Co chcesz, abym o tym wiedzial?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_02"); //Byles jednym z jego najblizszych powierników. Czy powiedzial ci cos przed ucieczka?
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_03"); //Nie, nie pamietam.
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_04"); //Uwolnil przestepce od wiezienia, a nastepnie uciekl niezauwazony.
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_05"); //Zaden straznik milicji w calym miescie nie pamieta jego obecnosci.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_06"); //Moze wiec poszedl tajemnicza sciezka? Lódz na morzu?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_07"); //Nie wiem, panie posle. Ale teraz wzmocnie swoja kontrole nad ta droga.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_08"); //Czy to zatem jest?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_08_09"); //Tak, wyjdz stad.
};

INSTANCE Info_Mod_Andre_TomKraut (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut_Condition;
	information	= Info_Mod_Andre_TomKraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialem kupic Tomka.";
};

FUNC INT Info_Mod_Andre_TomKraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Krautquest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut_15_00"); //Chcialem kupic Tomka.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_08_01"); //Kup ten przestepca? W tym przypadku nie jest tak latwo sobie poradzic.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_08_02"); //Byly juz pewne dowody na to, ze jest zaangazowany w chwasty w obrebie naszych murów miejskich..... ale nie wystarczy, aby go aresztowac.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_08_03"); //Rosliny chwastów, które chcial przemycac tutaj, sa wreszcie namacalnym dowodem jego zaangazowania w dzialalnosc przestepcza.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_08_04"); //Swoja kare odbierze tutaj, dopóki nie stanie sie czarny. I teraz juz wiecej mnie nie martwcie.

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Cóz, to nie wyglada dobrze. Andre jest zdecydowany trzymac Tomka w wiezieniu. Powinienem mu wyjasnic sytuacje......");
};

INSTANCE Info_Mod_Andre_TomKraut2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut2_Condition;
	information	= Info_Mod_Andre_TomKraut2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_TomKraut))
	&& (Mob_HasItems("ASSERVATENTRUHE", ItPl_SwampHerb) == 0)
	&& (Mob_HasItems("ASSERVATENTRUHE", ItPl_Weed) == 3)
	&& (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_08_00"); //Hej, co ty tu robisz?
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_01"); //Watpie w wine Tomka.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_08_02"); //Naprawde sadze, ze na razie musze pana wyrzucic z tych przeslanek.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_03"); //Tomek powiedzial, ze wlasnie zbiera kilka chwastów, które wygladaja jak chwast bagienny.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_04"); //Byl jednak tak zastraszony, ze nie odwazyl sie to powiedziec.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_08_05"); //(wrestling over) The.... to jest wysokosc.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_06"); //Jestem powazny..... Moze zielarz móglby ci powiedziec.....
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_08_07"); //(dostarczajace zlosc) Wszystkie sluszne. Dostane kogos.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_08_08"); //Chce jednak panstwu powiedziec, ze pojawia sie reperkusje. Teraz wyjdz z tego miejsca!

	AI_StopProcessInfos	(self);

	AI_GotoWP	(hero, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};

FUNC VOID Info_Mod_Andre_TomKraut5()
{
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut5_15_00"); //Wiec Tomek wychodzi teraz?
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut5_08_01"); //Tak, tak, tak, wkrótce. Pozostalo tylko kilka formalnosci...... i uporzadkowac cos z bramistrzami.....

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Tomek powinien wkrótce wyjsc.");

	B_GivePlayerXP	(400);

	Mod_SenyanTom_Kraut = 3;

	Mod_SenyanTom_Kraut_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_TomKraut3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut3_Condition;
	information	= Info_Mod_Andre_TomKraut3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut3_Condition()
{
	if (Mod_SenyanTom_Kraut == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut3_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut3_08_00"); //(laying) Uh........ wydaje sie, ze doszlo tu do niefortunnego nieporozumienia.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut3_08_01"); //Rzekomy chwast marshowy..... byl to wlasciwie zwykly chwast.

	Info_Mod_Andre_TomKraut5();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_TomKraut4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut4_Condition;
	information	= Info_Mod_Andre_TomKraut4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut4_Condition()
{
	if (Mod_SenyanTom_Kraut_Wache_01 == 1)
	&& (Mod_SenyanTom_Kraut_Wache_02 == 1)
	&& (Mod_SenyanTom_Kraut_Mika == 1)
	&& (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut4_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_08_00"); //Sam w sobie Hmm, dziwny, ten z brama.... Powinienem zobaczyc, czy w klatce piersiowej jest jakies ziolo.

	AI_UseMob	(self, "CHESTBIG", 1);
	AI_UseMob	(self, "CHESTBIG", -1);

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_08_01"); //(sama w sobie) Ale cos takiego tez...... brak ziól.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut4_15_02"); //Wiec niewinny Toma?
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_08_03"); //(z zaskoczeniem) Um..... tak wydaje sie, ze doszlo do pewnych nieporozumien.

	Info_Mod_Andre_TomKraut5();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_HaradLehrling (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling_Condition;
	information	= Info_Mod_Andre_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam prosbe o wystapienie w sprawie Harada.";
};

FUNC INT Info_Mod_Andre_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling_15_00"); //Mam prosbe o wystapienie w sprawie Harada.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_08_01"); //Potem mówcie!
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling_15_02"); //Powiedz Haradowi, aby wyszedl na wolnosc. Nie popelnil zadnego przestepstwa.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_08_03"); //Gdyby tylko tak bylo!
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_08_04"); //Nie mozemy sobie pozwolic na to, aby nasz jedyny kowal w miescie zaopatrywal naszych konkurentów. To nie jest ladne, ale nie mozna tego zmienic.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_08_05"); //A poniewaz on nie wykazuje zrozumienia, musimy mu przynajmniej zapobiec dalszemu szkodzeniu nam.
};

INSTANCE Info_Mod_Andre_HaradLehrling2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling2_Condition;
	information	= Info_Mod_Andre_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdyby znowu za paladynów wykuwal.... Czy go uwolnilbys?";
};

FUNC INT Info_Mod_Andre_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling2_15_00"); //Gdyby znowu za paladynów wykuwal.... Czy go uwolnilbys?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_08_01"); //Jesli obiecal, trzeba by sie nad tym zastanowic.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_08_02"); //W koncu pilnie potrzebujemy nowych dostaw broni.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling2_15_03"); //Zobacze, co moge zrobic.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_08_04"); //Zycze powodzenia.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Musze przekonac Harada do pracy dla Paladynów. Tylko wtedy go zwolnia.");
};

INSTANCE Info_Mod_Andre_HaradLehrling3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling3_Condition;
	information	= Info_Mod_Andre_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oderwalem sie od Harada i teraz pracuje na wlasny rachunek.";
};

FUNC INT Info_Mod_Andre_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest9))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling3_15_00"); //Oderwalem sie od Harada i teraz pracuje na wlasny rachunek.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling3_15_01"); //Czy moge pomóc milicji i paladynom?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_08_02"); //To dobra wiadomosc. Tak, tak naprawde wlasnie teraz mamy ogromne potrzeby.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_08_03"); //Miecze milicjantów i paladynów mozna bylo prawie wszystkie wymieniac na nowsze.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_08_04"); //Niniejszym powierzam Panu wykonanie siedmiu szlachetnych mieczy, pieciu szlachetnych szlachetnych dlugopisów i trzech rubinowych ostrzy.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_08_05"); //Mozesz przywiezc mi bron zaraz po jej przygotowaniu.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_SUCCESS);
};

INSTANCE Info_Mod_Andre_HaradLehrling4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling4_Condition;
	information	= Info_Mod_Andre_HaradLehrling4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu dostawa ramion.";
};

FUNC INT Info_Mod_Andre_HaradLehrling4_Condition()
{
	var int ES;
	ES = Npc_HasItems(hero, ItMw_Schwert1)+Npc_HasItems(hero, ItMw_Schwert1_Bonus)+Npc_HasItems(hero, ItMw_Schwert1_Stark)+Npc_HasItems(hero, ItMw_Schwert1_StarkBonus);

	if (ES < 7)
	{
		return 0;
	};

	var int EL;
	EL = Npc_HasItems(hero, ItMw_Schwert4)+Npc_HasItems(hero, ItMw_Schwert4_Bonus)+Npc_HasItems(hero, ItMw_Schwert4_Stark)+Npc_HasItems(hero, ItMw_Schwert4_StarkBonus);

	if (ES < 5)
	{
		return 0;
	};

	var int RK;
	RK = Npc_HasItems(hero, ItMw_Rubinklinge)+Npc_HasItems(hero, ItMw_Rubinklinge_Bonus)+Npc_HasItems(hero, ItMw_Rubinklinge_Stark)+Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus);

	if (ES < 3)
	{
		return 0;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling3))
	{
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_Bonus, Npc_HasItems(hero, ItMw_Schwert1_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_Stark));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_Stark, Npc_HasItems(hero, ItMw_Schwert1_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_StarkBonus, Npc_HasItems(hero, ItMw_Schwert1_StarkBonus));
			};
		};

		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_Bonus, Npc_HasItems(hero, ItMw_Schwert4_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_Stark));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_Stark, Npc_HasItems(hero, ItMw_Schwert4_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_StarkBonus, Npc_HasItems(hero, ItMw_Schwert4_StarkBonus));
			};
		};

		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Bonus, Npc_HasItems(hero, ItMw_Rubinklinge_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_Stark));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Stark, Npc_HasItems(hero, ItMw_Rubinklinge_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_StarkBonus, Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus));
			};
		};

		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling4_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling4_15_00"); //Tu dostawa ramion.

	B_ShowGivenThings	("7 szlachetnych mieczy, 5 szlachetnych szlachetnych mieczy i 3 rubinowe ostrza.");

	Npc_RemoveInvItems	(hero, ItMw_Schwert1, 7);
	Npc_RemoveInvItems	(hero, ItMw_Schwert4, 5);
	Npc_RemoveInvItems	(hero, ItMw_Rubinklinge, 3);

	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_08_01"); //Czysta praca. Twoje umiejetnosci robia wrazenie.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling4_15_02"); //Czy jest jeszcze cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_08_03"); //Nie teraz. Jesli cos sie pojawi, to powiem ci jeszcze raz.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_08_04"); //Jeszcze raz dziekuje za wspólprace.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Pan Andre polecil mi, abym wykul siedem szlachetnych mieczy, piec szlachetnych lingwistów i trzy rubinowe ostrza. Do pracy!");

	B_GivePlayerXP	(1000);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Andre_Kompass (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kompass_Condition;
	information	= Info_Mod_Andre_Kompass_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem ten zloty kompas.";
};

FUNC INT Info_Mod_Andre_Kompass_Condition()
{
	if (Npc_HasItems(hero, ItMi_GoldKompass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kompass_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kompass_15_00"); //Znalazlem ten zloty kompas.

	B_GiveInvItems	(hero, self, ItMi_GoldKompass, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kompass_08_01"); //Pozwólcie mi widziec..... To jest kompas Esmeraldy. Doskonaly! Hmm, i zlodziej?
	AI_Output(hero, self, "Info_Mod_Andre_Kompass_15_02"); //Placil za to zyciem.
	AI_Output(self, hero, "Info_Mod_Andre_Kompass_08_03"); //To byla kara za ten czyn. Zarobiles nagrode i nagrode za odzyskanie kompasu.
	AI_Output(self, hero, "Info_Mod_Andre_Kompass_08_04"); //W imieniu Paladynów chcialbym panstwu równiez podziekowac. Jestes wzorem do nasladowania dla kazdego obywatela tego miasta.

	B_GiveInvItems	(self, hero, ItMi_Gold, 600);

	B_GivePlayerXP	(800);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_HEROLD_KOMPASS, LOG_SUCCESS);
};

var int Andre_LastPetzCounter;
var int Andre_LastPetzCrime;

INSTANCE Info_Mod_Andre_PMSchulden (C_INFO)
{
	npc         	= Mod_540_PAL_Andre_NW;
	nr          	= 1;
	condition   	= Info_Mod_Andre_PMSchulden_Condition;
	information 	= Info_Mod_Andre_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Andre_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Andre_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Andre_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Andre_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Andre_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Andre_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Andre_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Andre_LastPetzCounter);
		
			if (diff > 0)
			{
				Andre_Schulden = Andre_Schulden + (diff * 50);
			};
		
			if (Andre_Schulden > 1000)	{	Andre_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Andre_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Andre_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_05"); //Pojawily sie nowe rzeczy.
		
		if (Andre_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Andre_LastPetzCrime == CRIME_THEFT)
		|| ( (Andre_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Andre_LastPetzCrime == CRIME_ATTACK)
		|| ( (Andre_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Andre_Schulden			= 0;
			Andre_LastPetzCounter 	= 0;
			Andre_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Andre_Schulden);
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_08_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
		Info_AddChoice		(Info_Mod_Andre_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Andre_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Andre_PMSchulden,"Ile to znów bylo?",Info_Mod_Andre_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Andre_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Andre_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Andre_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Andre_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Andre_Schulden);

	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_AddChoice		(Info_Mod_Andre_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Andre_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Andre_PMSchulden,"Ile to znów bylo?",Info_Mod_Andre_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Andre_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Andre_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Andre_PETZMASTER   (C_INFO)
{
	npc         	= Mod_540_PAL_Andre_NW;
	nr          	= 1;
	condition   	= Info_Mod_Andre_PETZMASTER_Condition;
	information 	= Info_Mod_Andre_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Andre_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Andre_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Andre_PETZMASTER_Info()
{
	Andre_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Andre noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_00"); //Musisz byc nowym facetem, który spowodowal klopoty w tym miescie.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_02"); //Morderstwo jest powaznym wykroczeniem!

		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Andre_Schulden = Andre_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_04"); //Straznicy maja rozkaz osadzania kazdego mordercy na miejscu.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_05"); //Wiekszosc mieszkanców nie toleruje zabójcy w miescie!
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy. Jestesmy na wojnie i potrzebujemy kazdego czlowieka, którego mozemy dostac.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_11"); //Nie bede tolerowal takich zachowan w miescie!
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_13"); //Jesli walczysz z riffem w porcie, to jest jedna rzecz....
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_14"); //Ale jesli zaatakujecie obywateli lub zolnierzy króla, bede musial cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_08_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Andre_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_15_21"); //Ile?
	
	if (Andre_Schulden > 1000)	{	Andre_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Andre_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_AddChoice		(Info_Mod_Andre_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Andre_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Andre_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Andre_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Andre_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Andre_Schulden);
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayNow_08_01"); //Dobrze! Doloze wszelkich staran, aby wszyscy w miescie dowiedzieli sie o tym - wiec Twoja reputacja zostanie w rozsadny sposób przywrócona.

	B_GrantAbsolution (LOC_CITY);
	
	Andre_Schulden			= 0;
	Andre_LastPetzCounter 	= 0;
	Andre_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Andre_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayLater_08_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayLater_08_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Andre_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Andre_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Andre_Kopfgeld (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kopfgeld_Condition;
	information	= Info_Mod_Andre_Kopfgeld_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce zbierac pieniadze dla przestepcy.";
};

FUNC INT Info_Mod_Andre_Kopfgeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_15_00"); //Chce zbierac pieniadze dla przestepcy.

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Z powrotem.", Info_Mod_Andre_Kopfgeld_Zurueck);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Hi))
	&& (Mod_Tom_Boese	==	TRUE)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Tomek próbuje ostrzec przyjaciela przed oddzialem milicji.", Info_Mod_Andre_Kopfgeld_Tom);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& (Nagur_KillAkahasch == TRUE)
	&& (!Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Nagur chce, aby nowicjusz Akahash zmarl.", Info_Mod_Andre_Kopfgeld_Nagur);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Meldor_PaketSicher))
	&& (Mob_HasItems("CHEST_ANDRE_WAREHOUSE_PACKET", ItMi_HerbPaket) == 0)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Meldor ma bagno, które sprzedaje nielegalnie.", Info_Mod_Andre_Kopfgeld_Meldor);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_HabBeweise))
	&& (Npc_HasItems(hero, ItWr_AL_GebrandtDokumente) == 1)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Gerbrandt, Valentino, Cornelius i Fernando sa brudne.", Info_Mod_Andre_Kopfgeld_Gerbrandt);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Kardif_KnowsRukhar))
	&& (Npc_HasItems(hero, ItWr_Rukhar_Wacholder) == 1)
	&& (Mod_KnowsRukharWacholder == 5)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Kardif nakazal Rukharowi krasc ladunek jalowca z Coragon.", Info_Mod_Andre_Kopfgeld_Kardif);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Próbuje zdyskredytowac Rangara.", Info_Mod_Andre_Kopfgeld_Den);
	};
	if (Mod_WilfriedsQuest == 7)
	&& (Npc_HasItems(hero, ItWr_WilfriedsListe) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Obywatel Wilfried byl zdradzajacy.", Info_Mod_Andre_Kopfgeld_Wilfried);
	};
	if (Nagur_KillAkahasch == 6)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Cardif pomógl Nagurowi i jego gangowi postawic mi pulapke.", Info_Mod_Andre_Kopfgeld_Kardif2);
	};
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Zurueck()
{
	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Tom()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Tom_15_00"); //Tomek próbuje ostrzec przyjaciela przed oddzialem milicji.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Tom_08_01"); //Ciesze sie, ze powiedziales mi. Oto Twoja nagroda.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_967_BDT_Tom_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_967_BDT_Tom_NW, "GEFANGEN");

	Mod_Tom_Boese = FALSE;

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "Ratuje Tomasza do Pana Andre' a.");
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Nagur()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Nagur_15_00"); //Nagur chce, aby nowicjusz Akahash zmarl i wyslal morderce kontraktowego.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Nagur_08_01"); //Wiemy, jak temu zapobiec. Dziekujemy za pomoc.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_743_NONE_Nagur_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_743_NONE_Nagur_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "Rzucilem sie w góre do Pana Andre' a.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Nagur_KillAkahasch = 2;

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Meldor()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Meldor_15_00"); //Meldor ma bagno, które sprzedaje nielegalnie.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Meldor_08_01"); //Masz jakies dowody?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Meldor_15_02"); //Chcial, zebym zniknal ten pakiet chwastów bagiennych.

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Meldor_08_03"); //To wystarczy. Oto Twoja nagroda.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	Mod_MeldorVerpfiffen = 1;

	AI_Teleport	(Mod_597_NONE_Meldor_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_597_NONE_Meldor_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_MELDOR_PAKET, "Wypedzilem Meldora do Pana Andre' a.");
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Gerbrandt()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Gerbrandt_15_00"); //Gerbrandt, Valentino, Cornelius i Fernando sa brudne. Przynioslem dowód.

	B_GiveInvItems	(hero, self, ItWr_AL_GebrandtDokumente, 1);
	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Gerbrandt_08_01"); //Tak naprawde natychmiast je zatrzymamy.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Gerbrandt_08_02"); //Oto Twoja nagroda.

	B_GiveInvITems	(self, hero, ItMi_Gold, 300);

	B_GivePlayerXP	(300);

	AI_Teleport	(Mod_576_NONE_Fernando_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_576_NONE_Fernando_NW, "GEFANGEN");

	AI_Teleport	(Mod_578_NONE_Gerbrandt_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_578_NONE_Gerbrandt_NW, "GEFANGEN");

	AI_Teleport	(Mod_754_NONE_Valentino_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Pan Andre aresztowal wszystkich czlonków gangu. Teraz powinienem porozmawiac z Diego.");

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 2);

	Mod_AL_Gebrandt_Gefangen = TRUE;

	Mod_AlvaresAndre_Taeter = 1;
	
	B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "DIEGO");
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Kardif()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif_15_00"); //Kardif nakazal Rukharowi krasc ladunek jalowca z Coragon.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif_08_01"); //Czy posiadasz dowód oskarzenia?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif_15_02"); //Tutaj Rukhar mial z nim ten list.

	B_GiveInvItems	(hero, self, ItWr_Rukhar_Wacholder, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif_08_03"); //To prawda, zrobimy aresztowanie. Oto Twoja laska.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_590_NONE_Kardif_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_590_NONE_Kardif_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Wiezienie w areszcie Cardifa. Teraz powinienem udac sie do Coragon i powiedziec mu o tym.");

	Mod_KnowsRukharWacholder = 6;

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Kardif2()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_00"); //Cardif pomógl Nagurowi i jego gangowi postawic mi pulapke.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_01"); //Nagur mial juz nowicjusza Akahascha na sumieniu i moglem tylko z trudem oprzec sie mojemu zyciu.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_02"); //Co? Gdzie jest teraz przestepca?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_03"); //Nagur balagan z niewlasciwego faceta. Nie bedzie on juz wiecej sprawial klopotów.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_04"); //To sprawia, ze czuje sie lepiej. Mialem przeczucie, ze nie byl to dobry pomysl, zeby go wypuscic..... po odbyciu kary.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_05"); //Kardif wspólpracuje równiez z przemytnikami, którzy ukrywaja swoje rzeczy w skrzyniach i beczkach w dzielnicy portowej.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_06"); //Tak wlasnie jest. Moi mezczyzni natychmiast przeszukaja wszystkie pola. Ten przestepca kardio otrzyma sprawiedliwa kare.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_07"); //W kazdym razie pomógles w tym miescie powaznie uderzac w zbrodnie.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_08"); //Masz prawo do wiekszej nagrody z naszego miejskiego skarbu.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_08_09"); //Innos bedzie Ci towarzyszyc w kolejnych krokach.

	AI_Teleport	(Mod_590_NONE_Kardif_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_590_NONE_Kardif_NW, "GEFANGEN");

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;

	Nagur_KillAkahasch = 7;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Den()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Den_15_00"); //Próbuje zdyskredytowac Rangara. On wydaje mu sie zazdrosny.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_08_01"); //Gosc milicji?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Den_15_02"); //Tak.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_08_03"); //Nie toleruje takich zachowan w milicji. Wyrzuce go.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_08_04"); //Oto mala nagroda dla Ciebie.

	B_GiveInvITems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(Mod_969_MIL_Den_NW, "NOMILIZ");

	AI_UnequipArmor	(Mod_969_MIL_Den_NW);

	Mod_DenVerpfiffen = 1;

	Npc_RemoveInvItems	(Mod_969_MIL_Den_NW, ItAr_Mil_L, 1);
	CreateInvItems	(Mod_969_MIL_Den_NW, ItAr_Bau_L, 1);
	AI_EquipBestArmor	(Mod_969_MIL_Den_NW);

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Rzucilem go Panu Andre' owi.");
	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;

	CurrentNQ += 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Wilfried()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_00"); //Obywatel Wilfried byl zdradzajacy.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_08_01"); //Czy?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_02"); //Puscilem go w dól. To byla samoobrona.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_08_03"); //Masz dowody?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_04"); //Tak, ja to mam.

	Npc_RemoveInvItems	(hero, ItWr_WilfriedsListe, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 500);

	B_ShowGivenThings("Wykaz przekazanych zlota i 500 sztuk");

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_08_05"); //(niezmotywowane) Gratulacje. Wykonal pan wspaniala prace.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_06"); //Czy dostaje kolejna nagrode?
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_08_07"); //Nie ode mnie. Zapytaj jednak ofiary.

	B_GivePlayerXP	(300);

	Mod_WilfriedsQuest = 8;

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_SUCCESS);

	Mod_AlvaresAndre_Taeter = 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Andre_Pickpocket (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Pickpocket_Condition;
	information	= Info_Mod_Andre_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Andre_Pickpocket_Condition()
{
	C_Beklauen	(199, ItMi_Gold, 175);
};

FUNC VOID Info_Mod_Andre_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

	Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_BACK, Info_Mod_Andre_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Andre_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Andre_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
};

FUNC VOID Info_Mod_Andre_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Andre_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Andre_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Andre_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Andre_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Andre_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Andre_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Andre_EXIT (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_EXIT_Condition;
	information	= Info_Mod_Andre_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Andre_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andre_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
