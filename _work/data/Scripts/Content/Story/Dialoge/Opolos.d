INSTANCE Info_Mod_Opolos_Daemonisch (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Daemonisch_Condition;
	information	= Info_Mod_Opolos_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Opolos_Drachenangriff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_00"); //Hmm, yes Babo, has recovered really quickly. Just get some fresh air, and he's like changed.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_01"); //Get some fresh air? What do you think?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_02"); //Well, I think other novices have encouraged him to take a little walk. And then he was as good as new...
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_03"); //Yeah, yeah, the guys have been going out a lot lately, some sort of tavern or city thing.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_04"); //But I have to stay here and look after the sheep. Well, at least the stomach disease didn't catch me.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_05"); //Stomach disease?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_06"); //Yes, some novices have had stomach problems for a few days now and can hardly eat anything.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_07"); //They do not even tolerate the wine of the monastery after prayer for the time being.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_08"); //Slightly emaciated because of the situation and can only perform light tasks, like the errands.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Uh-huh. A short evening walk is said to have helped Babo get back on his feet, which other novices had encouraged him to do. Meanwhile, a gastric disease prevents many novices from drinking the monastery wine. They are said to have noticeably lost weight, Opolos reports.");
};

INSTANCE Info_Mod_Opolos_Drachenangriff (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Drachenangriff_Condition;
	information	= Info_Mod_Opolos_Drachenangriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, what are you doing here?";
};

FUNC INT Info_Mod_Opolos_Drachenangriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Drachenangriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Opolos_Drachenangriff_15_00"); //Hello, what are you doing here? Aren't you supposed to do your homework in the monastery?
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_01"); //My duties?!
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_02"); //When the horde of demons came upon our monastery, all the sheep that I was supposed to protect were eaten.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_03"); //I have now been thrown out of the monastery because I was accused of not fulfilling my task conscientiously enough.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_04"); //(short pause) Oh, Innos seems to be really far away in these dark days.
};

INSTANCE Info_Mod_Opolos_Unkraut (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Unkraut_Condition;
	information	= Info_Mod_Opolos_Unkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Unkraut_Condition()
{
	if (Npc_HasItems(hero, ItPl_Unkraut_Gorax) == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Unkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_00"); //Hey, as I saw, you tore out all the weeds around the vines.
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_01"); //Yeah, why?
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_02"); //Well, because they taste very good to my sheep. As you can see, you won't find any weeds on the meadow.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_03"); //Of course I couldn't send them to the vines, because otherwise they would have eaten them.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_04"); //But since you ripped them all out...
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_05"); //Of course, I don't need them.... here you have it.

	B_GiveInvItems	(hero, self, ItPl_Unkraut_Gorax, 8);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_06"); //Great.

	AI_GotoNpc	(self, Sheep_Opolos_01);

	AI_TurnToNpc	(self, Sheep_Opolos_01);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_07"); //Yes, they like it.... Thank you, thank you.

	B_GivePlayerXP	(80);
};

INSTANCE Info_Mod_Opolos_Pickpocket (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Pickpocket_Condition;
	information	= Info_Mod_Opolos_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Opolos_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_BACK, Info_Mod_Opolos_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Opolos_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Opolos_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Opolos_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Opolos_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Opolos_EXIT (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_EXIT_Condition;
	information	= Info_Mod_Opolos_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Opolos_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Opolos_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
