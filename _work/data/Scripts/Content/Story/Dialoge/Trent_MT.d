INSTANCE Info_Mod_Trent_MT_Hi (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_Hi_Condition;
	information	= Info_Mod_Trent_MT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy czujesz sie lepiej?";
};

FUNC INT Info_Mod_Trent_MT_Hi_Condition()
{
	if (Mod_KG_TrentInMT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_MT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_00"); //Czy czujesz sie lepiej?
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_01"); //Nie tak naprawde. Nie mialem zbyt wiele czasu na wyzdrowienie.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_02"); //Powiedzialbym, ze powietrze plonie. Stracilem juz trzech moich mezczyzn i biegniemy nisko na wodzie.
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_03"); //Czy cos jeszcze sie dowiedziales?
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_04"); //Tak, kazdy czlowiek, którego tu przegrywam, orki poswiecaja sie w ich jaskini. Nie jest to mysl szczególnie zachecajaca. Jestesmy po prostu za malo, zwlaszcza teraz!
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_05"); //Wszystko w porzadku, ale moze mozna to zrobic ze mna.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_06"); //Warto spróbowac. Tak czy owak nie mozemy trwac dluzej niz nastepnego dnia.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_07"); //Na pani sygnal atakujemy ich.

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Sytuacja Trenta nie wyglada dobrze. Musimy zaatakowac orki razem w ich miejscu poswiecenia i wkrótce. Mam dac sygnal, gdy tylko bede gotowy.");
};

INSTANCE Info_Mod_Trent_MT_Angriff (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_Angriff_Condition;
	information	= Info_Mod_Trent_MT_Angriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Atakujmy!";
};

FUNC INT Info_Mod_Trent_MT_Angriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_MT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_MT_Angriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_MT_Angriff_15_00"); //Atakujmy!
	AI_Output(self, hero, "DEFAULT"); //

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Idziemy tutaj!");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOORKS");
	B_StartOtherRoutine	(Mod_7635_MIL_Miliz_MT, "GUIDETOORKS");
	B_StartOtherRoutine	(Mod_7636_MIL_Miliz_MT, "GUIDETOORKS");

	self.aivar[AIV_Partymember] = TRUE;
	Mod_7635_MIL_Miliz_MT.aivar[AIV_Partymember] = TRUE;
	Mod_7636_MIL_Miliz_MT.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Trent_MT_EXIT (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_EXIT_Condition;
	information	= Info_Mod_Trent_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
