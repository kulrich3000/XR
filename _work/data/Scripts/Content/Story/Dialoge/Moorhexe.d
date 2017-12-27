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
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_19_00"); //What, a living person in the damn moor and he can see me?!
	AI_Output(hero, self, "Info_Mod_Moorhexe_Hi_15_01"); //So it seems....
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_19_02"); //What in Beliar's name are you doing here? What do you want?
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_19_03"); //Certainly not the treasures of the swamp, otherwise you would have been blinded by greed and left your life in a muddy pond.
	AI_Output(hero, self, "Info_Mod_Moorhexe_Hi_15_04"); //I'm looking for an item that a magician probably gave you.
	AI_Output(self, hero, "Info_Mod_Moorhexe_Hi_19_05"); //What?! The comb of light?! In my honor, I swore to defend him. You'll never get it.

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Kamm, 1);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	if (Mod_NL_Grimbald == 4)
	{
		B_StartOtherRoutine	(Mod_7294_OUT_Grimbald_REL, "TOT");

		Mod_NL_Grimbald = 5;
	};
};
