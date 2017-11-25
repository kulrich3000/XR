INSTANCE Info_Mod_Bodo_Hi (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;	
	nr		= 1;
	condition	= Info_Mod_Bodo_Hi_Condition;
	information	= Info_Mod_Bodo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your profession?";
};

FUNC INT Info_Mod_Bodo_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Hi_15_00"); //What's your profession?
	AI_Output(self, hero, "Info_Mod_Bodo_Hi_36_01"); //This and that. I do casual work, courier services and stuff like that.
	AI_Output(hero, self, "Info_Mod_Bodo_Hi_15_02"); //Can you live on that?
	AI_Output(self, hero, "Info_Mod_Bodo_Hi_36_03"); //It's really not well paid, but I can handle it.
};

INSTANCE Info_Mod_Bodo_Krautlieferung (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Krautlieferung_Condition;
	information	= Info_Mod_Bodo_Krautlieferung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to bring something for Myxir.";
};

FUNC INT Info_Mod_Bodo_Krautlieferung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_Haendler))
	&& (Mod_MyxirsKraeuter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Krautlieferung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_00"); //I want you to bring something for Myxir.
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_01"); //He asked for it, right? I would have liked to have brought him the plants, but my mission here has not allowed it....
	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_02"); //Yeah, all right. No one's gonna kill you for this.
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_03"); //Well, I'm relieved!
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_04"); //Here you have them. Give Myxir my best wishes!

	B_GiveInvItems	(self, hero, MyxirsGiftpflanze, 20);

	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_05"); //I'm sure he'll be happy.

	B_LogEntry	(TOPIC_MOD_GIFTPFLANZEN, "Bodo gave me the plants for Myxir.");
};

INSTANCE Info_Mod_Bodo_WiePruefung (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_WiePruefung_Condition;
	information	= Info_Mod_Bodo_WiePruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, brother.";
};

FUNC INT Info_Mod_Bodo_WiePruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_WiePruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_00"); //Hello, brother.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_01"); //Brother? I don't even know you.
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_02"); //You can stop playing. I'm from Andokai.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_03"); //Aah. Welcome, welcome. My cover as a day thief is good, isn't it?
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_04"); //The burgher's clothes might be a little too much of a good thing.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_05"); //That's right. But that's just my vanity. (laughs)
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_06"); //What can I do for you?

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Bodo says that the things that helped him with his examination came from Myxir.");
};

INSTANCE Info_Mod_Bodo_WieKloster (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_WieKloster_Condition;
	information	= Info_Mod_Bodo_WieKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need to steal something from the Fire Magicians' monastery.";
};

FUNC INT Info_Mod_Bodo_WieKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_WieKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_00"); //I need to steal something from the Fire Magicians' monastery.
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_01"); //Andokai said you could give me some advice.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_02"); //What do you have to steal?
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_03"); //A holy hammer.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_04"); //What luck for you! There's a piece of cake.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_05"); //The hammer is located at the bottom of the cellar in a separate room and is controlled by a single guard.
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_06"); //But I can't stand against a guard yet.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_07"); //Ever heard of a sleep spell?
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_08"); //You put the spell on the guard, take the hammer - and teleport yourself out of the monastery!
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_09"); //And all this without you having to hurt the guard.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Bodo advises me to pack a sleeping spell in case I can't physically help the hammer guard.");
};

INSTANCE Info_Mod_Bodo_Novize (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Novize_Condition;
	information	= Info_Mod_Bodo_Novize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you a Black Novice?";
};

FUNC INT Info_Mod_Bodo_Novize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Novize_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Novize_15_00"); //Are you a Black Novice?
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_01"); //Recently, yes. And I can't complain about lack of employment.
	AI_Output(hero, self, "Info_Mod_Bodo_Novize_15_02"); //How long did it take you to become a novice?
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_03"); //It's been a while. I had to help out for a while in the fortress at all corners and ends until Andokai noticed me.
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_04"); //After I cheated on the fire magicians for a book, he was very fond of me. It then became much more difficult to convince Xardas of me.
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_05"); //Boy, I'm telling you, this is a stubborn old bastard. It took me a few weeks to get his voice, too.
};

INSTANCE Info_Mod_Bodo_Flugblatt (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Flugblatt_Condition;
	information	= Info_Mod_Bodo_Flugblatt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Bodo_Flugblatt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 10)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bodo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Flugblatt_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Bodo_Flugblatt_36_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Bodo_Flugblatt_36_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Bodo_Pickpocket (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Pickpocket_Condition;
	information	= Info_Mod_Bodo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bodo_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

	Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_BACK, Info_Mod_Bodo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bodo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bodo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bodo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bodo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bodo_EXIT (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_EXIT_Condition;
	information	= Info_Mod_Bodo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bodo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bodo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
