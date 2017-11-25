INSTANCE Info_Mod_Sonja_Hi (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Hi_Condition;
	information	= Info_Mod_Sonja_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you work here?";
};

FUNC INT Info_Mod_Sonja_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonja_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Hi_15_00"); //Do you work here?
	AI_Output(self, hero, "Info_Mod_Sonja_Hi_16_01"); //Well, what does it look like? Is there any way I can get you...? to satisfy you?
};

INSTANCE Info_Mod_Sonja_News (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_News_Condition;
	information	= Info_Mod_Sonja_News_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm sure you'll find some news here.";
};

FUNC INT Info_Mod_Sonja_News_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_News_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_News_15_00"); //I'm sure you'll find some news here.
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_01"); //In the arms of an emotional woman, every silent man becomes a talkative boy.
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_02"); //from Matteo's marriage to Constantino's secret tastes.
	AI_Output(hero, self, "Info_Mod_Sonja_News_15_03"); //And what do you hear from your customers?
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_04"); //I hear a lot of uncertainty and despair about the fall of the barrier.
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_05"); //Some of my clients fear that the "wild and rude barbarians" from the colony are coming up against their possessions.
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_06"); //On the other hand, many complain about the strict control by the paladins.
	AI_Output(self, hero, "Info_Mod_Sonja_News_16_07"); //But most of them just squawk in my ear how good I would be. (laughs)
};

INSTANCE Info_Mod_Sonja_Sex (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Sex_Condition;
	information	= Info_Mod_Sonja_Sex_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'd like to use your services.";
};

FUNC INT Info_Mod_Sonja_Sex_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Hi))
	&& (Mod_SonjaSex == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Sex_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_15_00"); //I'd like to use your services.
	AI_Output(self, hero, "Info_Mod_Sonja_Sex_16_01"); //I'm yours all night for 100 gold pieces, sweetie. A whole exciting night.

	Info_ClearChoices	(Info_Mod_Sonja_Sex);

	Info_AddChoice	(Info_Mod_Sonja_Sex, "Maybe later.", Info_Mod_Sonja_Sex_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Sonja_Sex, "Let's go upstairs. (100 Gold)", Info_Mod_Sonja_Sex_A);
	};
};

FUNC VOID Info_Mod_Sonja_Sex_B()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_B_15_00"); //Maybe later.

	Info_ClearChoices	(Info_Mod_Sonja_Sex);
};

FUNC VOID Info_Mod_Sonja_Sex_A()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Sex_A_15_00"); //Let's go upstairs.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Mod_SonjaSex = 1;

	Info_ClearChoices	(Info_Mod_Sonja_Sex);

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "SEX");
};

INSTANCE Info_Mod_Sonja_SexLos (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_SexLos_Condition;
	information	= Info_Mod_Sonja_SexLos_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_SexLos_Condition()
{
	if (Mod_SonjaSex == 1)
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_PUFF_NADJA") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_SexLos_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_SexLos_16_00"); //Relax, sweetie.

	PlayVideo ("LOVESCENE.BIK");

	Mod_SonjaSex = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	
	Spine_OverallSaveSetInt("SonjaSex", 1);
	CheckSexAchievement();
};

INSTANCE Info_Mod_Sonja_Bartok (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Bartok_Condition;
	information	= Info_Mod_Sonja_Bartok_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_Bartok_Condition()
{
	if (Mod_KampfGegenBartokVerloren == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Bartok_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_16_00"); //Hey you! I saw you get beat up by Bartok. Maybe I can help you.
	AI_Output(hero, self, "Info_Mod_Sonja_Bartok_15_01"); //How will you help me?
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_16_02"); //Well, I could go to Bartok's and spend some time with him and make sure he listens to you.
	AI_Output(hero, self, "Info_Mod_Sonja_Bartok_15_03"); //And what am I supposed to do about it?
	AI_Output(self, hero, "Info_Mod_Sonja_Bartok_16_04"); //Nothing yet, but I'll get back to you.

	Npc_ExchangeRoutine	(self, "BARTOK");

	Mod_SonjaHilftGegenBartok = Wld_GetDay();
};

INSTANCE Info_Mod_Sonja_Freier (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Freier_Condition;
	information	= Info_Mod_Sonja_Freier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sonja_Freier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))
	&& (Wld_GetDay()-8 >= Mod_SonjaHilftGegenBartok)
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Freier_Info()
{
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_16_00"); //Remember your little promise, sweetheart?
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_15_01"); //I owe you another favor.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_16_02"); //Now is the time for me to come back to that.

	Info_ClearChoices	(Info_Mod_Sonja_Freier);

	Info_AddChoice	(Info_Mod_Sonja_Freier, "I don't care about that.", Info_Mod_Sonja_Freier_B);
	Info_AddChoice	(Info_Mod_Sonja_Freier, "What is there to do?", Info_Mod_Sonja_Freier_A);
};

FUNC VOID Info_Mod_Sonja_Freier_B()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_B_15_00"); //I don't care about that.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_B_16_01"); //I was hoping I could count on you.

	Info_ClearChoices	(Info_Mod_Sonja_Freier);
};

FUNC VOID Info_Mod_Sonja_Freier_A()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_00"); //What is there to do?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_01"); //One of my most frequent clients hasn't shown up in a while.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_02"); //I haven't heard anything about anything happening to him, so there must be other reasons why he's not visiting me anymore.
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_03"); //Who is this suitor?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_04"); //I can't tell you that. Professional secrecy.
	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_05"); //Then why don't you see him yourself?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_06"); //Because he lives in the upper district, silly. I don't have access there.

	if (Mil_305_Torwache.aivar[AIV_Passgate] == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_07"); //But you're such an aspiring young man, I'm sure you'll have a chance soon.
	};

	AI_Output(hero, self, "Info_Mod_Sonja_Freier_A_15_08"); //So now I'm supposed to search the entire upper district for your suitor?
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_09"); //I can still tell you that this is not one of the paladins or militiamen. The selection shouldn't be too big any more.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier_A_16_10"); //If you found him, ask him to stop by my house again.

	Mod_Sonja_Freier = 1;

	Log_createTopic	(TOPIC_MOD_SONJA_FREIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SONJA_FREIER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SONJA_FREIER, "A Sonja customer has not visited her for some time. She does not want to tell me his name, but he lives in the upper quarter and belongs neither to the militia nor to the paladins.");

	Info_ClearChoices	(Info_Mod_Sonja_Freier);
};

INSTANCE Info_Mod_Sonja_Freier2 (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Freier2_Condition;
	information	= Info_Mod_Sonja_Freier2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Fernando was in trouble with his wife.";
};

FUNC INT Info_Mod_Sonja_Freier2_Condition()
{
	if (Mod_Sonja_Freier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonja_Freier2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonja_Freier2_15_00"); //Fernando hatte Stress mit seiner Frau. Er wagt sich nicht mehr hier her.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_16_01"); //Äußerst schade. Er war immer so gut zu mir.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_16_02"); //Aber er wird schon zurück kommen, da bin ich mir sicher. 
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_16_03"); //Er hat mir viel über seine Frau erzählt. Seine Ehe ist nicht für die Ewigkeit geschaffen.
	AI_Output(self, hero, "Info_Mod_Sonja_Freier2_16_04"); //In der Zwischenzeit könnten wir zwei uns die Zeit vertreiben, Süßer. (lacht anzüglich)

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_SONJA_FREIER, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sonja_Pickpocket (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_Pickpocket_Condition;
	information	= Info_Mod_Sonja_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Sonja_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

	Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_BACK, Info_Mod_Sonja_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sonja_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sonja_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sonja_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sonja_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sonja_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sonja_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sonja_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sonja_EXIT (C_INFO)
{
	npc		= Mod_752_NONE_Sonja_NW;
	nr		= 1;
	condition	= Info_Mod_Sonja_EXIT_Condition;
	information	= Info_Mod_Sonja_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sonja_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonja_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
