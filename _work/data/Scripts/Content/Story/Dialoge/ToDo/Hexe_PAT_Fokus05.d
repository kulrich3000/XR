INSTANCE Info_Mod_Hexe_PAT_Fokus05_Hi (C_INFO)
{
	npc		= Mod_7796_HEX_Hexe_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexe_PAT_Fokus05_Hi_Condition;
	information	= Info_Mod_Hexe_PAT_Fokus05_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Hexe_PAT_Fokus05_Hi_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_17_00"); //No cóz, zalosny mieczak. Piekna porazka, ty. Próbujesz sie ze mna balaganic?

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	Info_AddChoice	(Info_Mod_Hexe_PAT_Fokus05_Hi, "Jestem gonna strzelic haniebne usta, ty stare hag. Zapraszamy tutaj!", Info_Mod_Hexe_PAT_Fokus05_Hi_B);
	Info_AddChoice	(Info_Mod_Hexe_PAT_Fokus05_Hi, "Spokojna, dobra kobieta. Chce tylko skupic sie na tym.", Info_Mod_Hexe_PAT_Fokus05_Hi_A);
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Hexe_PAT_Fokus05_Hi_B_15_00"); //Jestem gonna strzelic haniebne usta, ty stare hag. Zapraszamy tutaj!
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_B_17_01"); //Mozesz miec to duze usta!

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);

	Npc_SetRefuseTalk	(self, 120);
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Hexe_PAT_Fokus05_Hi_A_15_00"); //Spokojna, dobra kobieta. Chce tylko skupic sie na tym.
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_A_17_01"); //Nad martwym cialem.

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Nie pozwole sobie na taka suke, która mnie prowokuje. Rozsadny jak jestem.");

	Mod_PAT_Focus_05 = 1;
};

INSTANCE Info_Mod_Hexe_PAT_Fokus05_EXIT (C_INFO)
{
	npc		= Mod_7796_HEX_Hexe_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexe_PAT_Fokus05_EXIT_Condition;
	information	= Info_Mod_Hexe_PAT_Fokus05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hexe_PAT_Fokus05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
