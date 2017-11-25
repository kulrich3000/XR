INSTANCE Info_Mod_Nimius_Hi (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Hi_Condition;
	information	= Info_Mod_Nimius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Nimius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nimius_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Nimius_Hi_01_01"); //I am Nimius.
};

INSTANCE Info_Mod_Nimius_Wilfried (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Wilfried_Condition;
	information	= Info_Mod_Nimius_Wilfried_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you remember...?";
};

FUNC INT Info_Mod_Nimius_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Mod_WilfriedsQuest == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Wilfried_Info()
{
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_00"); //Do you remember ever having bad experiences with Wilfried?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_01"); //(surprised) Yes! That after such a long time, someone would talk to me about it.... I almost forgot.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_02"); //What happened back then?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_03"); //He cheated me out of my gold by turning a cheap belt on me that looked a lot like an assassin belt from Mora Sul I had ordered.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_04"); //How do you know that? Do you have proof?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_05"); //Well, at least it was there in small writing Made in Myrtana. I don't think this lettering would have been on an original.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_06"); //Why didn't you do something about it?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_07"); //When I spoke to him, Wilfried told me by hidden gestures that it would be detrimental to my health if I blacked him out.
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_08"); //And that's how I let the thing grow. I don't know what you want with my information, but I'd appreciate it if you could keep my name out of the game.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_09"); //Yeah, I've seen that before. Thank you for your confidence.

	if (Npc_KnowsInfo(hero, Info_Mod_Joerg_Wilfried))
	{
		Mod_WilfriedsQuest = 3;

		B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "I have found two more people who are convinced that Wilfried is trading unfairly. However, the hard evidence is still missing...");

		B_StartOtherRoutine	(Mod_544_NONE_Wilfried_NW, "HOEHLE");
		AI_Teleport	(Mod_544_NONE_Wilfried_NW, "TAVERNE");
	};
};

INSTANCE Info_Mod_Nimius_WilfriedTot (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_WilfriedTot_Condition;
	information	= Info_Mod_Nimius_WilfriedTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nimius_WilfriedTot_Condition()
{
	if (Mod_WilfriedsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_WilfriedTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Nimius_WilfriedTot_01_01"); //Wilfried's dead? You did a good job.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Nimius_Sumpfkraut (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Sumpfkraut_Condition;
	information	= Info_Mod_Nimius_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "You know where I can get swamp herbs from?";
};

FUNC INT Info_Mod_Nimius_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Sumpfkraut))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Nimius_Sumpfkraut_15_00"); //You know where I can get swamp herbs from?
	AI_Output(self, hero, "Info_Mod_Nimius_Sumpfkraut_01_01"); //No, I don't care about stuff like that.
};

INSTANCE Info_Mod_Nimius_Flugblaetter (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Flugblaetter_Condition;
	information	= Info_Mod_Nimius_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Nimius_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Nimius_Flugblaetter_01_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Nimius_Flugblaetter_01_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Nimius_Pickpocket (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Pickpocket_Condition;
	information	= Info_Mod_Nimius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Nimius_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

	Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_BACK, Info_Mod_Nimius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nimius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nimius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nimius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nimius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nimius_EXIT (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_EXIT_Condition;
	information	= Info_Mod_Nimius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nimius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nimius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
