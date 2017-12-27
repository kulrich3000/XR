INSTANCE Info_Mod_Jesper_Dieb (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Dieb_Condition;
	information	= Info_Mod_Jesper_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Show thieves' signal)";
};

FUNC INT Info_Mod_Jesper_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_00"); //I see you're one of us.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_01"); //As a welcoming greeting you get a tip from me: Learn to move properly!
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_02"); //You stalked around like a stork. I can hear you no matter what room you're in.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_03"); //If you need someone to teach you smooth movements, contact me.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_04"); //You'd have a better chance of creeping in silently.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Jesper can teach me to sneak.");
};

INSTANCE Info_Mod_Jesper_WieLangDabei (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_WieLangDabei_Condition;
	information	= Info_Mod_Jesper_WieLangDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "How long have you been in?";
};

FUNC INT Info_Mod_Jesper_WieLangDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_WieLangDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_WieLangDabei_15_00"); //How long have you been in?
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_01"); //I've never done anything else. My child and youthful pranks were still unplanned, I always took what I needed to survive.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_02"); //With Cassia, that's changed. Without them I would have remained a small crook, but today we live far beyond what is necessary.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_03"); //Especially in large companies it is essential to work in a team. So I hope you know how to get involved.
};

INSTANCE Info_Mod_Jesper_Tipps (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Tipps_Condition;
	information	= Info_Mod_Jesper_Tipps_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got any more tips for me?";
};

FUNC INT Info_Mod_Jesper_Tipps_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Tipps_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Tipps_15_00"); //You got any more tips for me?
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_01"); //Sneaking around is my specialty. If you're interested in locked trunks, talk to Ramirez.
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_02"); //I am sure Cassia has already told you that she knows better than anyone else how to cut off the money from the unsuspecting citizens.
};

INSTANCE Info_Mod_Jesper_Coup (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Coup_Condition;
	information	= Info_Mod_Jesper_Coup_Info;
	permanent	= 0;
	important	= 0;
	description	= "What was your biggest score?";
};

FUNC INT Info_Mod_Jesper_Coup_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_WieLangDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Coup_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Coup_15_00"); //What was your biggest score?
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_01"); //I don't have to think about it for long, although it's been a few years!
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_02"); //Ramirez had been blown up in a break-in and landed in the dungeon. Cassia and I had to be quick before the militia could figure anything out about us.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_03"); //The way past the guard post in front of the cells was impossible for us - we couldn't have managed that without seeing it.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_04"); //So we took the whole night and removed the wall from the other side stone by stone. We had to be damn quiet and careful - but we did it.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_05"); //In the end, Ramirez was able to escape when the guard took a pee break. Such an outbreak had never before been seen in the city, and he had been in conversation for weeks.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_06"); //Of course, it was even more difficult for us after that because all patrols and controls were strengthened. Since then, we've been more careful not to get caught.
};

INSTANCE Info_Mod_Jesper_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_AndreVermaechtnis_Condition;
	information	= Info_Mod_Jesper_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_AndreVermaechtnis_Info()
{
	AI_TurnToNpc	(self, Mod_598_MIL_Mika_NW);

	AI_Output(self, hero, "Info_Mod_Jesper_AndreVermaechtnis_36_00"); //All right, only 40 gold coins, then. Take the fucking thing.... Cutthroat. But... who the hell...?

	AI_TurnToNpc	(self, hero);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_Lernen (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Lernen_Condition;
	information	= Info_Mod_Jesper_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Learning to sneak (5 LP)";
};

FUNC INT Info_Mod_Jesper_Lernen_Condition()
{
	Info_Mod_Jesper_Lernen.description = B_BuildLearnString("Learn to sneak", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Lernen_15_00"); //Teach me how to sneak.

	B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK);
};

INSTANCE Info_Mod_Jesper_Pickpocket (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Pickpocket_Condition;
	information	= Info_Mod_Jesper_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jesper_Pickpocket_Condition()
{
	C_Beklauen	(110, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_BACK, Info_Mod_Jesper_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jesper_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jesper_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jesper_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jesper_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jesper_EXIT (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_EXIT_Condition;
	information	= Info_Mod_Jesper_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
