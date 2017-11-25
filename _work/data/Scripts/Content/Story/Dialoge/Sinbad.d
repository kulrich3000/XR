INSTANCE Info_Mod_Sinbad_Hi (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Hi_Condition;
	information	= Info_Mod_Sinbad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj. Mam sie z Toba skontaktowac.";
};

FUNC INT Info_Mod_Sinbad_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malik_Kissen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_00"); //Witaj. Mam sie z Toba skontaktowac.
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_01"); //Uh-huh, nowy facet. Calkiem tak. Powiedz mi, co z twoimi sztukami walki? Chcesz byc wojownikiem Assassina.
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_02"); //Jestem bardzo zadowolony.
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_03"); //Okaze sie dopiero, czy moge to powiedziec.
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_04"); //Jak moge zaimponowac?
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_05"); //Slysze, jak Straz Miejska organizuje konkurs. Idz tam, zglos sie i wróc zwycieski.

	if (Mod_AndreTurnier == 1)
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_06"); //Wzialem juz udzial i wygralem.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_07"); //To dobre. Jestem pewien, ze wygrales nagrode. Pozwole sobie to zobaczyc.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_08"); //Wlasciwie nie. Pan Andre próbowal przyjac mnie do milicji, ale odmówilem.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_09"); //Hm.... moze to byc prawda, ale nie musi byc prawda. Idzcie i przyniescie mi jakis dowód.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_10"); //Spróbuje.
	}
	else if (Mod_AndreTurnier == 2)
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_11"); //Wzialem wczesniej udzial, ale stracilem.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_12"); //Hm.... Nie podoba mi sie to wcale.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_13"); //Ale to bylo juz dawno temu. Nie bylem wtedy tak naprawde trenowany. Móglbym spróbowac dzialac ponownie.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_14"); //Jesli nie zadziala, wyslemy Cie na pustynie. Idz na to!

		B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW, "SHADOWBEAST");

		CreateInvItems	(Mod_1723_MIL_Gidan_NW, ItMi_TurnierPokal, 1);
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Andre_Miliz))
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_15"); //Wzielam juz udzial w nim, ale nie ukonczylam jeszcze turnieju.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_16"); //Spute sie wiec. Konkurs moze sie zakonczyc.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_17"); //Bede sie spieszyc.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_18"); //Gdzie ma to miejsce?
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_19"); //Mam na mysli baraki.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_20"); //Bede zwyciezca. Do zobaczenia pózniej.
	};

	Log_CreateTopic	(TOPIC_MOD_ASS_WETTKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_WETTKAMPF, "Oczywiscie powinienem startowac w koszarach i wygrac. Zobaczmy jak.....");
};

INSTANCE Info_Mod_Sinbad_Urkunde (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Urkunde_Condition;
	information	= Info_Mod_Sinbad_Urkunde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto mój czyn.";
};

FUNC INT Info_Mod_Sinbad_Urkunde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Urkunde_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_00"); //Oto mój czyn.

	B_GiveInvItems	(hero, self, ItWr_TurnierUrkunde, 1);

	B_UseFakescroll ();

	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_01"); //Bardzo ladne. Mam juz kilka uwag na mnie. Jednak niektóre szkolenia nigdy nie moga byc bolesne.
	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_02"); //Jutro udaje sie z kilkoma kandydatami do naszego gabinetu. Mozesz do nas dolaczyc.
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_03"); //Zrobie to.

	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_SinbadTraining = Wld_GetDay();
};

INSTANCE Info_Mod_Sinbad_Pokal (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Pokal_Condition;
	information	= Info_Mod_Sinbad_Pokal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spójrz, co tu dostalem!";
};

FUNC INT Info_Mod_Sinbad_Pokal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Npc_HasItems(hero, ItMi_TurnierPokal) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Pokal_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Pokal_15_00"); //Spójrz, co tu dostalem!

	B_GiveInvItems	(hero, self, ItMi_TurnierPokal, 1);

	AI_Output(self, hero, "Info_Mod_Sinbad_Pokal_13_01"); //Trofeum? Nabyla?
	AI_Output(hero, self, "Info_Mod_Sinbad_Pokal_15_02"); //Oczywiscie tak sie dzieje. Mozesz zapytac Pana Andre' a.
	AI_Output(self, hero, "Info_Mod_Sinbad_Pokal_13_03"); //Bede uwazac, zeby sie nie pojawic. A zatem wszystko w porzadku. Mam juz kilka uwag na mnie. Jednak niektóre szkolenia nigdy nie moga byc bolesne.
	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_02"); //Jutro udaje sie z kilkoma kandydatami do naszego gabinetu. Mozesz do nas dolaczyc.
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_03"); //Zrobie to.

	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_SinbadTraining = Wld_GetDay();
};

INSTANCE Info_Mod_Sinbad_Training (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training_Condition;
	information	= Info_Mod_Sinbad_Training_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	|| (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Pokal)))
	&& (Wld_GetDay() > Mod_SinbadTraining)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training_13_00"); //Bedziemy pracowac. Przyjezdzacie ze mna.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training_15_01"); //Oczywiscie tak sie dzieje. Jesli odpoczniesz, rdza.

	Log_CreateTopic	(TOPIC_MOD_ASS_TRAINING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_TRAINING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "Zgodzilem sie na szkolenie z Sinbadem i niektórymi kandydatami.");

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self,	"TRAINING");
	B_StartOtherRoutine	(Mod_7118_ASS_Anwaerter_NW,	"TRAINING");
	B_StartOtherRoutine	(Mod_7124_ASS_Anwaerter_NW,	"TRAINING");
};

INSTANCE Info_Mod_Sinbad_Training2 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training2_Condition;
	information	= Info_Mod_Sinbad_Training2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training))
	&& (Npc_GetDistToWP(self, "WP_ASSASSINENTRAINING") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training2_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training2_13_00"); //Tam. Pozwólcie mi zobaczyc, co dostaliscie.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training2_15_01"); //Przejdz do przodu. Jestem gonna dac ci uderzenie.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training2_13_02"); //Upewnij sie, ze nie zgubisz swoich spodenek!

	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "Sinbad chce zobaczyc, co dostalem.");

	self.flags = 2;

	self.npctype = NPCTYPE_FRIEND;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Sinbad_Training3 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training3_Condition;
	information	= Info_Mod_Sinbad_Training3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training3_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_00"); //No cóz?
	AI_Output(hero, self, "Info_Mod_Sinbad_Training3_15_01"); //Mój glowa! Aahh.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_02"); //Widzisz, ale nie bezkonkurencyjne. Ale jest cos na temat stylu walki. Prawdopodobnie jestes lepszy od innych wojowników.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_03"); //Brakuje mi jednak pewnej zwinnosci. Mozesz równie dobrze zaatakowac wroga na boczku. Widziales, jak to robie.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training3_15_04"); //Pamietam to.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_05"); //To sprawilo, ze czulem sie lepiej. Zyczylabym sobie, bysmy nie musieli caly czas pozostawac w tej jaskini.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_06"); //Nasza sytuacja po prostu sie zastanawia. Nie ma dla nas przyzwoitego miejsca na Khorinis.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_07"); //Norek nie moze tez wymyslic niczego rozsadnego. Aw, czlowiek! Gdyby tylko zostalem na kontynencie.

	self.flags = 0;

	self.npctype = NPCTYPE_MAIN;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sinbad_Training4 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training4_Condition;
	information	= Info_Mod_Sinbad_Training4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training4_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_00"); //To wystarczy na dzien dzisiejszy. Wszyscy sie wspieraja.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training4_15_01"); //Czy moge liczyc na Pana glos?
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_02"); //Mysle, ze tak, tak. Zrobiliscie wszystko, co w waszej mocy.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_03"); //Jesli teraz porozmawiasz z Karimem, to juz wkrótce powinien wystarczyc kandydatowi. Jesli nie, to wiecej.

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self,	"START");
	B_StartOtherRoutine	(Mod_7118_ASS_Anwaerter_NW,	"START");
	B_StartOtherRoutine	(Mod_7124_ASS_Anwaerter_NW,	"START");

	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "Szkolenie bylo równiez prawdopodobnie zadowalajace.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_TRAINING, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sinbad_Pickpocket (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Pickpocket_Condition;
	information	= Info_Mod_Sinbad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sinbad_Pickpocket_Condition()
{
	C_Beklauen	(73, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

	Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_BACK, Info_Mod_Sinbad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sinbad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sinbad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sinbad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sinbad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sinbad_EXIT (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_EXIT_Condition;
	information	= Info_Mod_Sinbad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sinbad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sinbad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
