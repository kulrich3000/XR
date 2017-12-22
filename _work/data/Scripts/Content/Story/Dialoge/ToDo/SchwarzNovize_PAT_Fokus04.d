INSTANCE Info_Mod_SchwarzNovize_PAT_Fokus04_Hi (C_INFO)
{
	npc		= Mod_7795_SNOV_Novize_PAT;
	nr		= 1;
	condition	= Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_Condition;
	information	= Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_11_00"); //Co robisz? Nie powinienes byc tutaj.

	Info_ClearChoices	(Info_Mod_SchwarzNovize_PAT_Fokus04_Hi);

	Info_AddChoice	(Info_Mod_SchwarzNovize_PAT_Fokus04_Hi, "Potrzebuje skupienia, odsuniecia sie na bok.", Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_B);
	Info_AddChoice	(Info_Mod_SchwarzNovize_PAT_Fokus04_Hi, "Przechodze obok. Chcielibysmy zobaczyc, co sie tu dzieje.", Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_A);
};

FUNC VOID Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_B_15_00"); //Potrzebuje skupienia, odsuniecia sie na bok.
	AI_Output(self, hero, "Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_B_11_01"); //No cóz, nie wiem. Mysle, ze musze pana zatrzymac.
	AI_Output(hero, self, "Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_B_15_02"); //Chodzcie wiec dalej!
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_SchwarzNovize_PAT_Fokus04_Hi);

	AI_StopProcessInfos	(self);

	self.flags = 0;

	self.guild = GIL_KDF;
	Npc_SetTrueGuild	(self, GIL_KDF);

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Czasami mozna posuwac sie naprzód z prawda. Wspanialy, wlasciwie....");

	Mod_PAT_Focus_04 = 1;
};

FUNC VOID Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_SchwarzNovize_PAT_Fokus04_Hi_A_15_00"); //Przechodze obok. Chcielibysmy zobaczyc, co sie tu dzieje.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_SchwarzNovize_PAT_Fokus04_Hi);

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 120);
};

INSTANCE Info_Mod_SchwarzNovize_PAT_Fokus04_EXIT (C_INFO)
{
	npc		= Mod_7795_SNOV_Novize_PAT;
	nr		= 1;
	condition	= Info_Mod_SchwarzNovize_PAT_Fokus04_EXIT_Condition;
	information	= Info_Mod_SchwarzNovize_PAT_Fokus04_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzNovize_PAT_Fokus04_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzNovize_PAT_Fokus04_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
