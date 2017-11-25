INSTANCE Info_Mod_Buff_TUG_Hi (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_Hi_Condition;
	information	= Info_Mod_Buff_TUG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Buff_TUG_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Setta_TUG_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TUG_Hi_Info()
{
	AI_TurnToNPC(self, Mod_7352_OUT_Trador_TUG);
	
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Hi_06_00"); //That's the truth. We've gotten to you guys.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Hi_06_01"); //This man has given us back hope. We followed him through the teleporter.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Buff_TUG_Trador (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_Trador_Condition;
	information	= Info_Mod_Buff_TUG_Trador_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, here we are. What were you doing with Trador?";
};

FUNC INT Info_Mod_Buff_TUG_Trador_Condition()
{
	if (Mod_VMG_WSTrador == 4)
	|| (Mod_VMG_WSTrador == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TUG_Trador_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_15_00"); //Well, here we are. What were you doing with Trador?
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_01"); //I have to take a swing at that. At a young age I was a warden in the Minental.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_02"); //Some prisoners plotted a conspiracy against the mages.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_03"); //They were planning to lock up the prisoners in the Minental or something.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_04"); //In any case, I got wind of the matter and reported the matter to the chief warden.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_05"); //He punished the group whose leader was Trador.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_06"); //He didn't want to put up with that and teleported me with some kind of magic into the deserted valley.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_07"); //A few years later Setta appeared there, who apparently also had something to do with Trador.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_08"); //But when you came, the courage to act was given back to us and we used the portal together to support you.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_09"); //Luckily we finally caught Trador.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_10"); //How can I express my gratitude?

	Mod_VMG_WSTrador += 1;
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	if (Mod_VMG_WSTrador == 6)
	{
		B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I spoke to them and heard a summary of their life story. Unfortunately, I didn't learn anything worth knowing about his group, but I now know that he was a former prisoner in the colony. I should talk to Genn about the teleporter.");
	};

	B_StartOtherRoutine	(self, "DORF");

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);

	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "Give me 100 gold coins.", Info_Mod_Buff_TUG_Trador_C);
	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "Maybe 50 gold coins. That's quite enough.", Info_Mod_Buff_TUG_Trador_B);
	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "I don't need a reward, your gratitude is enough.", Info_Mod_Buff_TUG_Trador_A);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_C_15_00"); //Give me 100 gold coins.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_C_06_01"); //Not exactly something for the small purse, but please. I want you to have it.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_B_15_00"); //Maybe 50 gold coins. That's quite enough.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_B_06_01"); //That's appropriate. Here.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_A_15_00"); //I don't need a reward, your gratitude is enough.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_A_06_01"); //Oh, I haven't seen anything like that in a long time. You're a good man.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

INSTANCE Info_Mod_Buff_TUG_EXIT (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_EXIT_Condition;
	information	= Info_Mod_Buff_TUG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Buff_TUG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Buff_TUG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
