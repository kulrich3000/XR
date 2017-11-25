INSTANCE Info_Mod_GorNaKar_Hi (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_Hi_Condition;
	information	= Info_Mod_GorNaKar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaKar_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hi_08_00"); //Spodziewalismy sie cie, wez te nowicjusze spódnice.

	AI_UnequipArmor	(Mod_1870_EBR_Alissandro_MT);
	AI_UnequipArmor (hero);

	CreateInvItems	(self, Nov_Armor_L, 1);
	B_GiveInvItems	(self, hero, Nov_Armor_L, 1);

	AI_EquipArmor	(hero, Nov_Armor_L);

	CreateInvItems	(Mod_1870_EBR_Alissandro_MT, Nov_Armor_L, 1);
	AI_EquipArmor	(Mod_1870_EBR_Alissandro_MT, Nov_Armor_L);

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Przed swiatynia oczekiwaly nas juz dwa templariusze. Dostalem spódnice dla poczatkujacych, a teraz wychodzimy.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_GorNaKar_Torwache_01 (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_Torwache_01_Condition;
	information	= Info_Mod_GorNaKar_Torwache_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaKar_Torwache_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_Halt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKar_Torwache_01_Info()
{
	AI_TurnToNpc	(self, Mod_1130_GRD_Torwache_MT);

	AI_Output(self, Mod_1130_GRD_Torwache_MT, "Info_Mod_GorNaKar_Torwache_01_08_00"); //Jestesmy tutaj, aby przywiezc bagnista bartholo.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOBARTHOLO");
	B_StartOtherRoutine	(Mod_1924_TPL_GorNaMon_MT, "GUIDETOBARTHOLO");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FOLLOWTOBARTHOLO");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "BOSS");

	if (Mod_ALTor_03 == 1)
	{
		Mod_ALTor_03 = 0;

		Wld_SendTrigger	("EVT_OC_MAINGATE02_02");
	};
};

INSTANCE Info_Mod_GorNaKar_Hueterklinge (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_Hueterklinge_Condition;
	information	= Info_Mod_GorNaKar_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge dostac ostrze stróza?";
};

FUNC INT Info_Mod_GorNaKar_Hueterklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Hueterklinge))
	&& (Mod_TPL_Hueterklinge == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_00"); //Gdzie moge dostac ostrze stróza?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_01"); //Zabawny, jestes druga osoba, która prosi mnie o to w tak krótkim czasie.
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_02"); //Ktos sie o to ostatnio zapytal?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_03"); //Nie moze byc dwa dni temu. Mlody templar o imieniu Gor Na Kosh.
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_04"); //A co mu powiedziales?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_05"); //Nie wiem o tym. Ah.... Lubie lodyge.
};

INSTANCE Info_Mod_GorNaKar_Hueterklinge2 (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_Hueterklinge2_Condition;
	information	= Info_Mod_GorNaKar_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wez to pod uwage.";
};

FUNC INT Info_Mod_GorNaKar_Hueterklinge2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Hueterklinge))
	&& (Mod_TPL_Hueterklinge == 0)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_15_00"); //Wez to pod uwage.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_15_01"); //No cóz, pamietasz teraz?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_08_02"); //Nie wiem o tym.

	Info_ClearChoices	(Info_Mod_GorNaKar_Hueterklinge2);

	Info_AddChoice	(Info_Mod_GorNaKar_Hueterklinge2, "Co mozesz zapamietac?", Info_Mod_GorNaKar_Hueterklinge2_B);
	Info_AddChoice	(Info_Mod_GorNaKar_Hueterklinge2, "Czy najpierw musze cie uderzyc w usta?", Info_Mod_GorNaKar_Hueterklinge2_A);
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_C()
{
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_00"); //Ich weiß nicht, keine Ahnung. 
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_C_15_01"); //Jetzt reicht's.
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_02"); //Was willst du eigentlich von mir? Ich hab’s dir doch gesagt!
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_03"); //Ich hab dem jungen Spund gesagt "Nie wiem o tym. Nie wiem o tym."
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_04"); //Er ist dann glaub ich zu Baal Ydran gegangen.

	Info_ClearChoices	(Info_Mod_GorNaKar_Hueterklinge2);

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kar powiedzial mi, ze Gor Na Kosh niedawno zapytal mnie o skladniki. Nastepnie udal sie do Baal Yrdan. Czy Baal Namib moze mi powiedziec, gdzie moge go znalezc?");
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_B()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_B_15_00"); //Co mozesz zapamietac?

	Info_Mod_GorNaKar_Hueterklinge2_C();
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_A()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_A_15_00"); //Czy najpierw musze cie uderzyc w usta?

	Info_Mod_GorNaKar_Hueterklinge2_C();
};

INSTANCE Info_Mod_GorNaKar_EXIT (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_EXIT_Condition;
	information	= Info_Mod_GorNaKar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaKar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaKar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
