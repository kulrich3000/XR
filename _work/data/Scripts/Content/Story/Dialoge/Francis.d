INSTANCE Info_Mod_Francis_Hi (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Hi_Condition;
	information	= Info_Mod_Francis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Francis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Francis_Hi_13_01"); //Jestem Franciszkiem i jestem jednym z trzech liderów przedsiebiorczosci.
};

INSTANCE Info_Mod_Francis_Entertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Entertrupp_Condition;
	information	= Info_Mod_Francis_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce przylaczyc sie do waszej pozycji.";
};

FUNC INT Info_Mod_Francis_Entertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Hi))
	&& (Piraten_Dabei == 1)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_00"); //Chce przylaczyc sie do waszej pozycji.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_01"); //Chcesz uzyskac moja aprobate? No cóz, byc moze wiec mozesz mi pomóc w rozwiazaniu problemu:
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_02"); //Chlopaki z mojego Entertruppuppa mieli wiele klopotów z Skipem i dlatego juz nie chce handlowac z nami.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_03"); //Idz do niego i zalatwic mu sprawe.
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_04"); //Spróbuje.

	Log_CreateTopic	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "Aby dostac sie do Franciszka Entertruppa, powinienem upewnic sie, ze Skip znowu obchodzi sie z nim i jego ludzmi.");
};

INSTANCE Info_Mod_Francis_Skip (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Skip_Condition;
	information	= Info_Mod_Francis_Skip_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skipowa gonna znów poradzi sobie z Toba i Twoimi chlopcami.";
};

FUNC INT Info_Mod_Francis_Skip_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Geld))
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Skip_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Skip_15_00"); //Skipowa gonna znów poradzi sobie z Toba i Twoimi chlopcami.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_01"); //No cóz, zachowales swoja date zakonczenia transakcji.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_02"); //Mozesz dolaczyc do jednego z oddzialów.

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_FRANCIS_ENTERTRUPP, "Franciszek daje mi swoja zgode na dolaczenie do grupy.", "Franciszek jest zadowolony ze mnie i wyraza na to zgode.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "Franciszek jest zadowolony ze mnie i wyraza na to zgode.");
	};

	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Francis_InEntertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_InEntertrupp_Condition;
	information	= Info_Mod_Francis_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce przylaczyc sie do waszej pozycji.";
};

FUNC INT Info_Mod_Francis_InEntertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen))
	|| (Mod_QuatschGrog == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_InEntertrupp_15_00"); //Chce przylaczyc sie do waszej pozycji.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_01"); //Sprawdziles sie jako pirat.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_02"); //Od teraz jestes w moim skladzie.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "Jestem teraz czlonkiem Francis Enterprise.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_Göttergefallen(2, 1);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)) {
		B_SetTopicStatus(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_FAILED);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_HierGrog)) {
		B_SetTopicStatus(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Francis_Befreiung (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung_Condition;
	information	= Info_Mod_Francis_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos do zrobienia?";
};

FUNC INT Info_Mod_Francis_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_00"); //Masz dla mnie cos do zrobienia? Mam za zadanie pomóc mi wszystko znowu ruszyc, abym mógl dac straznikowi Innosowi ostatni cios.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_01"); //(liber) Co? Czy nie widzisz, ze próbuje ciac drewno na palisade?
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_02"); //Od kiedy musisz to zrobic?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_03"); //Tak wlasnie jest. Zamiast pilowania musialabym nadzorowac prace.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_04"); //Angus i Hank, te leniwe dranie, musieliby to zrobic, ale maja ladny dzien w sloncu.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_05"); //Chcesz mi pomóc?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_06"); //Powinienem zamknac usta na twój policzkowy usmiech, ale tak, mozesz mi pomóc.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_07"); //Zdobadz leniwy paczke, aby znów pily znowu kolysaly sie, a ja powiem Gregowi, ze znów bedziemy mieli wystarczajaca ilosc drewna na palisade.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_08"); //Okay.
	
	Log_CreateTopic	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRFRANCIS, "Angus i Hank maja ladny dzien w sloncu zamiast pilowac drewno na palisade. Franciszek chce, abym przywrócil oboje do pracy.");
};

INSTANCE Info_Mod_Francis_Befreiung2 (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung2_Condition;
	information	= Info_Mod_Francis_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Panstwa pracownicy znów powracaja.";
};

FUNC INT Info_Mod_Francis_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Befreiung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_00"); //Panstwa pracownicy znów powracaja.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_01"); //Dobrze wykonane. Nie sadziles, ze mozesz je przywrócic. Tutaj, wez to za nagrode.

	B_GiveInvItems	(self, hero, ItPl_Perm_Herb, 1);

	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_02"); //Dziekuje, ide teraz.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_03"); //Zrób to.

	B_GivePlayerXP	(300);

	Mod_Piratenbefreiung += 1;
	
	B_LogEntry_More	(TOPIC_MOD_BEL_PIRFRANCIS, TOPIC_MOD_BEL_PIRATENLAGER, "Franciszek zna Angus i Hank.", "Franciszek zna Angus i Hank.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_SUCCESS);
};

INSTANCE Info_Mod_Francis_Pickpocket (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Pickpocket_Condition;
	information	= Info_Mod_Francis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Francis_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_BACK, Info_Mod_Francis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Francis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Francis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
};

FUNC VOID Info_Mod_Francis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Francis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Francis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Francis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Francis_EXIT (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_EXIT_Condition;
	information	= Info_Mod_Francis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Francis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
