INSTANCE Info_Mod_Olav_Hi (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Hi_Condition;
	information	= Info_Mod_Olav_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your job here?";
};

FUNC INT Info_Mod_Olav_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Hi_15_00"); //What's your job here?
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_01"); //I'm getting my feet up my ass to watch the marketplace.
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_02"); //Nowhere else is there so much lying and deceiving as here, cursed.
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_03"); //They're all shady creatures hanging around here....
};

INSTANCE Info_Mod_Olav_WarumMiliz (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_WarumMiliz_Condition;
	information	= Info_Mod_Olav_WarumMiliz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you go to the militia?";
};

FUNC INT Info_Mod_Olav_WarumMiliz_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_WarumMiliz_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_WarumMiliz_15_00"); //Why did you go to the militia?
	AI_Output(self, hero, "Info_Mod_Olav_WarumMiliz_04_01"); //Well, that's what my father decided back then.
	AI_Output(self, hero, "Info_Mod_Olav_WarumMiliz_04_02"); //I didn't like the other children in my alley, and he thought I wouldn't have to deal with them in the barracks.
};

INSTANCE Info_Mod_Olav_Mortis (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Mortis_Condition;
	information	= Info_Mod_Olav_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mortis sent me.";
};

FUNC INT Info_Mod_Olav_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Mortis_15_00"); //Mortis sent me. I'm supposed to ask if everything's okay.
	AI_Output(self, hero, "Info_Mod_Olav_Mortis_04_01"); //Yeah, everything's fine with me.

	B_LogEntry	(TOPIC_MOD_MORTIS_KONTROLLE, "Everything's fine with Olav.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Olav_Turm (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Turm_Condition;
	information	= Info_Mod_Olav_Turm_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is actually in the watchtowers next to the city gate?";
};

FUNC INT Info_Mod_Olav_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_Hi))
	&& (Mod_Verhandlungsgeschick >= 40)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Turm_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Turm_15_00"); //What is actually in the watchtowers next to the city gate?
	AI_Output(self, hero, "Info_Mod_Olav_Turm_04_01"); //That's what you'd like to know. I know what's in that one, because I'm responsible.
	AI_Output(hero, self, "Info_Mod_Olav_Turm_15_02"); //That means you have a key?
	AI_Output(self, hero, "Info_Mod_Olav_Turm_04_03"); //(slightly worried) Well, of course. Otherwise, I wouldn't be able to get in.
};

INSTANCE Info_Mod_Olav_Turm2 (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Turm2_Condition;
	information	= Info_Mod_Olav_Turm2_Info;
	permanent	= 0;
	important	= 0;
	description	= "You give me the key, and I'll take care of you.";
};

FUNC INT Info_Mod_Olav_Turm2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_Turm))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Turm2_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Turm2_15_00"); //You give me the key, and I'll take care of you.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Olav_Turm2_04_01"); //All right, that's been necessary for a long time. Could have spread out there by now.

		B_GiveInVItems	(self, hero, ItKe_City_Tower_03, 1);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Olav_Turm2_04_02"); //Very simple: No.
	};
};

INSTANCE Info_Mod_Olav_Mario (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Mario_Condition;
	information	= Info_Mod_Olav_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hakon sells stolen goods!";
};

FUNC INT Info_Mod_Olav_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Mario_15_00"); //Hakon sells stolen goods!
	AI_Output(self, hero, "Info_Mod_Olav_Mario_04_01"); //What?! Damn it, I have to check.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HAKON");

	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "Olav is distracted for now.");
};

INSTANCE Info_Mod_Olav_HaradLehrling (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_HaradLehrling_Condition;
	information	= Info_Mod_Olav_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Olav_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_HaradLehrling_Info()
{
	var c_npc Olav; Olav = Hlp_GetNpc(Mod_980_MIL_Olav_NW);
	var c_npc Harad; Harad = Hlp_GetNpc(Mod_535_NONE_Harad_NW);

	TRIA_Invite(Harad);
	TRIA_Start();

	TRIA_Next(Olav);

	AI_TurnToNpc	(Olav, Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_00"); //Nice gun.

	TRIA_Next(Harad);

	AI_TurnToNpc	(Harad, Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_01"); //(arrogant) Yes. Why?

	TRIA_Next(Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_02"); //Can I have one? It is always impressive what can be achieved with the right forging art.

	TRIA_Next(Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_03"); //It's all been hard work.

	TRIA_Next(Olav);

	AI_DrawWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_04"); //(mumbles) Yes, I believe so. (pause)
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_05"); //Aha. Da haben wir's. "Luck and glory to Lares, the victor." Na, wenn das mal nicht verdächtig klingt.

	TRIA_Next(Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_06"); //That's not what I mean!

	TRIA_Next(Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_07"); //(laughs) You just talk. The sword is confiscated, that's all. You know you're not supposed to be in contact with the mercenaries.
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_08"); //If it wasn't so hard, I'd like to keep this thing.

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Olav_HaradLehrling2 (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_HaradLehrling2_Condition;
	information	= Info_Mod_Olav_HaradLehrling2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Olav_HaradLehrling2_Condition()
{
	if (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_HaradLehrling2_Info()
{
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_00"); //The smithy must not be entered.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_02"); //Tengron has decided that it is time for Harad to learn certain lessons of decency.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_03"); //He's such a stubborn dog, too.
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_04"); //That is not relevant to this matter.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_05"); //And what about Harad? Is he in prison?
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_06"); //Correct. And if I understood Tengron correctly, he won't get out of there so quickly.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Harad's in prison! Tengron has him locked up for his mercenaries' dealings.");
};

INSTANCE Info_Mod_Olav_Pickpocket (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Pickpocket_Condition;
	information	= Info_Mod_Olav_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Olav_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Olav_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

	Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_BACK, Info_Mod_Olav_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Olav_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Olav_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
};

FUNC VOID Info_Mod_Olav_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Olav_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Olav_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Olav_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Olav_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Olav_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Olav_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Olav_EXIT (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_EXIT_Condition;
	information	= Info_Mod_Olav_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Olav_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
