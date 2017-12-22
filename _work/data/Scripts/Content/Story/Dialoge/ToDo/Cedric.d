INSTANCE Info_Mod_Cedric_Hi (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Hi_Condition;
	information	= Info_Mod_Cedric_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Cedric_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Cedric_Hi_12_01"); //I'm Cedric, fighting teacher of the militia, knights and paladins.
};

INSTANCE Info_Mod_Cedric_Irdorath (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath_Condition;
	information	= Info_Mod_Cedric_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard the Paladin's ship was last in command.";
};

FUNC INT Info_Mod_Cedric_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_00"); //I heard the Paladin's ship was under your command last...
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_01"); //Yeah, that's right. Why are you asking...? but for a moment, you are the man who was ordered by the magicians to leave the ship...
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_02"); //What can I do for you?
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_03"); //Well, you could take over the captain's function on the Esmeralda once again and escort me to the island.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_04"); //Ahh yes, so this is your request... yes, as a fighter for law and order, I cannot fail to comply with this request.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_05"); //Really?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_06"); //Of course, of course. It is the supreme duty of a Paladin and Innos' servant to do everything in his power to banish darkness and disaster.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_07"); //Some of my fellow combatants will also accompany us and ensure the success of our mission.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_08"); //Great....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_09"); //There's only one thing I have for you before we can leave.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_10"); //Yes?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_11"); //Please ask at least one experienced Fire magician to accompany us on this journey.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_12"); //I don't want to miss the blessing of a magician Innos on our excursion....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_13"); //I'll go to the harbour and wait there.

	Mod_Kapitan = 1;
	Mod_CedricDabei = 1;
	Mod_KerolothDabei = 1;
	Mod_MarcosDabei = 1;
	Mod_GeroldDabei = 1;

	Mod_CrewCount += 4;

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Cedric is burning with his zeal for the mission. But he still wants a fire magician on board.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
	B_StartOtherRoutine	(Mod_978_RIT_Marcos_NW, "SCHIFF");
	B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "SCHIFF");
	B_StartOtherRoutine	(Mod_502_RIT_Keroloth_NW, "SCHIFF");
};

INSTANCE Info_Mod_Cedric_Irdorath2 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath2_Condition;
	information	= Info_Mod_Cedric_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Fire magician Milten will accompany us.";
};

FUNC INT Info_Mod_Cedric_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_MiltenDabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath2_15_00"); //Fire magician Milten will accompany us.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath2_12_01"); //Very good. Very good. With Inno's blessing we will burn the flocks of fiends.

	Mod_CedricLos = 2;

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Cedric_Irdorath4 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath4_Condition;
	information	= Info_Mod_Cedric_Irdorath4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_JackDabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath4_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_00"); //What are you doing?!

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_01"); //You're hiring me with another captain?! What are you doing?!
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_02"); //Make your decision as to who should accompany you now! Right now, right now!
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_03"); //You should be doing our mission with the same seriousness as I am.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_04"); //I won't tolerate any more than that.... even if you bring into our crew, I'll follow closely.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	Info_AddChoice	(Info_Mod_Cedric_Irdorath4, "I'm sorry, but I'm choosing Jack in that case.", Info_Mod_Cedric_Irdorath4_B);
	Info_AddChoice	(Info_Mod_Cedric_Irdorath4, "All right, I want you to be my captain.", Info_Mod_Cedric_Irdorath4_A);
};

FUNC VOID Info_Mod_Cedric_Irdorath4_B()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath4_B_15_00"); //I'm sorry, but I'm choosing Jack in that case.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_01"); //(almost beside yourself) How, you're trying to mock me...?!
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_02"); //(ruled again, sternly) All right, as you say...
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_03"); //(half-loudly) I fear that the mages have entrusted our fate to the wrong one.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_978_RIT_Marcos_NW, "START");
	B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "START");
	B_StartOtherRoutine	(Mod_502_RIT_Keroloth_NW, "START");

	Mod_CedricDabei = 0;
	Mod_KerolothDabei = 0;
	Mod_MarcosDabei = 0;
	Mod_GeroldDabei = 0;

	Mod_CrewCount -= 4;
};

FUNC VOID Info_Mod_Cedric_Irdorath4_A()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath4_A_15_00"); //All right, I want you to be my captain.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_A_12_01"); //Well, go ahead with your preparations.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_586_NONE_Jack_NW, "START");

	Mod_CrewCount -= 1;

	Mod_JackDabei = 0;
};

INSTANCE Info_Mod_Cedric_Irdorath3 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath3_Condition;
	information	= Info_Mod_Cedric_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's go, it's all set up.";
};

FUNC INT Info_Mod_Cedric_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath2))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_CedricLos == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath3_15_00"); //Let's go, it's all set up.

	if (Mod_BonesDabei > 0)
	|| (Mod_CordDabei > 0)
	|| (Mod_RavenDabei > 0)
	|| (Mod_MyxirDabei > 0 && Mod_MyxirDabei < 4)
	|| (Mod_CassiaDabei > 0)
	|| (Mod_SagittaDabei > 0)
	{
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_01"); //Oh, yeah? It seems to me, however, that we should be accompanied by people who are said to have lost nothing on this mission.

		B_Say	(hero, self, "$WASMEINSTDU");

		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_02"); //Pirates, mercenaries, servants of Beliar and women have lost nothing on a Paladin ship.
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_03"); //They would only jeopardize the success of our mission.
		AI_Output(hero, self, "Info_Mod_Cedric_Irdorath3_15_04"); //How?

		if (Mod_BonesDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_05"); //Pirates, evil scoundrels, cutthroaters, murderers.
		};
		if (Mod_CordDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_06"); //Mercenaries, delinquent thugs from the colony, who still refuse to follow the king.
		};
		if (Mod_RavenDabei > 0)
		|| (Mod_MyxirDabei > 0 && Mod_MyxirDabei < 4)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_07"); //Belian, servants of the dark God, in whom one cannot even be sure that they are not in cahoots with the perpetrator of the evil.
		};
		if (Mod_CassiaDabei > 0)
		|| (Mod_SagittaDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_08"); //For women, such an undertaking is simply too dangerous and I could not take them away for their own safety.
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_09"); //Besides, they would only distract the men from the urgent mission....
		};

		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_10"); //So, make sure they disappear right away.
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_11"); //I'd rather not be ready to leave.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_12"); //Excellent. To glorious deeds.

		Mod_CedricLos = 3;

		B_GivePlayerXP	(500);
	};
};

INSTANCE Info_Mod_Cedric_Lehrer (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Lehrer_Condition;
	information	= Info_Mod_Cedric_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Cedric_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Hi))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cedric_Lehrer_12_00"); //I can teach you how to handle one-handed and two-handed people.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Cedric can teach me how to handle one-handed and two-handed people.");
};

INSTANCE Info_Mod_Cedric_Lernen (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Lernen_Condition;
	information	= Info_Mod_Cedric_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Cedric_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Lehrer))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Cedric_Lernen);

	Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
};

FUNC VOID Info_Mod_Cedric_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cedric_Lernen);
};

FUNC VOID Info_Mod_Cedric_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Cedric_Pickpocket (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Pickpocket_Condition;
	information	= Info_Mod_Cedric_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cedric_Pickpocket_Condition()
{
	C_Beklauen	(130, ItMi_Gold, 69);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

	Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_BACK, Info_Mod_Cedric_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cedric_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cedric_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cedric_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cedric_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cedric_EXIT (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_EXIT_Condition;
	information	= Info_Mod_Cedric_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cedric_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
