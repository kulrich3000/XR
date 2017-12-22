INSTANCE Info_Mod_Bollok_MT_Hi (C_INFO)
{
	npc		= Mod_10044_Orc_Bollok_MT;
	nr		= 1;
	condition	= Info_Mod_Bollok_MT_Hi_Condition;
	information	= Info_Mod_Bollok_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bollok_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_00"); //(surprised) I recognize you... you are man of bravely fought in mine.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_01"); //Ahh, it's you. I see you're no longer a slave in the Old Mine.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_02"); //No, run away in Minental... have met brothers after many years.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_03"); //Hmm, and hoped not to meet you.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_04"); //What, why?
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_05"); //You are the enemy of orcs and my new master.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_06"); //I have a duty to demand that I try to kill you... even if you don't want to.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_07"); //You have fought with honor and showed me that you are not evil like other people.

	self.guild = GIL_ORC;
	Npc_SetTrueGuild (self, GIL_ORC);

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "Then let's finish it.", Info_Mod_Bollok_MT_Hi_B);
	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "You can decide otherwise.", Info_Mod_Bollok_MT_Hi_A);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_B_15_00"); //Then let's finish it. May the better warrior win.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_01"); //Glad that you courageously face and accept unchangeable things.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_02"); //Will bury you with the honor of a warrior, if kill.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_A_15_00"); //You can decide otherwise. You don't have to do this.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_01"); //I'm sorry... have to do my duty.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_02"); //Will pray for your soul.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
