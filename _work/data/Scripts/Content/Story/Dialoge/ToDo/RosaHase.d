INSTANCE Info_Mod_RosaHase_Hi (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_Hi_Condition;
	information	= Info_Mod_RosaHase_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RosaHase_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_RosaHase_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_00"); //Wreszcie ktos, kto moze mi pomóc.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_01"); //Wh--- Co, gdzie jestem?
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_02"); //Musisz mi pomóc! Owcza frakcja zla skradla mi zaczarowany grzebien.
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_03"); //Potrzebuje go, aby lecial na ksiezyc.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_04"); //Uh, widze.
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_05"); //Tutaj uzyj tego zaczarowanego chleba jako broni, aby stanac do owiec.

	B_GiveInvItems	(self, hero, ItMw_Brot, 1);

	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_06"); //Znajdujesz sie tam z powrotem. Ale wystrzegaj sie ich.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_07"); //Ooh, wszystko sluszne.

	Log_CreateTopic	(TOPIC_MOD_BDT_KAMM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_KAMM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_KAMM, "Znajduje sie na chmurze, w otoczeniu dziwnych dzwieków. Rózowy królik poprosil mnie, abym uratowal grzebien, który owce go obrabowaly.");
};

INSTANCE Info_Mod_RosaHase_HabKamm (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_HabKamm_Condition;
	information	= Info_Mod_RosaHase_HabKamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RosaHase_HabKamm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_RosaHase_Hi))
	&& (Npc_HasItems(hero, ItMi_MagicKamm) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RosaHase_HabKamm_Info()
{
	AI_Output(self, hero, "Info_Mod_RosaHase_HabKamm_13_00"); //Zrobiles to, udowadniajac, ze jestes godzien prawdziwego bohatera.

	B_GiveInvItems	(hero, self, ItMi_MagicKamm, 1);
	AI_UnequipWeapons	(hero);

	B_TransferInventory_All (hero, RosaHase_7187);

	AI_Output(self, hero, "Info_Mod_RosaHase_HabKamm_13_01"); //Teraz moja podróz moze sie rozpoczac. Pozegnanie.
	
	B_SetTopicStatus	(TOPIC_MOD_BDT_KAMM, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	Mod_CrazyRabbit = 3;
		
	Spine_OverallSaveSetInt("Wolkenwelt", 1);
	CheckHalluAchievement();
};

INSTANCE Info_Mod_RosaHase_EXIT (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_EXIT_Condition;
	information	= Info_Mod_RosaHase_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_RosaHase_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_RosaHase_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
