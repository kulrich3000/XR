INSTANCE Info_Mod_Suchender_DT_Hi (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Hi_Condition;
	information	= Info_Mod_Suchender_DT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Heh. Powróc do niego.";
};

FUNC INT Info_Mod_Suchender_DT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_DT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_00"); //Heh. Powróc do niego. Teraz wiem, jaki jest Twój dom. Tym razem nie uciekniecie ode mnie!
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_01"); //Heh. Jeszcze raz! Nie oszczedzam ci tym razem!
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_02"); //Spowolnijmy. Co Cie zwariowuje?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_03"); //Jestem sluga mojego Pana, Khorgora Boskiego.
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_04"); //Co jest o nim tak boskie?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_05"); //Mój pan bedzie panem chaosu, gdy straznicy równowagi, magowie wody i ludzie z lasów zostana zniszczeni.
};

INSTANCE Info_Mod_Suchender_DT_Option01 (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Option01_Condition;
	information	= Info_Mod_Suchender_DT_Option01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widze. Powiedz, czy moge dolaczyc do Twojego klubu?";
};

FUNC INT Info_Mod_Suchender_DT_Option01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_DT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_DT_Option01_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option01_15_00"); //Widze. Powiedz, czy moge dolaczyc do Twojego klubu?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option01_10_01"); //Czy? Nie wiem.....
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option01_15_02"); //Dlaczego nie? Nie zgadzam sie z tym, co robia inni przez dlugi czas.
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option01_10_03"); //To zalezy od mistrza. Pytam go. Poczekaj tutaj.

	AI_GotoWP	(self, "DT_037");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Suchender_DT_Option02 (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Option02_Condition;
	information	= Info_Mod_Suchender_DT_Option02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aha! Dlatego tez jestes za nami i druidami.";
};

FUNC INT Info_Mod_Suchender_DT_Option02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_DT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_DT_Option02_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option02_15_00"); //Aha! Dlatego tez jestes za nami i druidami.
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option02_10_01"); //Otrzymasz pomysl. Teraz umrzec!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
