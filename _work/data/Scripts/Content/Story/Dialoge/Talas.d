INSTANCE Info_Mod_Talas_Hi (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Hi_Condition;
	information	= Info_Mod_Talas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Hi_27_00"); //Ty wciaz zyjesz? Jesli znów potrzebujesz przewodnika, wiesz gdzie mnie znalezc.
};

INSTANCE Info_Mod_Talas_GurusZuTempel (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_GurusZuTempel_Condition;
	information	= Info_Mod_Talas_GurusZuTempel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam wyslac guru na dziedziniec swiatyni.";
};

FUNC INT Info_Mod_Talas_GurusZuTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel)))
	&& (Mod_SL_TalasGuide == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_GurusZuTempel_15_00"); //Mam wyslac guru na dziedziniec swiatyni.
	AI_Output(self, hero, "Info_Mod_Talas_GurusZuTempel_27_01"); //Kogo szukasz?

	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, DIALOG_BACK, Info_Mod_Talas_GurusZuTempel_BACK);

	if (!Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Tyon", Info_Mod_Talas_GurusZuTempel_Tyon);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Tondral", Info_Mod_Talas_GurusZuTempel_Tondral);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Orun", Info_Mod_Talas_GurusZuTempel_Orun);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Joru", Info_Mod_Talas_GurusZuTempel_Joru);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Caine", Info_Mod_Talas_GurusZuTempel_Caine);
	};
};

FUNC VOID B_Say_Talas_Follow ()
{
	AI_Output(self, hero, "Info_Mod_Talas_Follow_27_00"); //Folge mir!
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_BACK()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	Mod_SL_TalasGuide = 0;
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Tyon()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 5;

	B_StartOtherRoutine	(self, "TYON");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Tondral()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 4;

	B_StartOtherRoutine	(self, "TONDRAL");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Orun()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 3;

	B_StartOtherRoutine	(self, "ORUN");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Joru()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 2;

	B_StartOtherRoutine	(self, "JORU");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Caine()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 1;

	B_StartOtherRoutine	(self, "CAINE");
};

FUNC VOID Info_Mod_Talas_GoBack()
{
	AI_Output(self, hero, "Info_Mod_Talas_GoBack_27_00"); //Wracam. Jesli potrzebujesz mnie ponownie, wiesz, gdzie mnie znalezc.
};

INSTANCE Info_Mod_Talas_AtBaalTyon (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalTyon_Condition;
	information	= Info_Mod_Talas_AtBaalTyon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalTyon_Condition()
{
	if (Mod_SL_TalasGuide == 5)
	&& (Npc_GetDistToWP(hero, "PSI_TEACH_TRAIN") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalTyon_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalTyon_27_00"); //Baal Tyon.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalTondral (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalTondral_Condition;
	information	= Info_Mod_Talas_AtBaalTondral_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalTondral_Condition()
{
	if (Mod_SL_TalasGuide == 4)
	&& (Npc_GetDistToWP(hero, "PSI_PLATFORM_LISTEN_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalTondral_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalTondral_27_00"); //Jest tu Tondral Baala.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalOrun (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalOrun_Condition;
	information	= Info_Mod_Talas_AtBaalOrun_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalOrun_Condition()
{
	if (Mod_SL_TalasGuide == 3)
	&& (Npc_GetDistToWP(hero, "PSI_PLACE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalOrun_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalOrun_27_00"); //Istnieje Baal Orun.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalJoru (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalJoru_Condition;
	information	= Info_Mod_Talas_AtBaalJoru_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalJoru_Condition()
{
	if (Mod_SL_TalasGuide == 2)
	&& (Npc_GetDistToWP(hero, "PSI_12_HUT_EX_TEACH2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalJoru_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalJoru_27_00"); //Jest Baal Joru.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalCaine (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalCaine_Condition;
	information	= Info_Mod_Talas_AtBaalCaine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalCaine_Condition()
{
	if (Mod_SL_TalasGuide == 1)
	&& (Npc_GetDistToWP(hero, "PSI_STEG2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalCaine_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalCaine_27_00"); //Istnieje Baal Caine.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_Ken (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Ken_Condition;
	information	= Info_Mod_Talas_Ken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Ken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ken_Eisgebiet))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Ken_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Ken_27_00"); //Pospiesz sie, musisz przyjsc ze mna juz teraz.

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	Info_AddChoice	(Info_Mod_Talas_Ken, "Nie mam czasu, zeby sie tym zajac.", Info_Mod_Talas_Ken_B);
	Info_AddChoice	(Info_Mod_Talas_Ken, "Po prostu zacznij odetchnac na razie. Co sie dzieje?", Info_Mod_Talas_Ken_A);
};

FUNC VOID Info_Mod_Talas_Ken_B()
{
	AI_Output(hero, self, "Info_Mod_Talas_Ken_B_15_00"); //Nie mam czasu, zeby sie tym zajac.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_B_27_01"); //Ale to pilna sprawa! Jestes nasza jedyna szansa!

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	Info_AddChoice	(Info_Mod_Talas_Ken, "Po prostu zacznij odetchnac na razie. Co sie dzieje?", Info_Mod_Talas_Ken_A);
};

FUNC VOID Info_Mod_Talas_Ken_A()
{
	AI_Output(hero, self, "Info_Mod_Talas_Ken_A_15_00"); //Po prostu zacznij odetchnac na razie. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_01"); //Baal Tondral dokonal niezwyklego odkrycia. Czar tutaj w bagnie!
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_02"); //Chcial Cie zadzwonic, bo potrzebuje Twojej pomocy. Przeciez wczesniej nam Pan pomógl.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_03"); //I znowu powinienem byc poslannikiem.
	AI_Output(hero, self, "Info_Mod_Talas_Ken_A_15_04"); //Nie znalazles sie zbyt daleko.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_05"); //Myslisz, ze poszedlem sam na sam, zeby szukac? Podazaj za mna, idz za mna.

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTONDRAL");
};

INSTANCE Info_Mod_Talas_AtTondral (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtTondral_Condition;
	information	= Info_Mod_Talas_AtTondral_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtTondral_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Ken))
	&& (Npc_GetDistToWP(self, "PSI_PLATFORM_LISTEN_2") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtTondral_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtTondral_27_00"); //Wróce na dziedziniec swiatyni. Mam nadzieje, ze cos sie dowiecie.
	AI_Output(self, hero, "Info_Mod_Talas_AtTondral_27_01"); //Nie kladz zadnych potworów na plecach.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Talas_Thys (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Thys_Condition;
	information	= Info_Mod_Talas_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Fisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Thys_27_00"); //Tam znów pan jest. Baal Tondral kazal mi czekac na Twój powrót i wyslac do niego po powrocie.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_27_01"); //Znasz droge.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Natychmiast udaje sie do Baal Tondral.");

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	Info_AddChoice	(Info_Mod_Talas_Thys, "Nie, wskaz mi droge.", Info_Mod_Talas_Thys_B);
	Info_AddChoice	(Info_Mod_Talas_Thys, "Tak. Ide do niego prosto.", Info_Mod_Talas_Thys_A);
};

FUNC VOID Info_Mod_Talas_Thys_B()
{
	AI_Output(hero, self, "Info_Mod_Talas_Thys_B_15_00"); //Nie, wskaz mi droge.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_B_27_01"); //Okay. Podazaj za mna, idz za mna.

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTONDRAL");
};

FUNC VOID Info_Mod_Talas_Thys_A()
{
	AI_Output(hero, self, "Info_Mod_Talas_Thys_A_15_00"); //Tak. Ide do niego prosto.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_A_27_01"); //Okay.

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Talas_Cyrco (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Cyrco_Condition;
	information	= Info_Mod_Talas_Cyrco_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szybko. Suknia. A potem musze porozmawiac z Baalem Oruniem.";
};

FUNC INT Info_Mod_Talas_Cyrco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_ZuGuru))
	&& (Guru_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Cyrco_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_Cyrco_15_00"); //Szybko. Suknia. A potem musze porozmawiac z Baalem Oruniem.
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco_27_01"); //Od razu. A co z jakimis lodygami? Tylko piec jablek.
	AI_Output(hero, self, "Info_Mod_Talas_Cyrco_15_02"); //Nie potrzebuje zadnych lodyg, nie mam jablek. Pospiesz sie, chlopak!
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco_27_03"); //Od razu.

	CreateInvItems	(hero, Nov_Armor_L, 1);

	AI_EquipArmor	(hero, Nov_Armor_L);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORUN");
};

INSTANCE Info_Mod_Talas_Cyrco2 (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Cyrco2_Condition;
	information	= Info_Mod_Talas_Cyrco2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Cyrco2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Cyrco))
	&& (Npc_GetDistToWP(hero, "PSI_PLACE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Cyrco2_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco2_27_00"); //Istnieje Baal Orun.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Talas_Woher (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Woher_Condition;
	information	= Info_Mod_Talas_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego rzucili cie w kolonie?";
};

FUNC INT Info_Mod_Talas_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_Woher_15_00"); //Dlaczego rzucili cie w kolonie?
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_01"); //Kiedys bylem nowicjuszem wody i dokonywalem waznych spraw dla magów wody.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_02"); //Z czasem jednak stracilem zainteresowanie tym tematem i ukrywalem sie w jaskini przed miastem i od czasu do czasu ukradlem mi jedzenie.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_03"); //Oczywiscie, pewnego dnia mnie zlapali i wrzucili do kolonii.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_04"); //Poszedlem najpierw do Starego Obozu, ale straznicy mieli cos przeciwko mnie.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_05"); //W obozie bagiennym mnie przyjeli, a tu znów prowadze sprawy, jak wiecie.
};

INSTANCE Info_Mod_Talas_Pickpocket (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Pickpocket_Condition;
	information	= Info_Mod_Talas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Talas_Pickpocket_Condition()
{
	C_Beklauen	(30, ItMi_Gold, 14);
};

FUNC VOID Info_Mod_Talas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

	Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_BACK, Info_Mod_Talas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Talas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Talas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
};

FUNC VOID Info_Mod_Talas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Talas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Talas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Talas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Talas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Talas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Talas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Talas_EXIT (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_EXIT_Condition;
	information	= Info_Mod_Talas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Talas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
