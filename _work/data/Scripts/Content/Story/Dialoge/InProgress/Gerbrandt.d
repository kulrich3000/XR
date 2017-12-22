INSTANCE Info_Mod_Gerbrandt_Hi (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Hi_Condition;
	information	= Info_Mod_Gerbrandt_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Gerbrandt_Hi_Condition()
{
	return 1;
};

FUNC VoID Info_Mod_Gerbrandt_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Hi_03_01"); //Don't bother me.
};

INSTANCE Info_Mod_Gerbrandt_Person (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Person_Condition;
	information	= Info_Mod_Gerbrandt_Person_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard you missed someone.";
};

FUNC INT Info_Mod_Gerbrandt_Person_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Person))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Person_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Person_15_00"); //I heard you missed someone.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_03_01"); //That's the truth. I had a friend of mine about two weeks ago. He didn't go home until late at night.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_03_02"); //The next day I wanted to see him, he wasn't there. I immediately notified the militia, but they didn't find anything.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_03_03"); //Then Vatras the water magician and a few of his followers came to me and asked me about my friend.
};

INSTANCE Info_Mod_Gerbrandt_Infos (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Infos_Condition;
	information	= Info_Mod_Gerbrandt_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you tell Vatras?";
};

FUNC INT Info_Mod_Gerbrandt_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Person))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Infos_15_00"); //What did you tell Vatras?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_03_01"); //He asked me a lot of questions.
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Infos_15_02"); //What kind of questions?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_03_03"); //First he asked my boyfriend's name, and I told him his name was Fred.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_03_04"); //Then he wanted to know at what time he left. I didn't know the exact time because we had already drunk some wine, but it was around 11 pm.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_03_05"); //At the end he asked where Fred lived. Then I led him to the house.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_03_06"); //That's all.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Gerbrandt told me that his friend's name is Fred and he left Gerbrandt's house around 11 pm.");
};

INSTANCE Info_Mod_Gerbrandt_Wo (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Wo_Condition;
	information	= Info_Mod_Gerbrandt_Wo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you take me to the house?";
};

FUNC INT Info_Mod_Gerbrandt_Wo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Infos))
	{
		return 1;
	};
};

FUNC VOId Info_Mod_Gerbrandt_Wo_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Wo_15_00"); //Can you take me to the house?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Wo_03_01"); //Sure, let me know when we're ready to go.
};

INSTANCE Info_Mod_Gerbrandt_Los (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Los_Condition;
	information	= Info_Mod_Gerbrandt_Los_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going.";
};

FUNC INT Info_Mod_Gerbrandt_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Wo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Los_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Los_15_00"); //Let's get going.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Los_03_01"); //Okay, follow me.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOFRED");
};

INSTANCE Info_Mod_Gerbrandt_Da (C_INFO)
{
	npc		= Mod_578_NOnE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Da_Condition;
	information	= Info_Mod_Gerbrandt_Da_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gerbrandt_Da_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Los))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_CITY_PATH_HABOUR_13"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Da_Info()
{
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Da_03_00"); //Here we are.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Da_03_01"); //Take a look around, I'll go back. If you need any help, you know where to find me.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Gerbrandt took me to Fred's house. Let's see if I can find anything here that suggests his disappearance.");

	Wld_InsertItem	(Mod_Sklavenliste_DMR,	"FP_SPAWN_VERMISSTENLISTE");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");
};

INSTANCE Info_Mod_Gerbrandt_Cornelius (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Cornelius_Condition;
	information	= Info_Mod_Gerbrandt_Cornelius_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need to talk to you.";
};

FUNC INT Info_Mod_Gerbrandt_Cornelius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_AtMarkt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Cornelius_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Cornelius_15_00"); //You're one of those guys who had Cornelius killed and got Morgahard arrested.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Cornelius_03_01"); //Can you prove that, too?
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Cornelius_15_02"); //No.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Cornelius_03_03"); //Then don't waste my time with your accusations or I'll call the militia.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "I asked Gerbrandt about it, but I could not prove anything to him. I should talk to Esteban again.");
};

INSTANCE Info_Mod_Gerbrandt_SonjaFreier (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_SonjaFreier_Condition;
	information	= Info_Mod_Gerbrandt_SonjaFreier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you been a frequent customer of Sonja's?";
};

FUNC INT Info_Mod_Gerbrandt_SonjaFreier_Condition()
{
	if (Mod_Sonja_Freier == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_SonjaFreier_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_SonjaFreier_15_00"); //Have you been a frequent customer of Sonja's?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_SonjaFreier_03_01"); //What a question! Of course not!
};

INSTANCE Info_Mod_Gerbrandt_Pickpocket (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Pickpocket_Condition;
	information	= Info_Mod_Gerbrandt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Gerbrandt_Pickpocket_Condition()
{
	C_Beklauen	(48, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

	Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_BACK, Info_Mod_Gerbrandt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gerbrandt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gerbrandt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gerbrandt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gerbrandt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gerbrandt_EXIT (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_EXIT_Condition;
	information	= Info_Mod_Gerbrandt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gerbrandt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gerbrandt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
