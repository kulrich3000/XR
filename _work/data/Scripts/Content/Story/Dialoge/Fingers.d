INSTANCE Info_Mod_Fingers_Hi (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Hi_Condition;
	information	= Info_Mod_Fingers_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, what can I get from you?";
};

FUNC INT Info_Mod_Fingers_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fingers_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Hi_15_00"); //Hello, what can I get from you?
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_01"); //Got it? No, I can show you how to get something for yourself... from the pockets and homes of your fellow men.
	AI_Output(hero, self, "Info_Mod_Fingers_Hi_15_02"); //Sounds useful to me.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_03"); //Ahh, someone who appreciates the virtues. Very good. Very good.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_04"); //For now, I can show you how to sneak.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_05"); //If you want to learn more, you would have to do a little thing for me...

	Log_CreateTopic	(TOPIC_MOD_LEHRER_OLDCAMP, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_OLDCAMP, "Fingers can teach me various theft talents again.");
};

INSTANCE Info_Mod_Fingers_Nek (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek_Condition;
	information	= Info_Mod_Fingers_Nek_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's this about?";
};

FUNC INT Info_Mod_Fingers_Nek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_00"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_01"); //Well, the shadow Sly has something in his possession that I would like to have.... an amulet.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_02"); //And I'm supposed to get it for you now.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_03"); //Exactly. He should have hidden it somewhere in his cabin. This is the first hut with a canopy when you turn right from the main gate.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_04"); //On soft soles you should be able to come in unnoticed and take it without any problems.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_05"); //The amulet once belonged to a guardsman named Nek and his name is engraved on the back....
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_06"); //That's right, I took off his body back then...
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_07"); //... at least some imaginative brushes believe that HE named it after Himself.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_08"); //What?!
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_09"); //Nothing, forget it. Bring me the amulet and I'll teach you more.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_10"); //Maybe one or the other coin will come out for you...

	Log_CreateTopic	(TOPIC_MOD_FINGERS_NEK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FINGERS_NEK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FINGERS_NEK, "The shadow of Finger wants to teach me the craft of thieving when I get him an amulet from Sly's hut. Sly's cabin is the first one with a canopy when I turn right from the main gate.");

	Wld_InsertItem	(ItAm_Nek,	"FP_ITEM_NEKSTISCH");
	Wld_InsertItem	(ItFo_Bread,	"FP_ITEM_NEKSTISCH");
};

INSTANCE Info_Mod_Fingers_Nek2 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek2_Condition;
	information	= Info_Mod_Fingers_Nek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the amulet.";
};

FUNC INT Info_Mod_Fingers_Nek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek))
	&& (Npc_HasItems(hero, ItAm_Nek) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek2_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek2_15_00"); //I found the amulet.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_01"); //Excellent, I expected nothing else.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek2_15_02"); //Here, take this.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_03"); //(Hesitantly) Uh, no, let's-- I've got a better idea.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_04"); //You give me 200 gold coins and I'll tell you the name of the man who wants the amulet.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_05"); //He'll give you 350 gold coins... so still 150 coins win for you... I can teach you.

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Fingers_Nek3 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek3_Condition;
	information	= Info_Mod_Fingers_Nek3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, here's the gold.";
};

FUNC INT Info_Mod_Fingers_Nek3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek3_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek3_15_00"); //Okay, here's the gold.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek3_05_01"); //All right, it's Sancho. He stands right in front of the bandits' camp.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek3_05_02"); //Just tell him you have nek's amulet and it's perfect. You all right?

	B_LogEntry	(TOPIC_MOD_FINGERS_NEK, "I have given Fingers 200 gold coins for the name of the man who wants to have that amulet. It's Sancho I meet in front of the bandits' camp. I hope Fingers didn't set me up.");
};

INSTANCE Info_Mod_Fingers_Nek4 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek4_Condition;
	information	= Info_Mod_Fingers_Nek4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who's to say you're not cheating on me?";
};

FUNC INT Info_Mod_Fingers_Nek4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek4_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek4_15_00"); //Who's to say you're not cheating on me?
	AI_Output(self, hero, "Info_Mod_Fingers_Nek4_05_01"); //Well, if you don't want to, you can try selling the amulet for a few coins to another merchant.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek4_05_02"); //But don't think you can get more than 10 gold pieces for it.
};

INSTANCE Info_Mod_Fingers_SLDSpy (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_SLDSpy_Condition;
	information	= Info_Mod_Fingers_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's new and interesting to hear?";
};

FUNC INT Info_Mod_Fingers_SLDSpy_Condition()
{
	if (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_SLDSpy_15_00"); //What's new and interesting to hear?
	AI_Output(self, hero, "Info_Mod_Fingers_SLDSpy_05_01"); //Well, for skillful thieves, there will be easy prey at dawn in the next few days, if many guards have moved out.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Fingers said that the guards will soon be moving out in large numbers at dawn.");
};

INSTANCE Info_Mod_Fingers_Kap4 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Kap4_Condition;
	information	= Info_Mod_Fingers_Kap4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fingers_Kap4_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Kap4_Info()
{
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_00"); //Well, well... a visitor.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_01"); //Fingers?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_02"); //Surprised to see me?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_03"); //Well, there really wouldn't have been much missing and the orcs would have turned me into Frikassee.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_04"); //But I kept a cool head when the turmoil started with the orcs in the camp and went into hiding.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_05"); //In hiding?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_06"); //Yes... in a barrel... before I could sneak out of the camp at night.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_07"); //Was pretty uncomfortable in there.... believe me.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_08"); //And why are you here now?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_09"); //Well, I had my contacts to the bandits before the fall of the old camp... and I'm a man of virtues that they appreciate, if you understand.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_10"); //I think so, yes. Well, I have to keep going. Take care of yourself.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_11"); //I always do. See you around.

	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung == 0)
	{
		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "Fingers has found his place with the bandits. He seems to be doing all right there.");
	};
};

INSTANCE Info_Mod_Fingers_Lernen (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Lernen_Condition;
	information	= Info_Mod_Fingers_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Fingers_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Fingers_Lernen_05_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Fingers_Lernen);

	Info_AddChoice 		(Info_Mod_Fingers_Lernen, DIALOG_BACK, Info_Mod_Fingers_Lernen_BACK);

	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("Pickpocket", B_GetLearnCostTalent(hero, NPC_TALENT_PICKPOCKET, 1)), Info_Mod_Fingers_Lernen_Pickpocket);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("pick locks", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1)), Info_Mod_Fingers_Lernen_Picklock);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("Sneak", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1)), Info_Mod_Fingers_Lernen_Sneak);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("Acrobatics", B_GetLearnCostTalent(hero, NPC_TALENT_ACROBAT, 1)), Info_Mod_Fingers_Lernen_Acrobat);
	};
	if (Mod_Schwierigkeit != 4)
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Fingers_Lernen_Geschick_5);
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Fingers_Lernen_Geschick_1);
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Fingers_Lernen);
};

FUNC VOID Info_Mod_Fingers_Lernen_Pickpocket()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_PICKPOCKET);
};

FUNC VOID Info_Mod_Fingers_Lernen_Picklock()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_PICKLOCK);
};

FUNC VOID Info_Mod_Fingers_Lernen_Sneak()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK);
};

FUNC VOID Info_Mod_Fingers_Lernen_Acrobat()
{
	AI_Output(hero, self, "Info_Mod_Buster_Lernen_15_00"); //Teach me acrobatics.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_ACROBAT))
	{
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_01"); //If you control your body, you will be able to jump much further.
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_02"); //You'll learn to roll yourself up and land properly from the fall. But remember, you're not immortal!
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_03"); //Also in combat acrobatics is very helpful. You can change your distance to the opponent very quickly. Good luck to you!
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Fingers_Lernen);
};

FUNC VOID Info_Mod_Fingers_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Fingers_Lernen);
};

INSTANCE Info_Mod_Fingers_Pickpocket (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Pickpocket_Condition;
	information	= Info_Mod_Fingers_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Fingers_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Nugget, 4);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

	Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_BACK, Info_Mod_Fingers_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fingers_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fingers_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fingers_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fingers_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fingers_EXIT (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_EXIT_Condition;
	information	= Info_Mod_Fingers_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fingers_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fingers_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
