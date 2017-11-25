INSTANCE Info_Mod_Will_Hi (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_Hi_Condition;
	information	= Info_Mod_Will_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Will_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_00"); //Step inside, friend. Right now, my new revolutionary stage play is running.
	AI_Output(hero, self, "Info_Mod_Will_Hi_15_01"); //What's so revolutionary about it?
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_02"); //I've cut the whole thing down to its climaxes!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_03"); //Innovation à la Will Shakesbeer!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_04"); //How often do you sit in the teatro and look at - possibly exciting - pièce teatrale, a play, a play, feverishly, and yet - after two hours, after three hours a yawn creeps in;
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_05"); //you suppress it, but the further time goes on, the more often you have to fight it.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_06"); //And certainly no one can fill it up for several hours without bridge scenes, if He so wills, there is no need to do so.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_07"); //This will now change! My concept envisages a concentration of suspense, of suspense, of tension, it goes blow by blow, blow by blow, blow by blow of fate on hammer stroke, or so, as He wants.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_08"); //The next recita, performance, is about to begin. He can be there for only 100 gold coins.
};

INSTANCE Info_Mod_Will_EXIT (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_EXIT_Condition;
	information	= Info_Mod_Will_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Will_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
