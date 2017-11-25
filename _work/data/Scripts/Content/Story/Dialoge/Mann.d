INSTANCE Info_Mod_Mann_TeachFight (C_INFO)
{
	npc		= Mod_7169_OUT_Mann_NW;
	nr		= 1;
	condition	= Info_Mod_Mann_TeachFight_Condition;
	information	= Info_Mod_Mann_TeachFight_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Teach swordplay)";
};

FUNC INT Info_Mod_Mann_TeachFight_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_MageAndFighter))
	&& ((hero.HitChance[NPC_TALENT_1H] >= 40)
	|| (hero.HitChance[NPC_TALENT_2H] >= 40))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mann_TeachFight_Info()
{
	AI_Output(hero, self, "Info_Mod_Mann_TeachFight_15_00"); //Learn to see the sword as a part of your arm, your own body. Become one with him.
	AI_Output(hero, self, "Info_Mod_Mann_TeachFight_15_01"); //If you use a double-edged sword, put a lot of force into the blow, but a saber lets slip on the opponent to strike deep cuts.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Mann_EXIT (C_INFO)
{
	npc		= Mod_7169_OUT_Mann_NW;
	nr		= 1;
	condition	= Info_Mod_Mann_EXIT_Condition;
	information	= Info_Mod_Mann_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mann_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mann_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
