INSTANCE Info_Mod_HofstaatDrogenminister_Hi (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Hi_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatGleichgewichtsminister_Drogenminister))
	&& ((Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	|| (Npc_HasItems(hero, ItMi_FakeFreudenspenderSporen) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_00"); //What do you want?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_01"); //I'm supposed to bring these spores over here.

	if (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		B_GiveInvItems	(hero, self, ItMi_FreudenspenderSporen, 1);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_FakeFreudenspenderSporen, 1);
	};

	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_02"); //Aaaaahh excellent.

	if (Npc_HasItems(self, ItMi_FreudenspenderSporen) == 1)
	{
		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_03"); //What's the deal with that drug now?
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_04"); //As you've probably seen, we grow grain.
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_05"); //These spores are the spores of the ergot fungus. It settles on the grain and grows there.
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_06"); //We harvest it and process it to obtain a strong hallucinogen, stronger and cheaper than all the other drugs.
		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_07"); //Do you have anything else to do for me?
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_08"); //Yes, bring these notes to the King.

		B_GiveInvItems	(self, hero, ItWr_HSAufzeichnung, 1);

		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_09"); //All right, I will.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(Mod_7285_HS_Koenig_REL, "FREIFLUSS");
		B_StartOtherRoutine	(Mod_7284_HS_Raufbold_REL, "FREIFLUSS");

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The secretary of drugs gave me notes for the king. I should probably drop them off there as soon as possible.");
	}
	else
	{
		AI_StopProcessInfos	(self);

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The package has been delivered. I should stop by the fortress tomorrow....");

		Mod_SL_Schwaechen = 6;

		Mod_SL_HofstaatFutsch = Wld_GetDay();
	};
};

INSTANCE Info_Mod_HofstaatDrogenminister_Maler (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Maler_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Maler_Info;
	permanent	= 0;
	important	= 0;
	description	= "You have the-- Masterpieces painted for the king?";
};

FUNC INT Info_Mod_HofstaatDrogenminister_Maler_Condition()
{
	if (Mod_SL_Meer == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Maler_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_00"); //You have the-- Masterpieces painted for the king?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_01"); //Oh, yes, the art is my obsession.
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_02"); //Could you draw me a picture?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_03"); //A special design? What do you want me to paint?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_04"); //A landscape.
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_05"); //Of what?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_06"); //From the swamp. You'll find him in the former mining colony.
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_07"); //All right, all right. Come back tomorrow, I should be back. Velvet picture.

	Mod_SL_BildMalTag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Tomorrow I can pick up the painting at the Dorgen Minister's.");
};

INSTANCE Info_Mod_HofstaatDrogenminister_BildFertig (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_BildFertig_Condition;
	information	= Info_Mod_HofstaatDrogenminister_BildFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_BildFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatDrogenminister_Maler))
	&& (Wld_GetDay() > Mod_SL_BildMalTag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_BildFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_BildFertig_04_00"); //Here's your picture.

	B_GiveInvItems	(self, hero, ItMi_StrandBild, 1);

	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_BildFertig_04_01"); //This is a Kuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu!!!!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_BildFertig_15_02"); //Thank you very much. It's.... stunning.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I have the painting of the secretary of drugs. I hope the king isn't too demanding.");
};

INSTANCE Info_Mod_HofstaatDrogenminister_Spezialauftrag (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Spezialauftrag_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Spezialauftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Spezialauftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Tuersteher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Spezialauftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_00"); //Very good! I've been waiting and you've come, just fabulous!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_15_01"); //What's to be done?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_02"); //Oh, something so secret and dangerous that only YOU can do it!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_15_03"); //So far I was already....
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_04"); //Here, take this package to the swamp. Give it to Lester. And beware!

	B_GiveInvItems	(self, hero, ItMi_PaketFuerLester, 1);

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "The special assignment is to bring a package to Lester's. Oh, great.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatDrogenminister_Pickpocket (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Pickpocket_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatDrogenminister_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatDrogenminister_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatDrogenminister_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatDrogenminister_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatDrogenminister_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatDrogenminister_EXIT (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_EXIT_Condition;
	information	= Info_Mod_HofstaatDrogenminister_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatDrogenminister_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatDrogenminister_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
