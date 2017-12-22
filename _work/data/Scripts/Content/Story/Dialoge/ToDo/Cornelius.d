INSTANCE Info_Mod_Cornelius_Hi (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Hi_Condition;
	information	= Info_Mod_Cornelius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Cornelius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cornelius_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Cornelius_Hi_13_01"); //Jestem Corneliusem, zastepca gubernatora Khorinisa. Co moge dla Ciebie zrobic?
};

INSTANCE Info_Mod_Cornelius_Morgahard (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Morgahard_Condition;
	information	= Info_Mod_Cornelius_Morgahard_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce z panstwem porozmawiac o Morgaharddzie.";
};

FUNC INT Info_Mod_Cornelius_Morgahard_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Morgahard_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_00"); //Chce z panstwem porozmawiac o Morgaharddzie.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_01"); //Nerwowy) A co z nim?
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_02"); //Nie sadze, ze popelnil zbrodnie, która spowodowala wrzucenie go do kolonii.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_03"); //No cóz, moze to prawda, ale teraz jest juz za pózno, byl juz w kolonii.
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_04"); //Wiem to, ale nadal chce, aby byl on oficjalnie niewinny.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_05"); //l-- Mam dowód jego niewinnosci. Zabija mnie jednak, gdybym ci to dal.
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_06"); //Kto Cie zabije?
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_07"); //Chce dzis wieczorem spotkac sie z Panstwem na pustym rynku. Tam mozemy rozmawiac bezpiecznie.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Korneliusz nie moze mówic szczerze. Dzis wieczorem chce mnie spotkac na targowisku.");

	B_StartOtherRoutine	(self, "MARKT");
};

INSTANCE Info_Mod_Cornelius_AtMarkt (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_AtMarkt_Condition;
	information	= Info_Mod_Cornelius_AtMarkt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi wiec, co wiesz.";
};

FUNC INT Info_Mod_Cornelius_AtMarkt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Morgahard))
	&& (Npc_GetDistToWP(self, "NW_CITY_MERCHANT_PATH_29_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_AtMarkt_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_AtMarkt_15_00"); //Powiedz mi wiec, co wiesz.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_01"); //Cóz, w miescie jest tajemnicza grupa zamoznych mieszkanców, którzy maja dosc duzo wladzy.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_02"); //Morgahard byl ciernia u ich boku, poniewaz nie chcial sie do nich przylaczyc i pracowal przeciwko nim.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_03"); //Wiec oni sprowadzili go z zbrodnia i wyslali do kolonii.
	AI_Output(hero, self, "Info_Mod_Cornelius_AtMarkt_15_04"); //Kim sa czlonkowie tej grupy?
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_05"); //Znam tylko jedna osobe i to jest Gerbrandt.

	AI_StopProcessInfos	(self);

	AI_PlayAniBS (self, "T_DEAD", BS_LIE);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Korneliusz mógl mi tylko powiedziec, ze Gerbrandt byl zaangazowany w te sprawe, ale potem zawalil sie.");
};

INSTANCE Info_Mod_Cornelius_Ambient (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient_Condition;
	information	= Info_Mod_Cornelius_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lubisz stanowisko zastepcy dyrektora?";
};

FUNC INT Info_Mod_Cornelius_Ambient_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient_15_00"); //Lubisz stanowisko zastepcy dyrektora?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_01"); //Ten tytul to kpina!
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_02"); //Czekam tylko na nich, aby oficjalnie zatrudnili mnie jako druga pokuszenie dla lorda Hagena.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_03"); //Bo to wszystko, czym jestem. Larius ma troche dolegliwosci? Musze powiedziec panom.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_04"); //Lord Hagen ma zamówienie? Do Lariusa!
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_05"); //Jakze nie mogli sami chodzic po obu pokojach!
};

INSTANCE Info_Mod_Cornelius_Ambient01 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient01_Condition;
	information	= Info_Mod_Cornelius_Ambient01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem pewien, ze wiele z tego, co sie wydarzy.";
};

FUNC INT Info_Mod_Cornelius_Ambient01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Ambient))
	&& (Mod_Cornelius_Overtalk == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient01_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_15_00"); //Jestem pewien, ze wiele z tego, co sie wydarzy.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_13_01"); //Wszystkie informacje poufne.

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);

	Info_AddChoice	(Info_Mod_Cornelius_Ambient01, "Mam dobrze wypelniona torebke.", Info_Mod_Cornelius_Ambient01_B);
	Info_AddChoice	(Info_Mod_Cornelius_Ambient01, "Moge pomóc Panu poprawic panskie stanowisko.", Info_Mod_Cornelius_Ambient01_A);
};

FUNC VOID Info_Mod_Cornelius_Ambient01_B()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_B_15_00"); //Mam dobrze wypelniona torebke.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_B_13_01"); //Nie zrobi ci nic dobrego, mam mój zaszczyt.

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);
};

FUNC VOID Info_Mod_Cornelius_Ambient01_A()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_00"); //Moge pomóc Panu poprawic panskie stanowisko.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_A_13_01"); //W jakim stopniu?

	// Wenn man Lord Hagen geholfen hat

	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_02"); //Moja relacja z panami jest dobra.
		AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_A_13_03"); //W takim przypadku.... pomozesz mi najpierw, a potem z przyjemnoscia odpowiem.

		Mod_Cornelius_Overtalk = 1;

		Log_CreateTopic	(TOPIC_MOD_CORNELIUS_HELP, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_mOD_CORNELIUS_HELP, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_CORNELIUS_HELP, "Zastepca gubernatora, Cornelius, dzieki swoim sluzbom poslanniczym, posiada cenne informacje na temat sytuacji w Khorinis. Aby jednak zaczac mówic, najpierw chce zostac zwolniony z klopotliwych obowiazków. Powinienem o tym porozmawiac z Lorda Hagenem.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_04"); //W tej chwili nic nie moge sobie wyobrazic.
	};

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);
};

INSTANCE Info_Mod_Cornelius_Ambient02 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient02_Condition;
	information	= Info_Mod_Cornelius_Ambient02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Cornelius))
	&& (Mod_Cornelius_Overtalk == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient02_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient02_13_00"); //Co udalo sie panu osiagnac?
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient02_15_01"); //Wyglada na to, ze nie moge Ci pomóc.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient02_13_02"); //Cóz, swietnie! Nie mysl jednak, ze tak wlasnie postepujemy.
};

INSTANCE Info_Mod_Cornelius_Ambient03 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient03_Condition;
	information	= Info_Mod_Cornelius_Ambient03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Cornelius))
	&& (Mod_Cornelius_Overtalk == 4)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient03_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_00"); //Co udalo sie panu osiagnac?
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_01"); //Od teraz jest pan ministrem gospodarki. Zadowolony?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_02"); //Ale powitanie! Nie jest to zle zadanie i w koncu moge uciec od sceptycznych oczu Pana Hagena.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_03"); //Nie czyn niczego glupiego, na to musze odpowiedziec.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_04"); //Nigdy bym o tym nie marzyl.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_05"); //A co z powrotem?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_06"); //Pikantne wiesci?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_07"); //Z moich zródel wiem, ze Lord Hagen nie ma juz pelnego zaufania Króla.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_08"); //Mówi sie, ze wyslal juz delegacje do strajku we wlasciwym momencie i pozbawil Pana Hagena wladzy.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_09"); //Wtedy i tak nie bedzie sie tu nudzic.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_10"); //Zalózcie swój tylek.

	B_GivePlayerXP	(50);

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_CORNELIUS_HELP, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WIRTSCHAFT");
};

INSTANCE Info_Mod_Cornelius_Ambient04 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient04_Condition;
	information	= Info_Mod_Cornelius_Ambient04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Ambient03))
	&& (Mod_Cornelius_Overtalk == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient04_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_00"); //Zamrozic! Nikt nie przychodzi tu juz teraz!
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_01"); //Co wydarzylo sie tutaj w piekle?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_02"); //Lord Hagen jest w areszcie! Nie bede juz dluzej tolerowal jego panowania.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_03"); //Wiec co teraz robisz?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_04"); //Dobry dzentelmen kryje sie tam z ostatnim zespolem lojalistów. Teraz gang bedzie umartwiony na smierc glodowa, az do momentu poddania sie.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_05"); //Wiec zawiódles mnie w koncu.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_06"); //W przeciwnym razie nie udaloby mi sie dotrzec do celu podrózy. Teraz wyjde stad, nie potrzebuje cie wiecej.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_07"); //Nie da sie mnie tak latwo sie mnie teraz pozbyc......
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_08"); //Wolisz wiec uparcie isc pod góre? Nie obchodze sie z nim.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_09"); //(skrzydlo) Narysuj rece, mezczyzn, krew tu jest przelana!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Cornelius_Pickpocket (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Pickpocket_Condition;
	information	= Info_Mod_Cornelius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Cornelius_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

	Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_BACK, Info_Mod_Cornelius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cornelius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cornelius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cornelius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cornelius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cornelius_EXIT (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_EXIT_Condition;
	information	= Info_Mod_Cornelius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cornelius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cornelius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
