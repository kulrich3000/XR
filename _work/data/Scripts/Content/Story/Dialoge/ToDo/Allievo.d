INSTANCE Info_Mod_Allievo_Hi (C_INFO)
{
	npc		= Mod_7033_OUT_Allievo_NW;
	nr		= 1;
	condition	= Info_Mod_Allievo_Hi_Condition;
	information	= Info_Mod_Allievo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Allievo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Allievo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_07_00"); //What do you want from me?

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Wrong question. What do you want from me?", Info_Mod_Allievo_Hi_B);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Are you all alone?", Info_Mod_Allievo_Hi_A);
};

FUNC VOID Info_Mod_Allievo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_B_15_00"); //Wrong question. What do you want from me?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_01"); //(recognizing) Ahh... My master promised me that I could do what I wanted to do with you.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_02"); //Unfortunately, I'm alone right now...

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Who else is usually here?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "What a welcome coincidence that you're alone. Now it's your turn!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_A_15_00"); //Are you all alone?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_A_07_01"); //Maybe now, but my friends will be back any minute. Just you wait and see!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Who else is usually here?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "What a welcome coincidence that you're alone. Now it's your turn!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_D_15_00"); //Who else is usually here?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_01"); //The Bruno, our bull-naked thief, and the cunning Grima. Both excellent people.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_02"); //Uh... They're on their way, but it's gonna be a long time before they get back.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_03"); //Until then I should go and collect some plants, well, you know, medicinal herbs and stuff that you can use. (long, tedious laughter)

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "If you like to talk, tell me about Canthar.", Info_Mod_Allievo_Hi_F);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Enough! You will suffer for Canthar's actions!", Info_Mod_Allievo_Hi_E);
};

FUNC VOID Info_Mod_Allievo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_C_15_00"); //What a welcome coincidence that you're alone. Now it's your turn!
	AI_Output(self, hero, "DEFAULT"); //
	
	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Allievo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_F_15_00"); //If you like to talk, tell me about Canthar.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_01"); //Where do you want me to start? Well, he's talking in his sleep. That's why I know he likes Sonja.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_02"); //And he sometimes claims that his goal is to gain world domination.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_03"); //But I don't think so, what's the point of that? It's just additional trouble.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_04"); //Uh... Bruno, Grima, grab him!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	Mod_Allievo_Zusatzpower = 1;

	Wld_InsertNpc	(Mod_7034_OUT_Bruno_NW, "WAY_PASS_MILL_04");
	Wld_InsertNpc	(Mod_7035_OUT_Grima_NW, "WAY_PASS_MILL_04");
};

FUNC VOID Info_Mod_Allievo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_E_15_00"); //Enough! You will suffer for Canthar's actions!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};
