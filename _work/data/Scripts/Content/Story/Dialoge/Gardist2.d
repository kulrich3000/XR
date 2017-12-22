INSTANCE Info_Mod_Gardist2_Hi (C_INFO)
{
	npc		= Mod_1141_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist2_Hi_Condition;
	information	= Info_Mod_Gardist2_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gardist2_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtZuflucht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gardist2_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gardist2_Hi_08_00"); //Ha, wiedzialem, ze wiedzialam, ze puszczanie szczurów wróci do miejsca, w którym zlapalismy starego mezczyzne.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gardist2_Jackal (C_INFO)
{
	npc		= Mod_1141_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist2_Jackal_Condition;
	information	= Info_Mod_Gardist2_Jackal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gardist2_Jackal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtTurm))
	&& (!Npc_IsInState(Mod_1107_GRD_Jackal_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gardist2_Jackal_Info()
{
	AI_Output(self, hero, "Info_Mod_Gardist2_Jackal_08_00"); //Tak, a ja zrobie to z wami i wezme te nagrode, poniewaz Bartholo chcial publicznie wykonac egzekucje Alissandro osobiscie, moge zajac sie wami.
	
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
