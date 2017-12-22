INSTANCE Info_Mod_Aerwak_Hi (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Hi_Condition;
	information	= Info_Mod_Aerwak_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How are you doing?";
};

FUNC INT Info_Mod_Aerwak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aerwak_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_15_00"); //How are you doing?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_01_01"); //Oh no, not another one like that again.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_15_02"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_01_03"); //One of you strangers. It's just a problem for your peer here in the village. They shouldn't even let you pack in here.

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	Info_AddChoice	(Info_Mod_Aerwak_Hi, "You're risking a pretty big lip, my friend.", Info_Mod_Aerwak_Hi_B);
	Info_AddChoice	(Info_Mod_Aerwak_Hi, "What's your problem?", Info_Mod_Aerwak_Hi_A);
};

FUNC VOID Info_Mod_Aerwak_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_B_15_00"); //You're risking a pretty big lip, my friend.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_B_01_01"); //Big lip?! You're almost there!

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	Mod_Aerwak = 1;
};

FUNC VOID Info_Mod_Aerwak_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_00"); //What's your problem?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_01"); //You strangers are my problem. And I'm not the only one who sees it that way.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_02"); //As soon as you are here, you stick your nose in everywhere, enter foreign houses as if they were your property... and.... (considered) and....
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_03"); //Yes?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_04"); //Um... yes, exactly... there's only bad fish left to buy.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_05"); //What can I do for the fish?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_06"); //You're not direct, but you're like the Gestath.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_07"); //Since he opened his hunting business here and lets all of them hunt for himself, only Anglar remained as a fishmonger... so he can afford to sell us old fish.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_08"); //Eivar has closed down his fish stall in order to make the big money at Gestath like many others, or to get some useless knick-knacks from him. What an idiot.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_09"); //And Aldaro can't fish because he's sick.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_10"); //And it's probably my fault, too...
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_11"); //Oh, get the hell out of here.

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aerwak_Aldaro (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Aldaro_Condition;
	information	= Info_Mod_Aerwak_Aldaro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aldaro is well again.";
};

FUNC INT Info_Mod_Aerwak_Aldaro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aerwak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aldaro_Gift2))
	&& (Mod_Aerwak == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aerwak_Aldaro_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_00"); //Aldaro is well again.
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_01"); //Good for him... Is that why you're gonna have to talk to me from the side, stranger?
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_02"); //You were complaining about Anglar's fish...
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_03"); //Huh, yeah, and?
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_04"); //Anglar will go fishing again.
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_05"); //uh-huh. (equal to you) Oh, yes, yes.... that's great... Was that all? Then you can go back.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Aerwak_Eivar (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Eivar_Condition;
	information	= Info_Mod_Aerwak_Eivar_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Eivar. He fell victim to a predator.";
};

FUNC INT Info_Mod_Aerwak_Eivar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aerwak_Hi))
	&& (Mod_Aerwak == 0)
	&& (Mod_Eivar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aerwak_Eivar_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Eivar_15_00"); //I found Eivar. He fell victim to a predator.
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_01"); //What?! Then.... (outrageous) then you strangers have to answer for his death.... (irate pathetic) death.... of my dearest brother of our village community!
	AI_Output(hero, self, "Info_Mod_Aerwak_Eivar_15_02"); //Hey, you just called him an idiot!
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_03"); //(chattering) Um.... no-- I never said that... (aggressively rebuilding) Anyway, I knew from the beginning that they should never have let your same one into the village.
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_04"); //I'll teach you dirty strangers the lesson you deserve!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	Mod_Aerwak = 1;

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Aerwak_Pickpocket (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Pickpocket_Condition;
	information	= Info_Mod_Aerwak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Aerwak_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

	Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_BACK, Info_Mod_Aerwak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aerwak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aerwak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aerwak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aerwak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aerwak_EXIT (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_EXIT_Condition;
	information	= Info_Mod_Aerwak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aerwak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aerwak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
