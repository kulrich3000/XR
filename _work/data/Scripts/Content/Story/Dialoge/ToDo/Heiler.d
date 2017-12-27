INSTANCE Info_Mod_Heiler_Hi (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Hi_Condition;
	information	= Info_Mod_Heiler_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you heal me?";
};

FUNC INT Info_Mod_Heiler_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Hi_15_00"); //Can you cure me?
	AI_Output(self, hero, "Info_Mod_Heiler_Hi_10_01"); //I can, for a fee.
};

INSTANCE Info_Mod_Heiler_Endres (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres_Condition;
	information	= Info_Mod_Heiler_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did Endres die of?";
};

FUNC INT Info_Mod_Heiler_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_00"); //What did Endres die of?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_01"); //I'm not quite sure, but maybe.... Yeah, but it could be the fist-sized hole in the back of the head.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_02"); //What kind of weapon was used to hit the wound?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_03"); //With a curved blade. Looks a lot like a scythe or a pickaxe to me.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_04"); //The hole is not hammered vertically into the back of the head, but slightly curved.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_05"); //Then it must have been a murder?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_06"); //Whether it is murder, manslaughter or accident - it has clearly been brought about by someone else.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_07"); //Thanks for the information.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "There is further evidence that one of the miners is responsible for Endre's death - the bent weapon.");
};

INSTANCE Info_Mod_Heiler_Endres02 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres02_Condition;
	information	= Info_Mod_Heiler_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are suspected of extortion.";
};

FUNC INT Info_Mod_Heiler_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_00"); //You are suspected of extortion.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres02_10_01"); //What are you doing? A smear campaign?
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_02"); //Can I ask you a few questions?
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_03"); //If you're innocent, you have nothing to worry about.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres02_10_04"); //Start already.
};

INSTANCE Info_Mod_Heiler_Endres03 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres03_Condition;
	information	= Info_Mod_Heiler_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "What were you doing at the time of Endres' death?";
};

FUNC INT Info_Mod_Heiler_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres03_15_00"); //What were you doing at the time of Endres' death?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres03_10_01"); //I was here in the house taking care of my patient.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres03_10_02"); //I haven't left the house all day.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "The healer claims to have taken care of his patient at home all day long.");
};

INSTANCE Info_Mod_Heiler_Endres04 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres04_Condition;
	information	= Info_Mod_Heiler_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the relationship between Endres and his wife?";
};

FUNC INT Info_Mod_Heiler_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres04_15_00"); //What do you know about the relationship between Endres and his wife?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres04_10_01"); //Ha, Juliana was dissatisfied with her relationship. She worshipped him, and he was absorbed in his work.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana's love for Endres is said not to have been fully reciprocated by him.");
};

INSTANCE Info_Mod_Heiler_Endres05 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres05_Condition;
	information	= Info_Mod_Heiler_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the relationship between Endres and Wendel?";
};

FUNC INT Info_Mod_Heiler_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres05_15_00"); //What do you know about the relationship between Endres and Wendel?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres05_10_01"); //They had a good relationship, I guess. Endres was Wendel's idol.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "According to the healer, there has never been a problem between Endres and Wendel.");
};

INSTANCE Info_Mod_Heiler_Endres06 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres06_Condition;
	information	= Info_Mod_Heiler_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are under serious suspicion.";
};

FUNC INT Info_Mod_Heiler_Endres06_Condition()
{
	if (Mod_EndresIndizien == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_00"); //You are under serious suspicion.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_01"); //(unimpressed) Interesting.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_02"); //I want to search the house.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_03"); //Unfortunately, that will not be possible.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_04"); //Why?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_05"); //Because I won't allow it.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_06"); //Then the judge will allow me. I'll be right back.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_07"); //All right, then. You asked for it. You all wanted it this way. Don't move! Don't move!
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_08"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_09"); //Yes, I killed Endres. I've seduced Juliana, done obscenities with her.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_10"); //And I don't regret it. I love her.

	AI_PlayAni  (self, "T_MAGRUN_2_HEASHOOT");
	AI_PlayAni  (self, "T_HEASHOT_2_STAND");

	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_11"); //No, NO!
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_12"); //I suppose there is a higher justice.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_13"); //That is not possible!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "The healer has gone after Endres' back to Juliana. But apparently that was not enough for him, and so her husband cleared out of the way. Oh, love...");

	B_StartOtherRoutine	(self, "TOT");

	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	Info_AddChoice	(Info_Mod_Heiler_Endres06, "I will avenge Endres myself!", Info_Mod_Heiler_Endres06_B);
	Info_AddChoice	(Info_Mod_Heiler_Endres06, "You're going to be locked up now.", Info_Mod_Heiler_Endres06_A);
};

FUNC VOID Info_Mod_Heiler_Endres06_B()
{
	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	Mod_EndresIndizien = 3;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Heiler_Endres06_A()
{
	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	AI_StopProcessInfos	(self);

	Mod_EndresIndizien = 5;

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Heiler_Heilen (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Heilen_Condition;
	information	= Info_Mod_Heiler_Heilen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Heal me (75 Gold)";
};

FUNC INT Info_Mod_Heiler_Heilen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Heilen_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Heilen_15_00"); //Heal me.

	if (Npc_HasItems(hero, ItMi_Gold) >= 75)
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 75);

		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Heiler_Heilen_10_01"); //No gold, no cure.
	};
};

INSTANCE Info_Mod_Heiler_WasGeht (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_WasGeht_Condition;
	information	= Info_Mod_Heiler_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's up?";
};

FUNC INT Info_Mod_Heiler_WasGeht_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_WasGeht_15_00"); //How's it going?
	AI_Output(self, hero, "Info_Mod_Heiler_WasGeht_10_01"); //Without interruptions it would run smoothly, oh yes.
};

INSTANCE Info_Mod_Heiler_Freudenspender (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Freudenspender_Condition;
	information	= Info_Mod_Heiler_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "A source of joy for a relaxed evening's work?";
};                       

FUNC INT Info_Mod_Heiler_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Heiler_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Freudenspender_15_00"); //A source of joy for a relaxed evening's work?
	AI_Output(self, hero, "Info_Mod_Heiler_Freudenspender_10_01"); //Not a bad idea.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender += 1;
};

INSTANCE Info_Mod_Heiler_Pickpocket (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Pickpocket_Condition;
	information	= Info_Mod_Heiler_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Heiler_Pickpocket_Condition()
{
	C_Beklauen	(53, ItPo_Health_Addon_04, 2);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

	Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_BACK, Info_Mod_Heiler_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Heiler_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Heiler_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Heiler_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Heiler_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Heiler_EXIT (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_EXIT_Condition;
	information	= Info_Mod_Heiler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Heiler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
