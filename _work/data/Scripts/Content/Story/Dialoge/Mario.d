INSTANCE Info_Mod_Mario_Hi (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hi_Condition;
	information	= Info_Mod_Mario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here all alone?";
};

FUNC INT Info_Mod_Mario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_00"); //What are you doing here all alone?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_01"); //I rush down one beer at a time. It actually helps against frustration.
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_02"); //What frustration?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_03"); //They call me the eternal militia. For years I have been trying to become a paladin, but at the top of the chain of command I have no friends, but rather enemies.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_04"); //That's why I'm just sent from one task to the next.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_05"); //Twenty-two I've done so far. Some make it without an entrance exam.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_06"); //And now they've given me a task I can't solve.
};

INSTANCE Info_Mod_Mario_WarumFeinde (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_WarumFeinde_Condition;
	information	= Info_Mod_Mario_WarumFeinde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why do you have enemies among the paladins?";
};

FUNC INT Info_Mod_Mario_WarumFeinde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_WarumFeinde_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_WarumFeinde_15_00"); //Why do you have enemies among the paladins?
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_01"); //I never made a secret of being gay.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_02"); //That's where the charity of the paladins ends. The nicest just look at me funny.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_03"); //"A gay paladin? Innos himself must stop it!"
};

INSTANCE Info_Mod_Mario_Aufgabe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Aufgabe_Condition;
	information	= Info_Mod_Mario_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is this unsolvable task?";
};

FUNC INT Info_Mod_Mario_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Aufgabe_15_00"); //What is this unsolvable task?
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_01"); //There's supposed to be two snappers in the big forest outside the city.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_02"); //Instead of sending out a squad to take care of the critters, I'm getting all that dirt.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_03"); //Would probably fit the colonel well in the stuff if I was snapper-fed there.
};

INSTANCE Info_Mod_Mario_Hilfe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe_Condition;
	information	= Info_Mod_Mario_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I could help you with the snappers.";
};

FUNC INT Info_Mod_Mario_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_00"); //I could help you with the snappers.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_01"); //You, a weak convict?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_02"); //Snappers are one of my specialties.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_03"); //It's worth a try. Even your company won't let me sink further in the eyes of the others.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_04"); //Shall we leave immediately? I know the way.

	Log_CreateTopic	(TOPIC_MOD_MARIO_UPGRADE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "The militiaman Mario gets one test after another. Now he faces a problem: He can't do anything about two snappers. I offered him my help.");
};

INSTANCE Info_Mod_Mario_Hilfe2 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe2_Condition;
	information	= Info_Mod_Mario_Hilfe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yeah, here we go.";
};

FUNC INT Info_Mod_Mario_Hilfe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe2_15_00"); //Yeah, here we go.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe2_07_01"); //Follow me. Follow me.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Snapper_Mario_01,	"WP_MARIOTOUR_04");
	Wld_InsertNpc	(Snapper_Mario_02,	"WP_MARIOTOUR_04");
};

INSTANCE Info_Mod_Mario_Hilfe3 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe3_Condition;
	information	= Info_Mod_Mario_Hilfe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe2))
	&& (Npc_IsDead(Snapper_Mario_01))
	&& (Npc_IsDead(Snapper_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_00"); //That was barely a success. Anyway, thank you for your support.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_01"); //I'll let Garond know I passed this exam, too.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_02"); //And then I continue to see what awaits me next....
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe3_15_03"); //Let me know if you need my help again.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_04"); //It's not unlikely. But thanks for the offer.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "We shot the snappers. Mario has thus completed another task for the Paladin.");

	B_GivePlayerXP	(50);

	Mod_Mario_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mario_Hilfe4 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe4_Condition;
	information	= Info_Mod_Mario_Hilfe4_Info;
	permanent	= 0;
	important	= 0;
	description	= "You still haven't been admitted to paladin?";
};

FUNC INT Info_Mod_Mario_Hilfe4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe3))
	&& (Wld_GetDay()-3 >= Mod_Mario_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe4_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_00"); //You still haven't been admitted to paladin?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_07_01"); //Here's the deal. You have again given me a new challenge, and this time I am really at a loss.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_07_03"); //It's about a veritable horde of well-equipped goblins who have repeatedly provided skirmishes in recent weeks. Next to you criminals.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "You can't count on my help this time.", Info_Mod_Mario_Hilfe4_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "Can we do it together?", Info_Mod_Mario_Hilfe4_A);
};

FUNC VOID Info_Mod_Mario_Hilfe4_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_B_15_00"); //You can't count on my help this time.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_B_07_01"); //I didn't even ask for it.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);
};

FUNC VOID Info_Mod_Mario_Hilfe4_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_00"); //Can we do it together?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_01"); //Hardly. We need at least one more fighter. A trained ranger.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_02"); //I could ask Diego. He's got nothing to do right now. And he's good too.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_03"); //Diego? Isn't that a former inmate, too?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_04"); //Yeah. Is that a problem for you?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_05"); //(sighs) No, I'm glad somebody's on my side at all. Ask him quietly and bring him here.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_06"); //See you later.

	Mod_Mario = 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario has a new mission - a group of strong goblins who cause strife. Since the two of us would be a suicide mission, I want to ask Diego for support.");
};

INSTANCE Info_Mod_Mario_Hilfe5 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe5_Condition;
	information	= Info_Mod_Mario_Hilfe5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diego's in. Show us the goblins.";
};

FUNC INT Info_Mod_Mario_Hilfe5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe5_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe5_15_00"); //Diego's in. Show us the goblins.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe5_07_01"); //All clear. You're not that far away.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOGOBBOS");

	Wld_InsertNpc	(Gobbo_Green_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_04,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_05,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_06,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Black_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_04,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Warrior_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Warrior_Mario_02,	"NW_CITY_TO_FOREST_04_05");
};

INSTANCE Info_Mod_Mario_Hilfe6 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe6_Condition;
	information	= Info_Mod_Mario_Hilfe6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe5))
	&& (Npc_IsDead(Gobbo_Green_Mario_01))
	&& (Npc_IsDead(Gobbo_Green_Mario_02))
	&& (Npc_IsDead(Gobbo_Green_Mario_03))
	&& (Npc_IsDead(Gobbo_Green_Mario_04))
	&& (Npc_IsDead(Gobbo_Green_Mario_05))
	&& (Npc_IsDead(Gobbo_Green_Mario_06))
	&& (Npc_IsDead(Gobbo_Black_Mario_01))
	&& (Npc_IsDead(Gobbo_Black_Mario_02))
	&& (Npc_IsDead(Gobbo_Black_Mario_03))
	&& (Npc_IsDead(Gobbo_Black_Mario_04))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_01))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe6_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_00"); //A hard piece of work. Share your reward with Diego.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_01"); //I'm really curious to see if Garond can think of another more difficult test.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_02"); //But even if his imagination is not so good, I'm afraid he will succeed.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario has now successfully completed his twenty-fourth assignment. I'd still be surprised if he got promoted now.");

	B_GivePlayerXP	(200);

	Mod_Mario_Day = Wld_GetDay();

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);

	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "From now on, you're alone. I've had enough.", Info_Mod_Mario_Hilfe6_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "You can count on me.", Info_Mod_Mario_Hilfe6_A);
};

FUNC VOID Info_Mod_Mario_Hilfe6_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_B_15_00"); //From now on, you're alone. I've had enough.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_B_07_01"); //Too bad, but I can't force you.

	Mod_Mario = 0;

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

FUNC VOID Info_Mod_Mario_Hilfe6_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_A_15_00"); //You can count on me.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_A_07_01"); //Thank you, thank you.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

INSTANCE Info_Mod_Mario_Hilfe7 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe7_Condition;
	information	= Info_Mod_Mario_Hilfe7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Still not Paladin?";
};

FUNC INT Info_Mod_Mario_Hilfe7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe6))
	&& (Wld_GetDay()-5 >= Mod_Mario_Day)
	&& (Mod_Mario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe7_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_00"); //Still not Paladin?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_01"); //I can be admitted now.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_02"); //Congratulations! Aren't you happy at all?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_03"); //In the last few days, doubts have caught up with me as to whether it would really be right for me to become Paladin.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_04"); //I know now that I would hardly make friends among them. On the other hand, it's been my wish since I was a little boy.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_05"); //What do you think?

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);

	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "It also seems wiser not to irritate them any further.", Info_Mod_Mario_Hilfe7_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "You can't surrender now!", Info_Mod_Mario_Hilfe7_A);
};

FUNC VOID Info_Mod_Mario_Hilfe7_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_B_15_00"); //It also seems wiser not to irritate them any further.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_01"); //That's exactly what I was thinking.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_02"); //Who knows what rules this club would come up with to keep harassing me!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_03"); //I get along fine with the other militia men. I shouldn't take any chances.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_04"); //Thanks for your advice and your help. Without you, Coragon's beer would probably have been my best friend...

	B_GivePlayerXP	(50);

	Mod_Mario = 2;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

FUNC VOID Info_Mod_Mario_Hilfe7_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_A_15_00"); //You can't surrender now after your victory over the Paladin!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_01"); //I think you're right. It would look like I'm losing all my guts at the last minute.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_02"); //All right, I'll check in with Garond later.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_03"); //And you, thank you so much for your active support. Without you, Coragon's beer would probably have been my best friend...

	B_GivePlayerXP	(50);

	Mod_Mario = 3;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

INSTANCE Info_Mod_Mario_Hilfe8 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe8_Condition;
	information	= Info_Mod_Mario_Hilfe8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe8_Condition()
{
	if (Mod_Mario == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe8_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_07_00"); //You have to help me again, please!

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "I don't have time for that.", Info_Mod_Mario_Hilfe8_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "What do you have this time?", Info_Mod_Mario_Hilfe8_A);
};

FUNC VOID Info_Mod_Mario_Hilfe8_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_B_15_00"); //I don't have time for that.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);
};

FUNC VOID Info_Mod_Mario_Hilfe8_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_00"); //What do you have this time?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_01"); //Some time ago I was doing guard duty in prison.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_02"); //That's where I met someone like me. I fell in love with him.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_03"); //Let me guess. You want to free the prisoner.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_04"); //He told me he landed there because of his inclinations. Because his neighbors tried to get rid of him. He's not a criminal.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_05"); //We intend to leave Khorinis. This is a place of oppression.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_06"); //We're going to look for a better home.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_07"); //From the prison to the city gates, however, there are some guards of the militia, who would certainly not let us go so easily.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_08"); //And what is my job?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_09"); //While I go to prison, you take care of the two gatekeepers at the marketplace. Just lure her somewhere.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_10"); //Send Olav away too, he's on his way from the barracks to the city gate.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_11"); //I'll take care of the militiamen in prison myself.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_12"); //All right, I'll get started.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_13"); //I'm leaving now. Please don't fail!

	Mod_Mario = 9;

	Log_CreateTopic	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "I should lure Olav and the two city guards at the gate away from their position as soon as possible so that Mario and his friend can escape.");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	B_StartOtherRoutine	(self, "KNAST");

	Wld_InsertNpc	(Mod_7648_VLK_Buerger_NW, "TOT");
};

INSTANCE Info_Mod_Mario_Hilfe9 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe9_Condition;
	information	= Info_Mod_Mario_Hilfe9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe9_Condition()
{
	if (Mod_Mario == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe9_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_00"); //I'm in your debt. But I have a little compensation for you.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_01"); //We would have used those speed potions if you hadn't helped us.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_02"); //Now we have no use for them.

	B_GiveInvItems	(self, hero, ItPo_Speed, 2);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_03"); //Now we have to leave. I wish you all the best.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe9_15_04"); //Take care, now.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Mario_Pickpocket (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Pickpocket_Condition;
	information	= Info_Mod_Mario_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mario_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_BACK, Info_Mod_Mario_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mario_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mario_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
};

FUNC VOID Info_Mod_Mario_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mario_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mario_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mario_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mario_EXIT (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_EXIT_Condition;
	information	= Info_Mod_Mario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
