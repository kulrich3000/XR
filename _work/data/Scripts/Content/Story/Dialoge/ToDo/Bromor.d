INSTANCE Info_Mod_Bromor_Hi (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Hi_Condition;
	information	= Info_Mod_Bromor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bromor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_01"); //I'm Bromor, I own this brothel.
	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_02"); //What can I do for you?
};

INSTANCE Info_Mod_Bromor_Bilgot (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bilgot_Condition;
	information	= Info_Mod_Bromor_Bilgot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear there's trouble here.";
};

FUNC INT Info_Mod_Bromor_Bilgot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bilgot_Mortis))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bilgot_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bilgot_15_00"); //I hear there's trouble here.
	AI_Output(self, hero, "Info_Mod_Bromor_Bilgot_07_01"); //Yeah, one of our customers won't pay. His name is Bartok.
};

INSTANCE Info_Mod_Bromor_Bartok (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bartok_Condition;
	information	= Info_Mod_Bromor_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "I gave the money (500 gold)";
};

FUNC INT Info_Mod_Bromor_Bartok_Condition()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Bromor_Bilgot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bartok_15_00"); //I got the money.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Bromor_Bartok_07_01"); //Thanks.

	Mod_BilgotBromorBartok = 1;

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Bromor_Vanja (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Vanja_Condition;
	information	= Info_Mod_Bromor_Vanja_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you're beating up your girls.";
};

FUNC INT Info_Mod_Bromor_Vanja_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vanja_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Vanja_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_00"); //I hear you're beating up your girls.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_01"); //Who told you that?
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_02"); //Vanja says that.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_03"); //(to herself) Well, she can experience something... What are you still doing here? Get out of here!
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_04"); //I want you to stop hitting Vanja.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_05"); //It's none of your business how I treat my girls.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_06"); //I think I should teach you a lesson.
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_07"); //Then come over here!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bromor_Umgehauen (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Umgehauen_Condition;
	information	= Info_Mod_Bromor_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Vanja))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_00"); //Oh, my skull.
			AI_Output(hero, self, "Info_Mod_Bromor_Umgehauen_15_01"); //Are you leaving Vanja alone now?
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_02"); //Yeah, it's all right, but get lost.

			B_LogEntry	(TOPIC_MOD_VANJA_BROMOR, "Bromor says he's leaving Vanja alone now.");

			Mod_Vanja_BromorKO = 1;

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_03"); //Big sayings knock and nothing behind it. Now get lost and don't interfere in my business.

			B_SetTopicStatus	(TOPIC_MOD_VANJA_BROMOR, LOG_FAILED);
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Bromor_Gardist (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Gardist_Condition;
	information	= Info_Mod_Bromor_Gardist_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Gardist_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_BromorSchuld))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Npc_RefuseTalk(self) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Gardist_Info()
{
	AI_Output(self, hero, "Info_Mod_Bromor_Gardist_07_00"); //You're not wanted here, get out of here.

	AI_GotoWP	(hero, "NW_CITY_HABOUR_PUFF_ENTRANCE");

	Npc_SetRefuseTalk(self, 5);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bromor_Aufgeben (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Aufgeben_Condition;
	information	= Info_Mod_Bromor_Aufgeben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Will you stop trying to ruin us?";
};

FUNC INT Info_Mod_Bromor_Aufgeben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Wld_IsTime(21,00,06,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Aufgeben_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Aufgeben_15_00"); //Will you stop trying to ruin us?
	AI_Output(self, hero, "Info_Mod_Bromor_Aufgeben_07_01"); //Yeah, but fix this whole thing up. Then you won't hear from me.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Bromor has agreed. He'll leave us alone when we fix everything.");
};

INSTANCE Info_Mod_Bromor_Shakir (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Shakir_Condition;
	information	= Info_Mod_Bromor_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, big pimp.";
};

FUNC INT Info_Mod_Bromor_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_Frau))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_00"); //Hi, big pimp.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_01"); //What do you mean, pimp? I'll hold up. It's my purse. 100 gold the queen.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_02"); //Deal. But I want to take the person home with me.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_03"); //So beautiful on Wargenfell, by the open fire, a good bottle of monastery wine. You know what I mean.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_04"); //What are you thinking about? I'm not letting my girls out of my sight.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_05"); //What if I pay double?
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_06"); //Forget about it. They stay in the house. Why don't you find a streetwalker?
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_07"); //Then we can't do business.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_08"); //That's the way I see it.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Bromor won't give me a wife. I'm supposed to be looking for a streetwalker. Hm... Ask Moe, he knows his way around here.");
};

INSTANCE Info_Mod_Bromor_NadjaBeiDexter (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_NadjaBeiDexter_Condition;
	information	= Info_Mod_Bromor_NadjaBeiDexter_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, how's business?";
};

FUNC INT Info_Mod_Bromor_NadjaBeiDexter_Condition()
{
	if (Mod_Banditen_Mine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_NadjaBeiDexter_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_NadjaBeiDexter_15_00"); //So, how's business?
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_01"); //Miserable. My best girl Nadja has gone off the reservation.
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_02"); //She is now sitting with some new-rich bastard who recently gained great wealth through the ore business. Fucking bullshit!
};

INSTANCE Info_Mod_Bromor_Pickpocket (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Pickpocket_Condition;
	information	= Info_Mod_Bromor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bromor_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_BACK, Info_Mod_Bromor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bromor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bromor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bromor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bromor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bromor_EXIT (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_EXIT_Condition;
	information	= Info_Mod_Bromor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bromor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
