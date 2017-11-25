INSTANCE Info_Mod_Lobart_Hi (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Hi_Condition;
	information	= Info_Mod_Lobart_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Hi_Condition()
{
	if (Mod_LobartAlwin != 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_00"); //Another freshly escaped prisoner? Or why are you hanging around here?
	AI_Output(hero, self, "Info_Mod_Lobart_Hi_15_01"); //The former.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_02"); //Lord Hagen must be about a year old when he sees you.
	AI_Output(hero, self, "Info_Mod_Lobart_Hi_15_03"); //Why? What's going on?
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_04"); //He doesn't seem very keen on admitting you guys to jails in his town.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_05"); //They're thinking about how to drive you away again.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_06"); //Of course, that's just what they say. I don't care.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_07"); //You can't steal that much from me, and you're not all bad either.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_08"); //If you're looking for a little work, I need someone else to help me.
};

INSTANCE Info_Mod_Lobart_Knastis (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Knastis_Condition;
	information	= Info_Mod_Lobart_Knastis_Info;
	permanent	= 0;
	important	= 0;
	description	= "How many ex-convicts are there in Khorinis?";
};

FUNC INT Info_Mod_Lobart_Knastis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Knastis_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Knastis_15_00"); //How many ex-convicts are there in Khorinis?
	AI_Output(self, hero, "Info_Mod_Lobart_Knastis_26_01"); //Not many. Most of them don't stay there for long, they are probably too decent there (laughs).
	AI_Output(self, hero, "Info_Mod_Lobart_Knastis_26_02"); //But in the surrounding camps and farms you will find some.
};

INSTANCE Info_Mod_Lobart_Arbeit (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Arbeit_Condition;
	information	= Info_Mod_Lobart_Arbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "You said something about work?";
};

FUNC INT Info_Mod_Lobart_Arbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Arbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_15_00"); //You said something about work?
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_01"); //Right. But I have an even more pressing concern...
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_02"); //My dog Sherome ran off and ran into the thick forest back there.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_03"); //Probably seen a rabbit or something.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_04"); //In any case, none of my workers wanted to follow, even the hunters only enter the foremost part of the forest.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_05"); //But you must be a tough guy if you survived the colony.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_06"); //That's why I'm asking you to look for Sherome.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);

	Info_AddChoice	(Info_Mod_Lobart_Arbeit, "Ask someone else.", Info_Mod_Lobart_Arbeit_B);
	Info_AddChoice	(Info_Mod_Lobart_Arbeit, "I'll have a look around.", Info_Mod_Lobart_Arbeit_A);
};

FUNC VOID Info_Mod_Lobart_Arbeit_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_B_15_00"); //Ask someone else.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);
};

FUNC VOID Info_Mod_Lobart_Arbeit_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_A_15_00"); //I'll have a look around.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);

	Log_CreateTopic	(TOPIC_MOD_LOBART_HUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LOBART_HUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LOBART_HUND, "Lobart's dog Sherome ran away. I'm supposed to find him in the woods and bring him back.");

	Mod_SheromeSuche = 1;

	B_GetNextRuebe();
};

INSTANCE Info_Mod_Lobart_SheromeDa (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_SheromeDa_Condition;
	information	= Info_Mod_Lobart_SheromeDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_SheromeDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schaeferhund_Lobart_Hi))
	&& (Npc_GetDistToNpc(self, Schaeferhund_Lobart_01) < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_SheromeDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_00"); //You brought my dog back! How can I thank you so much!
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_15_01"); //That's my job!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_02"); //Anyway, take this, it's all I can give you!

	CreateInvItems	(hero, ItMi_Gold, 50);
	CreateInvItems	(hero, ItMi_Nugget, 1);

	B_ShowGivenThings	("One lump of ore and 50 gold received");

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_LOBART_HUND, "I brought Lobart back his dog.");
	B_SetTopicStatus	(TOPIC_MOD_LOBART_HUND, LOG_SUCCESS);

	CurrentNQ += 1;

	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_03"); //I'm in your debt, lad. What did I tell you?
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_04"); //Your kind is really not as bad as you think.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_05"); //I'd appreciate your help in the beet field, too.
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_15_06"); //Pulling turnips?!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_07"); //Don't think about it too easily!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_08"); //If it was regular turnips, we could pull them ourselves.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_09"); //But this year, these things have built up such enormous roots that they are hooked together.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_10"); //They'll stick together like burs!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_11"); //My workers have already surrendered, maybe you'll find a way to loosen the beets.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_12"); //Like always finding the weakest turnip.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);

	Info_AddChoice	(Info_Mod_Lobart_SheromeDa, "That's just too bad.", Info_Mod_Lobart_SheromeDa_B);
	Info_AddChoice	(Info_Mod_Lobart_SheromeDa, "It's done.", Info_Mod_Lobart_SheromeDa_A);
};

FUNC VOID Info_Mod_Lobart_SheromeDa_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_B_15_00"); //That's just too bad.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_B_26_01"); //This is our daily work.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);
};

FUNC VOID Info_Mod_Lobart_SheromeDa_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_A_15_00"); //It's done.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);

	Log_CreateTopic	(TOPIC_MOD_RUEBENZIEHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RUEBENZIEHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RUEBENZIEHEN, "For Lobart, I'm supposed to get turnips from the field. However, he warned me that the strong root network could make pulling more difficult than expected. I should always try to find the easiest turnip.");

	Mod_LobartRuebinator = 1;
};

INSTANCE Info_Mod_Lobart_Rueben (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Rueben_Condition;
	information	= Info_Mod_Lobart_Rueben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your turnips.";
};

FUNC INT Info_Mod_Lobart_Rueben_Condition()
{
	if (Npc_HasItems(hero, ItPl_Beet) >= 20)
	&& (Mod_LobartRuebinator == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lobart_SheromeDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Rueben_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Rueben_15_00"); //Here's your turnips.

	B_GiveInvItems	(hero, self, ItPl_Beet, 20);

	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_01"); //I didn't think you'd make it. Thank you very much! Take this as a reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Lobart_Rueben_15_02"); //Is there anything else to do?
	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_03"); //Nothing we can't handle ourselves. I couldn't pay you any more.
	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_04"); //You're always welcome on the farm! Bye, now!

	B_LogEntry	(TOPIC_MOD_RUEBENZIEHEN, "I gave Lobart his turnips.");
	B_SetTopicStatus	(TOPIC_MOD_RUEBENZIEHEN, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lobart_Unkraut (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Unkraut_Condition;
	information	= Info_Mod_Lobart_Unkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Unkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Rueben))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Unkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_26_00"); //Hey, you, we could use your help again...
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_15_01"); //What are you threatened by?
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_26_02"); //weed the fields are full of them. You helped us with the beet harvest at that time and you are exactly the right person for the job.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);

	Info_AddChoice	(Info_Mod_Lobart_Unkraut, "Are you kidding me?! Do I look like a puny field worker to you?!", Info_Mod_Lobart_Unkraut_B);
	Info_AddChoice	(Info_Mod_Lobart_Unkraut, "All right...", Info_Mod_Lobart_Unkraut_A);
};

FUNC VOID Info_Mod_Lobart_Unkraut_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_B_15_00"); //Are you kidding me? Do I look like some puny field hand?
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_B_26_01"); //I was just saying. But if you're too good for that, somebody else will be earning the 20 gold coins.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);
};

FUNC VOID Info_Mod_Lobart_Unkraut_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_A_15_00"); //All right...
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_A_26_01"); //Then it's best to start right away.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);

	Mod_Lobart_Unkraut = 1;

	Log_CreateTopic	(TOPIC_MOD_LOBART_UNKRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LOBART_UNKRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LOBART_UNKRAUT, "Lobart told me to clear the fields of weeds.");

	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_01");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_02");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_03");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_04");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_05");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_06");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_07");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_08");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_09");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_10");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_11");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_12");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_13");
};

INSTANCE Info_Mod_Lobart_Unkraut2 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Unkraut2_Condition;
	information	= Info_Mod_Lobart_Unkraut2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The fields are clear.";
};

FUNC INT Info_Mod_Lobart_Unkraut2_Condition()
{
	if (Mod_Lobart_Unkraut == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Unkraut2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut2_15_00"); //The fields are clear.
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut2_26_01"); //Well done. You'll get a lot of money for that, too. Have fun with that.

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	B_SetTopicStatus	(TOPIC_MOD_LOBART_UNKRAUT, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lobart_Warentransport (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Warentransport_Condition;
	information	= Info_Mod_Lobart_Warentransport_Info;
	permanent	= 1;
	important	= 0;
	description	= "You were gonna sell your turnips to Baltram.";
};

FUNC INT Info_Mod_Lobart_Warentransport_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Warentransporte))
	&& (Mod_LobartsRuebenBaltram == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Warentransport_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Warentransport_15_00"); //You were gonna sell your turnips to Baltram.

	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Rueben))
	{
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_01"); //Yes? Oh, damn, I forgot that again!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_02"); //She almost wanted to bring it to my wife to make soup!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_03"); //Here you have them....

		B_GiveInvItems	(self, hero, ItPl_Beet, 20);
	
		AI_Output(hero, self, "Info_Mod_Lobart_Warentransport_15_04"); //What about a payment?
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_05"); //I have a deal with Baltram, we'll settle up monthly. So you don't have to worry about it.

		Mod_LobartsRuebenBaltram = 1;

		B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "I got the turnips from Lobart.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_06"); //As you can see, they're still in the field. And how they're stuck!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_07"); //There's nothing I can do for you right now.
	};
};

INSTANCE Info_Mod_Lobart_Randolph (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Randolph_Condition;
	information	= Info_Mod_Lobart_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Randolph_Condition()
{
	if (Mod_Randolph_Started >= 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Randolph_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_00"); //What are you doing here? Don't get any demons in our house. We've already lost a farmhand.
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_01"); //And this creepy figure standing at the top of the stone circle....
	AI_Output(hero, self, "Info_Mod_Lobart_Randolph_15_02"); //Creepy figure?
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_03"); //Yeah, it's all started since that sinister fellow has been hanging around. He's definitely involved.
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_04"); //Somebody better go and slay him.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Lobart blames a dark journeyman at the stone circle for the disaster. He expressed a wish to see him dead.");
};

INSTANCE Info_Mod_Lobart_RandolphWeg (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_RandolphWeg_Condition;
	information	= Info_Mod_Lobart_RandolphWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "The darkness has disappeared.";
};

FUNC INT Info_Mod_Lobart_RandolphWeg_Condition()
{
	if ((Mod_Randolph_Started == 13)
	|| (Mod_Randolph_Started == 16))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lobart_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_RandolphWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_RandolphWeg_15_00"); //The darkness has disappeared. The same should also apply to the demons soon.
	AI_Output(self, hero, "Info_Mod_Lobart_RandolphWeg_26_01"); //What, are you sure? Thanks for telling me. Here, take this gold as a thank you.
	
	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_StartOtherRoutine	(Mod_1414_BAU_Bauer_NW, "START");
	B_StartOtherRoutine	(Mod_1415_BAU_Bauer_NW, "START");
	B_StartOtherRoutine	(Mod_545_NONE_Gildo_NW, "START");
	B_StartOtherRoutine	(Mod_910_BAU_Lobart_NW, "START");
	B_StartOtherRoutine	(Mod_911_BAU_Maleth_NW, "START");
};

INSTANCE Info_Mod_Lobart_AlwinScene (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_AlwinScene_Condition;
	information	= Info_Mod_Lobart_AlwinScene_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_AlwinScene_Condition()
{
	if (Mod_LobartAlwin == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_AlwinScene_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_26_01"); //I don't know either. But who else would do it?
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	Info_AddChoice	(Info_Mod_Lobart_AlwinScene, "Right, there's no other plausible reason.", Info_Mod_Lobart_AlwinScene_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		Info_AddChoice	(Info_Mod_Lobart_AlwinScene, "It is possible that for the deaths of some sheep (... )", Info_Mod_Lobart_AlwinScene_A);
	};
};

FUNC VOID Info_Mod_Lobart_AlwinScene_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_B_15_00"); //Right, there's no other plausible reason.
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_B_26_01"); //Now I almost killed him! I can't believe it...
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_B_26_02"); //I need to rest... Tell him I'm sorry, he's done enough penance.
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(3, 1);

	Mod_LobartAlwin = 3;
};

FUNC VOID Info_Mod_Lobart_AlwinScene_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_00"); //It is possible that I am responsible for the death of some sheep.
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_01"); //What are you saying?!
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_02"); //I'm really sorry... How can I make it up to you?
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_03"); //No, no, no! This can't be happening! (pause)
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_04"); //You cannot replace the loss of their souls. But it's worth it. 300 gold.
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_05"); //I beg your pardon.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	B_Göttergefallen(1, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_LobartAlwin = 5;

	B_StartOtherRoutine	(Mod_597_NONE_Meldor_NW, "START");
	B_StartOtherRoutine	(Mod_1041_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1039_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_593_NONE_Lucy_NW, "START");
};

INSTANCE Info_Mod_Lobart_VinoBrennerei (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_VinoBrennerei_Condition;
	information	= Info_Mod_Lobart_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_00"); //Wait a second... You get around a lot, don't you?
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_01"); //Have you seen Vino anywhere?
	AI_Output(hero, self, "Info_Mod_Lobart_VinoBrennerei_15_02"); //No, not lately.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_03"); //Too bad. Where could he have stayed?
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_04"); //As I heard from Mika, he passed the East Gate some time ago.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_05"); //Unfortunately, he doesn't know where he went afterwards.
	AI_Output(hero, self, "Info_Mod_Lobart_VinoBrennerei_15_06"); //He'll show up again.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_07"); //I hope so. Similarly, he doesn't see that he stays away for so long without saying anything.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_08"); //The other farmers in the field also know nothing... That's what they say.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_09"); //But they are acting strangely. If Vino doesn't show up soon, I'm gonna change words with them again.
	
	Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino is missing at Lobart's farm.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Mika had seen Vino pass the east gate, but could not remember where he went afterwards.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Maybe I should talk to his peasants in the field.");
};

INSTANCE Info_Mod_Lobart_Leichengase (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase_Condition;
	information	= Info_Mod_Lobart_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got a minute?";
};

FUNC INT Info_Mod_Lobart_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Leichengase))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_00"); //You got a minute?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_01"); //What's the matter?
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_02"); //I've got a bag of herbs here, and I've got to put it in a troll's stomach somehow.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_03"); //You want WHAT? Are you afraid he's not getting enough vitamins or what is this?
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_04"); //It doesn't matter. Do you know a way or not?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_05"); //Yes, I know a way. It doesn't come cheap, though.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_06"); //You'd have to buy a lamb for that.
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_07"); //Why?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_08"); //Very simple. You give me the bag, I'll feed it to a sheep.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_09"); //You come back tomorrow, slaughter it and throw the trolls to their stomachs for food.
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_10"); //How much do you want for a sheep?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_11"); //Wenn ich ihnen die Kräuter geben soll muss ich einen "Breeding surcharge" berechnen, das macht dann insgesamt ... 300 Goldstücke.
};

INSTANCE Info_Mod_Lobart_Leichengase2 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase2_Condition;
	information	= Info_Mod_Lobart_Leichengase2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, here. (300 Gold)";
};

FUNC INT Info_Mod_Lobart_Leichengase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase2_15_00"); //All right, here.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 300);
	Npc_RemoveInvItems	(hero, ItMi_Sumpfkraeuter, 1);

	B_ShowGivenThings	("300 gold and bag with bog herbs added");

	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase2_26_01"); //Thank you very much. Just come back tomorrow.

	Mod_Leichengase_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Lobart_Leichengase3 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase3_Condition;
	information	= Info_Mod_Lobart_Leichengase3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Leichengase3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (Wld_GetDay() > Mod_Leichengase_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase3_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase3_26_00"); //Here's your sheep, good luck with that.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase3_26_01"); //If you're really slaughtering it, please don't do it near me, I don't like to watch it all the time.

	Wld_InsertNpc	(Trollschaf, Npc_GetNearestWP(self));

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Lobart fed a sheep with the herbs. I should slaughter it now and take it out of my stomach.");

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lobart_Anschlagtafel (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Anschlagtafel_Condition;
	information	= Info_Mod_Lobart_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I saw your poster on the billboard...";
};

FUNC INT Info_Mod_Lobart_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Lobart == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMW_Sense_02) >= Mod_Anschlagtafel_Khorinis_Lobart_Sense)
	&& (Npc_HasItems(hero, ItMw_Sense) >= Mod_Anschlagtafel_Khorinis_Lobart_KleineSense)
	&& (Npc_HasItems(hero, ItMi_Stuff_Barbknife_01) >= Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser)
	&& (Npc_HasItems(hero, ItMi_Pan) >= Mod_Anschlagtafel_Khorinis_Lobart_Pfanne)
	&& (Npc_HasItems(hero, ItMw_1h_Vlk_Axe) >= Mod_Anschlagtafel_Khorinis_Lobart_Beil)
	&& (Npc_HasItems(hero, ItMi_Kerze) >= Mod_Anschlagtafel_Khorinis_Lobart_Kerze)
	&& (Npc_HasItems(hero, ItMi_Rake) >= Mod_Anschlagtafel_Khorinis_Lobart_Harke)
	&& (Npc_HasItems(hero, ItMi_Scoop) >= Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel)
	&& (Npc_HasItems(hero, ItMw_1h_Bau_Axe) >= Mod_Anschlagtafel_Khorinis_Lobart_Sichel)
	{
		Npc_RemoveInvItems	(hero, ItMW_Sense_02, Mod_Anschlagtafel_Khorinis_Lobart_Sense);
		Npc_RemoveInvItems	(hero, ItMw_Sense, Mod_Anschlagtafel_Khorinis_Lobart_KleineSense);
		Npc_RemoveInvItems	(hero, ItMi_Stuff_Barbknife_01, Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser);
		Npc_RemoveInvItems	(hero, ItMi_Pan, Mod_Anschlagtafel_Khorinis_Lobart_Pfanne);
		Npc_RemoveInvItems	(hero, ItMw_1h_Vlk_Axe, Mod_Anschlagtafel_Khorinis_Lobart_Beil);
		Npc_RemoveInvItems	(hero, ItMi_Kerze, Mod_Anschlagtafel_Khorinis_Lobart_Kerze);
		Npc_RemoveInvItems	(hero, ItMi_Rake, Mod_Anschlagtafel_Khorinis_Lobart_Harke);
		Npc_RemoveInvItems	(hero, ItMi_Scoop, Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel);
		Npc_RemoveInvItems	(hero, ItMw_1h_Bau_Axe, Mod_Anschlagtafel_Khorinis_Lobart_Sichel);

		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_00"); //What? Show me... In fact, all of it. Very well done.
		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_01"); //Here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Lobart_Gold);

		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_02"); //Nice doing business with you.

		if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Lobart = 0;
		Mod_Anschlagtafel_Khorinis_Lobart_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Lobart, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Lobart_Pickpocket (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Pickpocket_Condition;
	information	= Info_Mod_Lobart_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lobart_Pickpocket_Condition()
{
	C_Beklauen	(53, ItPl_Beet, 12);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

	Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_BACK, Info_Mod_Lobart_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lobart_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lobart_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lobart_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lobart_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lobart_EXIT (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_EXIT_Condition;
	information	= Info_Mod_Lobart_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lobart_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lobart_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
