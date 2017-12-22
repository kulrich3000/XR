INSTANCE Info_Mod_Tondral_GotoTempel (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_GotoTempel_Condition;
	information	= Info_Mod_Tondral_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are expected at the temple.";
};

FUNC INT Info_Mod_Tondral_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_GotoTempel_15_00"); //You are expected at the temple.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Tondral_Ken (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Ken_Condition;
	information	= Info_Mod_Tondral_Ken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Ken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_AtTondral))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Ken_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_00"); //Oh, there you are. I was afraid Talas wouldn't find you.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_01"); //Neither did he. I came here for a man named Ken.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_02"); //That's typical of Talas. I'll have to talk to him. But who the hell is Ken?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_03"); //Although, you can tell me later. Take a look at this one.

	B_ShowGivenThings	("Receiving documents");

	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_04"); //That's interesting. I think it's a teleport spell.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_05"); //Where do you think it leads?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_06"); //Probably to a place called Gelato.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_07"); //Gelato? Never heard of it.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_08"); //Can I have the spell?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_09"); //Are you out of your mind? We'll have to explore the role of spell!

	Info_ClearChoices	(Info_Mod_Tondral_Ken);

	Info_AddChoice	(Info_Mod_Tondral_Ken, "I beg you, please. It's important.", Info_Mod_Tondral_Ken_B);
};

FUNC VOID Info_Mod_Tondral_Ken_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_00"); //I beg you, please. It's important.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_01"); //What do you want with it?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_02"); //It's about a job. That's all I can tell you. It's important.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_03"); //All right, I think I need to trust you. Here's your part of the story.

	B_GiveInvItems	(self, hero, ItSc_Teleport_Eisgebiet, 1);

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I now have the teleport spell. I have to take the risk of using him.");

	VMG_Second = 4;

	Info_ClearChoices	(Info_Mod_Tondral_Ken);
};

INSTANCE Info_Mod_Tondral_Thys (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Thys_Condition;
	information	= Info_Mod_Tondral_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Thys))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_00"); //I've been expecting you. How did it go?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_01"); //It was as I thought. I was teleported to Gelato.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_02"); //That's awesome! Did you have trouble?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_03"); //No, everything went well.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_04"); //Too bad you used up the part. We're gonna have to start looking for more spells. What it will cost again....

	B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "START");

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Here's 1,000 gold coins. Use it to finance your excavations.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Here's 100 gold coins. Use it to finance your excavations.", Info_Mod_Tondral_Thys_B);
	};
	Info_AddChoice	(Info_Mod_Tondral_Thys, "Yeah, it won't be cheap.", Info_Mod_Tondral_Thys_A);
};

FUNC VOID Info_Mod_Tondral_Thys_C()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_00"); //Here's 1,000 gold coins. Use it to finance your excavations.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_01"); //Thank you very much! Here, take this healing potion as a thank you.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_02"); //Thank you, thank you. I have to get going now.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_03"); //Take care of yourself.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I spoke to Baal Tondral and financed his further excavations. He showed his gratitude with a healing potion. I should go back to Ferco now.");

	B_GivePlayerXP	(500);

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_00"); //Here's 100 gold coins. Use it to finance your excavations.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_01"); //Thank you very much! Here, take this healing potion as a thank you.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_02"); //Thank you, thank you. I have to get going now.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_03"); //Take care of yourself.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I spoke to Baal Tondral and financed his further excavations. He showed his gratitude with a healing potion. I should go back to Ferco now.");

	VMG_Second = 12;

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_A()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_A_15_00"); //Yeah, it won't be cheap.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_A_13_01"); //Don't you want to contribute a little?

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	Info_AddChoice	(Info_Mod_Tondral_Thys, "No.", Info_Mod_Tondral_Thys_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Here's 1,000 gold coins. Use it to finance your excavations.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Here's 100 gold coins. Use it to finance your excavations.", Info_Mod_Tondral_Thys_B);
	};
};

FUNC VOID Info_Mod_Tondral_Thys_D()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_D_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_D_13_01"); //You're not pure. You better go.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I should go back to Ferco now.");

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

INSTANCE Info_Mod_Tondral_Woher (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Woher_Condition;
	information	= Info_Mod_Tondral_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me something about your story?";
};

FUNC INT Info_Mod_Tondral_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_00"); //Tell me something about your story?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_01"); //I was thrown into the colony for writing two books about the gods.
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_02"); //And what was so bad about it?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_03"); //Well, they don't seem to like that I've expressed my opinion of the gods.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_04"); //I then settled down at the huts in front of the new camp until I heard about the brotherhood.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_05"); //The sleeper was for me an alternative to the other gods and so I was accepted here.
};

INSTANCE Info_Mod_Tondral_Buch (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Buch_Condition;
	information	= Info_Mod_Tondral_Buch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still have copies of the books?";
};

FUNC INT Info_Mod_Tondral_Buch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tondral_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Buch_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Buch_15_00"); //Do you still have copies of the books?
	AI_Output(self, hero, "Info_Mod_Tondral_Buch_13_01"); //Not here, but you can go to my old hut. There should be a book there.
};

INSTANCE Info_Mod_Tondral_EXIT (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_EXIT_Condition;
	information	= Info_Mod_Tondral_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tondral_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tondral_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
