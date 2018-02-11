INSTANCE Info_Mod_Oric_Hi (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_Hi_Condition;
	information	= Info_Mod_Oric_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oric_Hi_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_1_16") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Oric_Hi_11_00"); //To byl poczatek. Jestem gonna zostawiam tu kilka osób. Teraz musimy uwolnic punkt wymiany, wtedy dostajemy zbrojenia, by zajac sie kopalnia.
	AI_Output(hero, self, "Info_Mod_Oric_Hi_15_01"); //Widze.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7042_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7043_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7044_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7045_RIT_Ritter_MT, "ATVM");

	Mod_7042_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7043_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7044_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7045_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Zabralismy wejscie do opuszczonej kopalni.");
};

INSTANCE Info_Mod_Oric_AtAustausch (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_AtAustausch_Condition;
	information	= Info_Mod_Oric_AtAustausch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dzieje sie teraz?";
};

FUNC INT Info_Mod_Oric_AtAustausch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_Hi))
	&& (Npc_GetDistToWP(self, "WP_INTRO_FALL3") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_AtAustausch_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_00"); //Co dzieje sie teraz?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_01"); //Teraz to moja kopalnia. Nasi pracownicy postawili sie juz w poblizu Ciebie. W kolejnej bitwie odgrywasz szczególna role.
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_02"); //Oh, co?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_03"); //Tak, mam nadzieje, ze jestescie swiadomi wagi waszego zaangazowania. Niewatpliwie przyczynia sie do wyniku bitwy. Mozna powiedziec, ze sukces przedsiebiorstwa zalezy od Ciebie, wiec miejmy nadzieje, ze wiesz......
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_04"); //Teraz wyplun od mnie to, co chcesz ode mnie.
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_05"); //Wejdz do kopalni i wyslij lidera do Beliara.
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_06"); //Jestes. Jak mam dotrzec do kopalni?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_07"); //Mam tu do odegrania role niewidzialnosci. Oczywiscie nie czyni Cie niewidocznym, ale tylko upewnia sie, ze inni Cie nie widza.

	B_GiveInvItems	(self, hero, ItSc_Unsichtbarkeit, 1);

	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_08"); //ukrasc sie do kopalni i zabic przywódce Kurgana. Niewidzialnosc trwa dziesiec minut. Poza tym Kurgan moze cie zobaczyc po zaatakowaniu go. Oznacza to, ze musisz byc szybki.
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_09"); //Potem skonczy sie mina i porozmawiam ze mna, czekam na Ciebie przed kopalnia.

	Mod_AL_Oric = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATAM");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "ATAM");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "ATAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "ATAUSTAUSCH");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1870_EBR_Alissandro_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7040_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7041_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Miejsce wymiany to nasze. Teraz mam sie przedostac niewidocznie do starej kopalni i zabic przywódce Kurgana.");
};

INSTANCE Info_Mod_Oric_KurganTot (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_KurganTot_Condition;
	information	= Info_Mod_Oric_KurganTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kurgan zmarl.";
};

FUNC INT Info_Mod_Oric_KurganTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_AtAustausch))
	&& (Mod_AL_Oric == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_KurganTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_KurganTot_15_00"); //Kurgan zmarl.
	AI_Output(self, hero, "Info_Mod_Oric_KurganTot_11_01"); //Doskonaly. Teraz zaatakujemy kopalnie. Idz dalej, moje wojska pójda za Toba.

	Mod_AL_Oric = 4;

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Teraz mozemy atakowac kopalnie.");
};

INSTANCE Info_Mod_Oric_MineUns (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_MineUns_Condition;
	information	= Info_Mod_Oric_MineUns_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kopalnia jest nasza.";
};

FUNC INT Info_Mod_Oric_MineUns_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_KurganTot))
	&& (Mod_AL_Oric == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_MineUns_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_MineUns_15_00"); //Kopalnia jest nasza.
	AI_Output(self, hero, "Info_Mod_Oric_MineUns_11_01"); //Bardzo dobry. Teraz mamy przed soba tylko jeden krok. Alissandro wyjasni to Panstwu w kabinie pasazerskiej.

	Mod_AL_Oric = 7;

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Oric_Gomez (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_Gomez_Condition;
	information	= Info_Mod_Oric_Gomez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oric_Gomez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_GomezLebenLassen))
	&& (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_Gomez_Info()
{
	AI_TurnToNpc	(self, Mod_520_DMR_Raven_MT);

	AI_Output(self, hero, "Info_Mod_Oric_Gomez_11_00"); //Zamknij sie, beliary. Pokonalismy twojego meza, wiec mamy prawo go zabic.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Oric_EXIT (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_EXIT_Condition;
	information	= Info_Mod_Oric_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Oric_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oric_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
