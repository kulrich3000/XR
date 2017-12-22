INSTANCE Info_Mod_AttraktiveFrau_Hi (C_INFO)
{
	npc		= Mod_7198_HEX_AttraktiveFrau_NW;
	nr		= 1;
	condition	= Info_Mod_AttraktiveFrau_Hi_Condition;
	information	= Info_Mod_AttraktiveFrau_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AttraktiveFrau_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_21_00"); //Hello, handsome. What's a gorgeous guy like you doing in that dive without a female escort?
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_21_01"); //Won't you join me for a little bit?

	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "No, I'm busy and I have to keep going.", Info_Mod_AttraktiveFrau_Hi_B);
	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Yes, but always.", Info_Mod_AttraktiveFrau_Hi_A);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_C_21_00"); //I sense that you are surrounded by a very special aura.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_C_21_01"); //You're not an ordinary man... (holds for a moment, again seductive) Shall we not go to the room and get to know each other a bit better?
	
	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "No, I really have to get going.", Info_Mod_AttraktiveFrau_Hi_E);
	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Why not, let's go.", Info_Mod_AttraktiveFrau_Hi_D);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_F()
{
	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	B_StartOtherRoutine	(self, "ZIMMER");

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "WP_TAVERNE_ZIMMER_07");
	AI_GotoWP	(hero, "WP_TAVERNE_ZIMMER_07");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_B_15_00"); //No, I'm busy and I have to keep going.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_B_21_01"); //But, but it's not right to do a woman a favor like that.
	
	Info_Mod_AttraktiveFrau_Hi_C();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_A_15_00"); //Yes, but always.
	
	Info_Mod_AttraktiveFrau_Hi_C();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_E_15_00"); //No, I really have to get going.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_E_21_01"); //I can hear in your voice that you're only playing with me. Will you come on, please?

	Mod_AttraktiveFrau = 1;
	
	Info_Mod_AttraktiveFrau_Hi_F();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_D_15_00"); //Why not, let's go.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_D_21_01"); //Then just follow me.

	Mod_AttraktiveFrau = 2;
	
	Info_Mod_AttraktiveFrau_Hi_F();
};

INSTANCE Info_Mod_AttraktiveFrau_Sex (C_INFO)
{
	npc		= Mod_7198_HEX_AttraktiveFrau_NW;
	nr		= 1;
	condition	= Info_Mod_AttraktiveFrau_Sex_Condition;
	information	= Info_Mod_AttraktiveFrau_Sex_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AttraktiveFrau_Sex_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AttraktiveFrau_Hi))
	&& (Npc_GetDistToWP(self, "WP_TAVERNE_ZIMMER_07") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AttraktiveFrau_Sex_Info()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Sex_21_00"); //Now undress yourself. It will be an unforgettable night for you.

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_GivePlayerXP	(250);

	hero.attribute[ATR_STRENGTH] -= 10;
	hero.attribute[ATR_DEXTERITY] -= 10;
	hero.attribute[ATR_MANA] -= 10;
	hero.attribute[ATR_MANA_MAX] -= 10;

	if (Mod_AttraktiveFrau == 1)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, I don't feel well at all. But I just wasn't able to resist their will.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, I don't feel well at all. What have I gotten involved in?");
	};

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "I should definitely visit a healing magician and then tell Saturas about it.");
		
	Spine_OverallSaveSetInt("HexeSex", 1);
	CheckSexAchievement();
};
