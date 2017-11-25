INSTANCE Info_Mod_Dar_Miguel (C_INFO)
{
	npc		= Mod_782_SLD_Dar_MT;
	nr		= 1;
	condition	= Info_Mod_Dar_Miguel_Condition;
	information	= Info_Mod_Dar_Miguel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dar_Miguel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Aufgabe3))
	&& (Npc_HasItems(hero, ItPo_MiguelForDar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dar_Miguel_Info()
{
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_00"); //Hej, co tu robisz? A moze przynosisz mi towar od bandytów?
	AI_Output(hero, self, "Info_Mod_Dar_Miguel_15_01"); //Um, tak, powinienem.
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_02"); //Przynies eliksir, dodaj eliksir.

	B_GiveInvItems	(hero, self, ItPo_MiguelForDar, 1);

	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_03"); //Cóz, wiec przypuszczam, ze to....

	CreateInvItems	(self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);

	AI_Output(hero, self, "Info_Mod_Dar_Miguel_15_04"); //Uh....
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_05"); //Buaahh, naprawde chlodne rzeczy, ciezko sie wykopuje. Z czyms takim chce byc najwolniejsza gaaanzn Tlg....

	AI_StopProcessInfos	(self);

	AI_PlayAni	(self, "T_DANCE_01");

	AI_PlayAni	(self, "T_STAND_2_SLEEPGROUND");
	
	B_LogEntry	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, "Tak wiec sam napar opróznia sie? Co robisz? Z pewnoscia nie jest zdrowe....");
};

INSTANCE Info_Mod_Dar_EXIT (C_INFO)
{
	npc		= Mod_782_SLD_Dar_MT;
	nr		= 1;
	condition	= Info_Mod_Dar_EXIT_Condition;
	information	= Info_Mod_Dar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
