INSTANCE Info_Mod_Balor_Hi (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Hi_Condition;
	information	= Info_Mod_Balor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Balor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Balor_Hi_01_01"); //Jestem Balorem, nowicjuszem Bractwa. Moja praca polega na zbieraniu chwast�w bagiennych w bagnie.
	AI_Output(self, hero, "Info_Mod_Balor_Hi_01_02"); //Nastepnie jest ona przetwarzana na lodygi w magazynie, a nastepnie palimy ja lub odsprzedajemy.
};

INSTANCE Info_Mod_Balor_Duenger (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Duenger_Condition;
	information	= Info_Mod_Balor_Duenger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Baal Namib mnie wyslal.";
};

FUNC INT Info_Mod_Balor_Duenger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_WarBeiLester))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Balor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Duenger_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_Duenger_15_00"); //Baal Namib wyslal mnie, abym dostarczyl ci ten pakiet.
	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_01"); //Ah, w koncu. Przyjechal naw�z. Dlaczego nie rozpowszechniasz go na polu, prosze?
	AI_Output(hero, self, "Info_Mod_Balor_Duenger_15_02"); //Chcesz, abym rozszerzyl ja na pole?
	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_03"); //Tak. Tutaj, wez ten pickaxe.

	B_GiveInvItems	(self, hero, ItMw_2H_Axe_L_01, 1);

	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_04"); //Zaznaczylam miejsce, w kt�rym trzeba nawozic czerwonym kolorem X. Po prostu gr�b i nawozenie.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Balor chce, abym rozsiewal naw�z na polu. Miejsce zaznaczyl czerwona litera X.");

	Wld_SendTrigger	("EVT_MT_DUENGER");
};

INSTANCE Info_Mod_Balor_DuengerVerteilt (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_DuengerVerteilt_Condition;
	information	= Info_Mod_Balor_DuengerVerteilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rozdawalem naw�z.";
};

FUNC INT Info_Mod_Balor_DuengerVerteilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Duenger))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_DuengerVerteilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_DuengerVerteilt_15_00"); //Rozdawalem naw�z.
	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_01"); //No c�z, wtedy rdestnica bagnista bedzie tak wlasnie kielkowala.
	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_02"); //Oto kilka lodyg.

	CreateInvItems	(self, ItMi_Joint, 6);

	B_GiveInvItems	(self, hero, ItMi_Joint, 5);

	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_04"); //Jestem gonna idz to sprawdzic, r�wniez.

	B_UseItem	(self, ItMi_Joint);

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Rozdawalem naw�z i rozmawialem z Balor. Teraz powinienem wr�cic do Baala Namiba.");

	B_GivePlayerXP	(50);

	Wld_SendTrigger	("EVT_MT_DUENGER");
};

INSTANCE Info_Mod_Balor_Sumpfmensch (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch_Condition;
	information	= Info_Mod_Balor_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch_Condition()
{
	if (Guru_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_00"); //Ach!
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_02"); //Jezu Chryste, nie straszcie mnie tak bardzo! Przez chwile myslalem, ze jestes.... ...... (gulgi)
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_03"); //Co? Wyrzuc go juz teraz!
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_04"); //...... (badania niezrozumiale)
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_05"); //MOZLIWOSC?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_06"); //LUDZI KONCOWE!

	// ToDo: Chor erg�nzen

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_07"); //Przepraszamy, falszywy alarm!
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_08"); //Co to ma wsp�lnego z tym wylewajacym sie czlowiekiem bagiennym.... (spiew ch�ru w tle).... (w tle). samo w sobie?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_09"); //Jesli chcesz dowiedziec sie wiecej, podazaj prawym kladka az do ogniska w nocy z wejscia do obozu.
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_10"); //Nowicjusz Fortuno opowiada historie. I nie zapomnij zabrac wlasnej bielizny.

	Log_CreateTopic	(TOPIC_MOD_SL_SUMPFMENSCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SL_SUMPFMENSCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Mialem chodzic po prawej kladce od wejscia do obozu w nocy az do ogniska. Nowicjusz Fortuno najwyrazniej opowiada historie 'wyciejacego bagna'.");

	B_StartOtherRoutine	(Mod_951_PSINOV_Fortuno_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1339_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_2008_PSINOV_Ghorim_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1337_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1336_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1338_PSINOV_Novize_MT, "SUMPFMENSCH");
};

INSTANCE Info_Mod_Balor_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch2_Condition;
	information	= Info_Mod_Balor_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Darrion_Sumpfmensch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch2_01_00"); //Spiesz sie, Baal Joru szuka cie wszedzie, przyjdz ze mna!
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "GUIDETOJORU");
	B_StartOtherRoutine(Mod_2014_PSINOV_Darrion_MT, "GUIDETOJORU");
	B_StartOtherRoutine(Mod_2013_PSINOV_Joru_MT, "SUMPFMENSCH");
	B_StartOtherRoutine(Mod_1924_TPL_GorNaMon_MT, "SUMPFMENSCH");
	
	Wld_InsertNpc(Mod_70000_TPL_Templer_MT, "OC1");
	B_KillNpc(Mod_70000_TPL_Templer_MT);
};

INSTANCE Info_Mod_Balor_Sumpfmensch3 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch3_Condition;
	information	= Info_Mod_Balor_Sumpfmensch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Darrion_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch3_01_00"); //Nie obwiniaj starego Darriona. Tylko on jest calkowicie rozproszony, poniewaz poznal tego czlowieka bagna.
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch3_01_01"); //Der traut sich nachts nichtmal mehr aus seiner H�tte raus. Au�er nat�rlich f�r seine alln�chtlichen... nennen wir's mal "obrady" im Sumpf. (lacht)
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "START");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion co noc jedzie na bagno. Powinienem polozyc mu reke na pietach.");
};

INSTANCE Info_Mod_Balor_Sumpfmensch4 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch4_Condition;
	information	= Info_Mod_Balor_Sumpfmensch4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch4_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch4_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch4_01_00"); //Jestes. Darrion szukal cie.
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch4_15_01"); //Ponownie sie obudzil?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch4_01_02"); //To albo on jest ladnym, gadatliwym sypialnikiem.....
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "START");
	B_StartOtherRoutine(Mod_2014_PSINOV_Darrion_MT, "WACH");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion obudzil sie. Powinienem z nim porozmawiac.");
};

INSTANCE Info_Mod_Balor_Woher (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Woher_Condition;
	information	= Info_Mod_Balor_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego jestes na obozie bagiennym?";
};

FUNC INT Info_Mod_Balor_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_Woher_15_00"); //Dlaczego jestes na obozie bagiennym?
	AI_Output(self, hero, "Info_Mod_Balor_Woher_01_01"); //Po tym jak zostalem zlapany na nalocie w Khorinis, wrzucili mnie do kolonii.
	AI_Output(self, hero, "Info_Mod_Balor_Woher_01_02"); //Ob�z bagienny wydawal mi sie najbezpieczniejszym i najprzyjemniejszym obozem, wiec przyjechalem tu.
};

INSTANCE Info_Mod_Balor_Pickpocket (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Pickpocket_Condition;
	information	= Info_Mod_Balor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Balor_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 13);
};

FUNC VOID Info_Mod_Balor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

	Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_BACK, Info_Mod_Balor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Balor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Balor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
};

FUNC VOID Info_Mod_Balor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Balor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Balor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Balor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Balor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Balor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Balor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Balor_EXIT (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_EXIT_Condition;
	information	= Info_Mod_Balor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Balor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
