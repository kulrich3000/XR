INSTANCE Info_Mod_Lutero_Hi (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Hi_Condition;
	information	= Info_Mod_Lutero_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lutero_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lutero_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lutero_Hi_13_00"); //Hey stranger, are you looking for something special? I got some rare things here.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Lutero sells rare things.");
};

INSTANCE Info_Mod_Lutero_Lutero (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Lutero_Condition;
	information	= Info_Mod_Lutero_Lutero_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello.";
};

FUNC INT Info_Mod_Lutero_Lutero_Condition()
{
	if (Mod_MitLawrenceGesprochen == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lutero_Lutero_Info()
{
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_00"); //Hello.
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_01"); //What do the...? You're militia? What can I do for you?
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_02"); //I'm looking for Lutero.
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_03"); //Oh... uh, he's gone. I'm Junur, his brother.
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_04"); //Where did Lutero go?
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_05"); //Him? Um... I don't know. Maybe to the Minental. I just arrived today and found his house empty.
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_06"); //Okay. I wanted to talk to him about something important.
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_07"); //Something... important?
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_08"); //Yeah, it's about the inventor.
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_09"); //U-u-u-about the inventor? What exactly is it about? Did you find out anything about his disappearance?
	AI_Output(hero, self, "Info_Mod_Lutero_Lutero_15_10"); //How do you know about the disappearance of the inventor? You just got here today, didn't you?
	AI_Output(self, hero, "Info_Mod_Lutero_Lutero_13_11"); //I' m, uh, um, shit!

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Lutero ran away, he seems to have noticed that I saw through his game. Maybe I should have a look around, maybe he left some note or something here.");

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine	(self, "FLUCHT");

	Mod_MitLawrenceGesprochen = 8;

	AI_SetWalkmode 		(self, NPC_RUN);
	Mdl_ApplyOverlayMds	(self, "HUMANS_FLEE.MDS");
};

INSTANCE Info_Mod_Lutero_SonjaFreier (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_SonjaFreier_Condition;
	information	= Info_Mod_Lutero_SonjaFreier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you visit Sonja regularly before?";
};

FUNC INT Info_Mod_Lutero_SonjaFreier_Condition()
{
	if (Mod_Sonja_Freier == 1)
	&& (Npc_HasItems(hero, Info_Mod_Lutero_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lutero_SonjaFreier_Info()
{
	AI_Output(hero, self, "Info_Mod_Lutero_SonjaFreier_15_00"); //Did you visit Sonja regularly before?
	AI_Output(self, hero, "Info_Mod_Lutero_SonjaFreier_13_01"); //Once or twice, maybe. But I always liked Nadja better.
	AI_Output(self, hero, "Info_Mod_Lutero_SonjaFreier_13_02"); //I even promised to marry her once. I hope she forgot.
	AI_Output(hero, self, "Info_Mod_Lutero_SonjaFreier_15_03"); //Then you're not who I'm looking for.
};

INSTANCE Info_Mod_Lutero_Blutkelch (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Blutkelch_Condition;
	information	= Info_Mod_Lutero_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're a rarity dealer, aren't you?";
};

FUNC INT Info_Mod_Lutero_Blutkelch_Condition()
{
	if (Npc_HasItems(hero, Info_Mod_Lutero_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Baltram_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lutero_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Lutero_Blutkelch_15_00"); //You're a rarity dealer, aren't you?
	AI_Output(self, hero, "Info_Mod_Lutero_Blutkelch_13_01"); //Was well. Unfortunately, you could say.
	AI_Output(hero, self, "Info_Mod_Lutero_Blutkelch_15_02"); //Why unfortunately?
	AI_Output(self, hero, "Info_Mod_Lutero_Blutkelch_13_03"); //The people here in the city are hardly interested in rarities.
	AI_Output(self, hero, "Info_Mod_Lutero_Blutkelch_13_04"); //I can't even get rid of my silk. Finest goods from the mainland...
	AI_Output(hero, self, "Info_Mod_Lutero_Blutkelch_15_05"); //Then you should go to Relendel. In Khorata there's a rarities salesman, people tear the goods out of his hands.
	AI_Output(self, hero, "Info_Mod_Lutero_Blutkelch_13_06"); //It's not true! Relendel, you say? It's supposed to be pretty far. Hmm... Maybe I should....
	AI_Output(hero, self, "Info_Mod_Lutero_Blutkelch_15_07"); //Maybe we can make a deal. I'm looking for a cup. A cup of blood.
	AI_Output(self, hero, "Info_Mod_Lutero_Blutkelch_13_08"); //Never heard of that. Besides, I don't deal in drinking vessels.
};

INSTANCE Info_Mod_Lutero_Anschlagtafel (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Anschlagtafel_Condition;
	information	= Info_Mod_Lutero_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I saw your poster on the billboard...";
};

FUNC INT Info_Mod_Lutero_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Lutero == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lutero_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMi_SilverCup) >= Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch)
	&& (Npc_HasItems(hero, ItMi_SilverPlate) >= Mod_Anschlagtafel_Khorinis_Lutero_Silberteller)
	&& (Npc_HasItems(hero, ItMi_SilverCandleholder) >= Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender)
	&& (Npc_HasItems(hero, ItMi_GoldCup) >= Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) >= Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn)
	&& (Npc_HasItems(hero, ItAt_SharkSkin) >= Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut)
	&& (Npc_HasItems(hero, ItAm_Prot_Fire_01) >= Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett)
	&& (Npc_HasItems(hero, ItMi_Runeblank) >= Mod_Anschlagtafel_Khorinis_Lutero_Runenstein)
	&& (Npc_HasItems(hero, ItAt_StoneGolemHeart) >= Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz)
	&& (Npc_HasItems(hero, ItMi_GoldRing) >= Mod_Anschlagtafel_Khorinis_Lutero_Goldring)
	{
		Npc_RemoveInvItems	(hero, ItMi_SilverCup, Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch);
		Npc_RemoveInvItems	(hero, ItMi_SilverPlate, Mod_Anschlagtafel_Khorinis_Lutero_Silberteller);
		Npc_RemoveInvItems	(hero, ItMi_SilverCandleholder, Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender);
		Npc_RemoveInvItems	(hero, ItMi_GoldCup, Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch);
		Npc_RemoveInvItems	(hero, ItAt_TrollTooth, Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer);
		Npc_RemoveInvItems	(hero, ItAt_DrgSnapperHorn, Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn);
		Npc_RemoveInvItems	(hero, ItAt_SharkTeeth, Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn);
		Npc_RemoveInvItems	(hero, ItAt_SharkSkin, Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut);
		Npc_RemoveInvItems	(hero, ItAm_Prot_Fire_01, Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett);
		Npc_RemoveInvItems	(hero, ItMi_Runeblank, Mod_Anschlagtafel_Khorinis_Lutero_Runenstein);
		Npc_RemoveInvItems	(hero, ItAt_StoneGolemHeart, Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz);
		Npc_RemoveInvItems	(hero, ItAt_DemonHeart, Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz);
		Npc_RemoveInvItems	(hero, ItMi_GoldRing, Mod_Anschlagtafel_Khorinis_Lutero_Goldring);

		AI_Output(self, hero, "Info_Mod_Lutero_Anschlagtafel_13_00"); //What? Show me... In fact, all of it. Very well done.
		AI_Output(self, hero, "Info_Mod_Lutero_Anschlagtafel_13_01"); //Here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Lutero_Gold);

		AI_Output(self, hero, "Info_Mod_Lutero_Anschlagtafel_13_02"); //Nice doing business with you.

		if (Mod_Anschlagtafel_Khorinis_Lutero_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lutero_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lutero_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Lutero = 0;
		Mod_Anschlagtafel_Khorinis_Lutero_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Lutero, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Lutero_Trade (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Trade_Condition;
	information	= Info_Mod_Lutero_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Lutero_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lutero_Hi))
	&& (Mod_MitLawrenceGesprochen < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lutero_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Lutero_Pickpocket (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_Pickpocket_Condition;
	information	= Info_Mod_Lutero_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Lutero_Pickpocket_Condition()
{
	C_Beklauen	(118, ItAt_DemonHeart, 1);
};

FUNC VOID Info_Mod_Lutero_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);

	Info_AddChoice	(Info_Mod_Lutero_Pickpocket, DIALOG_BACK, Info_Mod_Lutero_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lutero_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lutero_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lutero_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);
};

FUNC VOID Info_Mod_Lutero_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);

		Info_AddChoice	(Info_Mod_Lutero_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lutero_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lutero_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lutero_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lutero_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lutero_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lutero_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lutero_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lutero_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lutero_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lutero_EXIT (C_INFO)
{
	npc		= Mod_594_NONE_Lutero_NW;
	nr		= 1;
	condition	= Info_Mod_Lutero_EXIT_Condition;
	information	= Info_Mod_Lutero_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lutero_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lutero_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
