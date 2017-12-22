INSTANCE Info_Mod_Oschust_BadOne_Hi (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Hi_Condition;
	information	= Info_Mod_Oschust_BadOne_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_BadOne_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oschust_BadOne_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Hi_04_00"); //Przekazanie, odlóz swoja bron! Jestescie otoczeni i nie macie zadnych szans na to, aby przeciwstawic sie tej wyzszosci.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "ATPLAYER");
};

INSTANCE Info_Mod_Oschust_BadOne_You (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_You_Condition;
	information	= Info_Mod_Oschust_BadOne_You_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_BadOne_You_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_Unterlegen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_You_Info()
{
	Npc_ClearAIQueue	(Mod_948_BDT_Esteban_MT);
	Npc_ClearAIQueue	(Mod_955_BDT_Juan_MT);
	Npc_ClearAIQueue	(Mod_957_BDT_Logan_MT);
	Npc_ClearAIQueue	(Mod_958_BDT_Miguel_MT);
	Npc_ClearAIQueue	(Mod_964_BDT_Skinner_MT);
	Npc_ClearAIQueue	(Mod_4074_BDT_Bandit_MT);
	Npc_ClearAIQueue	(Mod_4075_BDT_Bandit_MT);
	Npc_ClearAIQueue	(Mod_790_BDT_Morgahard_MT);

	AI_StandUpQuick	(Mod_948_BDT_Esteban_MT);
	AI_Teleport	(Mod_948_BDT_Esteban_MT, "TOT");
	AI_StandUpQuick	(Mod_955_BDT_Juan_MT);
	AI_Teleport	(Mod_955_BDT_Juan_MT, "TOT");
	AI_StandUpQuick	(Mod_957_BDT_Logan_MT);
	AI_Teleport	(Mod_957_BDT_Logan_MT, "TOT");
	AI_StandUpQuick	(Mod_958_BDT_Miguel_MT);
	AI_Teleport	(Mod_958_BDT_Miguel_MT, "TOT");
	AI_StandUpQuick	(Mod_964_BDT_Skinner_MT);
	AI_Teleport	(Mod_964_BDT_Skinner_MT, "TOT");
	AI_StandUpQuick	(Mod_4074_BDT_Bandit_MT);
	AI_Teleport	(Mod_4074_BDT_Bandit_MT, "TOT");
	AI_StandUpQuick	(Mod_4075_BDT_Bandit_MT);
	AI_Teleport	(Mod_4075_BDT_Bandit_MT, "TOT");
	AI_StandUpQuick	(Mod_790_BDT_Morgahard_MT);
	AI_Teleport	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "GEFANGEN");

	AI_PlayAni	(hero, "T_SLEEPGROUND_2_STAND");

	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_00"); //Zabrac je!

	AI_Wait	(self, 3.0);

	AI_Function_S(self, Wld_StopEffect, "BLACK_SCREEN_LONG");

	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_01"); //A teraz do ciebie.

	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot))
	{
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_02"); //Ha, myslales, ze mnie zaprowadziles.
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_03"); //Ale ja nie bylem martwy, tylko ciezko ranny, a magiczny kamien, który otrzymalam od Hosh Pak zblizyl mnie do ran.
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_04"); //Masz jeszcze cos do powiedzenia, zanim oddam ci wam w rece moich owlosionych przyjaciól?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_05"); //Dobrze, mój przyjaciel, bedziesz placil za ciosy. Masz jeszcze cos do powiedzenia, zanim skoncze cie z moimi owlosionymi przyjaciólmi?
	};

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "To byla zasadzka. Oschust zdradzil nas do orków i zlapal pozostalych bandytów. Powinienem o tym powiedziec Dexterowi.");
};

INSTANCE Info_Mod_Oschust_BadOne_Trophies (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Trophies_Condition;
	information	= Info_Mod_Oschust_BadOne_Trophies_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kolejnych kilka trofeów do mojej kolekcji.";
};

FUNC INT Info_Mod_Oschust_BadOne_Trophies_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Trophies_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Trophies_15_00"); //Kolejnych kilka trofeów do mojej kolekcji.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Trophies_04_01"); //brash.... Idz dalej, potnij go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Gnade (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Gnade_Condition;
	information	= Info_Mod_Oschust_BadOne_Gnade_Info;
	permanent	= 0;
	important	= 0;
	description	= "Prosze dac mi przerwe.";
};

FUNC INT Info_Mod_Oschust_BadOne_Gnade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Gnade_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Gnade_15_00"); //Prosze dac mi przerwe.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Gnade_04_01"); //(smieje sie zle) Ha, twoje szepty nie pomoga ci teraz. Jestes po prostu kawalkiem brudu, który usuwamy, zanim w koncu zniszczymy obóz bandytów i powtórzymy amulet magów.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Gnade_04_02"); //A schwytani bandyci oczekuja nie mniej zlego losu.... ale wystarczajaco duzo slów. Idz dalej, wyjmij go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Plan (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Plan_Condition;
	information	= Info_Mod_Oschust_BadOne_Plan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy najpierw pozwolilbys mi na inne plany?";
};

FUNC INT Info_Mod_Oschust_BadOne_Plan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Plan_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Plan_15_00"); //Czy najpierw pozwolilbys mi na inne plany?
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_01"); //Ha, poniewaz i tak juz wkrótce umrzesz.... Zniszczymy obóz bandytów i dostajemy amulet sila od magów.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_02"); //Cóz, a schwytani bandyci zostaja poswieceni w milym rytuale. Cieszcie sie, ze oszczedzacie ten los (smieje sie zlo).
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_03"); //Teraz dosc slów. Odciee ciekawe uszy rozdrobnionego ciala jako trofea. Chodzcie, oderwijcie go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Billig (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Billig_Condition;
	information	= Info_Mod_Oschust_BadOne_Billig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gleboko zatopiony, by sprzedac sie orkom....";
};

FUNC INT Info_Mod_Oschust_BadOne_Billig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Billig_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Billig_15_00"); //Gleboko zatopiony, by sprzedac sie orkom....
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_01"); //Huh, ale za dobra cene. Orki nagradzaly mnie magia, zlotem i poteznymi artefaktami.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_02"); //Moge teraz konkurowac z najsilniejszymi bojownikami. A mój brzeszczot bedzie tym, który cieje Twoje wnetrznosci.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_03"); //Chodzmy dalej, skonczmy go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_10021_ORC_Elite_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10022_ORC_Elite_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10029_Orc_Warrior_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10030_Orc_Warrior_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10031_Orc_Warrior_MT, hero, AR_Kill, 0);
};
