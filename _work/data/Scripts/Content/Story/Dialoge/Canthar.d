INSTANCE Info_Mod_Canthar_Port (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_Port_Condition;
	information	= Info_Mod_Canthar_Port_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_Port_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brahim_Flora))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_Port_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_00"); //There you are now. I almost expected you to survive the attack.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_01"); //And now you've come to call me to account. Well, you won't be able to.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_02"); //But your skills amazed me. You've done a great job. To be on the safe side, I'm going to retire for a while now to let the thing grow.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_03"); //You can be sure I've been watching every step of you ever since I've had the suitcase. Well, if you don't mind, I'll take the good stuff from you. You don't know how much the pictures in there are worth.

	if (Npc_HasItems(hero, ItMi_PortsKoffer) == 1)
	{
		Npc_RemoveInvItems	(hero, ItMi_PortsKoffer, 1);
	}
	else
	{
		Wld_RemoveItem	(ItMi_PortsKoffer);

		AI_Output(self, hero, "Info_Mod_Canthar_Port_09_04"); //I see you're trying to hide this thing. Then I'll just have to hire one of my helpers to look for it.
	};

	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_05"); //The good Brahim almost foiled me getting the suitcase by sending you to that stupid merchant. So it's his fault that he had to die. (laughs)
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_06"); //I have the feeling that he has always worked so much against me that I didn't notice any of it. But he'll see his punishment soon enough.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_07"); //So, I've talked enough now. When the day comes, I will come back and slowly tear you apart.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_08"); //Ask Moe, he'll find out I'm back.
	
	Log_CreateTopic	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MOE_PORT, TOPIC_MOD_CANTHAR_GESCHAEFTE, "Canthar is the mastermind. He ordered the assassination of Ports and Kunos. When I went to see him, he stole my suitcase and announced that he would withdraw for the time being, but would come back at some point. Moe will know about this.", "I've interfered with one of Canthar's businesses and have been in his field of vision ever since. He has announced that he will' take me apart' after his return. Let's see what develops from it....");
	B_SetTopicStatus	(TOPIC_MOD_MOE_PORT, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLEEING");

	CurrentNQ += 1;
};

var int OptionenCanthar;

INSTANCE Info_Mod_Canthar_AtLager (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_AtLager_Condition;
	information	= Info_Mod_Canthar_AtLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_AtLager_Condition()
{
	if (Mod_CantharQuest_Last == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_AtLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_09_00"); //On your feet again? Enjoy it, because it'll be the last time.

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "I fell into Canthar's trap. But it doesn't seem so inconvenient to me. After all, I'm where I wanted to be: in the lion's den.");

	Info_ClearChoices	(Info_Mod_Canthar_AtLager);

	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Come here, you pig!", Info_Mod_Canthar_AtLager_D);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Why did Moe have to die?", Info_Mod_Canthar_AtLager_C);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "What did you do with my equipment?", Info_Mod_Canthar_AtLager_B);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Why didn't you kill me long ago?", Info_Mod_Canthar_AtLager_A);
};

FUNC VOID Info_Mod_Canthar_AtLager_E()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_00"); //I must confess, I've had enough of your boring questions.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_01"); //I itch under my fingers to watch you die. So, face the fight!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_E_15_02"); //What's stopping me from running away?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_03"); //What?! You won't succeed!

	Info_ClearChoices	(Info_Mod_Canthar_AtLager);

	AI_StopProcessInfos	(self);

	Mod_CantharQuest_Last = 6;
};

FUNC VOID Info_Mod_Canthar_AtLager_D()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_D_15_00"); //Come here, you pig!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_D_09_01"); //Well, now, don't start with the insults.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_D_09_02"); //But nice to see how easy it is to provoke you. This will make the fight even more enjoyable.
};

FUNC VOID Info_Mod_Canthar_AtLager_C()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_C_15_00"); //Why did Moe have to die?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_01"); //You don't understand, do you? It's a bit difficult, too.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_02"); //But it was because he helped you.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_03"); //If he had stopped after my first warning, he would at least have died quickly....

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};
};

FUNC VOID Info_Mod_Canthar_AtLager_B()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_B_15_00"); //What did you do with my equipment?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_B_09_01"); //Oh, it's in a safe place at the other end of our stash.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_B_09_02"); //But you won't need it much longer. (laughs)

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "According to Canthar, my equipment is hidden somewhere in this safe house. I should probably find her before I face him.");

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};

};

FUNC VOID Info_Mod_Canthar_AtLager_A()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_A_15_00"); //Why didn't you kill me long ago?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_A_09_01"); //Do you know what you've done to me?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_A_09_02"); //No, you will perish by my own hand!

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};
};

var int OptionenCanthar2;

INSTANCE Info_Mod_Canthar_AtLager2 (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_AtLager2_Condition;
	information	= Info_Mod_Canthar_AtLager2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_AtLager2_Condition()
{
	if (Mod_CantharQuest_Last == 7)
	&& (Npc_IsDead(Mod_7211_NONE_Schlaeger_NW))
	&& (Npc_IsDead(Mod_7212_NONE_Schlaeger_NW))
	&& (Npc_IsDead(Mod_7213_NONE_Schlaeger_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_AtLager2_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_00"); //You might think you're at the end of it now.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_01"); //Only I stand between you and your infinite glory. But be sure, it's not like that!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_02"); //What are you trying to tell me?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_03"); //Nothing you could understand. But remember my words, you'll remember them!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_04"); //Let's slow down. Now, you're gonna tell me what all this was up to with all this racket.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_05"); //Why didn't my earnings in the thief guild suffice and why did I build up a second existence for myself?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_06"); //The guild of thieves would have survived, but not come to life.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_07"); //At Beliar, should I be collecting sextants all day long and making old farts easier on their pockets?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_08"); //Where is the challenge, the thrill?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_09"); //We're not so unlike each other, you and I.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_10"); //If you think about it, you'll figure it out.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_11"); //Except you killed my son and broke my business.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_12"); //We don't want to embezzle Moe and the other dead people on your conscience.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_13"); //You dare to compare these bums with my son?

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Canthar said in our last conversation that he was not the last instance on my path to success. What do you think he meant by that?");

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "The toll was too high on all sides.", Info_Mod_Canthar_AtLager2_C);
	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "As if the son had become something better than his father!", Info_Mod_Canthar_AtLager2_B);
	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Every person has the same value.", Info_Mod_Canthar_AtLager2_A);
};

FUNC VOID Info_Mod_Canthar_AtLager2_D()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_D_09_00"); //Now we are inevitably battling. Inevitable?
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_D_15_01"); //You won't stand a chance in this duel.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_D_09_02"); //Can you tell me something I don't know yet?

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Let's close it up!", Info_Mod_Canthar_AtLager2_F);

	if (OptionenCanthar2 == 1)
	{
		Info_AddChoice	(Info_Mod_Canthar_AtLager2, "I forgive you.", Info_Mod_Canthar_AtLager2_E);
	};
};

FUNC VOID Info_Mod_Canthar_AtLager2_C()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_C_15_00"); //The toll was too high on all sides.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_C_09_01"); //You got that right. (rhetorical) But what should we do about it now?

	OptionenCanthar2 = 1;

	Info_Mod_Canthar_AtLager2_D();
};

FUNC VOID Info_Mod_Canthar_AtLager2_B()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_B_15_00"); //As if the son had become something better than his father!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_B_09_01"); //(Silence of the dead)

	Info_Mod_Canthar_AtLager2_D();

};

FUNC VOID Info_Mod_Canthar_AtLager2_A()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_A_15_00"); //Every person has the same value.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_A_09_01"); //Don't fool around, you're not even following it. How many have died because of your influence?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_A_09_02"); //Think about it before you come to me with sermons!

	Info_Mod_Canthar_AtLager2_D();
};

FUNC VOID Info_Mod_Canthar_AtLager2_F()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_F_15_00"); //Let's close it up!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_F_09_01"); //Yes, but not as planned. (Pause) I've decided not to face you.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_F_15_02"); //What are you up to?

	Mod_CantharSelbstmord = 1;

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Canthar's dead. I hope I'm out of trouble now.");
};

FUNC VOID Info_Mod_Canthar_AtLager2_E()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_00"); //I forgive you.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_01"); //How? What? No, but...
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_02"); //You're a filthy molate, but I don't want to kill you too.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_03"); //Shall I attack you? It would be my downfall.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_04"); //Can I live with the shame you want to bring upon me? I'd be miserable forever.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_05"); //Start a new life. Far away from here.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_06"); //I'm supposed to be capable of that? Although... maybe the conditions there are better.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_07"); //What conditions?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_08"); //What would I do there? Live a regular existence? Pah!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_09"); //All right, I accept your noble peace offering.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_10"); //But you must know that I'm not the highest animal in our organization.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_11"); //Then who is it?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_12"); //I don't know about that. I don't know my employer.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_13"); //We used to meet in the dark at the dockside warehouse.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_14"); //But when you return to Khorinis, I'm sure you'll get to know him.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_15"); //Thanks for the information. Take care, now.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_16"); //You're more reasonable than I thought. Here's the key to the outside door.

	B_GiveInvItems	(self, hero, ItKe_Canthar, 1);

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "I let Canthar live. As a thank-you, he told me that when I returned to Khorinis, I would meet an unknown person who was the principal of Canthar.");
};

INSTANCE Info_Mod_Canthar_Pickpocket (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_Pickpocket_Condition;
	information	= Info_Mod_Canthar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Canthar_Pickpocket_Condition()
{
	C_Beklauen	(135, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

	Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_BACK, Info_Mod_Canthar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Canthar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Canthar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Canthar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Canthar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Canthar_EXIT (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_EXIT_Condition;
	information	= Info_Mod_Canthar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Canthar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Canthar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
