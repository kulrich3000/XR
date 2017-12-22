INSTANCE Info_Mod_Sonja_Hi (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Hi_Condition;
	information	= Info_Mod_Sonja_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy pracujesz tutaj?";
};

FUNC INT Info_Mod_Sonja_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonja_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Hi_15_00"); //Czy pracujesz tutaj?
	AI_Output(self, hero, "Info_Mod_Sonja_Hi_43_01"); //Jak to wyglada? Czy jest jakas droga, która moge cie zdobyc? aby Cie zadowolic?
};

INSTANCE Info_Mod_Sonja_News (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_News_Condition;
	information	= Info_Mod_Sonja_News_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem pewien, ze znajdziesz tutaj kilka nowosci.";
};

FUNC INT Info_Mod_Sonja_News_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_News_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_News_15_00"); //Jestem pewien, ze znajdziesz tutaj kilka nowosci.
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_01"); //W ramionach emocjonalnej kobiety kazdy cichy mezczyzna staje sie gadajacym chlopcem.
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_02"); //z malzenstwa Matteo do sekretnych gustów Konstantynina.
	AI_Output(hero, self, "Info_Mod_Sonja_News_15_03"); //A co slyszysz od swoich klientów?
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_04"); //Slysze wiele niepewnosci i rozpaczy na temat upadku bariery.
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_05"); //Niektórzy z moich klientów obawiaja sie, ze "dzikie i niegrzeczne barbarzyncy" z kolonii przychodza przeciwko ich dobytkowi.
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_06"); //Z drugiej strony, wielu narzeka na scisla kontrole paladynów.
	AI_Output(self, hero, "Info_Mod_Sonja_News_43_07"); //Ale wiekszosc z nich po prostu zgryzla mi w uchu, jak dobrze by sie czulem. (smiertelnicy)
};

INSTANCE Info_Mod_Sonja_Sex (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Sex_Condition;
	information	= Info_Mod_Sonja_Sex_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chcialbym skorzystac z Panstwa uslug.";
};

FUNC INT Info_Mod_Sonja_Sex_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Hi))
	&& (Mod_SonjaSex == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Sex_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_15_00"); //Chcialbym skorzystac z Panstwa uslug.
	AI_Output(self, hero, "Info_Mod_Sonja_Sex_43_01"); //Jestem ci przez cala noc za 100 kawalków zlota, slodyczy. Cala emocjonujaca noc.

	Info_ClearChoices	(Info_Mod_Sonja_Sex);

	Info_AddChoice	(Info_Mod_Sonja_Sex, "Moze pózniej.", Info_Mod_Sonja_Sex_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Sonja_Sex, "Wejdzmy na góre. (100 zloto)", Info_Mod_Sonja_Sex_A);
	};
};

FUNC VOID Info_Mod_Sonja_Sex_B()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_B_15_00"); //Moze pózniej.

	Info_ClearChoices	(Info_Mod_Sonja_Sex);
};

FUNC VOID Info_Mod_Sonja_Sex_A()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_A_15_00"); //Wejdzmy na góre.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Mod_SonjaSex = 1;

	Info_ClearChoices	(Info_Mod_Sonja_Sex);

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "SEX");
};

INSTANCE Info_Mod_Sonja_SexLos (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_SexLos_Condition;
	information	= Info_Mod_Sonja_SexLos_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_SexLos_Condition()
{
	if (Mod_SonjaSex == 1)
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_PUFF_NADJA") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_SexLos_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_SexLos_43_00"); //Relaks, slodycz.

	PlayVideo ("LOVESCENE.BIK");

	Mod_SonjaSex = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	
	Spine_OverallSaveSetInt("SonjaSex", 1);
	CheckSexAchievement();
};

INSTANCE Info_Mod_Sonja_Bartok (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Bartok_Condition;
	information	= Info_Mod_Sonja_Bartok_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_Bartok_Condition()
{
	if (Mod_KampfGegenBartokVerloren == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Bartok_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_43_00"); //Hej! Widzialam, jak Bartok pobil cie. Moze moge wam pomóc.
	AI_Output(hero, self, "Info_Mod_Sonja_Bartok_15_01"); //Jak mi pomozesz?
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_43_02"); //No cóz, moglem pójsc do Bartoka i spedzic z nim troche czasu i upewnic sie, ze on cie slucha.
	AI_Output(hero, self, "Info_Mod_Sonja_Bartok_15_03"); //A co mam z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_43_04"); //Jeszcze nic, ale wróce do Ciebie.

	Npc_ExchangeRoutine	(self, "BARTOK");

	Mod_SonjaHilftGegenBartok = Wld_GetDay();
};

INSTANCE Info_Mod_Sonja_Freier (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Freier_Condition;
	information	= Info_Mod_Sonja_Freier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_Freier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))
	&& (Wld_GetDay()-8 >= Mod_SonjaHilftGegenBartok)
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Freier_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_43_00"); //Pamietaj swoja mala obietnice, slodycz?
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_15_01"); //Zawdzieczam ci jeszcze jedna laske.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_43_02"); //Teraz nadszedl czas, abym wrócil do tego tematu.

	Info_ClearChoices	(Info_Mod_Sonja_Freier);

	Info_AddChoice	(Info_Mod_Sonja_Freier, "Nie obchodzi mnie to.", Info_Mod_Sonja_Freier_B);
	Info_AddChoice	(Info_Mod_Sonja_Freier, "Co nalezy zrobic?", Info_Mod_Sonja_Freier_A);
};

FUNC VOID Info_Mod_Sonja_Freier_B()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_B_15_00"); //Nie obchodzi mnie to.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_B_43_01"); //Mialem nadzieje, ze moge na Was liczyc.

	Info_ClearChoices	(Info_Mod_Sonja_Freier);
};

FUNC VOID Info_Mod_Sonja_Freier_A()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_00"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_01"); //Jeden z moich najczestszych klientów nie pojawil sie za chwile.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_02"); //Nie slyszalem niczego o niczym go nie slyszalem, wiec musza istniec inne powody, dla których juz nie odwiedza mnie.
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_03"); //Kim jest ten milosnik?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_04"); //Nie moge ci to powiedziec. Tajemnica sluzbowa.
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_05"); //Dlaczego wiec nie widzisz go sam?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_06"); //Bo mieszka w górnej dzielnicy, glupi. Nie mam tam dostepu.

	if (Mil_305_Torwache.aivar[AIV_Passgate] == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_07"); //Ale jestes tak ambitnym mlodym czlowiekiem, jestem pewien, ze wkrótce bedziesz mial szanse.
	};

	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_08"); //Wiec teraz powinienem przeszukac cala górna dzielnice?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_09"); //Nadal moge panstwu powiedziec, ze nie nalezy to do paladynów ani milicji. Wybór nie powinien byc juz zbyt duzy.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_43_10"); //Jesli go znalazles, popros go, aby zatrzymal sie przy moim domu.

	Mod_Sonja_Freier = 1;

	Log_createTopic	(TOPIC_MOD_SONJA_FREIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SONJA_FREIER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SONJA_FREIER, "Od jakiegos czasu nie odwiedzil jej klient Sonja. Nie chce mi powiedziec swojego imienia, ale on mieszka w górnej czesci i nie nalezy ani do milicji, ani do paladynów.");

	Info_ClearChoices	(Info_Mod_Sonja_Freier);
};

INSTANCE Info_Mod_Sonja_Freier2 (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Freier2_Condition;
	information	= Info_Mod_Sonja_Freier2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Fernando mial klopoty z zona.";
};

FUNC INT Info_Mod_Sonja_Freier2_Condition()
{
	if (Mod_Sonja_Freier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Freier2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier2_15_00"); //Fernando hatte Stress mit seiner Frau. Er wagt sich nicht mehr hier her.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_43_01"); //Äußerst schade. Er war immer so gut zu mir.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_43_02"); //Aber er wird schon zurück kommen, da bin ich mir sicher. 
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_43_03"); //Er hat mir viel über seine Frau erzählt. Seine Ehe ist nicht für die Ewigkeit geschaffen.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_43_04"); //In der Zwischenzeit könnten wir zwei uns die Zeit vertreiben, Süßer. (lacht anzüglich)

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_SONJA_FREIER, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sonja_Pickpocket (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Pickpocket_Condition;
	information	= Info_Mod_Sonja_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Sonja_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

	Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_BACK, Info_Mod_Sonja_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sonja_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sonja_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sonja_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sonja_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sonja_EXIT (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_EXIT_Condition;
	information	= Info_Mod_Sonja_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sonja_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonja_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
