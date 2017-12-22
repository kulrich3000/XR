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
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hi_08_00"); //We've been expecting you, take these novice skirts.

	AI_UnequipArmor	(Mod_1870_EBR_Alissandro_MT);
	AI_UnequipArmor (hero);

	CreateInvItems	(self, Nov_Armor_L, 1);
	B_GiveInvItems	(self, hero, Nov_Armor_L, 1);

	AI_EquipArmor	(hero, Nov_Armor_L);

	CreateInvItems	(Mod_1870_EBR_Alissandro_MT, Nov_Armor_L, 1);
	AI_EquipArmor	(Mod_1870_EBR_Alissandro_MT, Nov_Armor_L);

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "In front of the temple we were already expected by two Templars. I got a novice skirt, and now we're leaving.");

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

	AI_Output(self, Mod_1130_GRD_Torwache_MT, "Info_Mod_GorNaKar_Torwache_01_08_00"); //We're here to bring bogweed to Bartholo.

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
	description	= "Where can I get a Guardian Blade?";
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
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_00"); //Where can I get a Guardian Blade?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_01"); //Funny, you're the second person to ask me that in such a short time.
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_02"); //Someone asked you that recently?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_03"); //Can't have been two days ago. A young templar named Gor Na Kosh.
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge_15_04"); //And what did you tell him?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge_08_05"); //I don't know about that. Ah... I'd like a stem.
};

INSTANCE Info_Mod_GorNaKar_Hueterklinge2 (C_INFO)
{
	npc		= Mod_1925_TPL_GorNaKar_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKar_Hueterklinge2_Condition;
	information	= Info_Mod_GorNaKar_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Take it.";
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
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_15_00"); //Take it.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_15_01"); //Well, do you remember now?
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_08_02"); //I don't know about that.

	Info_ClearChoices	(Info_Mod_GorNaKar_Hueterklinge2);

	Info_AddChoice	(Info_Mod_GorNaKar_Hueterklinge2, "What could help you remember?", Info_Mod_GorNaKar_Hueterklinge2_B);
	Info_AddChoice	(Info_Mod_GorNaKar_Hueterklinge2, "Do I have to hit you in the mouth first?", Info_Mod_GorNaKar_Hueterklinge2_A);
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_C()
{
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_00"); //Ich weiﬂ nicht, keine Ahnung. 
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_C_15_01"); //Jetzt reicht's.
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_02"); //Was willst du eigentlich von mir? Ich habís dir doch gesagt!
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_03"); //Ich hab dem jungen Spund gesagt "I don't know about that. I don't know about that."
	AI_Output(self, hero, "Info_Mod_GorNaKar_Hueterklinge2_C_08_04"); //Er ist dann glaub ich zu Baal Ydran gegangen.

	Info_ClearChoices	(Info_Mod_GorNaKar_Hueterklinge2);

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kar told me that Gor Na Kosh recently asked about the ingredients. He then went to Baal Yrdan. Can Baal Namib tell me where I can find him?");
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_B()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_B_15_00"); //What could help you remember?

	Info_Mod_GorNaKar_Hueterklinge2_C();
};

FUNC VOID Info_Mod_GorNaKar_Hueterklinge2_A()
{
	AI_Output(hero, self, "Info_Mod_GorNaKar_Hueterklinge2_A_15_00"); //Do I have to hit you in the mouth first?

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
