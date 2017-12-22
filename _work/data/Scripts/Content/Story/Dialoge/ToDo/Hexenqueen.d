INSTANCE Info_Mod_Hexenqueen_Hi (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Hi_Condition;
	information	= Info_Mod_Hexenqueen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Fake_DoorIn))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_00"); //(laughs) You're actually delivering my husband to me free of charge.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_01"); //I'm just giving you death free!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_02"); //Shut up, you fool! You really think you can stand between me and my mother?
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_03"); //Your mother?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_04"); //(laughs) Or should I say OUR mother?
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_05"); //What? What do you mean?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_06"); //Very simple. I am the daughter of Ragon and Garan is the son of the former witch queen.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_07"); //Then Garan... your brother?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_08"); //You're quick to understand.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_09"); //And Tojan is.... IGITT!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_10"); //(laughs) Yeah. The son of brother and sister. In him the blood reunited.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_11"); //Too bad his father killed him. But mother will punish him for it.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_12"); //You mean the previous witch queen?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_13"); //Yeah. Ragon killed her when, in a brief moment of carelessness, she had not tightly enough woven her magic around him and he recognized her true nature.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_14"); //But he also paid for it with his life.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_15"); //So you erased Garan's memories and left him to himself.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_16"); //Yeah, I left him with nothing but the name of Aaron. An anagram for my mother's name.... Orana!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_17"); //But this is no longer important! I'm gonna bring my mother back to life! And the little Garan will help me with that.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_18"); //But why do you need a garan?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_19"); //It's his blood I need! With him, I can bring the witch queen back to life!
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_20"); //Enough, now you're going to die!

	AI_StopProcessInfos	(self);

	Mod_FM_AtHexe = 1;
};

INSTANCE Info_Mod_Hexenqueen_Blut (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Blut_Condition;
	information	= Info_Mod_Hexenqueen_Blut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Blut_Condition()
{
	if (Mod_FM_AtHexe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Blut_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Blut_17_00"); //(laughs) You weak mortals! Shuddering in front of my mother's power!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Blut_17_01"); //She's.... what is that...? NEIN! Why aren't you flesh and blood?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "KILL");
	AI_Teleport	(Mod_1771_KDF_Aaron_PAT, "WP_PAT_TURM_17");
};

INSTANCE Info_Mod_Hexenqueen_Falsch (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Falsch_Condition;
	information	= Info_Mod_Hexenqueen_Falsch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Falsch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Blut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Falsch_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Falsch_17_00"); //AHHHH! IT WAS A DOUBLE GANG! I WILL DESTROY YOU!

	AI_StopProcessInfos	(self);
};
