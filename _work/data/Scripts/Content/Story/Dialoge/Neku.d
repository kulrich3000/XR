INSTANCE Info_Mod_Neku_Hi (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Hi_Condition;
	information	= Info_Mod_Neku_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_00"); //You want to use your focus in the swamp?
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_01"); //Yeah, why?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_02"); //The two focus points are extremely dangerous.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_03"); //The northern one is in front of an old temple. The southern one is situated near a rock face in the heart of the swamp.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_04"); //In front of a cursed, demon besieged, zombies inhabited and spirit-obsessed temple, I suppose?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_05"); //No, a normal temple. Except for the monsters that live in front of the temple.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_06"); //What kind of monsters?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_07"); //I don't know about that. I only saw them from the hill.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_08"); //Upright figures, blades in the hands and fire in the eyes....
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_09"); //And what's so dangerous in the middle of the swamp?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_10"); //I'd like to know that, too.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_11"); //Silhouettes of strange figures appear between the trees and disappear again between them... you might think it's the trees themselves that migrate....
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_12"); //All right, I'll be careful if I go in.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_13"); //You won't have to.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_14"); //Why not?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_15"); //You're not coming in. The monsters living at the temple have a barricade and a guard at the entrance to the swamp.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_16"); //They don't look like a welcoming committee. Well, good luck anyway!

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "The swamp is surrounded by a barricade and the only entrance is guarded by strange warriors who also guard a temple in the swamp near a focus area. The other focal point in the swamp is populated by strange creatures who are supposed to resemble wandering trees. Let's see how I get there...");
};

INSTANCE Info_Mod_Neku_Giftdrache (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Giftdrache_Condition;
	information	= Info_Mod_Neku_Giftdrache_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Giftdrache_Condition()
{
	if (Mod_NL_Jharkendar_DrachenSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neku_Giftdrache_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_00"); //Hey, wait! If you went to the swamp, I'd watch out.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_01"); //If my eyes have not deceived me, I saw a lizard....
	AI_Output(hero, self, "Info_Mod_Neku_Giftdrache_15_02"); //(impatiently interrupted) Yes, many lizardmen in the swamp, I think we have.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_03"); //Hmph, no, let me finish. So, I saw a lizard descending from the sky, at least five meters high.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_04"); //She landed somewhere south near the palisades of the swamp.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_05"); //Since then, in unfavourable winds, horrible vapours have been coming from there again and again, almost taking your breath away.
};

INSTANCE Info_Mod_Neku_Pickpocket (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Pickpocket_Condition;
	information	= Info_Mod_Neku_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Neku_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Neku_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_BACK, Info_Mod_Neku_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neku_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neku_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
};

FUNC VOID Info_Mod_Neku_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Neku_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Neku_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Neku_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Neku_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Neku_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Neku_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Neku_EXIT (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_EXIT_Condition;
	information	= Info_Mod_Neku_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neku_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
