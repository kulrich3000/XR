INSTANCE Info_Mod_Esteban_Hi (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_Hi_Condition;
	information	= Info_Mod_Esteban_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Esteban_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Banditen_Dabei)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_Hi_15_00"); //Kim jestes?
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_01"); //Jestem Estebanem, drugim szefem tego obozu. Jestem pewien, ze slyszales o mnie.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_02"); //Poza tym jestem straznikiem bandytów na tej wyspie. Dbam o to, aby kazdy dostal kawalek lupu i kazdy wypelnial swoje obowiazki.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_03"); //Musisz byc nowym facetem. Nie chce dlugo bic wokól krzewu.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_04"); //Jest jedna rzecz, która mozesz zrobic, aby pomóc naszym chlopcom sprawdzic sie w obozie.
	AI_Output(hero, self, "Info_Mod_Esteban_Hi_15_05"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_06"); //Nic szczególnie trudnego, to zadanie, bo co dzien nalezy do bandyta, z którym juz na poczatek mozna sie dobrze udowodnic w swoim talencie jako bandyta.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_07"); //Jeden z naszych harcerzy dowiedzial sie, ze niektórzy handlarze, którzy przyjechali tu po upadku bariery, aby zrobic korzystne interesy chca podrózowac jutro rano z powrotem do Khorinis z Starego Obozu.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_08"); //Chcemy ulatwic ten proces, wykorzystujac zloto, rude i surowce. Czekamy na nich jutro o godzinie 9:00 przy wejsciu do opuszczonej kopalni.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_09"); //Inni bandyci beda na nich czekac w dawnym punkcie przejscia, aby jakakolwiek ucieczka byla niemozliwa.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_10"); //Poniewaz sa oni eskortowani przez grupe strazników w celu ich ochrony az do niedlugo po opuszczonej kopalni, musimy pozostac spokojni i czekac na wlasciwy czas na strajk.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_07_11"); //Kazdy otrzymuje swoja czesc lupu. Czy jestes?

	Info_ClearChoices	(Info_Mod_Esteban_Hi);

	Info_AddChoice	(Info_Mod_Esteban_Hi, "Nie, nie okradam bezbronnych dealerów.", Info_Mod_Esteban_Hi_B);
	Info_AddChoice	(Info_Mod_Esteban_Hi, "Oczywiscie oczywiscie. Zloto i zabieram mi radosc (....). )", Info_Mod_Esteban_Hi_A);
};

FUNC VOID Info_Mod_Esteban_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Esteban_Hi_B_15_00"); //Nie, nie okradam bezbronnych dealerów.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_B_07_01"); //Co? Jesli nie jestes w stanie tego zrobic, naprawde nie wiem, co tu robisz.
	
	Info_ClearChoices	(Info_Mod_Esteban_Hi);

	AI_StopProcessInfos	(self);

	Mod_EstebanBeleidigt = 1;
};

FUNC VOID Info_Mod_Esteban_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Esteban_Hi_A_15_00"); //Oczywiscie oczywiscie. Nie przegapie zlota i zabawy.
	AI_Output(self, hero, "Info_Mod_Esteban_Hi_A_07_01"); //Bardzo dobrze, nie spodziewalem sie od ciebie niczego innego, do zobaczenia jutro o 9 rano przed opuszczona kopalnia.
	
	Info_ClearChoices	(Info_Mod_Esteban_Hi);

	AI_StopProcessInfos	(self);

	Mod_Banditenueberfall_Esteban = 1;
	Mod_UeberfallTag = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_BDT_ESTEBAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ESTEBAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ESTEBAN, "Moja pierwsza próba rabunku jako bandyta jest nieuchronna. Jutro o godz. 9.00 mialem byc w opuszczonej kopalni, aby zaskoczyc niektórych handlarzy Estebanem i niektórych jego chlopaków.");
};

INSTANCE Info_Mod_Esteban_AtVM (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_AtVM_Condition;
	information	= Info_Mod_Esteban_AtVM_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_AtVM_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_Hi))
	&& (Mod_Banditenueberfall_Esteban == 2)
	&& (Wld_IsTime(08,00,10,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_AtVM_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM_07_00"); //Och, tam jestescie. Trzech chlopców idzie teraz na miejsce wymiany i chowamy kilka kroków przed wejsciem do kopalni.

	Mod_Banditenueberfall_Esteban = 3;

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_4076_VLK_Haendler_MT,	"OW_PATH_1_14");
	Wld_InsertNpc	(Mod_4077_VLK_Haendler_MT,	"OW_PATH_1_14");
	Wld_InsertNpc	(Mod_4078_GRD_Gardist_MT,	"OW_PATH_1_14");
	Wld_InsertNpc	(Mod_4079_GRD_Gardist_MT,	"OW_PATH_1_14");
	Wld_InsertNpc	(Mod_4080_GRD_Gardist_MT,	"OW_PATH_1_14");
	Wld_InsertNpc	(Mod_4081_GRD_Gardist_MT,	"OW_PATH_1_14");

	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "INVM");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "INVM");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "INVM");
};

INSTANCE Info_Mod_Esteban_AtVM2 (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_AtVM2_Condition;
	information	= Info_Mod_Esteban_AtVM2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_AtVM2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM))
	&& (Mod_Banditenueberfall_Esteban == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_AtVM2_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM2_07_00"); //Ach, tu przychodza. Teraz badz cichy, wiec straznicy nas nie zauwaza.

	Mod_Banditenueberfall_Esteban = 4;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INVM");
	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "INVM");

	B_StartOtherRoutine	(Mod_4076_VLK_Haendler_MT, "NEXT");
	B_StartOtherRoutine	(Mod_4077_VLK_Haendler_MT, "NEXT");
	B_StartOtherRoutine	(Mod_4078_GRD_Gardist_MT, "NEXT");
	B_StartOtherRoutine	(Mod_4079_GRD_Gardist_MT, "NEXT");
	B_StartOtherRoutine	(Mod_4080_GRD_Gardist_MT, "NEXT");
	B_StartOtherRoutine	(Mod_4081_GRD_Gardist_MT, "NEXT");
};

INSTANCE Info_Mod_Esteban_AtVM3 (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_AtVM3_Condition;
	information	= Info_Mod_Esteban_AtVM3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_AtVM3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM2))
	&& (Mod_Banditenueberfall_Esteban == 5)
	&& (Npc_GetDistToWP(Mod_4076_VLK_Haendler_MT, "OW_PATH_1_15") > 1500)
	&& (Npc_GetDistToWP(Mod_4077_VLK_Haendler_MT, "OW_PATH_1_15") > 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_AtVM3_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM3_07_00"); //Przejdzmy teraz!

	Mod_Banditenueberfall_Esteban = 6;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ANGRIFF");
	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "ANGRIFF");
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "ANGRIFF");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "ANGRIFF");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "ANGRIFF");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_4072_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_4073_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_4074_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_4075_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	B_RemoveNpc	(Mod_4078_GRD_Gardist_MT);
	B_RemoveNpc	(Mod_4079_GRD_Gardist_MT);
	B_RemoveNpc	(Mod_4080_GRD_Gardist_MT);
	B_RemoveNpc	(Mod_4081_GRD_Gardist_MT);

	Wld_InsertNpc	(Mod_7326_VLK_Haendler_MT, "WP_INTRO_FALL3");
	Wld_InsertNpc	(Mod_7327_VLK_Haendler_MT, "WP_INTRO_FALL3");
};

INSTANCE Info_Mod_Esteban_AtVM4 (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_AtVM4_Condition;
	information	= Info_Mod_Esteban_AtVM4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_AtVM4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM3))
	&& (Mod_Banditenueberfall_Esteban == 7)
	&& (Npc_IsDead(Mod_7326_VLK_Haendler_MT))
	&& (Npc_IsDead(Mod_7327_VLK_Haendler_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_AtVM4_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM4_07_00"); //Dobra praca. Teraz wyszukaj ich oboje, musza miec przy sobie cos wartosciowego.

	Mod_Banditenueberfall_Esteban = 8;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_4072_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_4073_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_4074_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_4075_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_SetAttitude (self, ATT_FRIENDLY);
	B_SetAttitude (Mod_4072_BDT_Bandit_MT, ATT_FRIENDLY);
	B_SetAttitude (Mod_4073_BDT_Bandit_MT, ATT_FRIENDLY);
	B_SetAttitude (Mod_4074_BDT_Bandit_MT, ATT_FRIENDLY);
	B_SetAttitude (Mod_4075_BDT_Bandit_MT, ATT_FRIENDLY);
};

INSTANCE Info_Mod_Esteban_AtVM5 (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_AtVM5_Condition;
	information	= Info_Mod_Esteban_AtVM5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_AtVM5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM3))
	&& (Mod_Banditenueberfall_Esteban == 8)
	&& (Npc_HasItems(hero, ItMi_BDTKiste_01) == 1)
	&& (Npc_HasItems(hero, ItMi_BDTKiste_02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_AtVM5_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM5_07_00"); //Tego wlasnie szukalismy. Teraz daj mi dwa skrzynki, abym mógl je otworzyc i rozdawac lupy.

	Mod_Banditenueberfall_Esteban = 9;

	Info_ClearChoices	(Info_Mod_Esteban_AtVM5);

	Info_AddChoice	(Info_Mod_Esteban_AtVM5, "Mysle, ze wolalbym raczej zostawic skrzynki sobie samemu.", Info_Mod_Esteban_AtVM5_B);
	Info_AddChoice	(Info_Mod_Esteban_AtVM5, "Tutaj je masz.", Info_Mod_Esteban_AtVM5_A);
};

FUNC VOID Info_Mod_Esteban_AtVM5_B()
{
	AI_Output(hero, self, "Info_Mod_Esteban_AtVM5_B_15_00"); //Mysle, ze wolalbym raczej zostawic skrzynki sobie samemu.
	AI_Output(self, hero, "Info_Mod_Esteban_AtVM5_B_07_01"); //Co? No cóz, zalózmy je. Chodz, mezczyzni!

	Mod_Banditenueberfall_Esteban = 10;

	Mod_EstebanBeleidigt = 1;

	Info_ClearChoices	(Info_Mod_Esteban_AtVM5);

	B_SetTopicStatus	(TOPIC_MOD_BDT_ESTEBAN, LOG_FAILED);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
};

FUNC VOID Info_Mod_Esteban_AtVM5_A()
{
	AI_Output(hero, self, "Info_Mod_Esteban_AtVM5_A_15_00"); //Tutaj je masz.

	Npc_RemoveInvItems	(hero, ItMi_BDTKiste_01, 1);
	Npc_RemoveInvItems	(hero, ItMi_BDTKiste_02, 1);

	B_ShowGivenThings	("2 skrzynie skarbowe wydawane");

	AI_Output(self, hero, "Info_Mod_Esteban_AtVM5_A_07_01"); //Ahh, teraz wreszcie udalo mi sie otworzyc go z dwoma specjalnymi dietami. Oto Twój udzial.

	CreateInvItems	(hero, ItMi_Nugget, 9);
	CreateInvItems	(hero, ItMi_Gold, 160);
	CreateInvItems	(hero, ItMi_GoldNugget_Addon, 7);
	CreateInvItems	(hero, ItMi_GoldRing, 2);
	CreateInvItems	(hero, ItMi_SilverCup, 2);
	CreateInvItems	(hero, ItAt_ShadowHorn, 1);

	B_ShowGivenThings	("Otrzymywanie róznych pozycji");

	AI_Output(self, hero, "Info_Mod_Esteban_AtVM5_A_07_02"); //Wróccie pózniej, mam dla was cos do zrobienia.

	Mod_Banditenueberfall_Esteban = 11;

	Info_ClearChoices	(Info_Mod_Esteban_AtVM5);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_BDT_ESTEBAN, "Rozbój zakonczyl sie sukcesem. Kupcy zostali zwolnieni z ciezarów, a my mamy jeszcze kilka monet i rzeczy.");
	B_SetTopicStatus	(TOPIC_MOD_BDT_ESTEBAN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
};

INSTANCE Info_Mod_Esteban_OrkAttack (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_OrkAttack_Condition;
	information	= Info_Mod_Esteban_OrkAttack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_OrkAttack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettAbgegeben))
	&& (Mod_Dexter_AmulettParty == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_OrkAttack_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_OrkAttack_07_00"); //Chodz dalej, wstan, nie daj sie poranic.
	AI_Output(self, hero, "Info_Mod_Esteban_OrkAttack_07_01"); //Wczoraj wieczorem moze byc jeszcze w twoich kosciach, ale horda orków, które zeruja przez las, nie czekaja na ciebie, zebys mógl sie spac.
	AI_Output(hero, self, "Info_Mod_Esteban_OrkAttack_15_02"); //(spiace) Co, Orcs, znów?
	AI_Output(self, hero, "Info_Mod_Esteban_OrkAttack_07_03"); //Tak, przyjdz, przyjdz, przyjdz dalej. Jeden z naszych chlopców widzial ich w lesie w poszukiwaniu grzybów. Wolalbym raczej polegac na tym, ze nie byla to tylko halucynacja.
	AI_Output(self, hero, "Info_Mod_Esteban_OrkAttack_07_04"); //Przechodza przez przejscie, a my powitamy ich lukami i klubami na wyjsciu, zanim beda mogli rozwinac sile swojej armii. W porzadku, idzmy.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "To jeszcze nie koniec. Obóz zasila oddzial orków. Spodziewam sie, ze wraz z Estebanem i niektórymi z jego chlopców przejezdzac beda przez lasy.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "OSCHUST");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "OSCHUST");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "OSCHUST");
};

INSTANCE Info_Mod_Esteban_FirstOrkWave (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_FirstOrkWave_Condition;
	information	= Info_Mod_Esteban_FirstOrkWave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_FirstOrkWave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_OrkAttack))
	&& (Npc_GetDistToWP(self, self.wp) < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_FirstOrkWave_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_FirstOrkWave_07_00"); //Wszystko w porzadku, tu przychodza.
	
	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(OrcScout_Oschust_01, "FP_ROAM_ORCSCOUT_OSCHUST_01");
	Wld_InsertNpc	(OrcScout_Oschust_02, "FP_ROAM_ORCSCOUT_OSCHUST_02");
	Wld_InsertNpc	(OrcWarrior_Oschust_01, "FP_ROAM_ORCSCOUT_OSCHUST_03");
};

INSTANCE Info_Mod_Esteban_SecondOrkWave (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_SecondOrkWave_Condition;
	information	= Info_Mod_Esteban_SecondOrkWave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_SecondOrkWave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_FirstOrkWave))
	&& (Npc_GetDistToWP(self, self.wp) < 500)
	&& (Npc_IsDead(OrcScout_Oschust_01))
	&& (Npc_IsDead(OrcScout_Oschust_02))
	&& (Npc_IsDead(OrcWarrior_Oschust_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_SecondOrkWave_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_SecondOrkWave_07_00"); //Czy to ma byc sila? Albo ktos jadl zbyt wiele grzybów, albo tez ktos....
	
	AI_StopProcessInfos	(self);

	AI_Wait	(hero, 5);

	Wld_InsertNpc	(Mod_7175_BDT_Oschust_MT, "WP_MT_ORKS_OSCHUST_03");

	// + Orks

	Wld_InsertNpc	(Mod_10021_ORC_Elite_MT, "WP_MT_ORKS_OSCHUST_03");
	Wld_InsertNpc	(Mod_10022_ORC_Elite_MT, "WP_MT_ORKS_OSCHUST_03");

	Wld_InsertNpc	(Mod_10029_Orc_Warrior_MT, "WP_MT_ORKS_OSCHUST_03");
	Wld_InsertNpc	(Mod_10030_Orc_Warrior_MT, "WP_MT_ORKS_OSCHUST_03");
	Wld_InsertNpc	(Mod_10031_Orc_Warrior_MT, "WP_MT_ORKS_OSCHUST_03");
};

INSTANCE Info_Mod_Esteban_Unterlegen (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_Unterlegen_Condition;
	information	= Info_Mod_Esteban_Unterlegen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_Unterlegen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_Unterlegen_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_Unterlegen_07_00"); //Identyfikator procesu.... Chlopcy, jak mówi. Nie mozemy walczyc z wieloma orkami.
	
	AI_StopProcessInfos	(self);

	Wld_PlayEffect	("BLACK_SCREEN_LONG", hero, hero, 0, 0, 0, FALSE);
};

INSTANCE Info_Mod_Esteban_FluchtHappy (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_FluchtHappy_Condition;
	information	= Info_Mod_Esteban_FluchtHappy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_FluchtHappy_Condition()
{
	if (Mod_AlbertTransforms == 6)
	&& (Npc_GetDistToWP(self, "OW_PATH_1_5_B") < 1000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Albert_Safety))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_FluchtHappy_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_FluchtHappy_07_00"); //Slyszysz to?
	AI_Output(self, hero, "Info_Mod_Esteban_FluchtHappy_07_01"); //Wydaje sie, ze to pochodzi z naszego obozu. Pospiesz sie, zanim sie spóznimy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RETTUNG");
	self.aivar[AIV_PARTYMEMBER] = TRUE;

	if (Mod_OC_Miguel == 0)
	{
		B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "RETTUNG");
		Mod_958_BDT_Miguel_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Juan == 0)
	{
		B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "RETTUNG");
		Mod_955_BDT_Juan_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Logan == 0)
	{
		B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "RETTUNG");
		Mod_957_BDT_Logan_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Skinner == 0)
	{
		B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "RETTUNG");
		Mod_964_BDT_Skinner_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Morgahard == 0)
	{
		B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "RETTUNG");
		Mod_790_BDT_Morgahard_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Bandit_01 == 0)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "RETTUNG");
		Mod_4074_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};
	if (Mod_OC_Bandit_02 == 0)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "RETTUNG");
		Mod_4075_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	};

	B_StartOtherRoutine	(Mod_1120_BDT_Ratford_MT, "RETTUNG");
	Mod_1120_BDT_Ratford_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(Mod_961_BDT_Sancho_MT, "RETTUNG");
	Mod_961_BDT_Sancho_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "RETTUNG");
	Mod_1121_BDT_Drax_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "RETTUNG");
	Mod_4072_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "RETTUNG");
	Mod_4073_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	// Vor dem Lager

	Wld_InsertNpc	(OrcWarrior_Banditenangriff, "OW_PATH_189B");
	Wld_InsertNpc	(OrcWarrior_Banditenangriff, "OW_PATH_189B");
	Wld_InsertNpc	(OrcWarrior_Banditenangriff, "OW_PATH_189B");
	Wld_InsertNpc	(Warg, "OW_PATH_189B");
	Wld_InsertNpc	(Warg, "OW_PATH_189B");
	Wld_InsertNpc	(Warg, "OW_PATH_189B");
	Wld_InsertNpc	(Warg, "OW_PATH_189B");

	// Im Lager

	Wld_InsertNpc	(OrcWarrior_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(OrcWarrior_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(OrcScout_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(OrcScout_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(OrcScout_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(OrcScout_Banditenangriff, "LOCATION_11_12");
	Wld_InsertNpc	(Warg, "LOCATION_11_12");
	Wld_InsertNpc	(Warg, "LOCATION_11_12");
	Wld_InsertNpc	(Warg, "LOCATION_11_12");
	Wld_InsertNpc	(Warg, "LOCATION_11_12");

	B_StartOtherRoutine	(Mod_7175_BDT_Oschust_MT, "ANGRIFF");

	Mod_7175_BDT_Oschust_MT.guild = GIL_ORC;

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Zrobilismy to tam. Jednak wydaje sie, ze nasz obóz znajduje sie w tragicznym polozeniu. Rus jest teraz niezbedny......");
};

INSTANCE Info_Mod_Esteban_Lehrer (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_Lehrer_Condition;
	information	= Info_Mod_Esteban_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Esteban_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_Hi))
	&& ((Banditen_Dabei == TRUE)
	|| (HoheBanditen_Dabei == TRUE))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Esteban_Lehrer_07_00"); //Moge Panstwu pomóc w zwiekszeniu sily i umiejetnosci.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Esteban potrafi wytrenowac mnie w sile i umiejetnosci.");
};

INSTANCE Info_Mod_Esteban_Lernen (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_Lernen_Condition;
	information	= Info_Mod_Esteban_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Esteban_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_Lernen_15_00"); //Naucz mnie czegos.

	Info_ClearChoices	(Info_Mod_Esteban_Lernen);

	Info_AddChoice	(Info_Mod_Esteban_Lernen, DIALOG_BACK, Info_Mod_Esteban_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_1);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_1);
};

FUNC VOID Info_Mod_Esteban_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Esteban_Lernen);
};

FUNC VOID Info_Mod_Esteban_Lernen_DEX_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_DEXTERITY, 5, 100);

	Info_ClearChoices	(Info_Mod_Esteban_Lernen);

	Info_AddChoice	(Info_Mod_Esteban_Lernen, DIALOG_BACK, Info_Mod_Esteban_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_1);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_1);
};

FUNC VOID Info_Mod_Esteban_Lernen_DEX_1()
{
	B_TeachAttributePoints	(self, hero, ATR_DEXTERITY, 1, 100);

	Info_ClearChoices	(Info_Mod_Esteban_Lernen);

	Info_AddChoice	(Info_Mod_Esteban_Lernen, DIALOG_BACK, Info_Mod_Esteban_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_1);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_1);
};

FUNC VOID Info_Mod_Esteban_Lernen_STR_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 100);

	Info_ClearChoices	(Info_Mod_Esteban_Lernen);

	Info_AddChoice	(Info_Mod_Esteban_Lernen, DIALOG_BACK, Info_Mod_Esteban_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_1);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_1);
};

FUNC VOID Info_Mod_Esteban_Lernen_STR_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 100);

	Info_ClearChoices	(Info_Mod_Esteban_Lernen);

	Info_AddChoice	(Info_Mod_Esteban_Lernen, DIALOG_BACK, Info_Mod_Esteban_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY), Info_Mod_Esteban_Lernen_DEX_1);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_5);
	Info_AddChoice	(Info_Mod_Esteban_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Esteban_Lernen_STR_1);
};

INSTANCE Info_Mod_Esteban_Pickpocket (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_Pickpocket_Condition;
	information	= Info_Mod_Esteban_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Esteban_Pickpocket_Condition()
{
	C_Beklauen	(82, ItMi_Gold, 36);
};

FUNC VOID Info_Mod_Esteban_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);

	Info_AddChoice	(Info_Mod_Esteban_Pickpocket, DIALOG_BACK, Info_Mod_Esteban_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Esteban_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Esteban_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Esteban_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);
};

FUNC VOID Info_Mod_Esteban_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);

		Info_AddChoice	(Info_Mod_Esteban_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Esteban_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Esteban_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Esteban_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Esteban_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Esteban_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Esteban_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Esteban_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Esteban_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Esteban_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Esteban_EXIT (C_INFO)
{
	npc		= Mod_948_BDT_Esteban_MT;
	nr		= 1;
	condition	= Info_Mod_Esteban_EXIT_Condition;
	information	= Info_Mod_Esteban_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Esteban_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Esteban_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
