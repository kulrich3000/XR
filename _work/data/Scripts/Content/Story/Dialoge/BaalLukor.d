INSTANCE Info_Mod_Lukor_Hi (C_INFO)
{
	npc		= Mod_7266_GUR_BaalLukor_OGY;
	nr		= 1;
	condition	= Info_Mod_Lukor_Hi_Condition;
	information	= Info_Mod_Lukor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_00"); //There's the infidel fool who banished my master.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_01"); //What, are you still alive?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_02"); //You may have banished him. But before that, I was given some of his power.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_03"); //What, what are you talking about?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_04"); //All of them follow foreign idols, gods or the simple mammon. They will all pay with their blood.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_05"); //Seems kind of familiar.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_06"); //(as possessed) Meanwhile, I have meditated days and weeks, incessantly, and learned to release and use powers that go far beyond those of an ordinary magician or even fighter.

	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	Info_AddChoice	(Info_Mod_Lukor_Hi, "So what, the sleeper was just a puny servant of a magician anyway.", Info_Mod_Lukor_Hi_C);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Hmm, I think my gun was placed between your shoulder blades (... )", Info_Mod_Lukor_Hi_B);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Yeah, yeah, I'll let you meditate a little bit more.", Info_Mod_Lukor_Hi_A);
};

FUNC VOID Info_Mod_Lukor_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_00"); //And now I finally met allies, servants who are loyal to their Master and Creator.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_01"); //Yes, my master.... And here is the unbeliever who banished him....
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_02"); //With your blood I will water the altar now. Die!
	
	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Lukor_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_C_15_00"); //So what, the sleeper was just a puny servant of a magician anyway.
	
	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_B_15_00"); //Hmm, I think my gun between your shoulder blades might bring you back to the ground quickly.

	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_A_15_00"); //Yeah, yeah, I'll let you meditate a little bit more. It took many a man decades to find enlightenment...

	Info_Mod_Lukor_Hi_D();
};
