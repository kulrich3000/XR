INSTANCE Info_Mod_Sabitsch_Hi (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Hi_Condition;
	information	= Info_Mod_Sabitsch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witam, slysze, ze walczysz na arenie?";
};

FUNC INT Info_Mod_Sabitsch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sabitsch_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Hi_15_00"); //Witam, slysze, ze walczysz na arenie?
	AI_Output(self, hero, "Info_Mod_Sabitsch_Hi_04_01"); //(nieco lekcewazace) Jesli stawka jest sluszna. Chce tez zarobic troche pieniedzy, jesli moja siekiera zostanie podbita na glowy moich przeciwników i powinna rdzewiec z ich krwi.
};

INSTANCE Info_Mod_Sabitsch_Arenakampf (C_INFO)
{
	npc		= Mod_7024_OUT_Sabitsch_MT;
	nr		= 1;
	condition	= Info_Mod_Sabitsch_Arenakampf_Condition;
	information	= Info_Mod_Sabitsch_Arenakampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce cie walczyc.";
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
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_15_00"); //Chce cie walczyc.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_04_01"); //Jaka jest stawka?

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, DIALOG_BACK, Info_Mod_Sabitsch_Arenakampf_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Quentin_AmulettWeg))
	|| (Npc_KnowsInfo(hero, Info_Mod_Scatty_AboutSabitsch))
	{
		if (Mod_SabitschRingTalk == FALSE)
		{
			Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Czy moge postawic cos innego niz zaklad?", Info_Mod_Sabitsch_Arenakampf_E);
		}
		else
		{
			if (Npc_HasItems(hero, ItRi_SkinnersRing_Gold) == 1)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Zloty polysk.", Info_Mod_Sabitsch_Arenakampf_G);
			};
			if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "1 zloty pierscien.", Info_Mod_Sabitsch_Arenakampf_F);
			};
			if (Npc_HasItems(hero, ItMi_SilverRing) >= 2)
			{
				Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "2 srebrne pierscienie.", Info_Mod_Sabitsch_Arenakampf_D);
			};
		};
	};

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "200 zlota.", Info_Mod_Sabitsch_Arenakampf_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "100 zlota.", Info_Mod_Sabitsch_Arenakampf_B);
	};

	Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "50 zlota.", Info_Mod_Sabitsch_Arenakampf_A);
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_BACK()
{
	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_E()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_E_15_00"); //Czy moge postawic cos innego niz zaklad? A co z cenna bizuteria?
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_E_04_01"); //Oczywiscie chcialem dodac kilka pierscieni do mojej kolekcji. Musi to byc jednak jeden zloty lub dwa srebrne pierscienie.

	Mod_SabitschRingTalk = TRUE;

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	if (Npc_HasItems(hero, ItRi_SkinnersRing_Gold) == 1)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "Zloty polysk.", Info_Mod_Sabitsch_Arenakampf_G);
	};
	if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "1 zloty pierscien.", Info_Mod_Sabitsch_Arenakampf_F);
	};
	if (Npc_HasItems(hero, ItMi_SilverRing) >= 2)
	{
		Info_AddChoice	(Info_Mod_Sabitsch_Arenakampf, "2 srebrne pierscienie.", Info_Mod_Sabitsch_Arenakampf_D);
	};
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_G()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_G_15_00"); //Zloty pierscien.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_G_04_01"); //Umieszcze ten piekny kawalek natychmiast na sobie, bo i tak sie go nie zatrzymacie.

	B_GiveInvItems	(hero, self, ItRi_SkinnersRing_Gold, 1);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
	Mod_SabitschHatteRing = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_F()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_F_15_00"); //Zloty pierscien.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //To wlasnie lubie slyszec. Mozemy zaczac dzialac od razu.

	B_GiveInvItems	(hero, self, ItMi_GoldRing, 1);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_D()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_D_15_00"); //Dwa srebrne pierscienie.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //To wlasnie lubie slyszec. Mozemy zaczac dzialac od razu.

	B_GiveInvItems	(hero, self, ItMi_SilverRing, 2);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_C()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_C_15_00"); //200 zlota.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_C_04_01"); //To wlasnie lubie slyszec. Mozemy zaczac dzialac od razu.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_B()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_B_15_00"); //100 zlota.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_B_04_01"); //Nie troche troche, ale czasami musisz obnizyc swoje oczekiwania.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Sabitsch_Arenakampf);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARENA");

	Mod_SabitschKampf = 1;
};

FUNC VOID Info_Mod_Sabitsch_Arenakampf_A()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_Arenakampf_A_15_00"); //50 zlota.
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf_A_04_01"); //Co? Nawet nie zdejmuje za to siekiery.

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
	AI_Output(self, hero, "Info_Mod_Sabitsch_Arenakampf2_04_00"); //Przyjdzcie wiec!

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
				AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_00"); //Nie jest to mozliwe, nie moglem wyciagnac pistoletu. Za tym musi kryc sie jakas paskudna magia.
				AI_Output(hero, self, "Info_Mod_Sabitsch_Umgehauen_15_01"); //Lepiej nie zatykac ust.
			};

			AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_02"); //Och, zostaw mnie samemu.

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Sabitsch musial zostawic duzo piór w arenie. Mam amulet i do tej pory powinienem go przekazac Dexterowi.");

			Mod_SabitschArenaLooser = TRUE;
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Sabitsch_Umgehauen_04_03"); //Jestes po prostu duza usta.
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
	AI_Output(self, hero, "Info_Mod_Sabitsch_Diebstahl_04_00"); //Gdzie jest mój amulet? Czekaj, brudny zlodziej.

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
	description	= "Hej, chcesz cofnac amulet?";
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
	AI_Output(hero, self, "Info_Mod_Sabitsch_HabDeinAmulett_15_00"); //Hej, chcesz cofnac amulet?

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_04_01"); //Co masz mój amulet? Drwisz mnie. Daj mi to!

	Info_ClearChoices	(Info_Mod_Sabitsch_HabDeinAmulett);

	Info_AddChoice	(Info_Mod_Sabitsch_HabDeinAmulett, "Jasne, ze tu idziesz.", Info_Mod_Sabitsch_HabDeinAmulett_B);
	Info_AddChoice	(Info_Mod_Sabitsch_HabDeinAmulett, "Dlaczego nie dostajesz tego?", Info_Mod_Sabitsch_HabDeinAmulett_A);
};

FUNC VOID Info_Mod_Sabitsch_HabDeinAmulett_B()
{
	AI_Output(hero, self, "Info_Mod_Sabitsch_HabDeinAmulett_B_15_00"); //Jasne, ze tu idziesz.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett, 1);

	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_01"); //(zdziwiony) Uh, co? Po prostu dasz mi ja bez walki? Nie mozesz tego zrobic.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_02"); //Nie byloby dobrze dla mojej reputacji i wbrew moim zasadom.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_03"); //Ale poczekaj, co najmniej naucze cie kilku innych rzeczy na temat walki wrecz.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_04"); //Wiec w zaleznosci od tego, czy wahasz bron po prawej czy lewej stronie, musisz podnosic piete po tej samej stronie i poruszac sie wraz z cialem do przodu.
	AI_Output(self, hero, "Info_Mod_Sabitsch_HabDeinAmulett_B_04_05"); //Daje to wieksza sile uderzeniu. Zrozumiec? Okay. To rozstrzyga sprawe.

	B_GivePlayerXP	(200);

	B_RaiseFightTalent	(hero, NPC_TALENT_1H, 2);
	B_RaiseFightTalent	(hero, NPC_TALENT_2H, 2);

	PrintScreen	("2% z jedna i dwiema rekami 2", -1, -1, FONT_SCREEN, 2);

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
