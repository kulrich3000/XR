INSTANCE Info_Mod_Edgor_Hi (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Hi_Condition;
	information	= Info_Mod_Edgor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Hi_31_00"); //What are you doing here? Get out of here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Edgor_Ring (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Ring_Condition;
	information	= Info_Mod_Edgor_Ring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Ring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Belohnung))
	&& (Npc_HasItems(hero, Mod_Banditenring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Ring_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Ring_31_00"); //Where'd you get that ring?
};

INSTANCE Info_Mod_Edgor_Tom (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Tom_Condition;
	information	= Info_Mod_Edgor_Tom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tom gave it to me.";
};

FUNC INT Info_Mod_Edgor_Tom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Ring))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Tom_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Tom_15_00"); //Tom gave it to me. He sent me to give you the first half of the password.
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_01"); //And you think I'm just gonna tell you now? You'd like that, wouldn't you?
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_02"); //If you want the first half, you'll have to do something about it.

	B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Edgor won't tell me the first half of the password. I'm supposed to do something for him first.");
};

INSTANCE Info_Mod_Edgor_Aufgabe (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Aufgabe_Condition;
	information	= Info_Mod_Edgor_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you want me to do for you?";
};

FUNC INT Info_Mod_Edgor_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Tom))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_00"); //What am I supposed to do for you?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_01"); //Get me, uh... twelve stems of swamp herb, six bottles of juniper, four bottles of wine, three beers, one ham, five pieces of roasted meat, three pieces of cheese, two bottles of milk... and....
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_02"); //Anything else?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_03"); //Since you're asking... 300 gold coins wouldn't be bad either...
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_04"); //...
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_05"); //Hey, don't look at me like that now. I have to make a living from something.
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_06"); //Already at that time I could bring only a little from the valley of the Mine... and besides, these damned robbers have spread to Khorinis and leave us bandits with little left to plunder.

	Log_CreateTopic	(TOPIC_MOD_EDGORSGOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDGORSGOLD, "I am to bring Edgor twelve stems of bog cabbage, six bottles of juniper, four bottles of wine, three beers, one ham, five pieces of roasted meat, three pieces of cheese, two bottles of milk and 300 gold coins, then he tells me the first half of the password.");
};

INSTANCE Info_Mod_Edgor_Raeuber (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Raeuber_Condition;
	information	= Info_Mod_Edgor_Raeuber_Info;
	permanent	= 0;
	important	= 0;
	description	= "The robbers are history...";
};

FUNC INT Info_Mod_Edgor_Raeuber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	&& (Npc_IsDead(Mod_7772_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7773_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7774_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7775_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7776_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7777_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7778_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Raeuber_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_00"); //The robbers are history...
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_01"); //Really? Well, the militia's good for something after all. (laughs)
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_02"); //Um...
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_03"); //Then I will soon be able to plunder the full pockets and wagons of the fat traders who pass by here. (laughs)

	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_04"); //No hard feelings. Here, for the great news, take the fat ham I've got left, a beer and the two stems.

		B_ShowGivenThings	("Ham, beer and 2 stems of bog cabbage preserved");

		CreateInvItems	(hero, ItFo_Bacon, 1);
		CreateInvItems	(hero, ItFo_Beer, 1);
		CreateInvItems	(hero, ItMi_Joint, 2);

		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_05"); //Have fun with that.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_06"); //For this great news, I'll give you the first half of the password. Her name's Dex.
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_07"); //The second half will give you Senyan. It is located near Sekobs Hof.

		B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "The first half is called Dex. The second half has Senyan, which is located near Sekobs yard.", "I've told Edgor about the robbers that were killed. That was obviously enough for him....");
		B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

		B_Göttergefallen(3, 1);
	};

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Edgor_Gold (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Gold_Condition;
	information	= Info_Mod_Edgor_Gold_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the stuff.";
};

FUNC INT Info_Mod_Edgor_Gold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 12)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 6)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 4)
	&& (Npc_HasItems(hero, ItFo_Beer) >= 3)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 1)
	&& (Npc_HasItems(hero, ItFo_Mutton) >= 5)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 3)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Raeuber))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Gold_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_00"); //I got the stuff.

	Npc_RemoveInvItems	(hero, ItFo_Booze, 6);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 400);
	Npc_RemoveInvItems	(hero, ItMi_Joint, 12);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 4);
	Npc_RemoveInvItems	(hero, ItFo_Beer, 3);
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 1);
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 5);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 3);
	Npc_RemoveInvItems	(hero, ItFo_Milk, 2);

	B_ShowGivenThings	("Edgor's Things Gave");

	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_01"); //Finally a little something to eat and drink again.
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_02"); //Now will you tell me the first part?
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_03"); //Well, you brought me my things and I'm going to help you with that now.
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_04"); //The first half is called Dex. The second half will give you Senyan. It is located near Sekobs Hof.

	B_GivePlayerXP	(300);

	B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "The first half is called Dex. The second half has Senyan, which is located near Sekobs yard.", "I gave Edgor his things.");
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Edgor_Skinner (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Skinner_Condition;
	information	= Info_Mod_Edgor_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have something here for you. Greetings from Skinner.";
};

FUNC INT Info_Mod_Edgor_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_00"); //I have something here for you. Greetings from Skinner.
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_01"); //That filthy son of a bitch. At first he smokes my half swampweed at night before my departure, drinks my reserves of liquor empty and now he sends a errand boy with three ragged stems of swampweed.
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_02"); //Do you want the swamp herb or not?
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_03"); //Oh, give it to me.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 3);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Edgor got his stems.");
};

INSTANCE Info_Mod_Edgor_IstBandit (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_IstBandit_Condition;
	information	= Info_Mod_Edgor_IstBandit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_IstBandit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Wld_IsTime(22,15,02,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_IstBandit_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_00"); //Man, how boring, sitting around the campfire all the time. It's time for another robbery.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_01"); //Now would be a good time to slaughter the sheep on the pasture plateau. With the shepherd and his dog we should be able to cope easily. Are you in?
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "I really have better things to do (.... )", Info_Mod_Edgor_IstBandit_B);
	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "Yeah, of course, I'm not going to miss the fun.", Info_Mod_Edgor_IstBandit_A);
};

FUNC VOID Info_Mod_Edgor_IstBandit_B()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_B_15_00"); //I really have better things to do than slaughter a farmer's sheep in the fields.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_B_31_01"); //Then don't be.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Edgor_IstBandit_A()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_A_15_00"); //Yeah, of course, I'm not going to miss the fun.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_A_31_01"); //Well, let's go then.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Mod_Edgor_SchafeSchlachten = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_EDGOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_EDGOR, "Since Edgor is boring, I will slaughter the sheep on the pastureland with him and Franco.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MALAK");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "MALAK");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Edgor_SchafeTot (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_SchafeTot_Condition;
	information	= Info_Mod_Edgor_SchafeTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_SchafeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_IstBandit))
	&& (Mod_Edgor_Schafeschlachten == 2)
	&& (Npc_IsDead(Sheep_Bengar_04))
	&& (Npc_IsDead(Sheep_Bengar_05))
	&& (Npc_GetDistToWP(Mod_946_BDT_Edgor_NW, "NW_FARM3_MOUNTAINLAKE_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_SchafeTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_SchafeTot_31_00"); //Well, that was fun. The sheep's thighs we now let us taste good and the skins we will surely get rid of for a few gold coins somewhere. Here's your share.
	
	CreateInvItems	(hero, ItFo_MuttonRaw, 3);
	CreateInvItems	(hero, ItAt_SheepFur, 2);
	
	B_GivePlayerXP	(200);

	Mod_Edgor_SchafeSchlachten = 3;

	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "BEIFRANCO");

	CurrentNQ += 1;

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Edgor_Pickpocket (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Pickpocket_Condition;
	information	= Info_Mod_Edgor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Edgor_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_BACK, Info_Mod_Edgor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Edgor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Edgor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Edgor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Edgor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Edgor_EXIT (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_EXIT_Condition;
	information	= Info_Mod_Edgor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Edgor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
