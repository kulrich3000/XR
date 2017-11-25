INSTANCE Info_Mod_Burl_Rattenquest (C_INFO)
{
	npc		= Mod_7408_OUT_Burl_EIS;
	nr		= 1;
	condition	= Info_Mod_Burl_Rattenquest_Condition;
	information	= Info_Mod_Burl_Rattenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you burl?";
};

FUNC INT Info_Mod_Burl_Rattenquest_Condition()
{
	if (Mod_RattenQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Burl_Rattenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_00"); //Are you burl?
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_01"); //Oh, man, my head's still buzzing from last night, could you not let me sleep?
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_02"); //No, I don't have that much time.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_03"); //Okay, all right, how can I help you?
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_04"); //The innkeeper said you knew where to find rats.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_05"); //Yeah, I know where a lot of them are lately. I've already got a sore throat about why they're in such a cold place.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_06"); //A good part west of here, on the mountain above the mine, that's where I saw them. Here's a map.

	B_GiveInvItems	(self, hero, ItWr_Map_Eisgebiet_Richard, 1);

	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_07"); //Thanks.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Burl told me where to find the rats. In the west on the mountain above the mine I should have a look around. He also gave me a map of where the place is marked.");

	Mod_RattenQuest = 6;

	// Frau und Richard und Ratten spawnen

	Wld_InsertNpc	(Mod_7410_OUT_Frau_EIS, "EIS_173");

	Wld_InsertNpc	(Mod_7409_OUT_Richard_EIS, "EIS_174");

	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");

	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");

	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
};

INSTANCE Info_Mod_Burl_EXIT (C_INFO)
{
	npc		= Mod_7408_OUT_Burl_EIS;
	nr		= 1;
	condition	= Info_Mod_Burl_EXIT_Condition;
	information	= Info_Mod_Burl_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Burl_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Burl_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
