INSTANCE Info_Mod_Bollok_Hi (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_Hi_Condition;
	information	= Info_Mod_Bollok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you understand our language?";
};

FUNC INT Info_Mod_Bollok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_00"); //Do you understand our language?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_01"); //(surprised) Man speak normally.... and attack each other with a sword.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_02"); //Can you tell me what happened?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_03"); //In the large dark cave behind, where in former times Gachluk had been, suddenly stand up human slaves who were dead before, now no longer dead... but not alive.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_04"); //Andere sie genannt "zombies", glaube ich.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_05"); //Uh-huh, the slaves' dead bodies have awakened to being undead.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_06"); //Then what happened?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_07"); //Chef der Mine Kurgan sagen, dass viele Männer in Finsternis gehen, um "zombies" zu schlagen mit Schwert.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_08"); //Have also done and fought. But not all survived and those who came out changed.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_09"); //Changed?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_10"); //Yeah, dark shadows on face and attacked everyone else.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_11"); //Others who were wounded and killed then also brought into the darkness... and the dead came out as zombies.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_12"); //Bollok also feared that attacking me and killing me.... but not done.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_13"); //Thanks for the information.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_14"); //Then I must go there to find the root of the evil.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_15"); //Men are strong and brave warriors. Wishing luck on the way...
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_16"); //Wait, before forgetting, those who have changed have also brought much magical ore into darkness.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_17"); //It's all very strange.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_18"); //Yeah, that sounds really weird.

	AI_TurnToNpc	(hero, self);
};

INSTANCE Info_Mod_Bollok_EXIT (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_EXIT_Condition;
	information	= Info_Mod_Bollok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bollok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
