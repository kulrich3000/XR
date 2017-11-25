INSTANCE Info_Mod_Moorhexe_Hi (C_INFO)
{
	npc		= Mod_7295_OUT_Moorhexe_REL;
	nr		= 1;
	condition	= Info_Mod_Moorhexe_Hi_Condition;
	information	= Info_Mod_Moorhexe_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Moorhexe_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (playerIsTransformed == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moorhexe_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_17_00"); //Co to jest zywa osoba w chuliganskim bagnie i widzi mnie!
	AI_Output(hero, self, "Info_Mod_Moorhexe_Hi_15_01"); //Wydaje sie wiec, ze......
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_17_02"); //Co w imieniu Beliara Pan tutaj robi? Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_17_03"); //Z pewnoscia nie skarby bagna, w przeciwnym razie zostalbys oslepiony przez chciwosc i zostawilbys swoje zycie w blotnistym stawie.
	AI_Output(hero, self, "Info_Mod_Moorhexe_Hi_15_04"); //Szukam przedmiotu, który prawdopodobnie dal Ci magik.
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_17_05"); //Co? Grzebien swiatla? Na swoja czesc przysiegam, ze bede go bronil. Nigdy go nie dostaniesz.

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Kamm, 1);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	if (Mod_NL_Grimbald == 4)
	{
		B_StartOtherRoutine	(Mod_7294_OUT_Grimbald_REL, "TOT");

		Mod_NL_Grimbald = 5;
	};
};
