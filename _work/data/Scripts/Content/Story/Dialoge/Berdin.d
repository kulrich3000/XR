INSTANCE Info_Mod_Berdin_Hi (C_INFO)
{
	npc		= Mod_1018_KGD_Berdin_MT;
	nr		= 1;
	condition	= Info_Mod_Berdin_Hi_Condition;
	information	= Info_Mod_Berdin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, could you give me some tips on hunting in the Minental?";
};

FUNC INT Info_Mod_Berdin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berdin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Berdin_Hi_15_00"); //Hi, could you give me some tips on hunting in the Minental?
	AI_Output(self, hero, "Info_Mod_Berdin_Hi_07_01"); //Well, actually the hunting is not very different from the hunting where else.
	AI_Output(self, hero, "Info_Mod_Berdin_Hi_07_02"); //The only thing you should know here, and that's actually the name, is that you're in a valley, and as far as I know the pass is the only way out of here.
	AI_Output(self, hero, "Info_Mod_Berdin_Hi_07_03"); //So if you mess with a monster that is too strong and can't get rid of it, you're almost trapped here. The best thing you can do then is to escape into one of the many camps here.
	AI_Output(self, hero, "Info_Mod_Berdin_Hi_07_04"); //Then you may be rid of your trophies, but you're still alive.
	AI_Output(hero, self, "Info_Mod_Berdin_Hi_15_05"); //Yeah, that sounds logical. Can you show me how to hunt trophies?
	AI_Output(self, hero, "Info_Mod_Berdin_Hi_07_06"); //I can show you how to pull claws and tongues, but I won't do that until you start with us.
};

INSTANCE Info_Mod_Berdin_Jagdtalente (C_INFO)
{
	npc		= Mod_1018_KGD_Berdin_MT;
	nr		= 1;
	condition	= Info_Mod_Berdin_Jagdtalente_Condition;
	information	= Info_Mod_Berdin_Jagdtalente_Info;
	permanent	= 1;
	important	= 0;
	description	= "Are you teaching me now?";
};

FUNC INT Info_Mod_Berdin_Jagdtalente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Berdin_Hi))
	&& (KG_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Berdin_Jagdtalente_Info()
{
	AI_Output(hero, self, "Info_Mod_Berdin_Jagdtalente_15_00"); //Are you teaching me now?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_FireTongue] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Berdin_Jagdtalente_07_01"); //Sure, what do you want to learn?

		Info_AddChoice		(Info_Mod_Berdin_Jagdtalente, DIALOG_BACK, Info_Mod_Berdin_Jagdtalente_BACK);
		
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Berdin_Jagdtalente, B_BuildLearnString ("Chipping claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)),  Info_Mod_Berdin_Jagdtalente_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_FireTongue] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Berdin_Jagdtalente, B_BuildLearnString ("tongue of fire", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)),  Info_Mod_Berdin_Jagdtalente_FireTongue);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Berdin_Jagdtalente_07_02"); //I can't teach you any more than you already know. Sorry about that.
	};
};

FUNC VOID Info_Mod_Berdin_Jagdtalente_BACK()
{
	Info_ClearChoices	(Info_Mod_Berdin_Jagdtalente);
};

FUNC VOID Info_Mod_Berdin_Jagdtalente_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Claws))
	{
		AI_Output			(self, hero, "Info_Mod_Berdin_Jagdtalente_Claws_07_00"); //Animals don't like to give their claws away. You have to hit the exact spot where you're going with your knife.
		AI_Output			(self, hero, "Info_Mod_Berdin_Jagdtalente_Claws_07_01"); //The posture of your hand should be slightly entangled. With a strong jolt you cut off the claw.
		AI_Output			(self, hero, "Info_Mod_Berdin_Jagdtalente_Claws_07_02"); //Claws are always a sought-after means of payment for a trader.
	};

	Info_ClearChoices	(Info_Mod_Berdin_Jagdtalente);
		
};

FUNC VOID Info_Mod_Berdin_Jagdtalente_FireTongue()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_FIRETONGUE))
	{
		
	};

	Info_ClearChoices	(Info_Mod_Berdin_Jagdtalente);
};

INSTANCE Info_Mod_Berdin_Pickpocket (C_INFO)
{
	npc		= Mod_1018_KGD_Berdin_MT;
	nr		= 1;
	condition	= Info_Mod_Berdin_Pickpocket_Condition;
	information	= Info_Mod_Berdin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Berdin_Pickpocket_Condition()
{
	C_Beklauen	(95, ItAt_WaranFireTongue, 1);
};

FUNC VOID Info_Mod_Berdin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);

	Info_AddChoice	(Info_Mod_Berdin_Pickpocket, DIALOG_BACK, Info_Mod_Berdin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Berdin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Berdin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Berdin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);
};

FUNC VOID Info_Mod_Berdin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);

		Info_AddChoice	(Info_Mod_Berdin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Berdin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Berdin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Berdin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Berdin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Berdin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Berdin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Berdin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Berdin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Berdin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Berdin_EXIT (C_INFO)
{
	npc		= Mod_1018_KGD_Berdin_MT;
	nr		= 1;
	condition	= Info_Mod_Berdin_EXIT_Condition;
	information	= Info_Mod_Berdin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Berdin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berdin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
