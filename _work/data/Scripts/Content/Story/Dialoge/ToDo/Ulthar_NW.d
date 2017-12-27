INSTANCE Info_Mod_Ulthar_Daemonisch (C_INFO)
{
	npc		= Mod_553_KDF_Ulthar_NW;
	nr		= 1;
	condition	= Info_Mod_Ulthar_Daemonisch_Condition;
	information	= Info_Mod_Ulthar_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ulthar_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulthar_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_00"); //Hello, son. You seem like you're looking for something. Can I help you?
	AI_Output(hero, self, "Info_Mod_Ulthar_Daemonisch_15_01"); //I heard there was a death. Shortly before the unfortunate novice died, he is said to have been in the church.
	AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_02"); //Yes, the loss is terrible and unexpected. Luckily, he had previously attended the midday service and died with Inno's blessing.
	AI_Output(hero, self, "Info_Mod_Ulthar_Daemonisch_15_03"); //And what does such a service look like?
	AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_04"); //Hmm, it doesn't seem to be too far from your faith when you ask me that question.
	AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_05"); //In short: one prays, receives the blessing of a high fire magician and drinks some monastery wine from a blessed cup.
	AI_Output(hero, self, "Info_Mod_Ulthar_Daemonisch_15_06"); //Aha, monastery wine...

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Shortly before his death, the novice Dyrian had attended the service. They prayed, gave the blessing of a fire magician and enjoyed some monastery wine from a blessed cup.");

	if (hero.guild == GIL_VLK)
	{
		AI_Output(hero, self, "Info_Mod_Ulthar_Daemonisch_15_07"); //What does monastery wine consist of?
		AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_08"); //So, take five bottles of ordinary wine, go with it to a shrine of Innos, consecrate it and distribute a potion to heal obsession with it. That's about it, too.

		B_LogEntry	(TOPIC_MOD_DAEMONISCH, "For the monastery wine, five normal bottles of wine are taken, distributed at an Innoshrine a bottle of Healing of the obsession on it and blessed.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Ulthar_Daemonisch_15_09"); //What does...?
		AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_10"); //You don't really expect me to share this sacred knowledge with you.
		AI_Output(self, hero, "Info_Mod_Ulthar_Daemonisch_05_11"); //Only Fire Servants have knowledge of the recipe and no magician in this monastery will pass it on to you.

		B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Ulthar didn't want to give me the ingredients of the monastery wine. Can I find out from another fire magician?");
	};
};

instance Info_Mod_Ulthar_Runen	(C_INFO)
{
	npc		= Mod_553_KDF_Ulthar_NW;
	nr		= 1;
	condition	= Info_Mod_Ulthar_Runen_Condition;
	information	= Info_Mod_Ulthar_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Instruct me (create runes)";
};

func int Info_Mod_Ulthar_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Befoerderung))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	{
		return 1;
	};
};

func void Info_Mod_Ulthar_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Ulthar_Runen_15_00"); //Teach me.
	
	Info_ClearChoices 	(Info_Mod_Ulthar_Runen);
	Info_AddChoice		(Info_Mod_Ulthar_Runen, DIALOG_BACK, Info_Mod_Ulthar_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_MasterOfDisaster] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_MasterOfDisaster, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_MasterOfDisaster)) ,Info_Mod_Ulthar_Runen_MasterOfDisaster);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Ulthar_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Firerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Firerain)) ,Info_Mod_Ulthar_Runen_Firerain);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_Pyrokinesis] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Pyrokinesis, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Pyrokinesis)), Info_Mod_Ulthar_Runen_Pyrokinesis);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Pyrokinesis_g1] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString ("Pyrokinesis", B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Pyrokinesis_g1)), Info_Mod_Ulthar_Runen_Pyrokinesis_g1);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Ulthar_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_ChargeFireball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_ChargeFireball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeFireball)), Info_Mod_Ulthar_Runen_ChargeFireball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_DestroyUndead] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_DestroyUndead, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_DestroyUndead)), Info_Mod_Ulthar_Runen_DestroyUndead);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Ulthar_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firestorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Firestorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Firestorm)), Info_Mod_Ulthar_Runen_Firestorm);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_InstantFireball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_InstantFireball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantFireball)), Info_Mod_Ulthar_Runen_InstantFireball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Ulthar_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Ulthar_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firebolt] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Ulthar_Runen, B_BuildLearnString (NAME_SPL_Firebolt, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Firebolt)), Info_Mod_Ulthar_Runen_Firebolt);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Ulthar_Runen_14_01"); //There's nothing more I can teach you.
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Ulthar_Runen);
};

FUNC VOID Info_Mod_Ulthar_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_SummonFireGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonFireGolem);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumFireGol) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumFireGol, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_SummonGoblinKrieger()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGoblinKrieger);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumGobKrieger) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumGobKrieger, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Ulthar_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_Firebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firebolt);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firebolt) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firebolt, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_InstantFireball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantFireball);
	
	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_InstantFireball) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_InstantFireball, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_DestroyUndead()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_DestroyUndead);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_HarmUndead) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_HarmUndead, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_Firestorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firestorm);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firestorm) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firestorm, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_ChargeFireball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeFireball);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_ChargeFireball) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_ChargeFireball, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_Pyrokinesis()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Pyrokinesis);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Pyrokinesis) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Pyrokinesis, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_Pyrokinesis_g1()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Pyrokinesis_g1);
};

FUNC VOID Info_Mod_Ulthar_Runen_MasterOfDisaster()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MasterOfDisaster);
};

FUNC VOID Info_Mod_Ulthar_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_FullHeal, 1);
	};
};

FUNC VOID Info_Mod_Ulthar_Runen_Firerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firerain);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firerain) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firerain, 1);
	};
};

INSTANCE Info_Mod_Ulthar_Pickpocket (C_INFO)
{
	npc		= Mod_553_KDF_Ulthar_NW;
	nr		= 1;
	condition	= Info_Mod_Ulthar_Pickpocket_Condition;
	information	= Info_Mod_Ulthar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Ulthar_Pickpocket_Condition()
{
	C_Beklauen	(169, ItMi_Gold, 96);
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);

	Info_AddChoice	(Info_Mod_Ulthar_Pickpocket, DIALOG_BACK, Info_Mod_Ulthar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ulthar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ulthar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);

		Info_AddChoice	(Info_Mod_Ulthar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ulthar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ulthar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ulthar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ulthar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ulthar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ulthar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ulthar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ulthar_EXIT (C_INFO)
{
	npc		= Mod_553_KDF_Ulthar_NW;
	nr		= 1;
	condition	= Info_Mod_Ulthar_EXIT_Condition;
	information	= Info_Mod_Ulthar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ulthar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulthar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
