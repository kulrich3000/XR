INSTANCE Info_Mod_Hanna_Hi (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Hi_Condition;
	information	= Info_Mod_Hanna_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where am I here?";
};

FUNC INT Info_Mod_Hanna_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hanna_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Hi_15_00"); //Where am I here?
	AI_Output(self, hero, "Info_Mod_Hanna_Hi_17_01"); //In my service area. If you are looking for a place to stay the night, you are welcome.
};

INSTANCE Info_Mod_Hanna_Preis (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Preis_Condition;
	information	= Info_Mod_Hanna_Preis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Depends. How much do you want?";
};

FUNC INT Info_Mod_Hanna_Preis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Preis_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Preis_15_00"); //Depends. How much do you want?
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_17_01"); //Hmm... You're the new guy from the Minental and you're probably not full of pockets.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_17_02"); //If you are peaceful and find a free bed, you can stay overnight for free.
	AI_Output(hero, self, "Info_Mod_Hanna_Preis_15_03"); //This is a pleasant surprise. I haven't had a lot of them lately.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_17_04"); //I can only be so generous because I am financially independent of the rest house.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_17_05"); //(background) But then another time maybe more...
};

INSTANCE Info_Mod_Hanna_Gaeste (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Gaeste_Condition;
	information	= Info_Mod_Hanna_Gaeste_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who else is staying here tonight?";
};

FUNC INT Info_Mod_Hanna_Gaeste_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Gaeste_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Gaeste_15_00"); //Who else is staying here tonight?
	AI_Output(self, hero, "Info_Mod_Hanna_Gaeste_17_01"); //Actually, anyone who comes from outside and doesn't feel like spending time in the red lantern.
	AI_Output(self, hero, "Info_Mod_Hanna_Gaeste_17_02"); //Nevertheless, it happens very rarely that I don't know my customers. It's always the same faces who are more or less drunk in the evenings.
};

INSTANCE Info_Mod_Hanna_Rasthaus (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Rasthaus_Condition;
	information	= Info_Mod_Hanna_Rasthaus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your service area? Don't you have a husband?";
};

FUNC INT Info_Mod_Hanna_Rasthaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Rasthaus_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Rasthaus_15_00"); //Your service area? Don't you have a husband?
	AI_Output(self, hero, "Info_Mod_Hanna_Rasthaus_17_01"); //(mockingly) I suppose you're from a backwoods region, if you don't think it's insolence to ask that kind of question.
	AI_Output(self, hero, "Info_Mod_Hanna_Rasthaus_17_02"); //I can manage very well on my own, and in the event of an emergency I know how to organise help. And for minor problems, it's always the beatings.
};

INSTANCE Info_Mod_Hanna_ThorbenLehrling (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_ThorbenLehrling_Condition;
	information	= Info_Mod_Hanna_ThorbenLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hanna_ThorbenLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_LehrlingQuest5))
	&& (Wld_IsTime(10,55,11,25))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_ThorbenLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_17_00"); //Hello. I'd like to see Thorben.
	AI_Output(hero, self, "Info_Mod_Hanna_ThorbenLehrling_15_01"); //I represent him today. Do you want to order a piece of furniture?
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_17_02"); //You're guessing right. A drunk guest took my drunken commode for a nighttime attacker and damaged it heavily with the sword.
	AI_Output(hero, self, "Info_Mod_Hanna_ThorbenLehrling_15_03"); //We'll take care of the repairs.
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_17_04"); //Good. I'll be waiting for you in my house.
};

INSTANCE Info_Mod_Hanna_Meldor (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Meldor_Condition;
	information	= Info_Mod_Hanna_Meldor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hanna_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_PaketSicher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Meldor_Info()
{
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_17_00"); //What can I do for you?
	AI_Output(hero, self, "Info_Mod_Hanna_Meldor_15_01"); //Marsh marsh marigold hawk sent me.
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_17_02"); //Oh, a new guy, huh?
	AI_Output(hero, self, "Info_Mod_Hanna_Meldor_15_03"); //What are you guys anyway?
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_17_04"); //Here, take this key and go through the basement door.

	B_GiveInvItems	(self, hero, ItKe_ThiefGuildKey_Hotel_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_17_05"); //That's where you'll find your answer.

	B_LogEntry	(TOPIC_MOD_MELDOR_HANNA, "Hanna gave me a key that opens the door to her basement. I wonder what awaits me down there.");
};

INSTANCE Info_Mod_Hanna_Keller (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Keller_Condition;
	information	= Info_Mod_Hanna_Keller_Info;
	permanent	= 0;
	important	= 0;
	description	= "There are problems.";
};

FUNC INT Info_Mod_Hanna_Keller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Keller))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Keller_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Keller_15_00"); //There are problems.
	AI_Output(self, hero, "Info_Mod_Hanna_Keller_17_01"); //What's happening?
	AI_Output(hero, self, "Info_Mod_Hanna_Keller_15_02"); //One of the merchants noticed at night that several characters have come out of the cellar. Better watch your step.
	AI_Output(self, hero, "Info_Mod_Hanna_Keller_17_03"); //Thanks, we'll do it.

	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_HANNA, "I warned Hanna. I hope it doesn't happen again.");
};

INSTANCE Info_Mod_Hanna_Flugblaetter (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Flugblaetter_Condition;
	information	= Info_Mod_Hanna_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Hanna_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Hanna_Flugblaetter_17_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Hanna_Flugblaetter_17_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Hanna_Pickpocket (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Pickpocket_Condition;
	information	= Info_Mod_Hanna_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Hanna_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

	Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_BACK, Info_Mod_Hanna_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hanna_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hanna_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hanna_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hanna_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hanna_EXIT (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_EXIT_Condition;
	information	= Info_Mod_Hanna_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hanna_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hanna_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
