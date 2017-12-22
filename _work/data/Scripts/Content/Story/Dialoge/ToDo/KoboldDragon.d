INSTANCE Info_Mod_KoboldDragon_Hi (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_Hi_Condition;
	information	= Info_Mod_KoboldDragon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_KoboldDragon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_KoboldDragon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Hi_20_00"); //Ach, to ty. Mój pan juz oczekuje cie. On zna twoje czyny i z przyjemnoscia porozmawia z toba.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Mistrz goblinów, prawdopodobnie smok, wie, co zrobilem? Po prostu zastanawiamy sie, który....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAGON");
};

INSTANCE Info_Mod_KoboldDragon_Stab (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_Stab_Condition;
	information	= Info_Mod_KoboldDragon_Stab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_KoboldDragon_Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_KoboldDragon_Stab_Info()
{
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_20_00"); //Phew, wszystkie skarby nie waza tak malo....
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_20_01"); //Co? Ty tu, czlowiek! Czego chcesz?

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	Info_AddChoice	(Info_Mod_KoboldDragon_Stab, "Zloty kij, który prawdopodobnie zabrales ze soba.", Info_Mod_KoboldDragon_Stab_B);
	Info_AddChoice	(Info_Mod_KoboldDragon_Stab, "Zabijaj cie.", Info_Mod_KoboldDragon_Stab_A);
};

FUNC VOID Info_Mod_KoboldDragon_Stab_B()
{
	AI_Output(hero, self, "Info_Mod_KoboldDragon_Stab_B_15_00"); //Zloty kij, który prawdopodobnie zabrales ze soba.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_01"); //Zlota kadra? Powinien pan to miec.

	B_GiveInvItems	(self, hero, ItMw_PyrmansStab, 1);

	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_02"); //Wiec jestem mniej obciazony i znam po mojej stronie rzekomego sluge mojego bylego mistrza.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_03"); //Zycze powodzenia, czlowiek.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_KoboldDragon_Stab_A()
{
	AI_Output(hero, self, "Info_Mod_KoboldDragon_Stab_A_15_00"); //Zabijaj cie.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_A_20_01"); //Niesamowity czlowiek.... ale jak wam sie podoba. Wybrales swój wlasny bilet.

	CreateInvItems	(self, ItMw_PyrmansStab, 1);
	CreateInvItems	(self, ItMi_Gold, 1436);
	CreateInvItems	(self, ItMi_GoldCup, 3);
	CreateInvItems	(self, ItMi_GoldPlate, 5);
	CreateInvItems	(self, ItMi_SilverCup, 15);

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_KoboldDragon_EXIT (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_EXIT_Condition;
	information	= Info_Mod_KoboldDragon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_KoboldDragon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_KoboldDragon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
