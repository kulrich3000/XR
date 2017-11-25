INSTANCE Info_Mod_Owen_Hi (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Hi_Condition;
	information	= Info_Mod_Owen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Owen_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Owen_Hi_31_00"); //Actually, my name's Owen. If you hear anyone calling me a turtle rammer, don't pay any attention. That... I was very drunk, all right?
	AI_Output(hero, self, "Info_Mod_Owen_Hi_15_01"); //I understand, Shi-- Owen.
	AI_Output(self, hero, "Info_Mod_Owen_Hi_31_02"); //Ha-ha.
};

INSTANCE Info_Mod_Owen_WarumPirat (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_WarumPirat_Condition;
	information	= Info_Mod_Owen_WarumPirat_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you get to the pirates?";
};

FUNC INT Info_Mod_Owen_WarumPirat_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_WarumPirat_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_WarumPirat_15_00"); //How did you get to the pirates?
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_01"); //Actually, it was the other way around: The pirates came to me. (laughs)
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_02"); //I was chief mate in the Myrthan Navy until one day Greg and his boys attacked our ship.
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_03"); //After they had overwhelmed us, they gave us the choice - those who were not already dead: captivity or defection.
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_04"); //Difficult to guess what I chose, huh? (laughs)
};

INSTANCE Info_Mod_Owen_Auftrag (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Auftrag_Condition;
	information	= Info_Mod_Owen_Auftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I help you?";
};

FUNC INT Info_Mod_Owen_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Auftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_00"); //Can I help you?
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_01"); //Yes, you can, actually.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_02"); //Go to the alchemist in Khorinis. He'll give you a bag of essence.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_03"); //It contains concentrated vitamin C.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_04"); //The last time we went treasure hunting, we had to cancel because half of the team had scurvy!
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_05"); //Give me the money and I'll get your vitamin C.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_06"); //Here, 400 pieces of gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_07"); //If he asks for more, he'll knock you over the table!
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_08"); //I'll keep that in mind.

	Log_CreateTopic	(TOPIC_MOD_OWEN_SKORBUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_OWEN_SKORBUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_OWEN_SKORBUT, "Owen gave me 400 gold coins. I'm supposed to buy a bag of vitamin C from the alchemist in town.");
};

INSTANCE Info_Mod_Owen_VitaminC (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_VitaminC_Condition;
	information	= Info_Mod_Owen_VitaminC_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the bag.";
};

FUNC INT Info_Mod_Owen_VitaminC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Auftrag))
	&& (Npc_HasItems(hero, ItFo_Addon_VitaminC) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_VitaminC_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_VitaminC_15_00"); //I got the bag.

	B_GiveInvItems	(hero, self, ItFo_Addon_VitaminC, 1);

	AI_Output(self, hero, "Info_Mod_Owen_VitaminC_31_01"); //We should not have any problems with that this time. Well done.

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	B_LogEntry_More	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, TOPIC_MOD_OWEN_SKORBUT, "Scurvy's been covered by Owen and I.", "This treasure hunt should be safe from a scurvy attack.");
	B_SetTopicStatus	(TOPIC_MOD_OWEN_SKORBUT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Owen_Befreiung (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Befreiung_Condition;
	information	= Info_Mod_Owen_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Owen, get up, it's over!";
};

FUNC INT Info_Mod_Owen_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_00"); //Owen, get up, it's over!
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_01"); //(groans) Argh, thank you. Man, I thought those robbers were gonna kill me.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_02"); //What the hell happened?
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_03"); //When I was on guard duty at Greg's cabin, I got too far to the massif. Suddenly, out of the darkness, some of these bandits attacked me.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_04"); //I could kill some, but there were too many of them. They struck me down and dragged me up here.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_05"); //I was tortured. They wanted to know what Greg was going to do next. You seem to be working for that weird guard.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_06"); //I thought I couldn't do it anymore, but then you showed up and saved me.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_07"); //Don't worry, I have something bad to tell you.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_08"); //What happened? What happened?
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_09"); //Alligator Jack. Bill told me he left in front of me to look for you.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_10"); //Unfortunately, he fell victim to the bandits. I found his body and several dead bandits a little further away from here.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_11"); //(mumbles) Alligator Jack.... dead... may... not.... be.....
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_12"); //Come on, I'll take you to Bill. He'll take care of you.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_13"); //Yeah. Let's go see Bill.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_14"); //Follow me. Follow me.
	
	B_LogEntry	(TOPIC_MOD_BEL_PIRBILL, "I found Owen and I'm taking him back to Bill now.");

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BILL");
};

INSTANCE Info_Mod_Owen_Beerdigung (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Beerdigung_Condition;
	information	= Info_Mod_Owen_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Owen_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Beerdigung_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Beerdigung_15_00"); //Hey, there you are again. You actually did it.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_01"); //Yeah, it was a gauntlet like I've never had to put it back in my life.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_02"); //One magic bullet after the next, which I had to dodge.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_03"); //But just as I was slowly threatening to run out of breath, the undead bastards dissolved with a bang in sound and smoke.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Owen_Pickpocket (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Pickpocket_Condition;
	information	= Info_Mod_Owen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Owen_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Owen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

	Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_BACK, Info_Mod_Owen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Owen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Owen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
};

FUNC VOID Info_Mod_Owen_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Owen_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Owen_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Owen_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Owen_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Owen_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Owen_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Owen_EXIT (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_EXIT_Condition;
	information	= Info_Mod_Owen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Owen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
