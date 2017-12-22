INSTANCE Info_Mod_Sabitsch_Hi (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Hi_Condition;
	information	= Info_Mod_Sabitsch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, I hear you're fighting in the arena?";
};

FUNC INT Info_Mod_Sabitsch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sabitsch_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Hi_15_00"); //Hello, I hear you're fighting in the arena?
	AI_Output(self, hero, "Info_Mod_Sabitsch_Hi_04_01"); //(slightly disrespectful) If the stakes are right. I also want to earn some money, if my axe gets nicked on the heads of my opponents and should rust from their blood.
};

INSTANCE Info_Mod_Sabitsch_Arenakampf (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Arenakampf_Condition;
	information	= Info_Mod_Sabitsch_Arenakampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to fight you.";
};

FUNC INT Info_Mod_Sabitsch_Arenakampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sabitsch_Hi))
	&& (Mod_SabitschArenaLooser == FALSE)
	&& (Mod_SabitschKampf == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_15_00"); //I want to fight you.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_04_01"); //What's the stakes?

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, DIALOG_BACK, Info_Mod_Sabitsch_Arenakampf_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Quentin_AmulettWeg))
	|| (Npc_KnowsInfo(hero, Info_Mod_Scatty_AboutSabitsch))
	{
		if (Mod_SabitschRingTalk == FALSE)
		{
			Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Can I place anything other than a bet?", Info_Mod_Sabitsch_Arenakampf_E);
		}
		else
		{
			if (Npc_HasItems(hero, ItRi_SkinnersRing_Gold) == 1)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Golden luster orkring.", Info_Mod_Sabitsch_Arenakampf_G);
			};
			if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "1 gold ring.", Info_Mod_Sabitsch_Arenakampf_F);
			};
			if (Npc_HasItems(hero, ItMi_SilverRing) >= 2)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "2 silver rings.", Info_Mod_Sabitsch_Arenakampf_D);
			};
		};
	};

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "200 gold.", Info_Mod_Sabitsch_Arenakampf_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "100 gold.", Info_Mod_Sabitsch_Arenakampf_B);
	};

	Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "50 gold.", Info_Mod_Sabitsch_Arenakampf_A);
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_BACK()
{
	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_E()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_E_15_00"); //Can I place anything other than a bet? How about some precious pieces of jewelry?
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_E_04_01"); //Of course, I wanted to add some rings to my collection. However, it must be one gold or two silver rings.

	Mod_SabitschRingTalk = TRUE;

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	if (Npc_HasItems(hero, ItRi_SkinnersRing_Gold) == 1)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Golden luster orkring.", Info_Mod_Sabitsch_Arenakampf_G);
	};
	if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "1 gold ring.", Info_Mod_Sabitsch_Arenakampf_F);
	};
	if (Npc_HasItems(hero, ItMi_SilverRing) >= 2)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "2 silver rings.", Info_Mod_Sabitsch_Arenakampf_D);
	};
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_G()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_G_15_00"); //A golden ring.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_G_04_01"); //I will put this beautiful piece on myself immediately, as you will not get hold of it anyway.

	B_GiveInvItems	(hero, self, ItRi_SkinnersRing_Gold, 1);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
	Mod_SabitschHatteRing = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_F()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_F_15_00"); //A gold ring.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //That's what I like to hear. We can start right away.

	B_GiveInvItems	(hero, self, ItMi_GoldRing, 1);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_D()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_D_15_00"); //Two silver rings.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //That's what I like to hear. We can start right away.

	B_GiveInvItems	(hero, self, ItMi_SilverRing, 2);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_C()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_C_15_00"); //200 gold.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //That's what I like to hear. We can start right away.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_B()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_B_15_00"); //100 gold.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_B_04_01"); //Not a little bit, but sometimes you have to lower your expectations.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_A()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_A_15_00"); //50 gold.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_A_04_01"); //What?! I'm not even taking out my axe for that.

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sabitsch_Arenakampf2 (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Arenakampf2_Condition;
	information	= Info_Mod_Sabitsch_Arenakampf2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Sabitsch_Arenakampf2_Condition()
{
	if (Mod_SabitschKampf == TRUE)
	&& (Npc_GetDistToWP(self, "OCR_ARENABATTLE_TRAIN") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf2_Info()
{
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf2_04_00"); //Come here, then!

	if (Mod_SabitschHatteRing == TRUE)
	{
		self.attribute[ATR_STRENGTH] = 150;
	};

	AI_UnequipWeapons	(self);
	
	AI_EquipBestMeleeWeapon	(self);

	B_StartOtherRoutine	(self, "START");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_SabitschKampf = FALSE;

	Mod_ArenaKampfStarted = 1;
};

INSTANCE Info_Mod_Sabitsch_Umgehauen (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Umgehauen_Condition;
	information	= Info_Mod_Sabitsch_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sabitsch_Umgehauen_Condition()
{
	if (Mod_SabitschKampf == FALSE)
	&& (self.aivar[AIV_LastFightComment] == FALSE)
	&& (Mod_ArenaKampfStarted == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sabitsch_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			if (Mod_SabitschHatteRing == TRUE)
			{
				AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_00"); //It's not possible, I couldn't pull my gun. There must be some nasty magic behind this.
				AI_Output(hero, self, "Info_Mod_Sabitsch_Umgehauen_15_01"); //It's better not to get your mouth too full.
			};

			AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_02"); //Oh, leave me alone.

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Sabitsch had to leave a lot of feathers in the arena. I have the amulet, and I should bring it to Dexter by now.");

			Mod_SabitschArenaLooser = TRUE;
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_03"); //You're just a big mouth.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	AI_UnequipWeapons	(self);
};

INSTANCE Info_Mod_Sabitsch_Diebstahl (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Diebstahl_Condition;
	information	= Info_Mod_Sabitsch_Diebstahl_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sabitsch_Diebstahl_Condition()
{
	if (Mod_SabitschAmulettGeklaut == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sabitsch_Diebstahl_Info()
{
	AI_Output(self, hero, "Info_Mod_Sabitsch_Diebstahl_04_00"); //My amulet, where is it? Wait, dirty thief.

	Mod_SabitschAmulettGeklaut = 2;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Theft, 0);
};

INSTANCE Info_Mod_Sabitsch_HabDeinAmulett (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_HabDeinAmulett_Condition;
	information	= Info_Mod_Sabitsch_HabDeinAmulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, do you want your amulet back?";
};

FUNC INT Info_Mod_Sabitsch_HabDeinAmulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_FakeAmulett))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sabitsch_HabDeinAmulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_HabDeinAmulett_15_00"); //Hey, do you want your amulet back?

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_04_01"); //What, you have my amulet?! You're mocking me. Give me that!

	Info_ClearChoices	(Info_Mod_Sabitsch_HabDeinAmulett);

	Info_AddChoice	(Info_Mod_Sabitsch_HabDeinAmulett, "Sure, here you go.", Info_Mod_Sabitsch_HabDeinAmulett_B);
	Info_AddChoice	(Info_Mod_Sabitsch_HabDeinAmulett, "Why don't you go get it?", Info_Mod_Sabitsch_HabDeinAmulett_A);
};

FUNC VOID Info_Mod_Sabitsch_HabDeinAmulett_B()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_HabDeinAmulett_B_15_00"); //Sure, here you go.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett, 1);

	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_01"); //(surprised) Uh, what? You'll just give it to me without a fight? You can't do that.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_02"); //Wouldn't be good for my reputation and against my principles.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_03"); //But wait, I'll at least teach you a few more things about hand-to-hand combat.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_04"); //So, depending on whether you are swinging the weapon on the right or left sides, you have to lift the heel on the same side and move forward with your body.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_05"); //That brings more force into the blow. Understand? Okay. That settles the matter.

	B_GivePlayerXP	(200);

	B_RaiseFightTalent	(hero, NPC_TALENT_1H, 2);
	B_RaiseFightTalent	(hero, NPC_TALENT_2H, 2);

	PrintScreen	("2% one-hand and two-handed", -1, -1, FONT_SCREEN, 2);

	Info_ClearChoices	(Info_Mod_Sabitsch_HabDeinAmulett);
};

FUNC VOID Info_Mod_Sabitsch_HabDeinAmulett_A()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_HabDeinAmulett_A_15_00"); //Hol es dir doch. 
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_A_04_01"); //Na warte.

	Info_ClearChoices	(Info_Mod_Sabitsch_HabDeinAmulett);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Theft, 0);
};

INSTANCE Info_Mod_Sabitsch_Pickpocket (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Pickpocket_Condition;
	information	= Info_Mod_Sabitsch_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Sabitsch_Pickpocket_Condition()
{
	if (Npc_HasItems(hero, ItAm_MegaAmulett) > 0)
	{
		return FALSE;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	{
		return FALSE;
	};

	C_Beklauen	(120, ItAm_MegaAmulett, 1);
};

FUNC VOID Info_Mod_Sabitsch_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sabitsch_Pickpocket);

	Info_AddChoice	(Info_Mod_Sabitsch_Pickpocket, DIALOG_BACK, Info_Mod_Sabitsch_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sabitsch_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sabitsch_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sabitsch_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sabitsch_Pickpocket);
};

FUNC VOID Info_Mod_Sabitsch_Pickpocket_DoIt()
{
	B_Beklauen();

	if (Npc_HasItems(hero, ItAm_MegaAmulett) == 1)
	{
		Mod_SabitschAmulettGeklaut = TRUE;
	};

	Info_ClearChoices	(Info_Mod_Sabitsch_Pickpocket);
};

INSTANCE Info_Mod_Sabitsch_EXIT (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_EXIT_Condition;
	information	= Info_Mod_Sabitsch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sabitsch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sabitsch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
