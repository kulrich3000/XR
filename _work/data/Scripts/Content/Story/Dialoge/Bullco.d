INSTANCE Info_Mod_Bullco_Hi (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Hi_Condition;
	information	= Info_Mod_Bullco_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bullco_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullco_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_01"); //I'm Bullco, dragon hunter.
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_02"); //How many dragons have you hunted?
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_03"); //(dumb) Huh? Do you see any dragons around here?
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_04"); //You must have wiped them all out by now.
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_05"); //Are you kidding me, man?
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_06"); //Well, good luck then.
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_07"); //Yes...
};

INSTANCE Info_Mod_Bullco_Frauenraub (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Frauenraub_Condition;
	information	= Info_Mod_Bullco_Frauenraub_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bullco_Frauenraub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_Frauenraub))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Frauenraub_Info()
{
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_00"); //Ahh, there you are at last...
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_02"); //You already know your way around the Old Camp, and you probably know where the Archbarone's house is located.
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_03"); //I think so.
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_04"); //Well, and the ore barons have more than just ore. (giggling giggle)

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_05"); //The girls sitting there. Get us one of these.
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_06"); //And how am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_07"); //Everything's already taken care of. Here, take this fog spell left by the water magicians at that time and use it in the house of the Archbarons.

	B_GiveInvItems	(self, hero, ItSc_Nebel, 1);

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_08"); //Then all you have to do is get a girl to put on that cloak and go with you.

	B_GiveInvItems	(self, hero, ItAr_WomanCape, 1);

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_09"); //You take her to Sylvio's. You all right? All right, let's go.

	B_LogEntry	(TOPIC_MOD_SLD_BULLCO, "Bullco has instructed me to go into the House of the Archbarons, to use the foggy role he gave me and to get one of the women to put on the cape. I'm supposed to take her to Sylvio's.");
};

INSTANCE Info_Mod_Bullco_KesselProblem (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_KesselProblem_Condition;
	information	= Info_Mod_Bullco_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bullco_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_KesselProblem2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_KesselProblem_Info()
{
	AI_Output(self, hero, "Info_Mod_Bullco_KesselProblem_06_00"); //You dirty bastard. You got me out of my job at the valley basin.
	AI_Output(self, hero, "Info_Mod_Bullco_KesselProblem_06_01"); //You'll pay for this.
};

INSTANCE Info_Mod_Bullco_Belagerung (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Belagerung_Condition;
	information	= Info_Mod_Bullco_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "We need you mercenaries.";
};

FUNC INT Info_Mod_Bullco_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungHilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_00"); //We need you mercenaries.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_01"); //The Demon Knights want to bring out some undead once and for all. However, we don't have enough men to attack them alone.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_02"); //I was going to ask you to provide us with some mercenaries.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_03"); //This is difficult, because most mercenaries don't trust the Beliaran supporters. You'd have to convince them to go along with it.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_04"); //How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_05"); //With gold, of course. I think 10. 000 gold coins should be enough.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_06"); //(cynical) Yeah, that's just what I do.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_07"); //I know it's a lot, but our people won't want to help you otherwise.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_08"); //I turn to Raven, he'll know where I can get the gold from.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_09"); //All right, do that, I'll wait here as long as you want!
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_10"); //See you around!

	Mod_GornsSold = 1;
	
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "Bullco said that the mercenaries paid a salary of 10. 000 gold coins are expected. Let's see what Raven has to say.");
};

INSTANCE Info_Mod_Bullco_Sold (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Sold_Condition;
	information	= Info_Mod_Bullco_Sold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the gold.";
};

FUNC INT Info_Mod_Bullco_Sold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_SoeldnerSold))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Sold_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_Sold_15_00"); //Here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 10000);

	AI_Output(self, hero, "Info_Mod_Bullco_Sold_06_01"); //I think our people would be very happy with that. Tonight we will attack!
	AI_Output(hero, self, "Info_Mod_Bullco_Sold_15_02"); //All right, I'll let Raven know.

	B_GivePlayerXP	(250);
	
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "The mercenaries are ready and will attack tonight. I should let Raven know about this.");
};

INSTANCE Info_Mod_Bullco_SchlachtFertig (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_SchlachtFertig_Condition;
	information	= Info_Mod_Bullco_SchlachtFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "And everything all right?";
};

FUNC INT Info_Mod_Bullco_SchlachtFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_ArgibastDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_SchlachtFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_00"); //And everything all right?
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_01"); //That was a tough fight. I didn't think those undead would resist and make trouble like that.
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_02"); //But it all went well in the end, didn't it?
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_03"); //You got that right. What are you going to do now?
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_04"); //I have to make sure Khorinis don't go down the drain again.
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_05"); //That's how I know you. Good luck to you!

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Bullco_Pickpocket (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Pickpocket_Condition;
	information	= Info_Mod_Bullco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Bullco_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

	Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_BACK, Info_Mod_Bullco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bullco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bullco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bullco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bullco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bullco_EXIT (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_EXIT_Condition;
	information	= Info_Mod_Bullco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bullco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
