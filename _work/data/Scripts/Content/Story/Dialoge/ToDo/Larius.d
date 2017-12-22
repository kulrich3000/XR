INSTANCE Info_Mod_Larius_Hi (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Hi_Condition;
	information	= Info_Mod_Larius_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Larius_Hi_Condition()
{
	if (Mod_MitLawrenceGesprochen == 10)
	&& (Wld_IsTime(23,00,01,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_00"); //So, du bist also auf der Suche nach dem Erfinder?
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_01"); //Und du wirst mir jetzt schön sagen wo er ist!
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_02"); //(lacht) Haha. Du wirst ohnehin keine Gelegenheit mehr haben es jemandem weiterzusagen! Der Erfinder befindet sich in unserer Gewalt! 
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_03"); //Er arbeitet für unseren Herrn! Er wird uns helfen den Schläfer zu rächen und ihn wieder zu beleben!
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_04"); //Du hast keine Ahnung wer ich bin, oder?
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_05"); //Du bist gleich TOT! Jetzt Männer!

	AI_UnequipArmor	(Mod_1730_MIL_Lawrence_NW);
	CreateInvItems	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe);

	AI_UnequipArmor	(self);
	CreateInvItems	(self, ItAr_LariusRobe, 1);
	AI_EquipArmor	(self, ItAr_LariusRobe);

	AI_UnequipArmor	(Mod_594_NONE_Lutero_NW);
	CreateInvItems	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1730_MIL_Lawrence_NW, "ANGRIFF");
	B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "ANGRIFF");

	AI_Teleport	(Mod_1730_MIL_Lawrence_NW, "WP_LAWRENCE");
	AI_Teleport	(Mod_594_NONE_Lutero_NW, "WP_LUTERO");

	Mod_MitLawrenceGesprochen = 11;

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Larius_Hallo (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Hallo_Condition;
	information	= Info_Mod_Larius_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're dressed nicely.";
};

FUNC INT Info_Mod_Larius_Hallo_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Larius_Hallo_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Hallo_15_00"); //You're dressed nicely.
	AI_Output(self, hero, "Info_Mod_Larius_Hallo_01_01"); //Yeah, that's right. So that I can be recognized immediately as the governor and not be impudently addressed from the side.
};

INSTANCE Info_Mod_Larius_Aufgaben (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Aufgaben_Condition;
	information	= Info_Mod_Larius_Aufgaben_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are your duties as governor?";
};

FUNC INT Info_Mod_Larius_Aufgaben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Hallo))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Aufgaben_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Aufgaben_15_00"); //What are your duties as governor?
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_01"); //Right now, I can only take care of the garbage for which the paladins are too important.
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_02"); //I know the King has ordered it. But I do hope that the occupation of the city will soon come to an end.
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_03"); //For so long I dedicate myself to the study of the old legal texts or wander through the streets and meet with friends....
};

INSTANCE Info_Mod_Larius_Haeftlinge (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Haeftlinge_Condition;
	information	= Info_Mod_Larius_Haeftlinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your opinion of the prisoners in the Mine Valley?";
};

FUNC INT Info_Mod_Larius_Haeftlinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Hallo))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Haeftlinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Haeftlinge_15_00"); //What's your opinion of the prisoners in the Mine Valley?
	AI_Output(self, hero, "Info_Mod_Larius_Haeftlinge_01_01"); //Is that a trick question? It's too political for me to answer honestly.
	AI_Output(self, hero, "Info_Mod_Larius_Haeftlinge_01_02"); //But let me tell you this much: not everything from the Minental valley that has now passed away was as bad as it was done.
};

INSTANCE Info_Mod_Larius_Ornament (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Ornament_Condition;
	information	= Info_Mod_Larius_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me something about the founder of the city?";
};

FUNC INT Info_Mod_Larius_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_00"); //Can you tell me something about the founder of the city?
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_01"); //Someone interested in the history of khorinis? There aren't many times.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_02"); //All right, I'll tell you what I know about him.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_03"); //He founded the city and wanted to make it his refuge. He is said to have been a preacher of Adano's.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_04"); //However, the city's population has turned to Innos.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_05"); //He was dissatisfied here and went over the pass in the north to Relendel.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_06"); //Some say that he founded the city of Khorata, which pays homage to the one God.
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_07"); //Interesting.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_08"); //I hope I could help you.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_09"); //If you need more information about him, talk to Anselm in Khorata. He's the governor there.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_10"); //You'll find the city up north of the island. The pass is still a long way north of the water magicians' excavation site.

	B_LogEntry	(TOPIC_MOD_PORTAL, "The priest seems to have left Khorinis and founded the town of Khorata in Relendel. Surely the ornamental piece is there. I should have a talk with Anselm. Khorata is located in the north of the island and can be found through a pass north of the excavation site.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Larius_EXIT (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_EXIT_Condition;
	information	= Info_Mod_Larius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Larius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Larius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
