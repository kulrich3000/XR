INSTANCE Info_Mod_Nyras_Hi (C_INFO)
{
	npc		= Mod_7770_PSINOV_Nyras_OGY;
	nr		= 1;
	condition	= Info_Mod_Nyras_Hi_Condition;
	information	= Info_Mod_Nyras_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nyras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nyras_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_00"); //There you are, blasphemer!
	AI_Output(hero, self, "Info_Mod_Nyras_Hi_15_01"); //Nyras?! What are you doing here?
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_02"); //Prepare the necessary steps to welcome the return of my master in a not too distant time... and bring all the fallen traitors to justice.
	AI_Output(hero, self, "Info_Mod_Nyras_Hi_15_03"); //Since the focus thing, your head doesn't seem to have recovered too well...
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_04"); //Mock it, you fool! I am inspired by the power of sleepers-- and there are many others loyal to him.
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_05"); //Yes, soon our Master will rule the earth as he deserves.... and I will be by his side.
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_06"); //You won't live to see that, though... Die, infidel fool!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
