INSTANCE Info_Mod_Hubert_Hi (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Hi_Condition;
	information	= Info_Mod_Hubert_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Hubert_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hubert_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Hubert_Hi_06_01"); //H - Huh?
};

INSTANCE Info_Mod_Hubert_Landvermessung (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Landvermessung_Condition;
	information	= Info_Mod_Hubert_Landvermessung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need your help.";
};

FUNC INT Info_Mod_Hubert_Landvermessung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungVincent))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_Landvermessung_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_00"); //I need your help.
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_01"); //How big is Khorata?
	AI_Output(self, hero, "Info_Mod_Hubert_Landvermessung_06_02"); //H... hm. Bring me a new pest. In my sober condition no clear thoughts can not grasp yet.
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_03"); //Woher bekomme ich das "buzz"?
	AI_Output(self, hero, "Info_Mod_Hubert_Landvermessung_06_04"); //Always straight ahead and then to the right. No, I'd better go to the chick where Fusl's, uh, sold out. Should be standing around the market place. (growls)

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "I'm supposed to buy the booze from a retailer on the marketplace. Is that still morally justifiable?");
};

INSTANCE Info_Mod_Hubert_LandvermessungAlk (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_LandvermessungAlk_Condition;
	information	= Info_Mod_Hubert_LandvermessungAlk_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have your special drink.";
};

FUNC INT Info_Mod_Hubert_LandvermessungAlk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Landvermessung))
	&& (Npc_HasItems(hero, ItFo_HubertBooze) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_LandvermessungAlk_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_00"); //I have your special drink.

	B_GiveInvItems	(hero, self, ItFo_HubertBooze, 1);
	Npc_RemoveInvItems	(self, ItFo_HubertBooze, 1);

	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_06_01"); //Oh, good!

	CreateInvItems	(self, ItFo_Booze, 1);

	B_UseItem	(self, ItFo_Booze);

	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_06_02"); //Things are better now. Jesus Christ! I've got some inner dips... interstitial thought about your question.
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_03"); //Yes?
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_06_04"); //Jo!
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_05"); //And? What was your conclusion?
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_06_06"); //Siebn Stobbelfelder! Kho-ra-ra-ra-ta is as big as siebn Stobbelfelder next to each other.
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_07"); //Gorgeous....
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_06_08"); //Isn't it?

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "So Khorata is as big as seven stubble fields... Very good to know!");
};

INSTANCE Info_Mod_Hubert_CityGuide01 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide01_Condition;
	information	= Info_Mod_Hubert_CityGuide01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you show me the city?";
};

FUNC INT Info_Mod_Hubert_CityGuide01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide01_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_CityGuide01_15_00"); //Can you show me the city?
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_06_01"); //(drunk) Whoo? Until new here?
	AI_Output(hero, self, "Info_Mod_Hubert_CityGuide01_15_02"); //You guessed it.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_06_03"); //Well, that can't be done... Wait a minute, have to sort my legs. (groans)
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_06_04"); //Always nice and pretty friendly with the stranger, huh?
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_06_05"); //Just run after me and tell me when I'm so fast.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RATHAUS");
};

INSTANCE Info_Mod_Hubert_CityGuide02 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide02_Condition;
	information	= Info_Mod_Hubert_CityGuide02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide01))
	&& (Npc_GetDistToWP(hero, "RATHAUS_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide02_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide02_06_00"); //This is our town hall. That's where our Oberfurzi lives. Well, hello sagn.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");
};

INSTANCE Info_Mod_Hubert_CityGuide03 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide03_Condition;
	information	= Info_Mod_Hubert_CityGuide03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide02))
	&& (Npc_GetDistToWP(hero, "REL_CITY_089") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide03_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide03_06_00"); //I'll get anything to drink here. And if you want to kick your ass, you might know Hans.... n... Learning to learn.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "NORDOST");
};

INSTANCE Info_Mod_Hubert_CityGuide04 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide04_Condition;
	information	= Info_Mod_Hubert_CityGuide04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide03))
	&& (Npc_GetDistToWP(hero, "REL_CITY_095") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide04_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide04_06_00"); //In the street they all go penn.... n. Nothing where you have to go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MAGIER");
};

INSTANCE Info_Mod_Hubert_CityGuide05 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide05_Condition;
	information	= Info_Mod_Hubert_CityGuide05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide04))
	&& (Npc_GetDistToWP(hero, "REL_CITY_260") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide05_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_06_00"); //Inside are the gown furrows, as I call them.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_06_01"); //(laughs exaggerated) The ham the only real pot inside town.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_06_02"); //Well, fine assholes do.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GERICHT");
};

INSTANCE Info_Mod_Hubert_CityGuide06 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide06_Condition;
	information	= Info_Mod_Hubert_CityGuide06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide05))
	&& (Npc_GetDistToWP(hero, "REL_CITY_293") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide06_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_06_00"); //Hopefully never had to go in, because there's the judge. It's creepy of me, the guy.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_06_01"); //This completes the tour. I'm gonna go to the inn, get some new stuff.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_06_02"); //You can come with me if you want to.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GASTHAUS");

	B_GivePlayerXP	(100);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_12);
};

INSTANCE Info_Mod_Hubert_Freudenspender (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Freudenspender_Condition;
	information	= Info_Mod_Hubert_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you need joy dispensers?";
};                       

FUNC INT Info_Mod_Hubert_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hubert_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_Freudenspender_15_00"); //Do you need joy dispensers?
	AI_Output(self, hero, "Info_Mod_Hubert_Freudenspender_06_01"); //Nah, nah, nah, my Zeuchz is enough for me...
};

INSTANCE Info_Mod_Hubert_Pickpocket (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Pickpocket_Condition;
	information	= Info_Mod_Hubert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Hubert_Pickpocket_Condition()
{
	C_Beklauen	(14, ItFo_Booze, 3);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

	Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_BACK, Info_Mod_Hubert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hubert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hubert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hubert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hubert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hubert_EXIT (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_EXIT_Condition;
	information	= Info_Mod_Hubert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hubert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hubert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
