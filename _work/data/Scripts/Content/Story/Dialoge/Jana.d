INSTANCE Info_Mod_Jana_BerndTot (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_BerndTot_Condition;
	information	= Info_Mod_Jana_BerndTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jana_BerndTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Bernd))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_BerndTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_00"); //AAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHH!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_01"); //Spokojne, to wszystko dobrze! Jestem milicja.
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_02"); //Tak tez myslalem o nim!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_03"); //O czym Pan mówi?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_04"); //Chlopak, który zabil Bernda!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_05"); //To byla milicja?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_06"); //Tak, czy wlasciwie nie slyszysz mnie o ponowne pytanie? Byl czarnym facetem w milicyjnym mundurze!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_07"); //Po prostu wszedl i uderzyl Bernda?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_08"); //Tak, myslisz, ze stalem na jego drodze? Sam bylem zajety, rywalizujac z Berndem, a gosc wygladal znacznie bardziej niebezpiecznie.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_09"); //Geht’s auch etwas genauer als "Typ ciemny z umundurowaniem milicyjnym"?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_10"); //Niemal mialem atak serca.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_11"); //Wszystko w porzadku.... O tym poinformuje kapitana. Czy pamietasz cokolwiek innego?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_16_12"); //Jetzt wo du’s sagst ... er hat irgendein komisches Zeug gelabert. Irgendwas von wegen "Dobra milicja zawsze chroni slabych.", das hat er immer wieder wiederholt.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_13"); //Hmm..... Dziekujemy za informacje.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Bernd zostal zamordowany przez ciemna postac w milicyjnym mundurze. Jana pamietal tylko jedno zdanie, które ciagle powtarzal:'Dobra milicja zawsze chroni slabszych. '");
};

INSTANCE Info_Mod_Jana_Shakir (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Shakir_Condition;
	information	= Info_Mod_Jana_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobre popoludnie, piekna kobieta. Na co czekasz?";
};

FUNC INT Info_Mod_Jana_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_00"); //Dobre popoludnie, piekna kobieta. Na co czekasz?
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_01"); //Nie do ciebie, jestem pewien. A czym sie opiekujesz?
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_02"); //Cóz, szukam pani do.... rodzaj.... dla relaksacji......
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_03"); //Wychodzac z tego miejsca, szumisz i rób to sam!
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_04"); //Jestem uczciwa kobieta czekajaca na meza.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_05"); //Kiedy wróci, bedziesz mial klopoty!
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_06"); //Prosze mi wybaczyc wiele. Myslalem tylko o.....
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_07"); //To oczywiscie nie jest Twoja mocna strona.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_08"); //Wypróbuj w dolnym miescie. Bratanica Thorbena, Gritta, zawsze potrzebuje pieniedzy. Dlug wszedzie.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_16_09"); //Ale nie powiedz mi, ze to powiedzialem!
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_10"); //Przepraszamy ponownie.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Jana zostal podekscytowany. Byla uczciwa kobieta. Nie da sie tego powiedziec o Gritcie, siostrzenicy Thorbena. Zobaczmy teraz.");
};

INSTANCE Info_Mod_Jana_Beutel (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Beutel_Condition;
	information	= Info_Mod_Jana_Beutel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jana_Beutel_Condition()
{
	if (Mod_Jana_Beutel == 1)
	&& (Wld_IsTime(06,00,19,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Beutel_Info()
{
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_16_00"); //Mlody czlowiek, zatrzymaj sie na chwile.

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

	Info_AddChoice	(Info_Mod_Jana_Beutel, "No time.", Info_Mod_Jana_Beutel_B);
	Info_AddChoice	(Info_Mod_Jana_Beutel, "Co sie dzieje?", Info_Mod_Jana_Beutel_A);
};

FUNC VOID Info_Mod_Jana_Beutel_B()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_B_15_00"); //No time.

	Info_ClearChoices	(Info_Mod_Jana_Beutel);
};

FUNC VOID Info_Mod_Jana_Beutel_A()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_A_15_00"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_A_16_01"); //Wlasnie kupowalem, a teraz moja torba na zakupy jest tak ciezka, ze nie moge jej juz nosic.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_A_16_02"); //Czy bylbys mi tak uprzejmy, ze móglbym doprowadzic go do domu?

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

	Info_AddChoice	(Info_Mod_Jana_Beutel, "Nie jestem burro!", Info_Mod_Jana_Beutel_D);
	Info_AddChoice	(Info_Mod_Jana_Beutel, "Bez problemu. Gdzie mieszkasz?", Info_Mod_Jana_Beutel_C);
};

FUNC VOID Info_Mod_Jana_Beutel_D()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_D_15_00"); //Nie jestem burro!

	Info_ClearChoices	(Info_Mod_Jana_Beutel);
};

FUNC VOID Info_Mod_Jana_Beutel_C()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_C_15_00"); //Bez problemu. Gdzie mieszkasz?
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_C_16_01"); //W dzielnicy portowej, w domu miedzy Fellanem a magazynem.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_C_16_02"); //Wystarczy wlozyc torbe gdzies w dól.

	B_GiveInvItems	(self, hero, ItMi_JanaBeutel, 1);

	Mod_Jana_Beutel = 2;

	Log_CreateTopic	(TOPIC_MOD_JANA_BEUTEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JANA_BEUTEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JANA_BEUTEL, "Czlowiek, to jest naprawde fucking ciezki. Powinienem zobaczyc, ze jak najszybciej wlozylem ja do chaty miedzy Fellan a magazynem.");

	AI_SetWalkMode	(hero, NPC_WALK);

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

};

INSTANCE Info_Mod_Jana_Beutel2 (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Beutel2_Condition;
	information	= Info_Mod_Jana_Beutel2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Torba na zakupy jest teraz w Twoim domu.";
};

FUNC INT Info_Mod_Jana_Beutel2_Condition()
{
	if (Mod_Jana_Beutel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Beutel2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel2_15_00"); //Torba na zakupy jest teraz w Twoim domu.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel2_16_01"); //Dziekuje, mlodemu mezczyznie. Wez te monety jako podziekowania.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_JANA_BEUTEL, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jana_Pickpocket (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Pickpocket_Condition;
	information	= Info_Mod_Jana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Jana_Pickpocket_Condition()
{
	C_Beklauen	(53, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Jana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

	Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_BACK, Info_Mod_Jana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
};

FUNC VOID Info_Mod_Jana_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jana_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jana_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jana_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jana_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jana_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jana_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jana_EXIT (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_EXIT_Condition;
	information	= Info_Mod_Jana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
