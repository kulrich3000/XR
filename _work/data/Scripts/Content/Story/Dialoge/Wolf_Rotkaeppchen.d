INSTANCE Info_Mod_Wolf_Rotkaeppchen_Hi (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_Hi_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you understand me?";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_Hi_Condition()
{
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_TIER] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_00"); //Can you understand me?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_01"); //Do I look hard of hearing?
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_02"); //Uh, no. Listen, that girl over there feels like you're bothering her.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_03"); //No wonder. I follow it until he runs out of energy and I can dig my teeth into his young flesh.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_04"); //That sounds mean!
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_05"); //(nachdenklich) Ich weiß nicht, was "scurvy" bedeutet. Aber es muss eine ähnliche Bedeutung wie "palatable" haben.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_06"); //How about I offer you a replacement for the girl's meat?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_07"); //It's not just about the food. I want to live out my hunting instincts and feel comfortable in my body.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_08"); //So what could you offer me as a substitute?
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmMich (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you take me?";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_15_00"); //Why don't you take me?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_01"); //You promise to be a good challenge.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_02"); //So I'm gonna eat you first, then maybe spare the girl.

	AI_StopProcessInfos	(self);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_14);
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmSie (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Forget about it. Good appetite.";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmSie_15_00"); //Forget about it. Good appetite.

	B_KillNpc	(Mod_7556_OUT_Rotkaeppchen_REL);

	AI_GotoNpc	(self, Mod_7556_OUT_Rotkaeppchen_REL);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(3, 1);
};
