INSTANCE Info_Mod_Leonhard_Hi (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Hi_Condition;
	information	= Info_Mod_Leonhard_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leonhard_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Hi_36_00"); //(shocked) Hey! What are you sneaking around for? You trying to scare me?
};

INSTANCE Info_Mod_Leonhard_Aufgabe (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Aufgabe_Condition;
	information	= Info_Mod_Leonhard_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Leonhard_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_36_01"); //I'm waiting to make people like you a good offer. An offer to your and my advantage.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_36_02"); //Just nodded off for a second. I've been waiting a little longer.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "I don't want anything to do with that!", Info_Mod_Leonhard_Aufgabe_B);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "What's this offer?", Info_Mod_Leonhard_Aufgabe_A);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_B_15_00"); //I don't want anything to do with that!

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_A_15_00"); //What's this offer?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_01"); //Two of my mates ended up in jail, completely unlawful.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_02"); //And now I want to give the judge the opportunity to make up for his mistake.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_03"); //You're just supposed to give him a message for this, all right?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_04"); //Make sure no one else reads it, and don't look at it yourself. There's nothing exciting about it anyway.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_05"); //Of course, there's also an expense allowance for you.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "I'll take care of it.", Info_Mod_Leonhard_Aufgabe_D);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Why don't you deliver the message yourself?", Info_Mod_Leonhard_Aufgabe_C);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_D()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_D_15_00"); //I'll take care of it.

	B_GiveInvItems	(self, hero, ItWr_LeonhardRichter, 1);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Leonhard instructed me to send a message to the judge in Khorata.... and only to the judge!");

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_C_15_00"); //Why don't you deliver the message yourself?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_C_36_01"); //The judge and I-- we're not best friends.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_C_36_02"); //I hope that's enough explanation for you. What's the score?

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "I'll take care of it.", Info_Mod_Leonhard_Aufgabe_D);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "No, it doesn't look like clean work to me.", Info_Mod_Leonhard_Aufgabe_E);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_E()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_E_15_00"); //No, it doesn't look like clean work to me.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

INSTANCE Info_Mod_Leonhard_Unfrieden (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Unfrieden_Condition;
	information	= Info_Mod_Leonhard_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to collect my reward.";
};

FUNC INT Info_Mod_Leonhard_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Unfrieden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_15_00"); //I'd like to collect my reward.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_36_01"); //Yes, your reward... There's a little problem with the reward.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_36_02"); //Someone else does. But we just have to get them together.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "You mean steal? I'm not going along with that.", Info_Mod_Leonhard_Unfrieden_B);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "How do we get the gold?", Info_Mod_Leonhard_Unfrieden_A);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_B_15_00"); //You mean steal? I'm not going along with that.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_B_36_01"); //You really should change your mind.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "This is not for me.", Info_Mod_Leonhard_Unfrieden_D);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "How do we get the gold?", Info_Mod_Leonhard_Unfrieden_A);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_A_15_00"); //How do we get the gold?
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_01"); //In the restaurant Ruprecht, a... Criminals, nested.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_02"); //He sleeps in one of the beds on the first floor.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_03"); //Next to his bed he is hoarding his captured gold in a chest.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_04"); //You'll have to clean it out in an unobserved moment during the day and bring the contents to us.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_05"); //Then you get your fair share.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "This is not for me.", Info_Mod_Leonhard_Unfrieden_D);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "It's done.", Info_Mod_Leonhard_Unfrieden_C);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_D()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_D_15_00"); //This is not for me.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_D_36_01"); //Then nothing will come of the reward. Just think about it.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_C_15_00"); //It's done.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "I am to rob the chest of Ruprecht, who is currently sleeping in the restaurant on the first floor, to get my reward.");

	Mod_LeonhardRuprecht = 1;

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);
};

INSTANCE Info_Mod_Leonhard_RuprechtsTruhe (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_RuprechtsTruhe_Condition;
	information	= Info_Mod_Leonhard_RuprechtsTruhe_Info;
	permanent	= 0;
	important	= 0;
	description	= "This is Ruprecht's gold.";
};

FUNC INT Info_Mod_Leonhard_RuprechtsTruhe_Condition()
{
	if ((Mod_LeonhardRuprecht == 2)
	|| (Mod_LeonhardRuprecht == 3))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_RuprechtsTruhe_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_00"); //This is Ruprecht's gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Leonhard_RuprechtsTruhe_36_01"); //That's not as much as I expected. I think I'll take that out of your paycheck. We don't owe you anything.
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_02"); //You can't be serious.
	AI_Output(self, hero, "Info_Mod_Leonhard_RuprechtsTruhe_36_03"); //Get the fuck out of here!
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_04"); //I'll just go and get it myself!

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Leonhard didn't want to give me my reward, so I had to' persuade' him.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Leonhard_Endres (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Endres_Condition;
	information	= Info_Mod_Leonhard_Endres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Endres_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_00"); //Hey, you got a minute?
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_02"); //Heard you're investigating the complicated case of who killed Endres.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_03"); //Could be.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_04"); //I just wanted to tell you that one of my informants received a blackmail letter from the healer to Juliana.... has fallen into your hands.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_05"); //Probably blackmailing her with Endres' body, putting her out for a fee or something.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_06"); //You know, Juliana's not poor.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_07"); //Why didn't Juliana report the blackmail?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_08"); //Well, when you're blackmailing, you usually have something on the blackmailed person, right?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_09"); //The healer will have already thought about this carefully, whether he has sufficient leverage.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_10"); //Well, I just said so. So they're both dirty, that's for sure.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_11"); //Thanks for the information. But why are you telling me about this?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_12"); //I'm a decent citizen, aren't I? Isn't there a little reward for clues like that?
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_13"); //If you're right, I'm sure you are.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_14"); //Then we'll hear from each other.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Leonhard claims the healer blackmailed Juliana with Endres' body. So I also need to talk to them.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Leonhard_Endres02 (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Endres02_Condition;
	information	= Info_Mod_Leonhard_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Endres02_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_36_00"); //Well, I heard my tip helped you a whole lot.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_15_01"); //There's no denying it.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_36_02"); //Can I expect a reward?

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Leonhard_Endres02, "I won't let myself get away with it. (100 Gold give)", Info_Mod_Leonhard_Endres02_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 10)
	{
		Info_AddChoice	(Info_Mod_Leonhard_Endres02, "Here's a little something for you. (10 give gold)", Info_Mod_Leonhard_Endres02_B);
	};
	Info_AddChoice	(Info_Mod_Leonhard_Endres02, "Forget about it.", Info_Mod_Leonhard_Endres02_A);
};

FUNC VOID Info_Mod_Leonhard_Endres02_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_C_15_00"); //I won't let myself get away with it.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_C_36_01"); //Oh, man, thanks! You know what, I'll let you get rid of valuables for this in the future. Against gold, of course.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

FUNC VOID Info_Mod_Leonhard_Endres02_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_B_15_00"); //Here's a little something for you.

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_B_36_01"); //I can barely be satisfied with that.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

FUNC VOID Info_Mod_Leonhard_Endres02_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_A_15_00"); //Forget about it.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_A_36_01"); //Phew, that's a fuck-up, asshole.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

INSTANCE Info_Mod_Leonhard_Bierhexen (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Bierhexen_Condition;
	information	= Info_Mod_Leonhard_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "You urinated on the brewmaster's barley.";
};

FUNC INT Info_Mod_Leonhard_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_15_00"); //You urinated on the brewmaster's barley.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_01"); //So what?
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_15_02"); //Why?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_03"); //Because I was full. We had noticed that the master brewer had finished his first beer and visited him at night.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_04"); //Was really cool, you have to say, for the beer I would almost pay something.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_05"); //Have had a lot of fun.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_06"); //But as a matter of fact, the bladder becomes apparent at some point.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_07"); //We didn't want to go into the corner obviously, so one of us stopped a bag and the others were relieved.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_08"); //I don't remember the rest of the evening, but it's funny how the master brewer never noticed that we had all his beer, right? (laughs)

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Leonhard admitted that he's the culprit. However, he is sure that he will not suffer any consequences.");

	Mod_Bierhexen = 4;

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);

	Info_AddChoice	(Info_Mod_Leonhard_Bierhexen, "There will be consequences!", Info_Mod_Leonhard_Bierhexen_B);
	Info_AddChoice	(Info_Mod_Leonhard_Bierhexen, "What are you giving me for not telling the master brewer?", Info_Mod_Leonhard_Bierhexen_A);
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_B_15_00"); //There will be consequences!
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_B_36_01"); //Yeah, yeah, yeah, I guess so.

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_A_15_00"); //What are you giving me for not telling the master brewer?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_A_36_01"); //Are you out of your mind? Why do you think I tell everyone?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_A_36_02"); //Because I don't give a damn if the master brewer knows or not. He can't touch me.
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_A_15_03"); //We'll see about that.

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);
};

INSTANCE Info_Mod_Leonhard_Bierhexen2 (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Bierhexen2_Condition;
	information	= Info_Mod_Leonhard_Bierhexen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Bierhexen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Bierhexen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen2_36_00"); //What are you looking at? Never seen a person at honest work before?
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen2_15_01"); //Looks a little unusual to you, yeah.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen2_36_02"); //Shut the fuck up!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Leonhard_Freudenspender (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Freudenspender_Condition;
	information	= Info_Mod_Leonhard_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You look like you could use some goodies.";
};

FUNC INT Info_Mod_Leonhard_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Leonhard_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Freudenspender_15_00"); //You look like you could use some goodies.
	AI_Output(self, hero, "Info_Mod_Leonhard_Freudenspender_36_01"); //How expensive?
	AI_Output(hero, self, "Info_Mod_Leonhard_Freudenspender_15_02"); //10 gold coins.
	AI_Output(self, hero, "Info_Mod_Leonhard_Freudenspender_36_03"); //Give me that!

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Leonhard_Pickpocket (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Pickpocket_Condition;
	information	= Info_Mod_Leonhard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Leonhard_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

	Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_BACK, Info_Mod_Leonhard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Leonhard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Leonhard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Leonhard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Leonhard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Leonhard_EXIT (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_EXIT_Condition;
	information	= Info_Mod_Leonhard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leonhard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leonhard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
