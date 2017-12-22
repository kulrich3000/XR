INSTANCE Info_Mod_Nefarius_AW_Fokussuche (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Fokussuche_Condition;
	information	= Info_Mod_Nefarius_AW_Fokussuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to check in with you about the focus search.";
};

FUNC INT Info_Mod_Nefarius_AW_Fokussuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_00"); //I'm supposed to check in with you about the focus search.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_01"); //Oh, yes, exactly.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_02"); //Saturas has asked everywhere if there is a possibility that he doesn't have to send two of us with you to the Minental.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_03"); //And just a short time before I had discovered something spectacular in the inscriptions here.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_04"); //If it helps me, I'll always get it out.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_05"); //The ancient people were able to grind a black pearl so that it worked as a prism.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_06"); //But a black pearl is not transparent!
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_07"); //The prism was also not about light, but about magic.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_08"); //The sorcerer cast a spell on the prism, and figuratively seen he was broken in the pearl and emerged from it scattered.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_09"); //These prisms could be helpful in many disciplines, both in battle and flowering.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_10"); //Aha... This means that with a properly cut prism, I could break a spell into three parts and simulate the three magicians I need?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_11"); //In principle, yes. However, this would not help against the protection spell alone, since the power of the spell is also scattered.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_12"); //But the black pearl has many powerful, sometimes dark characteristics.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_13"); //And so the old people succeeded in making the prism in such a way that it could absorb magic without giving it up again.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_14"); //The procedure must have similarities to that with which runes are created from the black pearl.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_15"); //All right, let me get this straight.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_16"); //I need a black pearl, which is not only polished to a magic prism, but can also be charged with spells.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_17"); //It is only questionable whether there is any place at all where such a thing can be made.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_18"); //Right?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_19"); //That's all I have been able to find out so far, but I'm sure it's only a matter of time before I come across the right inscriptions.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_20"); //So I can spend all this time here?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_21"); //I don't care about him.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_22"); //Oh, one more thing. The inscriptions were illustrated.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_23"); //The magician who fed the black pearl with magic became smaller from picture to picture.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_16_24"); //But this is probably only an inaccuracy that has arisen during the process of chiselling.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_25"); //(mumbles) Well, great....

	Log_CreateTopic	(TOPIC_MOD_MAGIEPRISMA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGIEPRISMA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "According to the old people, there's one way I can fake multiple magicians. I need a black bead that is cut into a prism. Nefarius is looking for a way to do this. I can look around in the ruins for so long.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Nefarius_AW_Fokussuche2 (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Fokussuche2_Condition;
	information	= Info_Mod_Nefarius_AW_Fokussuche2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the prism.";
};

FUNC INT Info_Mod_Nefarius_AW_Fokussuche2_Condition()
{
	if (Npc_HasItems(hero, ItMi_Magieprisma) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_15_00"); //I have the prism.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_16_01"); //Phenomenal! (cheery) May... can I see it?

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Fokussuche2);

	Info_AddChoice	(Info_Mod_Nefarius_AW_Fokussuche2, "No.", Info_Mod_Nefarius_AW_Fokussuche2_B);
	Info_AddChoice	(Info_Mod_Nefarius_AW_Fokussuche2, "Of course you do.", Info_Mod_Nefarius_AW_Fokussuche2_A);
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_C()
{
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_16_00"); //With the prism, it should now be possible to break the protection spell of the Focus Stones.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_16_01"); //All you have to do is charge the prism and empty it onto the focus stone.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_16_02"); //You'll be all right!

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Fokussuche2);

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "I have my prism and can use it to break the protection spell. All I have to do is load the prism with spells and then empty it onto the focus. Great, so we can finally get started.");
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_B()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_B_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_B_16_01"); //Oh, too bad. Whatever you say.

	Info_Mod_Nefarius_AW_Fokussuche2_C();
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_A()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_A_15_00"); //Of course you do.

	B_GiveInvItems	(hero, self, ItMi_Magieprisma, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_16_01"); //(assessing) Uh-huh... So, so... That's interesting...
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_16_02"); //May I ask how you got it?
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_A_15_03"); //You don't want to know. A lot of Beliam magic was necessary.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_16_04"); //(surprised) Oh! Uh, why don't you take it back?

	B_GiveInvItems	(self, hero, ItMi_Magieprisma, 1);

	Info_Mod_Nefarius_AW_Fokussuche2_C();
};

INSTANCE Info_Mod_Nefarius_AW_PrismaGeladen (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_PrismaGeladen_Condition;
	information	= Info_Mod_Nefarius_AW_PrismaGeladen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I loaded the prism with a spell.";
};

FUNC INT Info_Mod_Nefarius_AW_PrismaGeladen_Condition()
{
	if (Mod_Prisma_Start)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_PrismaGeladen_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_00"); //I loaded the prism with a spell.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_16_01"); //It worked! Bravo! (Pause) That's not all you wanted to say?
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_02"); //I now know what the mysterious drawing on the wall should represent.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_03"); //The magic that disappeared in the prism.... I have a feeling he's stolen some of my life force.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_04"); //Since then I feel sickly and weak.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_16_05"); //This is extremely worrying, especially as you have to charge the prism with more sayings to make it work to its full effect.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_16_06"); //Be careful with that! We can only hope that the energy you have been robbed will be released together with the spells.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_07"); //Otherwise only my flesh remains...
};

INSTANCE Info_Mod_Nefarius_AW_Runen (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Runen_Condition;
	information	= Info_Mod_Nefarius_AW_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me (create runes)";
};

FUNC INT Info_Mod_Nefarius_AW_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Info ()
{
	var INT abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Nefarius_AW_Runen_15_00"); //Teach me.
	
	Info_ClearChoices 	(Info_Mod_Nefarius_AW_Runen);
	Info_AddChoice		(Info_Mod_Nefarius_AW_Runen, DIALOG_BACK, Info_Mod_Nefarius_AW_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Nefarius_AW_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Icerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Icerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Icerain)) ,Info_Mod_Nefarius_AW_Runen_Icerain);
			abletolearn = (abletolearn +1);
		};	
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_IceWave] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_IceWave, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceWave)), Info_Mod_Nefarius_AW_Runen_IceWave);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Nefarius_AW_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_LightningFlash] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_LightningFlash, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightningFlash)), Info_Mod_Nefarius_AW_Runen_LightningFlash);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Waterfist] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Waterfist, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Waterfist)), Info_Mod_Nefarius_AW_Runen_Waterfist);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Nefarius_AW_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_IceCube] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_IceCube, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceCube)), Info_Mod_Nefarius_AW_Runen_IceCube);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ChargeZap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_ChargeZap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeZap)), Info_Mod_Nefarius_AW_Runen_Thunderball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Thunderstorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Thunderstorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Thunderstorm)), Info_Mod_Nefarius_AW_Runen_Thunderstorm);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Geyser] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Geyser, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Geyser)), Info_Mod_Nefarius_AW_Runen_Geyser);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_Icelance] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Icelance, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Icelance)), Info_Mod_Nefarius_AW_Runen_Icelance);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_InstantIceball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_InstantIceball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantIceball)), Info_Mod_Nefarius_AW_Runen_InstantIceball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Nefarius_AW_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Nefarius_AW_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Zap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Zap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Zap)), Info_Mod_Nefarius_AW_Runen_Zap);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Nefarius_AW_Runen_14_01"); //There's nothing more I can teach you.
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Nefarius_AW_Runen);
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icerain);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icerain) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icerain, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonIceGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonIceGolem);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonEisgoblin()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonEisgoblin);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icebolt);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Zap()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Zap) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Zap, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icelance()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icelance);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icelance) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icelance, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_InstantIceball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantIceball);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Waterfist()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Waterfist);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_IceCube()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceCube);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceCube) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceCube, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Thunderball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeZap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Thunderstorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Thunderstorm);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Geyser()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Geyser);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Geyser) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Geyser, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_LightningFlash()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightningFlash);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_IceWave()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceWave);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceWave) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceWave, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal, 1);
	};
};

INSTANCE Info_Mod_Nefarius_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Pickpocket_Condition;
	information	= Info_Mod_Nefarius_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Nefarius_AW_Pickpocket_Condition()
{
	C_Beklauen	(144, ItMi_Gold, 61);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_BACK, Info_Mod_Nefarius_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nefarius_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nefarius_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nefarius_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nefarius_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nefarius_AW_EXIT (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_EXIT_Condition;
	information	= Info_Mod_Nefarius_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nefarius_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
