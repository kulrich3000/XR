INSTANCE Info_Mod_Rank_Hueterklinge (C_INFO)
{
	npc		= Mod_7721_OUT_Rank_MT;
	nr		= 1;
	condition	= Info_Mod_Rank_Hueterklinge_Condition;
	information	= Info_Mod_Rank_Hueterklinge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rank_Hueterklinge_Condition()
{
	if (Mod_TPL_HK_Ydran == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rank_Hueterklinge_Info()
{
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_00"); //Dal stary straznik reszte, huh? Ostatni nie byl tak szczesliwy.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_01"); //Ostatni ostatni?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_02"); //Tak, nie tak dawno temu.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_03"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_04"); //Templariusz przybyl tu i zostal zaatakowany przez starego konia wojennego.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_05"); //Naprawde bardzo mu zaszkodzil, ale nie mógl go pokonac i skonczyla sie kolacja.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_06"); //Przyszedlem zbyt pózno. templariusz powiedzial mi, tuz przed tym, jak wydechal swoje zycie, ze chcialby odwiedzic pogrzebanego tu pustelnika.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_07"); //Myslalem wiec, ze dobrze byloby zakopac go w tym samym grobie. I sa one teraz.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_08"); //Co zrobiles z jego rzeczami?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_09"); //To bylo tylko kilka dziwnych rzeczy. Z nim zakopalem go w torbie.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh znalazl skladniki, ale nie mógl dostac ostrza opiekuna. Rank powiedzial, ze pochowal z nim rzeczy Gor Na Kosh. Mysle, ze bede potrzebowal pickaxe.....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Wld_SendTrigger	("EVT_GORNAKOSHSZEUG");
};

INSTANCE Info_Mod_Rank_EXIT (C_INFO)
{
	npc		= Mod_7721_OUT_Rank_MT;
	nr		= 1;
	condition	= Info_Mod_Rank_EXIT_Condition;
	information	= Info_Mod_Rank_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rank_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rank_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
