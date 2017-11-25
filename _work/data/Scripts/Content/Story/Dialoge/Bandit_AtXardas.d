INSTANCE Info_Mod_Bandit_AtXardas_Hi (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Hi_Condition;
	information	= Info_Mod_Bandit_AtXardas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bandit_AtXardas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandit_AtXardas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Hi_08_00"); //Hej! Od kiedy cipki gubia sie tutaj?
};

INSTANCE Info_Mod_Bandit_AtXardas_Bereuen (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Bereuen_Condition;
	information	= Info_Mod_Bandit_AtXardas_Bereuen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Niedlugo bedziesz zalowal tego, co powiedziales.";
};

FUNC INT Info_Mod_Bandit_AtXardas_Bereuen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_Bereuen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Bereuen_15_00"); //Niedlugo bedziesz zalowal tego, co powiedziales.
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Bereuen_08_01"); //(smiech) Chce to zobaczyc.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bandit_AtXardas_WiesoHier (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_WiesoHier_Condition;
	information	= Info_Mod_Bandit_AtXardas_WiesoHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego tu jestes?";
};

FUNC INT Info_Mod_Bandit_AtXardas_WiesoHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_WiesoHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_WiesoHier_15_00"); //Dlaczego tu jestes?
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_WiesoHier_08_01"); //Czlowiek, jakie to pytanie? To jest nasz obóz. Powiedz mi, czego szukasz, zanim odetne glowe.
};

INSTANCE Info_Mod_Bandit_AtXardas_Anschluss (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Anschluss_Condition;
	information	= Info_Mod_Bandit_AtXardas_Anschluss_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge dolaczyc do Ciebie?";
};

FUNC INT Info_Mod_Bandit_AtXardas_Anschluss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_Anschluss_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Anschluss_15_00"); //Czy moge dolaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Anschluss_08_01"); //Nie. Nie bierzemy nosicieli pieluszek, nie rozumiemy?
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Anschluss_15_02"); //W porzadku, po prostu pójde.... znowu.
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Anschluss_08_03"); //Jest na to za pózno, przyjaciel. Jestem gonna zobacze, czy masz przy sobie cos wartosciowego.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
