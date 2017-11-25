INSTANCE Info_Mod_Sekob_Hi (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Hi_Condition;
	information	= Info_Mod_Sekob_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Sekob_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sekob_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Sekob_Hi_01_01"); //I'm Sekob, I own this farm. What do you want from me?
};

INSTANCE Info_Mod_Sekob_Daemonisch (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Daemonisch_Condition;
	information	= Info_Mod_Sekob_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sekob_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Sekob_Daemonisch_01_00"); //I spent two fucking monthly salaries on myself and the servant in the tavern.
	AI_Output(self, hero, "Info_Mod_Sekob_Daemonisch_01_01"); //Why didn't anyone stop me?!
};

INSTANCE Info_Mod_Sekob_Untier (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Untier_Condition;
	information	= Info_Mod_Sekob_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you happen to meet an unusual predator on the farm in the last few days?";
};

FUNC INT Info_Mod_Sekob_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Untier_15_00"); //Did you happen to meet an unusual predator on the farm in the last few days?
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_01"); //Unusual predator?! I've got different problems.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_02"); //These damned undead have recently emerged from the graves and have come dangerously close to my homesteads.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_03"); //I can't keep an eye open at night because I'm worried they might walk into my bedroom at some point...
	AI_Output(hero, self, "Info_Mod_Sekob_Untier_15_04"); //Yes, but...
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_05"); //If you're looking for game, ask Balthasar. He was talking about some kind of beast.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_06"); //Ha, don't make me laugh. Probably just a rat from the barn...

	Wld_InsertNpc	(Zombie_AtSekobsHof_01, "FP_ROAM_SEKOBSZOMBIE_01");
	Wld_InsertNpc	(Zombie_AtSekobsHof_02, "FP_ROAM_SEKOBSZOMBIE_02");
};

INSTANCE Info_Mod_Sekob_ZombiesTot (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_ZombiesTot_Condition;
	information	= Info_Mod_Sekob_ZombiesTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I solved the problem with the undead.";
};

FUNC INT Info_Mod_Sekob_ZombiesTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Untier))
	&& (Npc_IsDead(Zombie_AtSekobsHof_01))
	&& (Npc_IsDead(Zombie_AtSekobsHof_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_ZombiesTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_ZombiesTot_15_00"); //I solved the problem with the undead.
	AI_Output(self, hero, "Info_Mod_Sekob_ZombiesTot_01_01"); //Fabulous, then I'll be able to sleep in peace again.
	AI_Output(hero, self, "Info_Mod_Sekob_ZombiesTot_15_02"); //Not so fast. How much is your quiet sleep worth to you?
	AI_Output(self, hero, "Info_Mod_Sekob_ZombiesTot_01_03"); //All right, here's 50 gold coins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Sekob_Unheil (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Unheil_Condition;
	information	= Info_Mod_Sekob_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Has anything strange happened to you on the farm lately?";
};

FUNC INT Info_Mod_Sekob_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Unheil_15_00"); //Has anything strange happened to you on the farm lately?
	AI_Output(self, hero, "Info_Mod_Sekob_Unheil_01_01"); //What?! Are you trying to fool me?! I'll chase you to the cemetery for the undead pack. Get the hell out of here!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sekob_Bauer (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Bauer_Condition;
	information	= Info_Mod_Sekob_Bauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anything to do here?";
};

FUNC INT Info_Mod_Sekob_Bauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Bauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Bauer_15_00"); //Anything to do here?
	AI_Output(self, hero, "Info_Mod_Sekob_Bauer_01_01"); //If you want to make yourself useful, talk to Balthazar.
	AI_Output(self, hero, "Info_Mod_Sekob_Bauer_01_02"); //He's probably got a little something for you to do.
};

INSTANCE Info_Mod_Sekob_SagittaKraeuter (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_SagittaKraeuter_Condition;
	information	= Info_Mod_Sekob_SagittaKraeuter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sekob_SagittaKraeuter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sagitta_Kraeuter2))
	&& (Npc_HasItems(hero, ItPo_SekobMedizin) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_SagittaKraeuter_Info()
{
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_00"); //What are you doing in my house?!
	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_01"); //Uh, I'll bring you the medicine of Sagitta.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_02"); //What? Well, give it to me. It took forever.

	B_GiveInvItems	(hero, self, ItPo_SekobMedizin, 1);

	B_UseItem	(self, ItPo_SekobMedizin);

	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_03"); //Uh, she said to take two tablespoons each morning and evening.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_04"); //(not paying attention to the hero, to himself) Ahh, that's better.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_05"); //(again to the hero) Huh, is there something else?
	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_06"); //The payment.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_07"); //What? Oh, well. Go to my wife.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sekob_Pickpocket (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Pickpocket_Condition;
	information	= Info_Mod_Sekob_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sekob_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

	Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_BACK, Info_Mod_Sekob_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sekob_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sekob_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sekob_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sekob_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sekob_EXIT (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_EXIT_Condition;
	information	= Info_Mod_Sekob_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sekob_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sekob_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
