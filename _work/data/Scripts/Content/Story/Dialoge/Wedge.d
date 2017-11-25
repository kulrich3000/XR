INSTANCE Info_Mod_Wedge_Hi (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Hi_Condition;
	information	= Info_Mod_Wedge_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wedge_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wedge_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_00"); //Look at that, a new face. But wait... before the barrier came down, didn't I see you in the new camp?
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_01"); //Yeah, that's right. You seem to have a good memory.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_02"); //Well, there's no harm in not wanting to end up as a bog body.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_03"); //Because the best way to become one is to get lost in the moor.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_04"); //It takes more than just quiet soles to not end up as carcasses on the first raid.
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_05"); //Well, when it comes down to it, one should certainly be able to take the legs in the hand... soft soles back and forth.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_06"); //But one doesn't have to rule out the other.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_07"); //Once you've learned how to perform properly, you can be almost as quiet while running as if you were sneaking.
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_08"); //Sounds useful to me.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_09"); //Yes, it's not a disadvantage. Those who master the quiet soles live better... and longer.
};

INSTANCE Info_Mod_Wedge_Lehrer (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Lehrer_Condition;
	information	= Info_Mod_Wedge_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me to walk quietly?";
};

FUNC INT Info_Mod_Wedge_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wedge_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wedge_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Wedge_Lehrer_15_00"); //Can you teach me to walk quietly?
	AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_01"); //Well, I don't know... can you even sneak reasonably?
	AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_02"); //I won't waste my precious time with a trample that has the feet of a golem.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_03"); //Speaking of precious and time... if you're really serious, you'll be able to loosen up to 300 coins.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_04"); //Speaking of precious and time... if you're really serious, you'll be able to loosen 1800 coins.
	};
};

INSTANCE Info_Mod_Wedge_Lernen (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Lernen_Condition;
	information	= Info_Mod_Wedge_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "";
};

FUNC INT Info_Mod_Wedge_Lernen_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		Info_Mod_Wedge_Lernen.description = "Quiet running (15 LP, 300 Gold, requires creeping)";
	}
	else
	{
		Info_Mod_Wedge_Lernen.description = "Quiet running (1800 Gold, requires creeping)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wedge_Lehrer))
	&& (LeisenLaufen_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wedge_Lernen_Info()
{
	if (Mod_Schwierigkeit != 4)
	&& (hero.lp < 15)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_00"); //Collect the necessary experience, Greenbill.
	}
	else if ((Mod_Schwierigkeit != 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 300))
	|| ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 1800))
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_01"); //And the gold?! For nothing is death...
	}
	else if (Npc_GetTalentSkill(hero, NPC_TALENT_SNEAK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_02"); //Beginners, learn how to sneak reasonably well. With your steps you drown out every troll.
	}
	else
	{
		if (Mod_Schwierigkeit != 4)
		{
			hero.lp -= 15;

			B_GiveInvItems	(hero, self, ItMi_Gold, 300);
		}
		else
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 1800);
		};

		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_03"); //All right, a worthy man wants to learn to put his foot down quietly and yet speedily.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_04"); //You have to make sure that you apply your heel gently and roll your foot evenly.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_05"); //Soft shoes are no disadvantage either. Let me show you.

		AI_PlayAni	(self, "T_PLUNDER");

		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_06"); //So, now you shouldn't make so much noise when running.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_07"); //Have fun with your new skill.

		LeisenLaufen_Perk = TRUE;
	};
};

INSTANCE Info_Mod_Wedge_Pickpocket (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Pickpocket_Condition;
	information	= Info_Mod_Wedge_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wedge_Pickpocket_Condition()
{
	C_Beklauen	(74, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

	Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_BACK, Info_Mod_Wedge_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wedge_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wedge_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wedge_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wedge_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wedge_EXIT (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_EXIT_Condition;
	information	= Info_Mod_Wedge_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wedge_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wedge_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
