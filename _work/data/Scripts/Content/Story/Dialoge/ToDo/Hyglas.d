INSTANCE Info_Mod_Hyglas_Hi (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Hi_Condition;
	information	= Info_Mod_Hyglas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hyglas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_Hi_14_00"); //Ah, a new face. I am Hyglas and teach everyone here in the monastery how to handle runes.
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_FeuerGegenEis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis_14_00"); //This teleport spell will transport us both right in front of Orlan's tavern where the others are waiting for us.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis_14_01"); //There we discuss the further procedure in detail.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_924_RIT_Sergio_NW, "ATSEE");
	B_SetAivar	(Mod_924_RIT_Sergio_NW, AIV_INVINCIBLE, TRUE);

	Wld_InsertNpc	(IceGolem_FeuerGegenEis_01,	"NW_BIGFARM_LAKE_07");

	B_KillNpc	(IceGolem_FeuerGegenEis_01);

	Wld_InsertNpc	(Mod_7786_NOV_Novize_NW, "TAVERNE");

	B_KillNpc	(Mod_7786_NOV_Novize_NW);

	Wld_InsertNpc	(IceGolem_FeuerGegenEis_05,	"WP_EISHOEHLE_05");
	Wld_InsertNpc	(IceGolem_FeuerGegenEis_06,	"WP_EISHOEHLE_06");

	Wld_InsertNpc	(IceGolem_FeuerGegenEis_07,	"WP_EISHOEHLE_04");

	Wld_InsertNpc	(IceGolem_FeuerGegenEis_08,	"NW_BIGFARM_ALLEE_07");
	Wld_InsertNpc	(IceGolem_FeuerGegenEis_09,	"NW_BIGFARM_FARM4_PATH_05");

	Wld_InsertNpc	(Eislaeufer_FGE,	"FP_SPAWN_STONEGUARDIAN_STEINKREIS_05");
	Wld_InsertNpc	(Eislaeufer_FGE,	"NW_BIGFARM_FARM4_PATH_07");
	Wld_InsertNpc	(Eislaeufer_FGE,	"NW_BIGFARM_CROSS");
	Wld_InsertNpc	(Eislaeufer_FGE,	"NW_BIGFARM_CROSS");
	Wld_InsertNpc	(Eislaeufer_FGE,	"WP_SLD_DRACHENJAGD_01");
	Wld_InsertNpc	(Eislaeufer_FGE,	"FP_ROAM_NW_BIGFARM_LAKE_MONSTER_05_03");
	Wld_InsertNpc	(Eislaeufer_FGE,	"FP_ROAM_NW_BIGFARM_LAKE_MONSTER_05_03");
	Wld_InsertNpc	(Eislaeufer_FGE,	"NW_LAKE__WATER_02");
	Wld_InsertNpc	(Eislaeufer_FGE,	"NW_LAKE__WATER_02");
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis2 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis2_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis2_Condition()
{
	if (Mod_FM_FeuerEis == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis2_Info()
{
	var c_npc Hyglas; Hyglas = Hlp_GetNpc(Mod_918_KDF_Hyglas_NW);
	var c_npc Orlan; Orlan = Hlp_GetNpc(Mod_776_NONE_Orlan_NW);

	TRIA_Invite(Orlan);
	TRIA_Start();

	TRIA_Next(Hyglas);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_14_00"); //Here we are.... but where are the others?

	TRIA_Next(Orlan);

	AI_TurnToNpc	(Orlan, Hyglas);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_05_01"); //(agitated) Recently, a group of these ice creatures came up the path.

	AI_TurnToNpc	(Hyglas, Orlan);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_05_02"); //Your boys from the monastery immediately took up the fight and pushed them back.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_05_03"); //However, new monsters followed them all the time, so they fought their way down to the lake.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_05_04"); //I'm afraid, however, that without further support it looks bad for them, with all the animals.

	TRIA_Next(Hyglas);

	AI_TurnToNpc	(Hyglas, hero);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis2_14_05"); //Did you hear that, novice? There's no time to lose. We must rush to the other man's aid immediately.

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "So there I am with Hyglas. From Sekobs yard more and more ice creatures stream through a mysterious portal to Khorinis and our boys are involved in battles with them at the lake. There is no time to lose to help them.");

	self.aivar[AIV_Partymember] = TRUE;

	B_StartOtherRoutine	(self, "ZUSERGIO");
	B_StartOtherRoutine	(Orlan, "START");
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis3 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis3_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sergio_FeuerGegenEis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis3_14_00"); //Don't blame yourself... you fought bravely and gave your best you could.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis3_14_01"); //Moreover, now is not the time for self-reproaches. Courage your wounds and make sure none of these creatures escape into the environment.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis3_14_02"); //Meanwhile I will go to the stone circle with the novice and try to close the portal. Innos be with you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ZUSEKOB");

	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "No time to rest. We need to move on to the portal at Sekob's yard to lock it up.");
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis4 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis4_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis4_Condition()
{
	if (Npc_GetDistToWP(self, "WP_STEINKREIS_05") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis4_14_00"); //Disturbing... the portal is now visible. I need to take a closer look.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis5 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis5_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis5_Condition()
{
	if (Mod_FM_FeuerEis == 2)
	&& (Npc_IsDead(IceGolem_FeuerGegenEis_02))
	&& (Npc_IsDead(IceGolem_FeuerGegenEis_03))
	&& (Npc_IsDead(IceGolem_FeuerGegenEis_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis5_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis5_14_00"); //At Innos, it seems to be growing continuously. If we don't close it fast, all of Khorinis will soon be a hoard of ice.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis5_15_01"); //What is to be done?
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis5_14_02"); //I will try to destabilize the portal's magical structure with a firestorm.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis5_14_03"); //With any luck, it will collapse.... hopefully.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis6 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis6_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis6_Condition()
{
	if (Mod_FM_FeuerEis == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis6_Info()
{
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis6_15_00"); //Damn it, what happened.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis6_14_01"); //The.... the magical discharge has not closed the portal... but even stronger... and apparently we were pulled over to the other side.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis6_15_02"); //So what do we do now?
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis6_14_03"); //We need to look around here as soon as possible. Maybe we can find clues about the source of the portal.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "EISHOEHLE2");

	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "Great! Instead of sealing the portal, we have now landed in an icy cave on the other side.");
};

INSTANCE Info_Mod_Hyglas_FeuerGegenEis7 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_FeuerGegenEis7_Condition;
	information	= Info_Mod_Hyglas_FeuerGegenEis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_FeuerGegenEis7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_FeuerGegenEis6))
	&& (Npc_GetDistToWP(hero, "WP_EISHOEHLE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_FeuerGegenEis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_00"); //There! This construct emanates great magical energy. Without any doubt, this feeds the portal.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis7_15_01"); //So we have to destroy it, then?
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_02"); //Yes... However...
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis7_15_03"); //But what, though?
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_04"); //However, the portal would then collapse and block our way back.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis7_15_05"); //Great! Then there's nothing we can do?

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_06"); //Hmm, but...

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_07"); //(determining the hero) You will go back through the portal to Khorinis... and I'll stay behind and bring down the cave with a mighty conflagration.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis7_15_08"); //But... that would be your certain perdition.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_09"); //We have no other choice if we want to save khorinis from further disaster.
	AI_Output(hero, self, "Info_Mod_Hyglas_FeuerGegenEis7_15_10"); //All right... It was an honor to have fought alongside you.
	AI_Output(self, hero, "Info_Mod_Hyglas_FeuerGegenEis7_14_11"); //Also... Now go.... every additional minute that the portal exists is one too many. Innos be with you!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "ATBETT");
	B_StartOtherRoutine	(Mod_552_KDF_Serpentes_NW, "ATBETT");
	B_StartOtherRoutine	(Mod_553_KDF_Ulthar_NW, "ATBETT");
};

INSTANCE Info_Mod_Hyglas_BackInKhorinis (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_BackInKhorinis_Condition;
	information	= Info_Mod_Hyglas_BackInKhorinis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_BackInKhorinis_Condition()
{
	if (Mod_FM_Hyglas_Eisgebiet == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_BackInKhorinis_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_00"); //Ahh, my savior.
	AI_Output(hero, self, "Info_Mod_Hyglas_BackInKhorinis_15_01"); //You're a preacher now?
	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_02"); //Yes, I want to bring the warming word of Innos closer to the poor and needy.
	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_03"); //I myself have suffered hunger and cold for many weeks and I see the past events as a directive from Innos.
	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_04"); //From now on, I will dedicate my life to supporting and feeding those people to whom fate has not given so many privileges and wealth.
	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_05"); //Therefore, I don't need these spell rolls and runes for the fight anymore and pass them on to you.

	B_ShowGivenThings	("Spruchrollen firestorm and fire rain and runes firestorm and large fireball preserved");

	CreateInvItems	(hero, ItSc_Firerain, 1);
	CreateInvItems	(hero, ItSc_Pyrokinesis, 1);
	CreateInvItems	(hero, ItRu_Pyrokinesis, 1);
	CreateInvItems	(hero, ItRu_ChargeFireball, 1);

	AI_Output(self, hero, "Info_Mod_Hyglas_BackInKhorinis_14_06"); //With you, I can be sure they will serve a right purpose. Innos be with you.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Hyglas_Leichengase (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Leichengase_Condition;
	information	= Info_Mod_Hyglas_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Milten said you could help me with a problem.";
};

FUNC INT Info_Mod_Hyglas_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Leichengase))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Hyglas_Leichengase_15_00"); //Milten said you could help me with a problem.
	AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase_14_01"); //Oh, yeah? What's this about?
	AI_Output(hero, self, "Info_Mod_Hyglas_Leichengase_15_02"); //I need to get a troll to eat this package of herbs here.

	if (hero.guild == GIL_VLK)
	{
		B_GiveInvItems	(hero, self, ItMi_Sumpfkraeuter, 1);

		AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase_14_03"); //I can actually help you there. Come back tomorrow.

		Mod_Leichengase_Day = Wld_GetDay();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase_14_04"); //I can actually help you with that, but it costs money.
		AI_Output(hero, self, "Info_Mod_Hyglas_Leichengase_15_05"); //How much?
		AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase_14_06"); //500 pieces of gold.
	};
};

INSTANCE Info_Mod_Hyglas_Leichengase2 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Leichengase2_Condition;
	information	= Info_Mod_Hyglas_Leichengase2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, all right. (500 Gold)";
};

FUNC INT Info_Mod_Hyglas_Leichengase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	&& (hero.guild != GIL_VLK)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_Leichengase2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hyglas_Leichengase2_15_00"); //All right, all right.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
	Npc_RemoveInvItems	(hero, ItMi_Sumpfkraeuter, 1);

	B_ShowGivenThings	("500 gold and bag with bog herbs added");

	AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase2_14_01"); //Well, come back tomorrow.

	Mod_Leichengase_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Hyglas_Leichengase3 (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Leichengase3_Condition;
	information	= Info_Mod_Hyglas_Leichengase3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_Leichengase3_Condition()
{
	if (Wld_GetDay() <= Mod_Leichengase_Day)
	{
		return 0;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	&& (hero.guild == GIL_VLK)
	{
		return 1;
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_Leichengase3_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase3_14_00"); //Here. If you now summon a sheep from trolls and they eat it, they will automatically eat the herbs.

	B_GiveInvItems	(self, hero, ItSc_SumKrautschaf, 1);

	AI_Output(self, hero, "Info_Mod_Hyglas_Leichengase3_14_01"); //Now leave.

	Mod_Leichengase_Kraut = 3;

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "I have a special spell for the troll. Now I should go to the Troll Gorge in the Minental valley to bring the herbs to the trolls.");

	B_GivePlayerXP	(150);
};

instance Info_Mod_Hyglas_Runen	(C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Runen_Condition;
	information	= Info_Mod_Hyglas_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Instruct me (create runes)";
};

func int Info_Mod_Hyglas_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_Hi))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hyglas_BackInKhorinis))
	{
		return 1;
	};
};

func void Info_Mod_Hyglas_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output(hero, self, "Info_Mod_Hyglas_Runen_15_00"); //Teach me.
	
	Info_ClearChoices 	(Info_Mod_Hyglas_Runen);
	Info_AddChoice		(Info_Mod_Hyglas_Runen, DIALOG_BACK, Info_Mod_Hyglas_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_MasterOfDisaster] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_MasterOfDisaster, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_MasterOfDisaster)) ,Info_Mod_Hyglas_Runen_MasterOfDisaster);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Hyglas_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Firerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Firerain)) ,Info_Mod_Hyglas_Runen_Firerain);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_Pyrokinesis] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Pyrokinesis, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Pyrokinesis)), Info_Mod_Hyglas_Runen_Pyrokinesis);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Pyrokinesis_g1] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString ("Pyrokinesis", B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Pyrokinesis_g1)), Info_Mod_Hyglas_Runen_Pyrokinesis_g1);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Hyglas_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_ChargeFireball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_ChargeFireball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeFireball)), Info_Mod_Hyglas_Runen_ChargeFireball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_DestroyUndead] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_DestroyUndead, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_DestroyUndead)), Info_Mod_Hyglas_Runen_DestroyUndead);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Hyglas_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firestorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Firestorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Firestorm)), Info_Mod_Hyglas_Runen_Firestorm);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_InstantFireball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_InstantFireball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantFireball)), Info_Mod_Hyglas_Runen_InstantFireball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Hyglas_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Hyglas_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Firebolt] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Hyglas_Runen, B_BuildLearnString (NAME_SPL_Firebolt, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Firebolt)), Info_Mod_Hyglas_Runen_Firebolt);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Hyglas_Runen_14_01"); //There's nothing more I can teach you.
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Hyglas_Runen);
};

FUNC VOID Info_Mod_Hyglas_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_SummonFireGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonFireGolem);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumFireGol) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumFireGol, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_SummonGoblinKrieger()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGoblinKrieger);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_SumGobKrieger) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_SumGobKrieger, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Hyglas_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_Firebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firebolt);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firebolt) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firebolt, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_InstantFireball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantFireball);
	
	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_InstantFireball) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_InstantFireball, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_DestroyUndead()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_DestroyUndead);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_HarmUndead) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_HarmUndead, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_Firestorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firestorm);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firestorm) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firestorm, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_ChargeFireball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeFireball);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_ChargeFireball) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_ChargeFireball, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_Pyrokinesis()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Pyrokinesis);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Pyrokinesis) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Pyrokinesis, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_Pyrokinesis_g1()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Pyrokinesis_g1);
};

FUNC VOID Info_Mod_Hyglas_Runen_MasterOfDisaster()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MasterOfDisaster);
};

FUNC VOID Info_Mod_Hyglas_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_FullHeal, 1);
	};
};

FUNC VOID Info_Mod_Hyglas_Runen_Firerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Firerain);

	if (Npc_HasItems(Mod_917_KDF_Gorax_NW, ItSc_Firerain) == 0)
	{
		CreateInvItems	(Mod_917_KDF_Gorax_NW, ItSc_Firerain, 1);
	};
};

INSTANCE Info_Mod_Hyglas_Pickpocket (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_Pickpocket_Condition;
	information	= Info_Mod_Hyglas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Hyglas_Pickpocket_Condition()
{
	C_Beklauen	(98, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);

	Info_AddChoice	(Info_Mod_Hyglas_Pickpocket, DIALOG_BACK, Info_Mod_Hyglas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hyglas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hyglas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);

		Info_AddChoice	(Info_Mod_Hyglas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hyglas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hyglas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hyglas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hyglas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hyglas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hyglas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hyglas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hyglas_EXIT (C_INFO)
{
	npc		= Mod_918_KDF_Hyglas_NW;
	nr		= 1;
	condition	= Info_Mod_Hyglas_EXIT_Condition;
	information	= Info_Mod_Hyglas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hyglas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hyglas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
