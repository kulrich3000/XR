INSTANCE Info_Mod_Pilar_Hi (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_Hi_Condition;
	information	= Info_Mod_Pilar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy pogoda jest dla ciebie zbyt zla, czy tez dlaczego caly dzien siedzisz tutaj w tawernie?";
};

FUNC INT Info_Mod_Pilar_Hi_Condition()
{
	if (Wld_IsTime(07,15,00,15))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pilar_Hi_15_00"); //Czy pogoda jest dla ciebie zbyt zla, czy tez dlaczego caly dzien siedzisz tutaj w tawernie?
	AI_Output(self, hero, "Info_Mod_Pilar_Hi_01_01"); //Dlaczego mnie nie zostawiasz sam? Moje samopoczucie jest dosc zle.
	AI_Output(self, hero, "Info_Mod_Pilar_Hi_01_02"); //Jesli chcesz porozmawiac, udaj sie do Luisa. Jesli mówicie dwaj, przynajmniej zaden z was nie bedzie mnie wypelniac.
};

INSTANCE Info_Mod_Pilar_AtHut (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut_Condition;
	information	= Info_Mod_Pilar_AtHut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_00"); //Ach, ktos wreszcie nadchodzi. Myslalem, ze oni tez mnie porwali.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_01"); //Kto chce cie porwac?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_02"); //Oczywiscie, ze te gobliny pieprzace. Wczoraj wieczorem porwali mojego brata Czadu.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_03"); //Ledwie moglem siegnac po miecz, w przeciwnym razie tez by mnie zlapali.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_04"); //Masz jakies wyobrazenie, gdzie go zabrali?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_05"); //Nie, tak naprawde nie. Moglem jednak zranic jednego z nich. Wiec szlak krwi moze nas do nich prowadzic.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_06"); //Na co czekasz, szanse twojego brata na przezycie nie wzrosna.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_07"); //Czekalem na wsparcie. Jesli mamy zostac zlapani, ktos musi wiedziec, ze my tez jestesmy tutaj.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut_15_08"); //No cóz, potem Luis wraca do miasta i idziemy szlakiem krwi.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut_01_09"); //Dobrze, ja pójde za Toba.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOBBOZELT");
	B_StartOtherRoutine	(Mod_7567_OUT_Luis_EIS, "START");

	Mod_7567_OUT_Luis_EIS.aivar[AIV_Partymember] = FALSE;
	self.aivar[AIV_Partymember] = TRUE;

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Brat Pilara zostal porwany przez goblinów. Podazamy szlakiem krwi, aby go znalezc. W miedzyczasie Luis bedzie w miescie, który opowie nam, co sie dzieje.");

	Wld_InsertNpc	(Mod_7720_OUT_Chad_EIS, "EIS_415");

	B_KillNpc	(Mod_7720_OUT_Chad_EIS);

	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	Wld_InsertNpc	(Eisgoblin, "EIS_415");
	
	Wld_SendTrigger("CHAD_BLOOD_01");
	Wld_SendTrigger("CHAD_BLOOD_02");
	Wld_SendTrigger("CHAD_BLOOD_03");
	Wld_SendTrigger("CHAD_BLOOD_04");
	Wld_SendTrigger("CHAD_BLOOD_05");
	Wld_SendTrigger("CHAD_BLOOD_06");
};

INSTANCE Info_Mod_Pilar_AtHut2 (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut2_Condition;
	information	= Info_Mod_Pilar_AtHut2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pilar_AtHut))
	&& (Npc_GetDistToWP(hero, "EIS_415") < 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_00"); //Najwyrazniej goblini zbudowali sobie nowy obóz. Rodzaj dziwaczny.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_01"); //Dlaczego jest to smieszne?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_02"); //Ze gobliny zbudowali cos takiego jak ten ostatni raz dawno temu.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_03"); //W tym czasie wsród nich byl jeszcze czarujacy demon.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_04"); //Czy ten wezwany demon móglby naprawde uzywac magii?
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_05"); //Nie, on nie byl tak madry. Ale wykonywal obrzedy, które nigdy nie przyniosly zadnych zmian.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut2_15_06"); //No cóz, to nieliczni gobliny nie powinni byc dla nas problemem. Atakujmy.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut2_01_07"); //Dobrze, idziesz naprzód.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOBBOZELT");
};

INSTANCE Info_Mod_Pilar_AtHut3 (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_AtHut3_Condition;
	information	= Info_Mod_Pilar_AtHut3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pilar_AtHut3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pilar_AtHut2))
	&& (Npc_GetDistToWP(hero, "EIS_415") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pilar_AtHut3_Info()
{
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_00"); //Nie.... Nie. te piekielne potwory zabily mojego brata. Dlaczego nie moglismy go uratowac?
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_01"); //Nie wydaje mi sie, ze zabili go dla zabawy.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_02"); //Wyglada mi jak ofiara!
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_03"); //Czym sa te potwory? Dlaczego potrzebuja ofiary?
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_04"); //Byc moze poswiecili go, aby obudzic kogos innego.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_05"); //Jestem bardzo zaniepokojony Pania. Zawsze zastanawialem sie, dlaczego te potwory maja cmentarz.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_06"); //Co sie stanie, jesli poswieca mojego brata, aby ponownie obudzic swoich przyjaciól?
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_07"); //Jesli tak sie naprawde stalo, ktos musi poinformowac miasto.
	AI_Output(hero, self, "Info_Mod_Pilar_AtHut3_15_08"); //Ide na cmentarz i dajesz mi znac w miescie. Ponownie spotkamy sie pózniej.
	AI_Output(self, hero, "Info_Mod_Pilar_AtHut3_01_09"); //Cóz, szczescie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOCITY");

	self.aivar[AIV_Partymember] = FALSE;

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Pilar pójdzie do miasta i otrzyma jakies wsparcie. W miedzyczasie sprawdze cmentarz.");

	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Skeleton_Eis, "FRIEDHOFF_7");
};

INSTANCE Info_Mod_Pilar_Pickpocket (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_Pickpocket_Condition;
	information	= Info_Mod_Pilar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Pilar_Pickpocket_Condition()
{
	C_Beklauen	(86, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

	Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_BACK, Info_Mod_Pilar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pilar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pilar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pilar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pilar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pilar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pilar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pilar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pilar_EXIT (C_INFO)
{
	npc		= Mod_7566_OUT_Pilar_EIS;
	nr		= 1;
	condition	= Info_Mod_Pilar_EXIT_Condition;
	information	= Info_Mod_Pilar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pilar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pilar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
