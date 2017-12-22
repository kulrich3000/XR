INSTANCE Info_Mod_Setta_TUG_Hi (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_Hi_Condition;
	information	= Info_Mod_Setta_TUG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Setta_TUG_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trador_Buff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Setta_TUG_Hi_Info()
{
	AI_TurnToNPC(self, Mod_7352_OUT_Trador_TUG);
	
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Hi_19_00"); //I remembered again, I did. Only because of you we were in the valley!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Setta_TUG_Trador (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_Trador_Condition;
	information	= Info_Mod_Setta_TUG_Trador_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's a wrap. How did you know Trador?";
};

FUNC INT Info_Mod_Setta_TUG_Trador_Condition()
{
	if (Mod_VMG_WSTrador == 4)
	|| (Mod_VMG_WSTrador == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Setta_TUG_Trador_Info()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_15_00"); //That's a wrap. How did you know Trador?
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_01"); //Two years ago I was still a dancer for Gomez, I was. Trador was one of the court magicians.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_02"); //He planned an assassination attempt on Corristo with a couple of other people, he did, but I got that and reported it.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_03"); //But he still caught me, he did, and he took me to the valley with a teleporter rune.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_04"); //I built myself a cottage and discovered the old Buff, I discovered.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_05"); //I offered him to stay at my place, but he wanted to sleep in his tent.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_06"); //Your appearance gave me back the courage to act, he was.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_07"); //Thank you very much! What's your reward?

	Mod_VMG_WSTrador += 1;
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	if (Mod_VMG_WSTrador == 6)
	{
		B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I spoke to them and heard a summary of their life story. Unfortunately, I didn't learn anything worth knowing about his group, but I now know that he was a former prisoner in the colony. I should talk to Genn about the teleporter.");
	};

	B_StartOtherRoutine	(self, "DORF");

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);

	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "Give me 100 gold coins.", Info_Mod_Setta_TUG_Trador_C);
	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "Maybe 50 gold coins. That's quite enough.", Info_Mod_Setta_TUG_Trador_B);
	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "I don't need a reward, your gratitude is enough.", Info_Mod_Setta_TUG_Trador_A);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_C_15_00"); //Give me 100 gold coins.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_C_19_01"); //That much? I need to see if I've got that much, I have to. Yes, here.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_B_15_00"); //Maybe 50 gold coins. That's quite enough.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_B_19_01"); //Here. I know the gold is in good hands, I know.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_A_15_00"); //I don't need a reward, your gratitude is enough.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_A_19_01"); //Thank you so much! I'll never forget it, never forget it.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

INSTANCE Info_Mod_Setta_TUG_EXIT (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_EXIT_Condition;
	information	= Info_Mod_Setta_TUG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Setta_TUG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_TUG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
