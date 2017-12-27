INSTANCE Info_Mod_Turendil_Hi (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Hi_Condition;
	information	= Info_Mod_Turendil_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	&& (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_00"); //There you are at last, I've been waiting for you.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_02"); //As you may have heard, we come from Tugettso, a green valley very far to the west.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_03"); //There are arm-length plants growing everywhere, you hear the buzzing of honey bees, the whispering of some delicious meat bugs... damn it, I wander.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_04"); //So Tugettso has recently been plagued by a plague.

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "That doesn't concern me.", Info_Mod_Turendil_Hi_B);
	Info_AddChoice	(Info_Mod_Turendil_Hi, "What plague?", Info_Mod_Turendil_Hi_A);
};

FUNC VOID Info_Mod_Turendil_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_B_15_00"); //I'm not interested.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_B_05_01"); //Please! You are our last hope!

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "How much does it cost me?", Info_Mod_Turendil_Hi_C);
};

FUNC VOID Info_Mod_Turendil_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_C_15_00"); //How much does it cost me?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_C_05_01"); //It's not supposed to be your damage.

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "What plague?", Info_Mod_Turendil_Hi_A);
};

FUNC VOID Info_Mod_Turendil_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_00"); //What plague?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_01"); //A goblin plague. They fall into our valley and bend our branches, make firewood out of the trees, smash the bees, crush the delicious meat bugs.... um, you're just a threat.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_02"); //And you want me to kill them all? Alone?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_03"); //We can give you backup. A fighter and a magician. I can also provide you with some healing potions.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_04"); //Hm, all right.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_05"); //Thank you very much! I am so indefinitely grateful to you!
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_06"); //Now our beloved valley is being saved, the plants will grow again, the bees will be humming again, the meat bugs will be squeaking again and.... um, thanks.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_07"); //Here are the promised healing potions.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_08"); //Thank you, but what about the backup?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_09"); //You can take Struk the fighter and Thorge the magician with you. They'll be waiting for you at the gate.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_10"); //Good, then I'll see you later.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 3);

	B_StartOtherRoutine	(Mod_1956_VMK_Struk_MT, "ATGATE");
	B_StartOtherRoutine	(Mod_1957_VMG_Thorge_MT, "ATGATE");

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Apparently the inhabitants of this place, Tugettso, suffer from a goblin plague. I've agreed to help them get rid of them.");

	Info_ClearChoices	(Info_Mod_Turendil_Hi);
};

INSTANCE Info_Mod_Turendil_Wohin (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Wohin_Condition;
	information	= Info_Mod_Turendil_Wohin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Wohin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Wohin_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_00"); //Wait! You don't know how to get there. The platform on which the focus was placed at that time was converted into a teleporter.
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_01"); //Up there is Albert, he tells you how to use it.
	AI_Output(hero, self, "Info_Mod_Turendil_Wohin_15_02"); //Thanks for the tip.
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_03"); //Take care of yourself.

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "The old focus platform is now a teleporter. I should go to this Albert guy and ask him how it works. But before that I had to pick up Thorge and Struk at the goalkeeper's so that I don't have to fight alone.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Turendil_Matronen (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Matronen_Condition;
	information	= Info_Mod_Turendil_Matronen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Matronen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Matronen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Matronen_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_00"); //I see you're back. So tell me about it. Are the bees humming again...?
	AI_Output(hero, self, "Info_Mod_Turendil_Matronen_15_01"); //(interrupts) Yes, they do. A man-made landslide caused the tunnel system to collapse.
	AI_Output(hero, self, "Info_Mod_Turendil_Matronen_15_02"); //I stopped the offspring and brought them to justice. Genn and the others will do the rest on site.
	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_03"); //I'm glad to hear that. Here's your reward.

	CreateInvItems	(self, ItMi_Gold, 500);
	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_04"); //Faice's looking for you again. Why don't you go straight to him?

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "I got my reward.");
	B_SetTopicStatus	(TOPIC_MOD_FERCO_GOBLIN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Turendil_Faice (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Faice_Condition;
	information	= Info_Mod_Turendil_Faice_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_RitualRunning))
	&& (Npc_IsInState(Mod_4019_VMG_Faice_MT, ZS_Drained))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Faice_Info()
{
	AI_GotoNpc	(self, Mod_4019_VMG_Faice_MT);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Turendil_Faice_05_00"); //It's horrible!

	B_StartOtherRoutine	(Mod_4020_VMG_Hermy_MT, "START");
	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "START");
	B_StartOtherRoutine	(Mod_1625_VMG_Neol_MT, "START");
	B_StartOtherRoutine	(Mod_1628_VMG_Anor_MT, "START");
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	Info_AddChoice	(Info_Mod_Turendil_Faice, "He was fragile anyway.", Info_Mod_Turendil_Faice_B);
	Info_AddChoice	(Info_Mod_Turendil_Faice, "How could that be?", Info_Mod_Turendil_Faice_A);
};

FUNC VOID Info_Mod_Turendil_Faice_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_B_15_00"); //He was fragile anyway.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_B_05_01"); //He may be senile, but he's not an old man! How can you say such a thing?
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	Info_AddChoice	(Info_Mod_Turendil_Faice, "That's the truth.", Info_Mod_Turendil_Faice_D);
	Info_AddChoice	(Info_Mod_Turendil_Faice, "I'm sorry about that.", Info_Mod_Turendil_Faice_C);
};

FUNC VOID Info_Mod_Turendil_Faice_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_E_05_00"); //Maybe his scroll was poisoned with speech and the poison got to his fingers. Or his summoning spell rolls were incorrectly described.
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_E_15_01"); //How can we find out?
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_E_05_02"); //Come back tomorrow, then we'll probably know more.
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	AI_StopProcessInfos	(self);

	Mod_VMG_Faice_Gift = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Tomorrow I'll find out exactly what happened to Faice when he collapsed during the ritual.");
};

FUNC VOID Info_Mod_Turendil_Faice_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_A_15_00"); //How could that be?

	Info_Mod_Turendil_Faice_E();
};

FUNC VOID Info_Mod_Turendil_Faice_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_D_15_00"); //That's the truth.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_D_05_01"); //Get out of here, wretched man, and don't you ever come back here again!
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turendil_Faice_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_C_15_00"); //I'm sorry about that.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_C_05_01"); //That's what I mean.
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_C_15_02"); //But what happened now?

	Info_Mod_Turendil_Faice_E();
};

INSTANCE Info_Mod_Turendil_FaiceGifty (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_FaiceGifty_Condition;
	information	= Info_Mod_Turendil_FaiceGifty_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_FaiceGifty_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Faice))
	&& (Mod_VMG_Faice_Gift > 0)
	&& (Mod_VMG_Faice_Gift < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_00"); //There you are at last. We've been waiting for you.
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_15_01"); //What did you find out?
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_02"); //Apparently, Faice was poisoned. However, it is not an everyday poison, but a special poison.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_03"); //I guess you'll have to go to Tugettso again, because I only know from there that the plant we need for the antidote is growing.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_04"); //Such a beautiful, big plant. She's got purple streaks, you know. l-- er... where was I? Oh, yeah. We also have to find the culprit.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "Not again.", Info_Mod_Turendil_FaiceGifty_B);
	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "It would be an honor to help.", Info_Mod_Turendil_FaiceGifty_A);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_B_15_00"); //Not again.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_B_05_01"); //Please! You have to help us!
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "No, not again.", Info_Mod_Turendil_FaiceGifty_D);
	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "Okay, what do I do?", Info_Mod_Turendil_FaiceGifty_C);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_E_05_00"); //All right, get ready to see Albert. He'll give you a recharge stone.
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_E_15_01"); //I will, thank you.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Faice has been poisoned, and I'm to find the antidote in Tugettso. I'm supposed to get another recharging stone from Albert.");
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_A_15_00"); //It would be an honor to help.

	Info_Mod_Turendil_FaiceGifty_E();
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_D_15_00"); //No, not again.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_D_05_01"); //Then go, but think about it. Our fate may depend on it.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_C_15_00"); //Okay, what do I do?

	Info_Mod_Turendil_FaiceGifty_E();
};

INSTANCE Info_Mod_Turendil_Mendulus (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Mendulus_Condition;
	information	= Info_Mod_Turendil_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 9)
	&& (Npc_HasItems(hero, ItPl_Mendulus) > 0)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_05_00"); //You got the weed?
		
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "No, I couldn't find anything.", Info_Mod_Turendil_Mendulus_B);
	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "Yes, here is the plant.", Info_Mod_Turendil_Mendulus_A);
};

FUNC VOID Info_Mod_Turendil_Mendulus_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_B_15_00"); //No, I couldn't find anything.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_B_05_01"); //Are you serious? You can't be serious!
	
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "I'm completely serious.", Info_Mod_Turendil_Mendulus_D);
	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "No, it was just a joke. Here's the plant.", Info_Mod_Turendil_Mendulus_C);
};

FUNC VOID Info_Mod_Turendil_Mendulus_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_E_05_00"); //Thanks. You're our hero. I'll do whatever it takes to heal him. You could search for the culprit as long as you want. Just talk to the others.
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_E_15_01"); //I will, I will.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_E_05_02"); //Take care of yourself.
	
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 10;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I gave Turendil the Mendulus herb. He told me to ask around who might be guilty.");
};

FUNC VOID Info_Mod_Turendil_Mendulus_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_A_15_00"); //Yes, here is the plant.

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	Info_Mod_Turendil_Mendulus_E();
};

FUNC VOID Info_Mod_Turendil_Mendulus_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_D_15_00"); //I'm completely serious.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_D_05_01"); //You were our last hope. I'm afraid that's the end of transformation mages.
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_D_15_02"); //That reminds me.... do you need this plant?

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_D_05_03"); //Yes, exactly!

	Info_Mod_Turendil_Mendulus_E();
};

FUNC VOID Info_Mod_Turendil_Mendulus_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_C_15_00"); //No, it was just a joke. Here's the plant.

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	Info_Mod_Turendil_Mendulus_E();
};

INSTANCE Info_Mod_Turendil_Furt (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Furt_Condition;
	information	= Info_Mod_Turendil_Furt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Furt_Condition()
{
	if (Mod_VMG_FaiceGifty_Gift == 12)
	|| (Mod_VMG_FaiceGifty_Gift == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Furt_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_00"); //And? What did you find out?

	if (Mod_VMG_FaiceGifty_Gift == 12)
	{
		AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_01"); //Furt poisoned Faice's spell. I sent him away.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_02"); //Maybe you shouldn't have done that. But it's good to know who it was and that he's no longer with us.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_03"); //Here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, 250);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_04"); //Furt poisoned Faice's spell. I leave his fate to your hands.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_05"); //Well done. We will decide his fate. Here's your reward and some spell rolls.

		CreateInvItems	(hero, ItMi_Gold, 1000);
		CreateInvItems	(hero, ItSc_TrfBloodfly, 3);

		B_ShowGivenThings	("1000 gold and 3 spell rolls preserved");
	};

	B_GivePlayerXP	(500);

	AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_06"); //Thanks.
	AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_07"); //I think Anor has something else to do for you. Then come back to me in a few days.

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I received my reward from Turendil. The case is no longer in my hands.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HEILUNG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Turendil_FurtNextDay (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_FurtNextDay_Condition;
	information	= Info_Mod_Turendil_FurtNextDay_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_FurtNextDay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anor_NickTot))
	&& ((Mod_VMG_FaiceGifty_Gift == 12)
	|| (Mod_VMG_FaiceGifty_Gift == 13))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_00"); //There you are, I've been looking for you.
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_15_01"); //What's up?

	if (Mod_VMG_FaiceGifty_Gift == 12)
	{
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_02"); //I want you to go to Tugettso and find out what poison Faice was poisoned with so that we can make an antidote as soon as possible.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_03"); //We interrogated Furt and he told us that we would find his master in Tugettso. He said it was one of us! Incredible!
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_04"); //I want you to follow up on this and, if possible, find the poison Faice was poisoned with.
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_05"); //So we could speed up his healing by making an antidote.
	};

	Info_ClearChoices	(Info_Mod_Turendil_FurtNextDay);

	Info_AddChoice	(Info_Mod_Turendil_FurtNextDay, "I'll be on my way right away.", Info_Mod_Turendil_FurtNextDay_B);
	Info_AddChoice	(Info_Mod_Turendil_FurtNextDay, "What happens to Furt now?", Info_Mod_Turendil_FurtNextDay_A);
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_B_15_00"); //I'll be on my way right away.
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_B_05_01"); //Thank you very much. If you get ambushed, which I hope you don't, you've got a few potions here.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 5);

	Log_CreateTopic	(TOPIC_MOD_FAICE_GIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_GIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "I was ordered to go back to Tugettso and find the poison with which Faice was poisoned. Off to Albert's.");

	Info_ClearChoices	(Info_Mod_Turendil_FurtNextDay);
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_A_15_00"); //What happens to Furt now?
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_A_05_01"); //We do not yet agree, but you will soon enough find out how he will continue.

	Info_Mod_Turendil_FurtNextDay_B();
};

INSTANCE Info_Mod_Turendil_Trador (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Trador_Condition;
	information	= Info_Mod_Turendil_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Dean))
	&& (Npc_HasItems(hero, ItPl_Venena) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_00"); //Here you are again, at last. What can you tell me?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_01"); //Where do you want me to start?
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_02"); //The poison. Did you find out where it came from?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_03"); //Yes, the poison comes from the Venena plant. Here's a copy.

	B_GiveInvItems	(hero, self, ItPl_Venena, 1);

	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_04"); //Thanks. And did you find out who of the mages is behind it?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_05"); //Not a magician. It was a man named Trador, an accomplice of Furt.
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_06"); //He had the magician kill Dean and put on his robe.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_07"); //That's terrible! Thank you for your trouble. Can I just find out how he kept him from dead?

	Info_ClearChoices	(Info_Mod_Turendil_Trador);

	Info_AddChoice	(Info_Mod_Turendil_Trador, "He hired a summoned Golem to do it.", Info_Mod_Turendil_Trador_B);
	Info_AddChoice	(Info_Mod_Turendil_Trador, "I don't want to talk about it.", Info_Mod_Turendil_Trador_A);
};

FUNC VOID Info_Mod_Turendil_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_C_15_00"); //What happens now?
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_C_05_01"); //We'll talk about it. Come back tomorrow.

	B_GivePlayerXP	(500);

	Mod_VMG_Turendil_Trador_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Turendil_Trador);

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "I reported to Turendil and received my reward. I'm supposed to wait a day for the magicians to discuss.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_GIFT, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "INSEL");
};

FUNC VOID Info_Mod_Turendil_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_B_15_00"); //He hired a summoned Golem to do it.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_B_05_01"); //Ah, he knows our magic. This is bad. Here, this is for your trouble.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_TrfBloodfly, 1);

	B_ShowGivenThings	("300 Gold and scroll received");

	Info_Mod_Turendil_Trador_C();
};

FUNC VOID Info_Mod_Turendil_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_A_15_00"); //I don't want to talk about it.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_A_05_01"); //Okay. Here's your paycheck.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	Info_Mod_Turendil_Trador_C();
};

INSTANCE Info_Mod_Turendil_TradorBesprochen (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_TradorBesprochen_Condition;
	information	= Info_Mod_Turendil_TradorBesprochen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anything new?";
};

FUNC INT Info_Mod_Turendil_TradorBesprochen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Trador))
	&& (Wld_GetDay() > Mod_VMG_Turendil_Trador_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_TradorBesprochen_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_00"); //Anything new?
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_01"); //Du musst unbedingt zurück nach Tugettso! Sämtliche Runen "Summon Golem" wurden dort entwendet!
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_02"); //We suspect Trador is behind this.

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_03"); //Besides, Furt escaped us by trickery.
	};

	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_04"); //I'll be on my way right away.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_05"); //Oh, one more thing. The teleporter's had occasional dropouts lately.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_06"); //If you don't arrive in Tugettso, which I hope you don't, I will give you some transformational roles for sure.

	B_GiveInvItems	(self, hero, ItSc_TrfBloodfly, 3);

	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_07"); //So you're ignored by monsters that are too big for you.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_08"); //I don't think I need this, but thanks anyway.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_09"); //Take care of yourself.

	Log_CreateTopic	(TOPIC_MOD_TURENDIL_GOLEM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I have a new assignment to go back to Tugettso and find out where the Golem runes have gone.");
};

INSTANCE Info_Mod_Turendil_TradorTot (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_TradorTot_Condition;
	information	= Info_Mod_Turendil_TradorTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Turendil_TradorTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_TradorTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_00"); //Here I am again.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_01"); //And I see you're alive. How have you been?
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_02"); //First I came out in a remote valley because Trador had manipulated the teleporter.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_03"); //So he's behind it!
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_04"); //Yes, after that I activated the teleporter in the valley with the help of two hermits and finally got out in Tugettso.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_05"); //There I met Trador. He wasn't expecting me, but he was still a tough nut to crack.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_06"); //Together we have defeated him and I have killed him.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_07"); //That's good news. Did he have the runes with him?

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	Info_AddChoice	(Info_Mod_Turendil_TradorTot, "[Lies] No, I'm afraid not.", Info_Mod_Turendil_TradorTot_B);

	if (Npc_HasItems(hero, ItRu_SumGol) >= 2)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 5)
	{
		Info_AddChoice	(Info_Mod_Turendil_TradorTot, "Yes, here they are.", Info_Mod_Turendil_TradorTot_A);
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_B_15_00"); //No, I'm afraid not.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_B_05_01"); //What a pity. We'll keep looking for it.

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	Info_AddChoice	(Info_Mod_Turendil_TradorTot, "Good luck with that.", Info_Mod_Turendil_TradorTot_D);
	
	if (Npc_HasItems(hero, ItRu_SumGol) >= 2)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 5)
	{
		Info_AddChoice	(Info_Mod_Turendil_TradorTot, "It was just a joke. Here are the runes.", Info_Mod_Turendil_TradorTot_C);
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_A_15_00"); //Yes, here they are.

	Npc_RemoveInvItems	(hero, ItSc_SumGol, 5);
	Npc_RemoveInvItems	(hero, ItRu_SumGol, 2);

	B_ShowGivenThings	("2 runes and 5 scroll given");

	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_A_05_01"); //Thank you very much. Here's your reward.

	CreateInvItems	(hero, ItSc_TrfBloodfly, 1);
	CreateInvItems	(hero, ItMi_Gold, 500);

	B_ShowGivenThings	("500 Gold and scroll received");

	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_A_15_02"); //Thanks. I'll be on my way now.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_A_05_03"); //Do that. Talk to Faice in good time. He wanted something from you.

	B_GivePlayerXP	(750);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "The assignment's over. Turendil told me Faice wanted something from me.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Turendil_TradorTot_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_D_15_00"); //Good luck with that.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_D_05_01"); //Talk to Faice in good time. He wanted something from you.

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "The assignment's over. Turendil told me Faice wanted something from me.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Turendil_TradorTot_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_C_15_00"); //It was just a joke. Here are the runes.

	Npc_RemoveInvItems	(hero, ItSc_SumGol, 5);
	Npc_RemoveInvItems	(hero, ItRu_SumGol, 2);

	B_ShowGivenThings	("2 runes and 5 scroll given");

	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_C_05_01"); //Don't do that again! Thanks anyway. Here's a reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 350);

	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_C_15_02"); //Thanks. I'll be on my way now.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_C_05_03"); //Do that. Talk to Faice in good time. He wanted something from you.

	B_GivePlayerXP	(500);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "The assignment's over. Turendil told me Faice wanted something from me.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

INSTANCE Info_Mod_Turendil_WerBistDu (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_WerBistDu_Condition;
	information	= Info_Mod_Turendil_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Turendil_WerBistDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turendil_WerBistDu_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Turendil_WerBistDu_05_00"); //My name is Turendil. I'm the deputy head of Faice, our chief. He's very busy right now.
	AI_Output(self, hero, "Info_Mod_Turendil_WerBistDu_05_01"); //How can I help you?
};

INSTANCE Info_Mod_Turendil_Woher (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Woher_Condition;
	information	= Info_Mod_Turendil_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where do you come from?";
};

FUNC INT Info_Mod_Turendil_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Woher_15_00"); //Where are you from?
	AI_Output(self, hero, "Info_Mod_Turendil_Woher_05_01"); //We come from a small valley called Tugettso. This valley is pure nature.
	AI_Output(self, hero, "Info_Mod_Turendil_Woher_05_02"); //When the time comes, maybe you'll get there sometime.
};

INSTANCE Info_Mod_Turendil_WasHier (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_WasHier_Condition;
	information	= Info_Mod_Turendil_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Turendil_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_WasHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_WasHier_15_00"); //What are you guys doing here?
	AI_Output(self, hero, "Info_Mod_Turendil_WasHier_05_01"); //We explore this valley and the ancient knowledge that can be found here.
};

INSTANCE Info_Mod_Turendil_BACK (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_BACK_Condition;
	information	= Info_Mod_Turendil_BACK_Info;
	permanent	= 1;
	important	= 0;
	description	= "(room leaving)";
};

FUNC INT Info_Mod_Turendil_BACK_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_TEMPELRUIN07") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_BACK_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "LOCATION_28_01");
};

INSTANCE Info_Mod_Turendil_Pickpocket (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Pickpocket_Condition;
	information	= Info_Mod_Turendil_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Turendil_Pickpocket_Condition()
{
	C_Beklauen	(143, ItSc_TrfMeatbug, 1);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

	Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_BACK, Info_Mod_Turendil_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Turendil_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Turendil_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Turendil_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Turendil_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Turendil_EXIT (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_EXIT_Condition;
	information	= Info_Mod_Turendil_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Turendil_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turendil_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
