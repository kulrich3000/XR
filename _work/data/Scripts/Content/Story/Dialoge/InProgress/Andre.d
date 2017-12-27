INSTANCE Info_Mod_Andre_Argez (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Argez_Condition;
	information	= Info_Mod_Andre_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Argez_40_00"); //That's enough now, my friend. You're coming with me to the barracks, and we've got something to talk about.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "I'm to follow Lord Andre to the barracks.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Andre_Argez2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Argez2_Condition;
	information	= Info_Mod_Andre_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_00"); //There, there. New in town and in trouble.
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_01"); //It's not my fault.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_02"); //I know. Garond is something.... overzealous in his new task. But he'll get used to it.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_03"); //Only - if you have a concern, it is the wrong address. I noticed you were about to take someone into town. Is that correct?
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_04"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_05"); //Did he commit any crime in the city, which is why he could have been banished?
	AI_Output(hero, self, "Info_Mod_Andre_Argez2_15_06"); //He didn't have a chance to, as far as I know.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_07"); //All right, then. I suggest you lead your friend through the other gate of the city by the marketplace. I will see to it that you are not stopped.
	AI_Output(self, hero, "Info_Mod_Andre_Argez2_40_08"); //But don't show up at Garond's. He would probably.... to react impatiently.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Lord Andre has recommended that I lead Argez to the more northerly of the two city gates to avoid Garond.");
};

INSTANCE Info_Mod_Andre_Hi (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Hi_Condition;
	information	= Info_Mod_Andre_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Andre_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Andre_Hi_40_01"); //I am Lord Andre, commander of the militia and deputy leader of the paladins.
	AI_Output(self, hero, "Info_Mod_Andre_Hi_40_02"); //What can I do for you?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Andre_Alvares (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Alvares_Condition;
	information	= Info_Mod_Andre_Alvares_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do I have to do to get you to release Alvares?";
};

FUNC INT Info_Mod_Andre_Alvares_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alvares_Soeldner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Alvares_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Alvares_15_00"); //What do I have to do to get you to release Alvares?
	AI_Output(self, hero, "Info_Mod_Andre_Alvares_40_01"); //He fought with one of our militias. But he'll be sitting for the next few days.
};

INSTANCE Info_Mod_Andre_AlvaresSchneller (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresSchneller_Condition;
	information	= Info_Mod_Andre_AlvaresSchneller_Info;
	permanent	= 0;
	important	= 0;
	description	= "Isn't there a way to release him faster?";
};

FUNC INT Info_Mod_Andre_AlvaresSchneller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Alvares))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresSchneller_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresSchneller_15_00"); //Isn't there a way to release him faster?
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_01"); //You could pay his fine.
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresSchneller_15_02"); //How much does it cost?
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_03"); //After his wrongdoings? It won't be cheap. Dress 500 gold coins.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_04"); //Besides, you have to bring another felon into our town.

	if (Mod_AlvaresAndre_Taeter == 1)
	{
		AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_07"); //If I recall correctly, you've already done that.
	};

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_05"); //Or defeat the bandits who have their camp somewhere near Akil's farm in the forest and bring me their weapons.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresSchneller_40_06"); //Often enough they robbed travelling dealers.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, "Alvarez could be a very promising mercenary candidate. For Andre to get him out of jail, however, I not only have to pay 500 coins of gold, but I also have to report another criminal to Andre or destroy three bandits near Akil's court and bring him their weapons.");

	Wld_InsertNpc	(Mod_7217_BDT_Bandit_NW, "FARM2");
	Wld_InsertNpc	(Mod_7218_BDT_Bandit_NW, "FARM2");
	Wld_InsertNpc	(Mod_7219_BDT_Bandit_NW, "FARM2");
};

INSTANCE Info_Mod_Andre_AlvaresBanditen (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresBanditen_Condition;
	information	= Info_Mod_Andre_AlvaresBanditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bandits won't cause any more trouble.";
};

FUNC INT Info_Mod_Andre_AlvaresBanditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Alvares))
	&& (Npc_IsDead(Mod_7217_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7218_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7219_BDT_Bandit_NW))
	&& (Npc_HasItems(hero, ItMw_Banditenschwert_Andre) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresBanditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresBanditen_15_00"); //The bandits won't cause any more trouble.
	AI_Output(self, hero, "Info_Mod_Andre_AlvaresBanditen_40_01"); //Very good. Very good. And their weapons?
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresBanditen_15_02"); //Here they are.

	B_GiveInvItems	(hero, self, ItMw_Banditenschwert_Andre, 3);

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresBanditen_40_03"); //Excellent. This makes the surroundings of the city much safer.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Andre_AlvaresGeld (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_AlvaresGeld_Condition;
	information	= Info_Mod_Andre_AlvaresGeld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let Alvares go free (500 gold)";
};

FUNC INT Info_Mod_Andre_AlvaresGeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_AlvaresSchneller))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Andre_AlvaresBanditen))
	|| (Mod_AlvaresAndre_Taeter == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_AlvaresGeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_AlvaresGeld_15_00"); //Release Alvares.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_AlvaresGeld_40_01"); //Well, you can take him with you.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, "I paid the gold for Alvares, and I can take him now.");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Andre_Miliz (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Miliz_Condition;
	information	= Info_Mod_Andre_Miliz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join the militia.";
};

FUNC INT Info_Mod_Andre_Miliz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Miliz_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Miliz_15_00"); //I want to join the militia.
	AI_Output(self, hero, "Info_Mod_Andre_Miliz_40_01"); //We only record the best. We are hosting a tournament today and the winner will be accepted by the militia.
	AI_Output(self, hero, "Info_Mod_Andre_Miliz_40_02"); //You're lucky there's room for one more.

	Mod_MilizTurnier	=	0;

	Log_CreateTopic	(TOPIC_MOD_MILIZTURNIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_MILIZTURNIER, "If I want to join the militia, I have to win the tournament.", "If I want to join the militia, I have to win the tournament.");
};

INSTANCE Info_Mod_Andre_Kristall (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kristall_Condition;
	information	= Info_Mod_Andre_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lothar sends me (give crystal)";
};

FUNC INT Info_Mod_Andre_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kristall_15_00"); //Lothar sent me. I'm supposed to bring the crystal.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kristall_40_01"); //Where'd you get the crystal?
	AI_Output(hero, self, "Info_Mod_Andre_Kristall_15_02"); //I took it off the thief.
	AI_Output(self, hero, "Info_Mod_Andre_Kristall_40_03"); //Very good. Very good. If you want, you can join the militia now.

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_SÖLDNER, "Lord Andre is ready to accept me into the militia.", "I gave the crystal to Lord Andre. Torlof won't like that very much.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Andre_TurnierSinbad (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TurnierSinbad_Condition;
	information	= Info_Mod_Andre_TurnierSinbad_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've heard of a tournament....";
};

FUNC INT Info_Mod_Andre_TurnierSinbad_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Andre_Regeln))
	&& (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TurnierSinbad_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_TurnierSinbad_15_00"); //I've heard of a tournament....
	AI_Output(self, hero, "Info_Mod_Andre_TurnierSinbad_40_01"); //That's the truth. One seat is still available if you want to participate.

	Mod_MilizTurnier = 0;
};

INSTANCE Info_Mod_Andre_Regeln (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Regeln_Condition;
	information	= Info_Mod_Andre_Regeln_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are the rules for the tournament?";
};

FUNC INT Info_Mod_Andre_Regeln_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Miliz))
	|| (Npc_KnowsInfo(hero, Info_Mod_Andre_TurnierSinbad))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Regeln_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Regeln_15_00"); //What are the rules for the tournament?
	AI_Output(self, hero, "Info_Mod_Andre_Regeln_40_01"); //Magic and ranged combat are not allowed in the tournament because you are not allowed to kill.
};

INSTANCE Info_Mod_Andre_Turnier1 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier1_Condition;
	information	= Info_Mod_Andre_Turnier1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who's my first opponent?";
};

FUNC INT Info_Mod_Andre_Turnier1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Regeln))
	&& (Mod_Gilde == 0)
	&& (Mod_MilizTurnier ==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier1_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier1_15_00"); //Who's my first opponent?
	AI_Output(self, hero, "Info_Mod_Andre_Turnier1_40_01"); //His name's Till. He should be here any minute.

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "TURNIER");
	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

	AI_Teleport	(Mod_541_NONE_Till_NW, "NW_CITY_HABOUR_KASERN_11");

	if (Assassinen_Dabei == 0)
	{
		B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "My first opponent at the tournament is Till.");
	};
};

INSTANCE Info_Mod_Andre_Turnier2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier2_Condition;
	information	= Info_Mod_Andre_Turnier2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I fought Till.";
};

FUNC INT Info_Mod_Andre_Turnier2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier2_15_00"); //I fought Till.

	if (Mod_MilizTurnier	==	2)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_40_01"); //You beat him. Now you're in the next round.
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_40_02"); //Your next opponent is Alrik.

		AI_Teleport	(Mod_547_NONE_Alrik_NW, "NW_CITY_HABOUR_KASERN_11");
		B_StartOtherRoutine	(Mod_547_NONE_Alrik_NW,	"TURNIER");
		B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

		AI_Teleport	(Mod_547_NONE_Alrik_NW, "NW_CITY_HABOUR_KASERN_11");

		if (Assassinen_Dabei == 0)
		{
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "My second opponent in the tournament is Alrik.");
		};

		Mod_MilizTurnier	=	4;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(100);
	}
	else if (Mod_MilizTurnier	==	3)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier2_40_03"); //You've lost. Now you are out of the tournament.
		AI_Output(hero, self, "Info_Mod_Andre_Turnier2_15_04"); //Is there any other way to join the militia?

		Mod_AndreTurnier = 2;

		Mod_MilizErnst	=	r_max(99);
		
		if (Mod_MilizErnst	<=	25)
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier2_40_05"); //If you really want to join the militia, go to mortis. You'll find him in the barracks forge.

			Mod_MilizTurnier	=	9;

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "If I want to join the militia in spite of my defeat in the tournament, then I should go to Mortis.");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier2_40_06"); //You lost to a peasant. We can't use someone like you in the militia.

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Lord Andre won't let me join the militia because of my defeat against Till.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Turnier3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier3_Condition;
	information	= Info_Mod_Andre_Turnier3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I fought against Alrik.";
};

FUNC INT Info_Mod_Andre_Turnier3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier3_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier3_15_00"); //I fought against Alrik.

	if (Mod_MilizTurnier	==	6)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_40_01"); //Congratulations, you beat him. Now you only have one fight left.
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_40_06"); //Your next opponent is Gidan. Good luck to you!
		
		if (Assassinen_Dabei == 0)
		{
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I beat Alrik too. Lord Andre says I only have one fight left in front of me now.");
		};

		B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "KAMPF");
		B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "KAMPF");

		Mod_MilizTurnier	=	8;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(200);
	}
	else if (Mod_MilizTurnier	==	7)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier3_40_02"); //You've lost. Now you are out of the tournament.
		AI_Output(hero, self, "Info_Mod_Andre_Turnier3_15_03"); //Is there any other way to join the militia?

		Mod_AndreTurnier = 2;

		Mod_MilizErnst	=	r_max(99);
		
		if (Mod_MilizErnst	<=	50)
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier3_40_04"); //If you really want to join the militia, go to mortis. You'll find him in the barracks forge.

			Mod_MilizTurnier	=	9;

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "If I want to join the militia in spite of my defeat in the tournament, then I should go to Mortis.");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Turnier3_40_05"); //You lost, and you blew your chance to join the militia.

			if (Assassinen_Dabei == 0)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ, "Because of my defeat against Alrik, I blocked my way to the militia.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Turnier4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Turnier4_Condition;
	information	= Info_Mod_Andre_Turnier4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I fought against Gidan.";
};

FUNC INT Info_Mod_Andre_Turnier4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_KampfEnde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Turnier4_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_00"); //I fought against Gidan.

	if (Mod_MilizTurnier	==	11)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_01"); //Congratulations, you beat him. You've earned yourself a place in the militia.

		if (Mod_Gilde == 0)
		{		
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I beat Gidan too. Lord Andre says I can join the militia now.");
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_06"); //I already belong to another group. It was just training for me.
			AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_07"); //You're an amazing guy. Too bad I could use you.

			if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_08"); //But you'll take that document.

				B_GiveInvItems	(self, hero, ItWr_TurnierUrkunde, 1);
			};
		};

		if (Assassinen_Dabei == 0)
		{
			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_SUCCESS);
		};

		Mod_AndreTurnier = 1;

		Mod_MilizTurnier	=	13;

		B_Göttergefallen(1, 1);

		B_GivePlayerXP	(300);
	}
	else if (Mod_MilizTurnier	==	12)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_02"); //You've lost. Now you are out of the tournament.

		if (Assassinen_Dabei == 0)
		{
			AI_Output(hero, self, "Info_Mod_Andre_Turnier4_15_03"); //Is there any other way to join the militia?

			Mod_AndreTurnier = 2;

			Mod_MilizErnst	=	r_max(99);
		
			if (Mod_MilizErnst	<=	75)
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_04"); //If you really want to join the militia, go to mortis. You'll find him in the barracks forge.

				Mod_MilizTurnier	=	9;

				B_LogEntry	(TOPIC_MOD_MILIZ, "If I want to join the militia in spite of my defeat in the tournament, then I should go to Mortis.");
			}
			else
			{
				AI_Output(self, hero, "Info_Mod_Andre_Turnier4_40_05"); //You've lost and missed your chance to join the militia.

				B_LogEntry	(TOPIC_MOD_MILIZ, "Because of my defeat against Gidan, I blocked my way to the militia.");
			};
		};
	};
};

INSTANCE Info_Mod_Andre_Aufnahme (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Aufnahme_Condition;
	information	= Info_Mod_Andre_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm ready to join the militia.";
};

FUNC INT Info_Mod_Andre_Aufnahme_Condition()
{
	if (Mod_Gilde	==	0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	|| (Mod_MilizTurnier == 13)
	|| (Npc_KnowsInfo(hero, Info_Mod_Mortis_OK)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_15_00"); //I'm ready to join the militia.
	
	if (hero.level	>=	5)
	&& (Diebe_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_01"); //You're ready to join the militia.
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_02"); //But once you wear the armor of our soldiers, there's no turning back.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus <= 8)
			{
				AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_05"); //You should, however, do a few things in favor of Innos first.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Andre_Aufnahme);

				Info_AddChoice	(Info_Mod_Andre_Aufnahme, "I changed my mind.", Info_Mod_Andre_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Andre_Aufnahme, "I want to join you.", Info_Mod_Andre_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_04"); //You should get yourself a neutral armor first.
		};
	}
	else if (Diebe_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_06"); //I hear you're supposed to hang out with the riffraff in the docks. We can't have someone like that in the militia.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_40_03"); //You better get some more experience.
	};
};

FUNC VOID Info_Mod_Andre_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Nein_15_00"); //I changed my mind.
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Nein_40_01"); //Whatever you say.

	Info_ClearChoices	(Info_Mod_Andre_Aufnahme);
};

FUNC VOID Info_Mod_Andre_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	&& (Mod_MilizTurnier != 13)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mortis_OK)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_57);
	
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Ja_15_00"); //I want to join you.
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_40_01"); //Good. Here's your armour.

	CreateInvItems	(self, ITAR_MIL_L, 1);
	B_GiveInvItems	(self, hero, ITAR_MIL_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Mil_L);

	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_40_02"); //Watch where you let yourself be seen, the mercenaries and the Beliaran followers will not hesitate to kill you.
	AI_Output(hero, self, "Info_Mod_Andre_Aufnahme_Ja_15_03"); //What about a gun?
	AI_Output(self, hero, "Info_Mod_Andre_Aufnahme_Ja_40_04"); //The militias have swords with us. Go to the marketplace, they'll sell some.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_Miliz, "I'm a member of the militia now.", "I'm a member of the militia now.");
	B_SetTopicStatus	(TOPIC_MOD_Miliz, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Aufnahme);

	Mod_Gilde	=	1;

	hero.guild = GIL_PAL;
	Npc_SetTrueGuild	(hero, GIL_PAL);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	Monster_Max += 7;

	B_Göttergefallen(1, 5);

	AI_UnequipArmor	(Mod_1723_MIL_Gidan_NW);

	CreateInvItems	(Mod_1723_MIL_Gidan_NW, ItAr_Mil_M, 1);

	AI_EquipArmor	(Mod_1723_MIL_Gidan_NW, ItAr_Mil_M);
};

INSTANCE Info_Mod_Andre_Sinbad01 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad01_Condition;
	information	= Info_Mod_Andre_Sinbad01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you remember me?";
};

FUNC INT Info_Mod_Andre_Sinbad01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Mod_AndreTurnier == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad01_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_00"); //Do you remember me?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_40_01"); //Of course it is. You won the contest.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_02"); //Exactly. Now I'd like to have something like a deed.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_40_03"); //I didn't give you those.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad01_15_04"); //No.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad01_40_05"); //You're entitled to it, of course. Here you are.

	B_GiveInvItems	(self, hero, ItWr_TurnierUrkunde, 1);
};

INSTANCE Info_Mod_Andre_Sinbad02 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad02_Condition;
	information	= Info_Mod_Andre_Sinbad02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to go back to the tournament.";
};

FUNC INT Info_Mod_Andre_Sinbad02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Mod_AndreTurnier == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad02_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_00"); //I want to go back to the tournament.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_40_01"); //You've already lost. Gidan is the tournament winner. He's run away, though.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_02"); //What does that mean?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_40_03"); //It is said that he got drunk and then grappled with the shadow runner in the valley at the east gate. Anyway, he didn't show up.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_04"); //Then the place is free again?
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_40_05"); //In principle, yes. All right, you go downstairs and see what's going on.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad02_40_06"); //If Gidan is dead, you have the Shadow Runner as your opponent. If you beat him, you can keep the trophy.
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad02_15_07"); //I'm already gone.

	B_KillNpc	(Mod_1723_MIL_Gidan_NW);
};

INSTANCE Info_Mod_Andre_Sinbad03 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Sinbad03_Condition;
	information	= Info_Mod_Andre_Sinbad03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gidan is past and the shadow runner is history.";
};

FUNC INT Info_Mod_Andre_Sinbad03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Sinbad02))
	&& (Npc_HasItems(hero, ItMi_TurnierPokal) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Sinbad03_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad03_15_00"); //Gidan is past and the shadow runner is history. Here's the trophy.
	AI_Output(self, hero, "Info_Mod_Andre_Sinbad03_40_01"); //Clean work. You can keep it. And if you want to join us....
	AI_Output(hero, self, "Info_Mod_Andre_Sinbad03_15_02"); //I'll think about it. See you around.
};

INSTANCE Info_Mod_Andre_Auftrag (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Auftrag_Condition;
	information	= Info_Mod_Andre_Auftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Auftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_00"); //Good thing you're here, there's a lot to do!
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_01"); //Oh, yeah? What do you mean?
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_02"); //Firstly, a scientist has disappeared from the upper town, presumably kidnapped.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_03"); //On the other hand, the old fanatical cult spinners seem to be planning something. And to make matters worse, the last caravan on its way to the monastery was also attacked by strange golems.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_04"); //Wow, pretty much at once.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_05"); //Yeah, that's why you're not working alone.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_06"); //Was meinst du mit "not alone"?
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_07"); //Gidan will supervise the caravans.
	AI_Output(hero, self, "Info_Mod_Andre_Auftrag_15_08"); //All right... then I'll take care of the sect and the inventor.
	AI_Output(self, hero, "Info_Mod_Andre_Auftrag_40_09"); //Well, let me know if you find anything.

	Wld_InsertNpc	(Mod_1745_PSIGUR_Guru_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7392_PSITPL_Templer_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7393_PSITPL_Templer_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7394_PSINOV_Novize_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7395_PSINOV_Novize_NW, "BIGFARM");
	Wld_InsertNpc	(Mod_7396_PSINOV_Novize_NW, "BIGFARM");

	Wld_InsertItem	(ItWr_SektisTeleport2, "FP_ITEM_OV_02");
	Wld_InsertItem	(ItWr_ErfinderBrief, "FP_ITEM_ERFINDERBRIEF");

	Wld_InsertNpc	(Mod_1729_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1727_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1725_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1726_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");
	Wld_InsertNpc	(Mod_1728_PSINOV_Novize_NW,	"NW_CITY_ENTRANCE_01");

	Mob_CreateItems	("SEKTENTRUHE1", ItWr_SektisTeleport1, 1);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_wISSENSCHAFTLER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, TOPIC_MOD_MILIZ_SEKTENSPINNER, "I need to find out what the disappearance of the inventor is all about.", "There's something wrong with the cult spiders. I should talk to Cor Angar in the Minental.");

	B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW,	"TOT");

	B_StartOtherRoutine	(Mod_586_NONE_Jack_NW, "ATCITY");
};

INSTANCE Info_Mod_Andre_WoErfinder (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_WoErfinder_Condition;
	information	= Info_Mod_Andre_WoErfinder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find information about the inventor?";
};

FUNC INT Info_Mod_Andre_WoErfinder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_WoErfinder_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_WoErfinder_15_00"); //Where can I find information about the inventor?
	AI_Output(self, hero, "Info_Mod_Andre_WoErfinder_40_01"); //Look around his house. Go into the upper quarter and through the archway towards the merchant Salandril.
	AI_Output(self, hero, "Info_Mod_Andre_WoErfinder_40_02"); //There on the left side the house belongs to the inventor.

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "I should look around the inventor's house. I find it in the upper quarter on the way to Salandril on the left side after the archway.");

};

INSTANCE Info_Mod_Andre_WoFanatiker (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_WoFanatiker_Condition;
	information	= Info_Mod_Andre_WoFanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find information about the cult spinners?";
};

FUNC INT Info_Mod_Andre_WoFanatiker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_WoFanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_WoFanatiker_15_00"); //Where can I find information about the cult spinners?
	AI_Output(self, hero, "Info_Mod_Andre_WoFanatiker_40_01"); //Why don't you go to the swamp camp in the Minental? Or at your friend that Gidan told me about, that Lester.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Lord Andre thinks I should go to the swamp camp or to Lester's to find out about the fanatical cult spinners.");

};

INSTANCE Info_Mod_Andre_Erfahrung_Erfinder (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Erfinder_Condition;
	information	= Info_Mod_Andre_Erfahrung_Erfinder_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found out about the inventor!";
};

FUNC INT Info_Mod_Andre_Erfahrung_Erfinder_Condition()
{
	if (Mod_MitLawrenceGesprochen == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Erfinder_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_00"); //I found out about the inventor!
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Erfinder_40_01"); //All right, report.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_02"); //The inventor was kidnapped on the orders of a certain Cor Kolam. With his help, he wants to resurrect the sleeper.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_03"); //Governor Larius, trader Lutero and the Lawrence militia all seem to have worked with him.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Erfinder_15_04"); //I killed them when they tried to kill me. I also found another half of a parchment.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Erfinder_40_05"); //This is important information.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Erfahrung_Fanatiker (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Fanatiker_Condition;
	information	= Info_Mod_Andre_Erfahrung_Fanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found out about the fanatics!";
};

FUNC INT Info_Mod_Andre_Erfahrung_Fanatiker_Condition()
{
	if (Npc_HasItems(hero, ItWr_SektisTeleport1) == 1)
	&& (Npc_HasItems(hero, ItWr_SektisTeleport2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Fanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_00"); //I found out about the fanatics!
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Fanatiker_40_01"); //All right, report.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_02"); //In the area around Khorinis there are several groups of former cult members.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_03"); //They seem to be trying to reawaken the sleeper. One of these groups took possession of the lighthouse, the other one on the south side of the city I destroyed.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_Fanatiker_15_04"); //I found a half of a parchment there.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_Fanatiker_40_05"); //Hm, we have to be careful...

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "I should try to put the two halves of parchment together. Maybe Xardas can help me with that....");
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_SEKTENSPINNER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Erfahrung (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Erfahrung_Condition;
	information	= Info_Mod_Andre_Erfahrung_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's all I could find out for now.";
};

FUNC INT Info_Mod_Andre_Erfahrung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Erfinder))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Erfahrung_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_00"); //That's all I could find out for now.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_40_01"); //Well, that doesn't sound good. Gidan hasn't returned yet, which means we have to wait until he's back before we know more.
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_40_02"); //You go to the Minental as long as you like. There we had a mine in the orcish area near the tower. But she was attacked recently. You must free her!
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_03"); //Who robbed the mine?
	AI_Output(self, hero, "Info_Mod_Andre_Erfahrung_40_04"); //According to our reports, by bandits. Probably wanting to make a fortune, magic ore is pretty damn expensive these days.
	AI_Output(hero, self, "Info_Mod_Andre_Erfahrung_15_05"); //I'll be on my way right away!

	B_GivePlayerXP	(500);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_MINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_MINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_MINE, "There was a bandit raid at a Paladin mine in the Minental valley near Xardas' tower. I should take care of those bandits.");

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Andre_Banditen (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Banditen_Condition;
	information	= Info_Mod_Andre_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The mine is free.";
};

FUNC INT Info_Mod_Andre_Banditen_Condition()
{
	if (Mod_PalaStory_Mine_Sektis == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Banditen_15_00"); //The mine is free. They were sleeper trailers who occupied them.
	AI_Output(self, hero, "Info_Mod_Andre_Banditen_40_01"); //Damn it! They must have their fingers in everything.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_MINE, LOG_SUCCESS);

	B_Göttergefallen(1, 2);
};

INSTANCE Info_Mod_Andre_GidanBack (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_GidanBack_Condition;
	information	= Info_Mod_Andre_GidanBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Is Gidan back yet?";
};

FUNC INT Info_Mod_Andre_GidanBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Banditen))
	&& (Mod_PalaKapitel3 == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_GidanBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_00"); //Is Gidan back yet?

	if (Kapitel < 3)
	{
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_40_01"); //No, not yet. Come back later.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_40_02"); //Yes, but he's gone again!
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_03"); //Where to?
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_04"); //One of our surveillance camps was attacked....
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_05"); //Surveillance camp?
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_40_06"); //Yeah. We set it up to monitor the caravans coming from the monastery to the city. Just before you came in, a messenger reached us who said we were being attacked.
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_07"); //Where is this warehouse?
		AI_Output(self, hero, "Info_Mod_Andre_GidanBack_40_08"); //Under the bridge on the way to the tavern.
		AI_Output(hero, self, "Info_Mod_Andre_GidanBack_15_09"); //All right, I'll be on my way right away.

		AI_StopProcessInfos	(self);

		Mod_PalaKapitel3 = 1;

		Npc_ExchangeRoutine	(Mod_1723_MIL_Gidan_NW,	"GOLEM");
		Wld_InsertNpc	(EisenGolem,	"FP_ROAM_CITY_TO_FOREST_42");

		Mod_1723_MIL_Gidan_NW.flags = 2;

		Log_CreateTopic	(TOPIC_MOD_MILIZ_GIDAN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_MILIZ_GIDAN, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Gidan is in a surveillance camp of the militia near the tavern under a bridge which was raided. I should go to him and see what he found out.");		
	};
};

INSTANCE Info_Mod_Andre_FIFinished (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_FIFinished_Condition;
	information	= Info_Mod_Andre_FIFinished_Info;
	permanent	= 0;
	important	= 0;
	description	= "I solved the mystery of the sect and smashed the inventor.";
};

FUNC INT Info_Mod_Andre_FIFinished_Condition()
{
	if (FI_Story == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_FIFinished_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_00"); //I solved the mystery of the sect and smashed the inventor.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_40_01"); //You got what? That was supposed to be the other way around.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_02"); //It was like this: The inventor was not kidnapped, but only used as bait for me.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_03"); //Cor Kalom's brother Cor Kolam had built a robot that looked like the sleeper, making the cult followers his followers.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_04"); //He was rambling on the perfect machine and I thought, of course, this was the sleeper bot. But after I destroyed him, he showed the real miracle weapon.
	AI_Output(hero, self, "Info_Mod_Andre_FIFinished_15_05"); //However, when he tried to set them on me Gidan came and took them down with him. He sacrificed himself for justice.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_40_06"); //That's how it was... Well, anyway, you've earned yourself a reward.
	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_40_07"); //I hereby declare you a knight. Here's your armour.

	CreateInvItems	(hero, ItAr_Pal_M, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Pal_M);

	B_ShowGivenThings	("obtain knight's armour");

	AI_Output(self, hero, "Info_Mod_Andre_FIFinished_40_08"); //At the moment everything is quiet, if there's something to do again you can find out here.

	B_GivePlayerXP	(2000);

	B_Göttergefallen(1, 5);

	Mod_Gilde = 2;

	B_SetTopicStatus	(TOPIC_MOD_PAL_FI, LOG_SUCCESS);
};

INSTANCE Info_Mod_Andre_RLMord (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_RLMord_Condition;
	information	= Info_Mod_Andre_RLMord_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, is there anything to do?";
};

FUNC INT Info_Mod_Andre_RLMord_Condition()
{
	if (FI_Story == 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_RLMord_Info()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Neron_Hi))
	{
		AI_Output(hero, self, "Info_Mod_Andre_RLMord_15_00"); //Well, is there anything to do?
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_RLMord_15_01"); //Neron sent me.
	};

	AI_Output(self, hero, "Info_Mod_Andre_RLMord_40_02"); //Good thing it's you! Hell's breaking loose in the docks. A militia, Jason, was killed!

	B_StartOtherRoutine	(Mod_1260_RIT_Neron_NW, "START");

	Log_CreateTopic	(TOPIC_MOD_PAL_RL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PAL_RL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PAL_RL, "Militia soldier Jason was murdered in the port district.");

	Info_ClearChoices	(Info_Mod_Andre_RLMord);

	Info_AddChoice	(Info_Mod_Andre_RLMord, "Where?", Info_Mod_Andre_RLMord_C);
	Info_AddChoice	(Info_Mod_Andre_RLMord, "By whom?", Info_Mod_Andre_RLMord_B);
	Info_AddChoice	(Info_Mod_Andre_RLMord, "How?", Info_Mod_Andre_RLMord_A);
};

FUNC VOID Info_Mod_Andre_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_C_15_00"); //Where?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_C_40_01"); //In the red lantern.
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_C_15_02"); //He was at the brothel? Business?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_C_40_03"); //I don't think so. He was naked....

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The murder was carried out in the Red Lantern.");

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

FUNC VOID Info_Mod_Andre_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_B_15_00"); //By whom?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_B_40_01"); //If we knew that this son of a bitch would hang!

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

FUNC VOID Info_Mod_Andre_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Andre_RLMord_A_15_00"); //How?
	AI_Output(self, hero, "Info_Mod_Andre_RLMord_A_40_01"); //Stabbed.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 3)
	{
		Info_ClearChoices	(Info_Mod_Andre_RLMord);
	};
};

INSTANCE Info_Mod_Andre_Giselle (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Giselle_Condition;
	information	= Info_Mod_Andre_Giselle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Giselle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Galf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Giselle_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_40_00"); //Good work, soldier. You've got it in your muscles, you've got it in your head! Jason's buried at the cemetery, and we're honoring him.
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_40_01"); //Here's your paycheck. I hope we're heading for quieter times now....

	B_GiveInvItems	(self, hero, ItMi_Gold, 2000);

	AI_Output(hero, self, "Info_Mod_Andre_Giselle_15_02"); //Was ist mit der "Dark figure"?
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_40_03"); //We're looking undercover for her. The last thing we need is a mass panic.
	AI_Output(hero, self, "Info_Mod_Andre_Giselle_15_04"); //Did you find anything yet?
	AI_Output(self, hero, "Info_Mod_Andre_Giselle_40_05"); //No, not yet.

	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_7234_OUT_Giselle_NW, "KNAST");
	B_StartOtherRoutine	(Mod_7235_NONE_Galf_NW, "KNAST");

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The case should be closed, now only a hidden search for the dark figure is underway to prevent mass panic.");

	Mod_PAL_MISH_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_Bernd (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Bernd_Condition;
	information	= Info_Mod_Andre_Bernd_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Bernd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Giselle))
	&& (Wld_GetDay() > Mod_PAL_MISH_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Bernd_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Bernd_40_00"); //I'm glad you just came. I just received a report of domestic violence.
	AI_Output(self, hero, "Info_Mod_Andre_Bernd_40_01"); //Bernd, a drunkard from the harbour district, has once again drunk one about thirst and leaves his tomcat straight out on his wife, please go there and "calm" him.
	AI_Output(hero, self, "Info_Mod_Andre_Bernd_15_02"); //It's done.

	B_StartOtherRoutine	(Mod_1062_VLK_Bernd_NW, "GEKILLT");
	B_StartOtherRoutine	(Mod_1064_VLK_Jana_NW, "BERND");

	B_KillNpc	(Mod_1062_VLK_Bernd_NW);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Bernd, a drunkard from the harbour district, is to beat his wife. He wants me to calm him down.");
};

INSTANCE Info_Mod_Andre_Jana (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Jana_Condition;
	information	= Info_Mod_Andre_Jana_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bernd is reassured.";
};

FUNC INT Info_Mod_Andre_Jana_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jana_BerndTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Jana_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_00"); //Bernd is reassured.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_40_01"); //Like this? That was quick.
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_02"); //Yes, and permanent too. He's dead.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_40_03"); //Damn it, you can't kill every drunkard who has run away just because you don't want to waste paperwork!
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_04"); //Ich war‘s nicht, sondern ein "dark guy in a militia armor".
	AI_Output(self, hero, "Info_Mod_Andre_Jana_40_05"); //You don't mean?
	AI_Output(hero, self, "Info_Mod_Andre_Jana_15_06"); //Yes, it is. We're dealing with a serial killer wearing Jason's armor by the way.
	AI_Output(self, hero, "Info_Mod_Andre_Jana_40_07"); //Then I guess we'll have to go public...
	AI_Output(self, hero, "Info_Mod_Andre_Jana_40_08"); //I will prepare everything here, please go to the market place in the meantime, there is a weirdo, probably an old guru from the cult camp, who warns people about the end of the world and is rather indiscreet. Get him out of town.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Lord Andre means that we must go public. As he prepares everything, I shall cast out a crazy guru who prophesies the end of the world on the market square.");

	Wld_InsertNpc	(Mod_7236_GUR_Guru_NW, "MARKT");
};

INSTANCE Info_Mod_Andre_HeroBot (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HeroBot_Condition;
	information	= Info_Mod_Andre_HeroBot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I know who our serial killer is now.";
};

FUNC INT Info_Mod_Andre_HeroBot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HeroBot_Weg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HeroBot_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_00"); //I know who our serial killer is now.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_01"); //You do know? Who?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_02"); //Kolam's battle robot.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_03"); //What? What makes you think that?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_04"); //I've seen him. He knocked the crazy guy out at the marketplace.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_05"); //I suppose I don't have to worry about how it can still work or why he's only stabbed criminals so far because you've done it.... right?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_06"); //Wrong. I tried to kill him, but Kolam did a great job with the device. I could barely scratch him, but I lost energy with every stroke.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_07"); //Then why are you standing here?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_08"); //Der Roboter hat mich nicht angegriffen. Er faselte irgendwas von "Threat of anyhow is to be regarded as a criminal offence" oder was weiß ich und hat sich wegteleportiert.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_09"); //"Threat to be considered a criminal offence" ... das kommt mir merkwürdig bekannt vor. Hat der Roboter sonst noch was gesagt?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_10"); //Ja ... zu Jana hat er irgendwas davon gefaselt, dass "a good militia always protects the weak" ...
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_11"); //It all seems so familiar. Where do I know that from? Did the robot say anything else?
	AI_Output(hero, self, "Info_Mod_Andre_HeroBot_15_12"); //Not that I know of.
	AI_Output(self, hero, "Info_Mod_Andre_HeroBot_40_13"); //That's a new assignment for you. Find out what else. I'm trying to stop a mass panic! And hurry up, will you?

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The robot's sayings are very familiar to Lord Andre, but he cannot yet classify them. He wants me to find out another line from him. So I should talk to Giselle in prison.");
};

INSTANCE Info_Mod_Andre_Kerze (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kerze_Condition;
	information	= Info_Mod_Andre_Kerze_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Kerze_Condition()
{
	if (Mod_PAL_HeroBot == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kerze_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_00"); //It's about time you came, something's leaked out, all hell is breaking loose here.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_01"); //We've imposed a curfew, but that doesn't impress anyone here.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_02"); //We must solve this problem immediately! I hope you know how.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_03"); //Ich habe mit Giselle gesprochen. Laut ihrer Aussage hat der Roboter etwas gesagt wie "It is the militias in their role model..."
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_04"); //(setzt in den Satz des Helden ein) "... their role model effect does not permit the practice of unfair practices". Natürlich! Das sind alles Grundregeln der Milizenschule.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_05"); //Militia school?
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_06"); //You missed it because you won the tournament, remember? Kolam must have programmed the robot incorrectly.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_07"); //Not only did he record your fighting style, but you probably adopted some kind of militia maxim on him. And now he's smashing crime and injustice.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_08"); //Then why should we do anything about it?
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_09"); //Look what it's doing! The robot goes over corpses.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_10"); //And if we don't come up with a way to get it done soon, everyone will do so because the streets will be paved with the lifeless bodies of the criminals!
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_11"); //We must destroy him, call all the militias together, we will attack him openly.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_12"); //One: How do you want to find him, and he can teleport.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_13"); //How are you going to hurt him? I told you, the robot is indestructible!
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_14"); //It's made of massive magic ore! We couldn't even fight him if we had arch swords.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_15"); //Then we'll just have to trap him. First we do the find, then destroy.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_16"); //Wait a moment... I've got some old profiles around here somewhere, they'll be useful to us.

	AI_GotoWp	(self, "WP_ANDRE_STECKBRIEFE");

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoWP	(self, "NW_CITY_ANDRE");

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_17"); //They're from an old case. The wanted one always appeared in a colorful costume with chess collar. Let's take advantage of that now.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_18"); //I'll see to it that every guard gets one. I want you to show them around.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_19"); //Meanwhile, you tell the herald at the marketplace to warn people of a dangerous lunatic walking around in colorful costumes with chess collars and stabbing them in the four militia soldiers last night while they were sleeping.
	AI_Output(hero, self, "Info_Mod_Andre_Kerze_15_20"); //But that will only exacerbate the panic.
	AI_Output(self, hero, "Info_Mod_Andre_Kerze_40_21"); //Let me worry about that. Come on, hurry up.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_PAL_RL, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_PAL_BOT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PAL_BOT, "Lord Andre has a plan to destroy the robot. He's going to have a warrant of apprehension distributed to the guards. Meanwhile, I'm supposed to tell the herald to warn of a killer in a colorful costume with a chess collar who allegedly killed four militia soldiers last night.");

	B_Göttergefallen(1, 2);
};

INSTANCE Info_Mod_Andre_Herold (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Herold_Condition;
	information	= Info_Mod_Andre_Herold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Herold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Verbrecher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Herold_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_00"); //Very good. Very good. I've made all the preparations. Here, take this.

	B_GiveInvItems	(self, hero, ItPo_Speed_Andre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_01"); //And that's what you have to wear.

	CreateInvItems	(hero, ItAr_Gangster, 1);

	B_ShowGivenThings	("Get your costume");

	AI_Output(hero, self, "Info_Mod_Andre_Herold_15_02"); //What am I gonna do with it?
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_03"); //We only have one chance to hunt down that robot, we have to melt it down.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_04"); //To do this, we have to lure him into the blast furnace in Khorata, the only place that is hot enough to melt magical ore and from which he cannot teleport himself away.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_05"); //The walls are also made of magical ore, there is no magic. You'll be the decoy.
	AI_Output(hero, self, "Info_Mod_Andre_Herold_15_06"); //You want me to go in the blast furnace? I'd rather I had a plan not to get roasted.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_07"); //Let me worry about that. Now put on the costume and drink the potion.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_08"); //Then you run to Khorata and directly into the blast furnace. Meanwhile, I'm going to teleport there and prepare everything.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_09"); //The oven will be turned off when you walk in, and I'll prepare a way out for you.
	AI_Output(self, hero, "Info_Mod_Andre_Herold_40_10"); //Go on, run around town with the costume until the robot catches you, he'll come after you. See you in Khorata.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_PAL_BOT, "I got a speed potion and a costume from Lord Andre. I'm supposed to wear the costume and sic the robot on me. If he is following me, I should take the quickest way to Khorata and run directly into the blast furnace. Lord Andre is currently holding an exit for me there.");
};

INSTANCE Info_Mod_Andre_Ramirez (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Ramirez_Condition;
	information	= Info_Mod_Andre_Ramirez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Ramirez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_ZuAndre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Ramirez_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_00"); //What brings you to me?
	AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_01"); //I caught a thief trying to steal from an innocent citizen of this town.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_02"); //Thank Innos, there's still justice. Wait a minute, that's Ramirez, the leader of the gang of thieves.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_03"); //How could you catch him?
	AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_04"); //When he just turned around, I could overpower him from behind.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_05"); //I see Innos' fire in your heart, you convinced me.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_06"); //We could use a guy like you around here. That's the second felon we have now. The other one's name is Attila and he's a murderer.
	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_07"); //If we carry on like this, citizens will soon be able to sleep in peace.

	if (Mod_Gilde < 1)
	|| (Mod_Gilde > 3)
	{
		AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_08"); //Am I part of the militia now?
		AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_09"); //You can make an exception, but don't brag about it, or we'll both have problems.
		AI_Output(hero, self, "Info_Mod_Andre_Ramirez_15_10"); //I see.
		AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_11"); //All right, here's your armour.

		CreateInvItems	(self, ItAr_Mil_L, 1);
		B_GiveInvItems	(self, hero, ItAr_Mil_L, 1);
	};

	AI_Output(self, hero, "Info_Mod_Andre_Ramirez_40_12"); //Here's your bounty for Ramirez.

	CreateInvItems	(self, ItMi_Gold, 1000);
	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_StartOtherRoutine	(Mod_746_NONE_Ramirez_NW, "KNAST");
	AI_Teleport	(Mod_746_NONE_Ramirez_NW, "NW_CITY_HABOUR_KASERN_NAGUR");

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Lord Andre thinks I arrested Ramirez. I'm a member of the militia now. Let's see if everything works out the way Cassia planned.");
};

INSTANCE Info_Mod_Andre_Keller (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Keller_Condition;
	information	= Info_Mod_Andre_Keller_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anything to do?";
};

FUNC INT Info_Mod_Andre_Keller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Ramirez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Keller_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Keller_15_00"); //Anything to do?
	AI_Output(self, hero, "Info_Mod_Andre_Keller_40_01"); //You're just in time. One of the dealers told me about strange things in my sleeping bag.
	AI_Output(self, hero, "Info_Mod_Andre_Keller_40_02"); //At night, several strange creatures are said to have come out of the cellar door.
	AI_Output(self, hero, "Info_Mod_Andre_Keller_40_03"); //Get to the bottom of this.
	AI_Output(hero, self, "Info_Mod_Andre_Keller_15_04"); //I will do it.

	Log_CreateTopic	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_HANNA, "A merchant seems to have seen some thieves come out of Hanna's basement at night. Lord Andre wants me to get to the bottom of this. I should talk to Hanna.");
};

INSTANCE Info_Mod_Andre_Hanna (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Hanna_Condition;
	information	= Info_Mod_Andre_Hanna_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was in the basement of the sleeping money bag.";
};

FUNC INT Info_Mod_Andre_Hanna_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Keller))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Hanna_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_00"); //I was in the basement of the sleeping money bag.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_40_01"); //And what did you find?
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_02"); //There were only rats in the dark hole, nothing else.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_40_03"); //That's probably where the merchant was dreaming.
	AI_Output(hero, self, "Info_Mod_Andre_Hanna_15_04"); //He certainly did.
	AI_Output(self, hero, "Info_Mod_Andre_Hanna_40_05"); //All right, here's your pay.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Andre_Hanna_40_06"); //Come back later, everything's quiet for now.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_HANNA, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_NewsMilizDead (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_NewsMilizDead_Condition;
	information	= Info_Mod_Andre_NewsMilizDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did something happen in the meantime?";
};

FUNC INT Info_Mod_Andre_NewsMilizDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Milizangriff))
	&& (Npc_IsDead(Mod_1893_MIL_Miliz_NW))
	&& (Npc_IsDead(Mod_1894_MIL_Miliz_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_NewsMilizDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_00"); //Did something happen in the meantime?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_40_01"); //As it couldn't be otherwise, we miss two militias who haven't been here for some time.
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_40_03"); //Mortis, our blacksmith, told us that Meldor is probably trying to close some weed business.
	AI_Output(hero, self, "Info_Mod_Andre_NewsMilizDead_15_04"); //Can't I take care of this?
	AI_Output(self, hero, "Info_Mod_Andre_NewsMilizDead_40_05"); //Looks like you're the only one here. All right, go keep your eyes open for the other two.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_MILIZANGRIFF, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_MELDOR, "Mortis has told Lord Andre something about a cabbage trade in Meldor. I should warn Meldor and invent a lie to protect him.");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_Meldor (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Meldor_Condition;
	information	= Info_Mod_Andre_Meldor_Info;
	permanent	= 0;
	important	= 0;
	description	= "I watched Meldor and searched him, it was a false alarm.";
};

FUNC INT Info_Mod_Andre_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Mortis))
	&& (Mob_HasItems("MORTISTRUHE", ItMi_HerbPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Meldor_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Meldor_15_00"); //I watched Meldor and searched him, it was a false alarm.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_40_01"); //Like the last time. Mortis is also becoming more and more unreliable.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_40_02"); //What the hell's your pay?

	CreateInvItems	(self, ItMi_Gold, 200);
	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(hero, self, "Info_Mod_Andre_Meldor_15_03"); //Can I get a quieter place, maybe guard the prisoners?
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_40_04"); //Why not, you've done a lot of work.
	AI_Output(self, hero, "Info_Mod_Andre_Meldor_40_05"); //I'll tell the guard, tomorrow you can guard the prisoners.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ANDRE_MELDOR, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_Andre_WaitForKnast = Wld_GetDay();

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andre_RamirezAttilaFlucht (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_RamirezAttilaFlucht_Condition;
	information	= Info_Mod_Andre_RamirezAttilaFlucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_RamirezAttilaFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_RamirezAttilaFlucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_40_00"); //Where have you been? Where are the thieves? Where's all the gold from my chest?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_01"); //l--
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_40_02"); //You're as unreliable as the other two who haven't come yet. I'm waiting for a good explanation.
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_03"); //Ramirez and Attila set me up. When they were outside, Ramirez cracked the trunk and I fought Attila.
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_04"); //After that, I ran behind them and lost them.
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_40_05"); //How could all this happen?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_06"); //I don't know, it happened so fast. They escaped and thanked Mortis!
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_40_07"); //With mortis? Did he help them?
	AI_Output(hero, self, "Info_Mod_Andre_RamirezAttilaFlucht_15_08"); //Maybe you should take a closer look at his forge.
	AI_Output(self, hero, "Info_Mod_Andre_RamirezAttilaFlucht_40_09"); //I'm gonna order this right now. Come back tomorrow.

	Mod_Andre_WaitForKnast = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_MortisBadGuy (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_MortisBadGuy_Condition;
	information	= Info_Mod_Andre_MortisBadGuy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_MortisBadGuy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_RamirezAttilaFlucht))
	&& (Mod_Andre_WaitForKnast < Wld_GetDay())
	&& (Npc_HasItems(hero, ItAr_Mil_L) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_MortisBadGuy_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_40_00"); //You were right, Mortis had a bog cabbage bag hidden in his chest. He probably put us all on the wrong track.
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_40_01"); //We'll be the biggest laughing stock in town. Two felons have escaped us, one of our own people has betrayed us and all the militia gold has disappeared.
	AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_02"); //There's nothing you can do about it.
	AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_40_03"); //What are you going to do now? I'll never take you back as a prison guard.
	
	if (Mod_Gilde < 1)
	|| (Mod_Gilde > 3)
	{
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_04"); //I wanted to announce that I wanted to leave town. That's why I'm putting down my militia job.
		AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_40_05"); //Are you really sure about that?
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_06"); //I've already made up my mind.
		AI_Output(self, hero, "Info_Mod_Andre_MortisBadGuy_40_07"); //Well, never forget that you're welcome here if you want to start over.
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_08"); //I'll keep it in mind.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_MortisBadGuy_15_09"); //I'm going to do my other jobs now.
	};

	var C_Item itm;
	
	itm = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(itm, ITAR_MIL_L) == TRUE)
	{
		AI_UnequipArmor	(hero);

		AI_EquipBestArmor	(hero);
	};

	Npc_RemoveInvItems	(hero, ItAr_MIL_L, 1);

	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "START");
	B_StartOtherRoutine	(Mod_742_MIL_Mortis_NW, "KNAST");

	AI_Teleport	(Mod_742_MIL_Mortis_NW, "NW_CITY_HABOUR_KASERN_HALVOR");
};

INSTANCE Info_Mod_Andre_Rangar (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Rangar_Condition;
	information	= Info_Mod_Andre_Rangar_Info;
	permanent	= 0;
	important	= 0;
	description	= "There are rumors of militia.";
};

FUNC INT Info_Mod_Andre_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (Mod_DensGeruechtVerbreitet == TRUE)
	&& ((Mob_HasItems("RANGARSTRUHE", ItMi_Joint) > 0)
	|| (Mob_HasItems("RANGARSTRUHE", ItMi_HerbPaket) > 0))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_00"); //There are rumors of militia.
	AI_Output(self, hero, "Info_Mod_Andre_Rangar_40_01"); //About whom?
	AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_02"); //Rangar. Citizens tell each other a lot of different things.

	if (Mob_HasItems("RANGARSTRUHE", ItMi_HerbPaket) > 0)
	{
		AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_03"); //Besides, I saw him putting a packet of swampweed in his trunk.

		B_GivePlayerXP	(150);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andre_Rangar_15_04"); //Besides, I saw him putting swampweed stalks in his chest.

		B_GivePlayerXP	(100);
	};

	AI_Output(self, hero, "Info_Mod_Andre_Rangar_40_05"); //I'll have that checked out immediately. Thanks for notifying me.
	AI_Output(self, hero, "Info_Mod_Andre_Rangar_40_06"); //Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Lord Andre will investigate the matter with Rangar. I should let him know by now.");
};

INSTANCE Info_Mod_Andre_Ole (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Ole_Condition;
	information	= Info_Mod_Andre_Ole_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to give you this letter from Ole of the Royal Guard.";
};

FUNC INT Info_Mod_Andre_Ole_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ole_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_OleForAndre) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Ole_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Ole_15_00"); //I'm supposed to give you this letter from Ole of the Royal Guard.

	B_GiveInvItems	(hero, self, ItWr_OleForAndre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Ole_40_01"); //All right, let's see.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Andre_Ole_40_02"); //Tell Ole, as long as he can't guarantee me an ore, he doesn't get any paladins as additional men.
	AI_Output(self, hero, "Info_Mod_Andre_Ole_40_03"); //He should bring me at least fifty ore chunks, as proof that he is mining ore again, then we can talk about additional people.
	AI_Output(self, hero, "Info_Mod_Andre_Ole_40_04"); //Go and tell him that.

	B_LogEntry	(TOPIC_MOD_KG_OLEBRIEF, "Lord Andre doesn't seem to want to send reinforcements to the guard until there are guarantees for ore. I'm sure Ole won't like it.");
};

INSTANCE Info_Mod_Andre_Knast (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Knast_Condition;
	information	= Info_Mod_Andre_Knast_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Knast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Engor_ToHagen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Knast_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast_40_00"); //You were reported as a felon by a respected citizen. What do you have to say about this accusation?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "Is there any evidence against me?", Info_Mod_Andre_Knast_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "I'm not a criminal.", Info_Mod_Andre_Knast_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "This citizen is a cheater.", Info_Mod_Andre_Knast_A);
};

FUNC VOID Info_Mod_Andre_Knast_Ok ()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast_Ok_40_00"); //I'll check it out. Thanks for your answers.
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "KASERNE");
};

FUNC VOID Info_Mod_Andre_Knast_C ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_15_00"); //Is there any evidence against me?
	AI_Output(self, hero, "Info_Mod_Andre_Knast_C_40_01"); //It's not hard to get confirmation that you're from the penal colony, and the members of the Old Camp are still anything but serious businessmen, so you're a verifiable member of a criminal organization.
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "I was sent by Alissandro, an acquaintance of Lord Hagen.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo wears the weapon of a demon knight.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_C_B ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_B_15_00"); //I was sent by Alissandro, an acquaintance of Lord Hagen.
	
	Info_Mod_Andre_Knast_Ok();
};

FUNC VOID Info_Mod_Andre_Knast_C_A ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_C_A_15_00"); //Bodo wears the weapon of a demon knight.
	
	Info_Mod_Andre_Knast_Ok();
};

FUNC VOID Info_Mod_Andre_Knast_B ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_B_15_00"); //I'm not a criminal.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_B_40_01"); //Do you have any evidence of that or are these allegations airborne?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "I'm not a criminal, though, unlike Bodo.", Info_Mod_Andre_Knast_AB_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "I was sent by Alissandro, an acquaintance of Lord Hagen.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo wears the weapon of a demon knight.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_A ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_A_15_00"); //This citizen is a cheater.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_A_40_01"); //Do you have any evidence of that or are these allegations airborne?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "I'm not a criminal, though, unlike Bodo.", Info_Mod_Andre_Knast_AB_C);
	Info_AddChoice	(Info_Mod_Andre_Knast, "I was sent by Alissandro, an acquaintance of Lord Hagen.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo wears the weapon of a demon knight.", Info_Mod_Andre_Knast_C_A);
};

FUNC VOID Info_Mod_Andre_Knast_AB_C ()
{
	AI_Output(hero, self, "Info_Mod_Andre_Knast_AB_C_15_00"); //I'm not a criminal, though, unlike Bodo.
	AI_Output(self, hero, "Info_Mod_Andre_Knast_AB_C_40_01"); //Can you prove that?
	
	Info_ClearChoices	(Info_Mod_Andre_Knast);

	Info_AddChoice	(Info_Mod_Andre_Knast, "I was sent by Alissandro, an acquaintance of Lord Hagen.", Info_Mod_Andre_Knast_C_B);
	Info_AddChoice	(Info_Mod_Andre_Knast, "Bodo wears the weapon of a demon knight.", Info_Mod_Andre_Knast_C_A);
};

INSTANCE Info_Mod_Andre_Knast2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Knast2_Condition;
	information	= Info_Mod_Andre_Knast2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Knast2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Knast))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_PRISON_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Knast2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Knast2_40_00"); //We've checked your statements, and they seem to be correct. I apologize for the inconvenience we've caused you.
	AI_Output(self, hero, "Info_Mod_Andre_Knast2_40_01"); //Lord Hagen will receive you, and I would like to point out that the citizen Bodo has left the city.

	if (Wld_IsMobAvailable(self,"LEVER"))
	{
		AI_UseMob (self, "LEVER", 1);
	};

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "I told him everything and I was released. Lord Hagen will see me now.");

	B_StartOtherRoutine	(Mod_516_SNOV_Bodo_NW, "TOT");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_Steinmonster (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Steinmonster_Condition;
	information	= Info_Mod_Andre_Steinmonster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the fifty pieces of ore to prove it.";
};

FUNC INT Info_Mod_Andre_Steinmonster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_SpecialErzguardian))
	&& (Npc_HasItems(hero, ItMi_ErzPaketAndre) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Steinmonster_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster_15_00"); //Here are the fifty pieces of ore to prove it. What about backup now?

	B_GiveInvItems	(hero, self, ItMi_ErzPaketAndre, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_40_01"); //Ah, very nice. Well, I think it's worth investing in the mine.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_40_02"); //Recently Paladin Trent from the Southern Islands has arrived. I think he's just right for the job.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_40_03"); //Unfortunately he hasn't contacted me yet. You should look for him first in the waterfront.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster_40_04"); //Bring him to me after that, I'll clear it up with him.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster_15_05"); //All right, I'll go look for him.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "The Paladin Trent is supposed to help me in the mine, but he hasn't shown up to Lord Andre yet. I was told to look for the other paladins in the waterfront.");
};

INSTANCE Info_Mod_Andre_Steinmonster2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Steinmonster2_Condition;
	information	= Info_Mod_Andre_Steinmonster2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Steinmonster2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_Shadowbeast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Steinmonster2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_40_00"); //Well, did you find him?
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_01"); //I found him, but he has already left for the Minental.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_40_02"); //How? I don't understand. He was supposed to contact me first.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_03"); //Apparently, he wanted to act rather than talk.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_40_04"); //What comes into his mind to disobey a superior's order? Tell him to contact me immediately, otherwise I'm forced to demote him.
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_40_05"); //I know he has received many awards in Myrtana, but he can't behave like that towards me.
	AI_Output(hero, self, "Info_Mod_Andre_Steinmonster2_15_06"); //Don't you think you're overreacting a little bit?
	AI_Output(self, hero, "Info_Mod_Andre_Steinmonster2_40_07"); //Not at all. He has to follow my rules. Now go and deliver this to him.
};

INSTANCE Info_Mod_Andre_Trent (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Trent_Condition;
	information	= Info_Mod_Andre_Trent_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Trent_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_00"); //What were you thinking about turning one of my paladins into a psychic wreck?
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_01"); //He was cursed by black ore, how could anyone have known?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_02"); //By having a preliminary meeting with me!
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_03"); //But well, you got the mine up and running, and you weren't assigned to me on this mission, but to Hymir.
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_04"); //The Paladin Trent, however, has to live with the consequences.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_05"); //What are the consequences?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_06"); //Well, I have full command over him, and that's why he now leads an espionage squad in the Minental to find out what the Orcs' next move is.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_07"); //And where exactly are they supposed to spy?
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_08"); //Near the old fort, by the big lake, where the old demon-charming tower is. The orcs seem to have built a kind of ritual site there.
	AI_Output(self, hero, "Info_Mod_Andre_Trent_40_09"); //If you want, you can support them. You can win back my trust with that, too.
	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_10"); //If I have to.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Andre_Trent_15_11"); //(to oneself) Complain to me, but send a psychic wreck into the middle of the orc region...

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "I was supposed to be assisting Trent with his spy mission in the Minental. He should be somewhere near the old fort at Xardas's old tower.");
};

INSTANCE Info_Mod_Andre_Trent2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Trent2_Condition;
	information	= Info_Mod_Andre_Trent2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Trent2_Condition()
{
	if (Mod_KG_OrkTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Trent2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_00"); //It's been a couple of days now, so what's new from the orcs?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_01"); //The orcs in the cave are dead. They were led by a shaman with some nasty stuff.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_02"); //That sounds good when the job's done. Then where are the others?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_03"); //They're all dead! Three of them were already dead when I arrived, the rest were killed by the shaman's magic.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_04"); //And what about the Paladin?
	AI_Output(hero, self, "Info_Mod_Andre_Trent2_15_05"); //He wasn't there during the whole fight, and he wasn't paying attention at the right moment. Maybe he should have recovered first.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_06"); //Well, in spite of everything, it's good news to know the orcs are dead.
	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_07"); //Here, 500 gold coins were supposed to compensate you for the losses.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_Trent2_40_08"); //We will soon take over the abandoned mine with our people, but of course you will continue to receive your share.

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Andre_Mario (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Mario_Condition;
	information	= Info_Mod_Andre_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_Mario_Condition()
{
	if (Mod_Mario == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Mario_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_00"); //We need to talk seriously about your role in Mario's disappearance.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_01"); //What do you want me to know about it?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_02"); //You were one of his closest confidants. Did he tell you anything before he escaped?
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_03"); //No, I can't remember.
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_04"); //He freed a sex offender from prison and then escaped unnoticed.
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_05"); //No militia guard in the whole city can remember seeing him.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_06"); //Then maybe he took a secret path? By boat out to sea?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_07"); //I don't know, sir. But I will now step up my control of this path.
	AI_Output(hero, self, "Info_Mod_Andre_Mario_15_08"); //Is that it, then?
	AI_Output(self, hero, "Info_Mod_Andre_Mario_40_09"); //Yeah, get out of here.
};

INSTANCE Info_Mod_Andre_TomKraut (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut_Condition;
	information	= Info_Mod_Andre_TomKraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "I wanted to buy Tom out.";
};

FUNC INT Info_Mod_Andre_TomKraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Krautquest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut_15_00"); //I wanted to buy Tom out.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_40_01"); //Buy this criminal out? It is not that easy to deal with in this case.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_40_02"); //There was already some evidence that he is involved in the weed business within our city walls... but not enough to get him arrested.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_40_03"); //The bogweed plants he wanted to smuggle in here are now finally the tangible proof of his involvement in the criminal milieu.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut_40_04"); //He'll serve his sentence here until he goes black. And now don't bother me any more.

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Well, that doesn't look good. Andre is determined to keep Tom in jail. I should explain the situation to him....");
};

INSTANCE Info_Mod_Andre_TomKraut2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut2_Condition;
	information	= Info_Mod_Andre_TomKraut2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_TomKraut))
	&& (Mob_HasItems("ASSERVATENTRUHE", ItPl_SwampHerb) == 0)
	&& (Mob_HasItems("ASSERVATENTRUHE", ItPl_Weed) == 3)
	&& (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut2_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_40_00"); //Hey, what are you doing back here?
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_01"); //I doubt Tom's guilt.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_40_02"); //I really think I have to expel you from these premises for the time being.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_03"); //Tom said he was just collecting some weed that looks like swampweed.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_04"); //But he was so intimidated that he didn't dare to say it.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_40_05"); //(wrestling over) The.... that's the altitude.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut2_15_06"); //I'm serious.... maybe a herbalist could tell you....
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_40_07"); //(suppressing anger) All right. I'll get someone.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut2_40_08"); //But I want to tell you, there will be repercussions. Now get out of here!

	AI_StopProcessInfos	(self);

	AI_GotoWP	(hero, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};

FUNC VOID Info_Mod_Andre_TomKraut5()
{
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut5_15_00"); //So Tom's getting out now?
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut5_40_01"); //Yes, yes, soon. Just a few formalities left.... and sort something out with the gatekeepers....

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Tom should be out soon.");

	B_GivePlayerXP	(400);

	Mod_SenyanTom_Kraut = 3;

	Mod_SenyanTom_Kraut_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Andre_TomKraut3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut3_Condition;
	information	= Info_Mod_Andre_TomKraut3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut3_Condition()
{
	if (Mod_SenyanTom_Kraut == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut3_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut3_40_00"); //(laying) Uh.... there seems to have been an unfortunate misunderstanding here.
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut3_40_01"); //The alleged marsh weed.... it was actually just ordinary weeds.

	Info_Mod_Andre_TomKraut5();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_TomKraut4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_TomKraut4_Condition;
	information	= Info_Mod_Andre_TomKraut4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andre_TomKraut4_Condition()
{
	if (Mod_SenyanTom_Kraut_Wache_01 == 1)
	&& (Mod_SenyanTom_Kraut_Wache_02 == 1)
	&& (Mod_SenyanTom_Kraut_Mika == 1)
	&& (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_TomKraut4_Info()
{
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_40_00"); //(to itself) Hmm, strange, the one with the gatekeepers... I should see if there's any herb in the chest.

	AI_UseMob	(self, "CHESTBIG", 1);
	AI_UseMob	(self, "CHESTBIG", -1);

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_40_01"); //(to itself) But something like that, too.... no herb.
	AI_Output(hero, self, "Info_Mod_Andre_TomKraut4_15_02"); //So Tom's innocent, then?
	AI_Output(self, hero, "Info_Mod_Andre_TomKraut4_40_03"); //(surprised) Um.... yes there seems to have been some misunderstanding.

	Info_Mod_Andre_TomKraut5();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Andre_HaradLehrling (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling_Condition;
	information	= Info_Mod_Andre_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a request to make about Harad.";
};

FUNC INT Info_Mod_Andre_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling_15_00"); //I have a request to make about Harad.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_40_01"); //Then speak!
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling_15_02"); //Tell Harad to go free. He didn't commit any crime.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_40_03"); //If only that were the case!
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_40_04"); //We cannot afford to have our only blacksmith in town supplying our competitors. It's not nice, but it can't be changed.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling_40_05"); //And since he does not show understanding, we must at least prevent him from further harming us.
};

INSTANCE Info_Mod_Andre_HaradLehrling2 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling2_Condition;
	information	= Info_Mod_Andre_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "If he would forge again for the paladins... would you release him?";
};

FUNC INT Info_Mod_Andre_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling2_15_00"); //If he would forge again for the paladins... would you release him?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_40_01"); //If he promised, you'd have to think about it.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_40_02"); //After all, we urgently need new arms supplies.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling2_15_03"); //I'll see what I can do.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling2_40_04"); //Good luck to you.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "I have to convince Harad to work for the Paladins. Only then will they release him.");
};

INSTANCE Info_Mod_Andre_HaradLehrling3 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling3_Condition;
	information	= Info_Mod_Andre_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I broke away from Harad and now I'm self-employed.";
};

FUNC INT Info_Mod_Andre_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest9))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling3_15_00"); //I broke away from Harad and now I'm self-employed.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling3_15_01"); //Can I help the militia and the paladins?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_40_02"); //That's good news. Yes, as a matter of fact, we have an enormous need right now.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_40_03"); //The swords of the militiamen and paladins could almost all be exchanged for newer ones.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_40_04"); //I hereby commission you to make seven noble swords, five noble longsabers and three ruby blades.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling3_40_05"); //You can bring the guns to me as soon as they're ready.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_SUCCESS);
};

INSTANCE Info_Mod_Andre_HaradLehrling4 (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_HaradLehrling4_Condition;
	information	= Info_Mod_Andre_HaradLehrling4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, the arms delivery.";
};

FUNC INT Info_Mod_Andre_HaradLehrling4_Condition()
{
	var int ES;
	ES = Npc_HasItems(hero, ItMw_Schwert1)+Npc_HasItems(hero, ItMw_Schwert1_Bonus)+Npc_HasItems(hero, ItMw_Schwert1_Stark)+Npc_HasItems(hero, ItMw_Schwert1_StarkBonus);

	if (ES < 7)
	{
		return 0;
	};

	var int EL;
	EL = Npc_HasItems(hero, ItMw_Schwert4)+Npc_HasItems(hero, ItMw_Schwert4_Bonus)+Npc_HasItems(hero, ItMw_Schwert4_Stark)+Npc_HasItems(hero, ItMw_Schwert4_StarkBonus);

	if (ES < 5)
	{
		return 0;
	};

	var int RK;
	RK = Npc_HasItems(hero, ItMw_Rubinklinge)+Npc_HasItems(hero, ItMw_Rubinklinge_Bonus)+Npc_HasItems(hero, ItMw_Rubinklinge_Stark)+Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus);

	if (ES < 3)
	{
		return 0;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling3))
	{
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_Bonus, Npc_HasItems(hero, ItMw_Schwert1_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_Stark));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_Stark, Npc_HasItems(hero, ItMw_Schwert1_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert1) < 7)
		{
			if (Npc_HasItems(hero, ItMw_Schwert1_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert1, Npc_HasItems(hero, ItMw_Schwert1_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert1_StarkBonus, Npc_HasItems(hero, ItMw_Schwert1_StarkBonus));
			};
		};

		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_Bonus, Npc_HasItems(hero, ItMw_Schwert4_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_Stark));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_Stark, Npc_HasItems(hero, ItMw_Schwert4_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Schwert4) < 5)
		{
			if (Npc_HasItems(hero, ItMw_Schwert4_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Schwert4, Npc_HasItems(hero, ItMw_Schwert4_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Schwert4_StarkBonus, Npc_HasItems(hero, ItMw_Schwert4_StarkBonus));
			};
		};

		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_Bonus) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_Bonus));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Bonus, Npc_HasItems(hero, ItMw_Rubinklinge_Bonus));
			};
		};
		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_Stark) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_Stark));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Stark, Npc_HasItems(hero, ItMw_Rubinklinge_Stark));
			};
		};
		if (Npc_HasItems(hero, ItMw_Rubinklinge) < 3)
		{
			if (Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus) > 0)
			{
				CreateInvItems (hero, ItMw_Rubinklinge, Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus));
				Npc_RemoveInvItems (hero, ItMw_Rubinklinge_StarkBonus, Npc_HasItems(hero, ItMw_Rubinklinge_StarkBonus));
			};
		};

		return 1;
	};
};

FUNC VOID Info_Mod_Andre_HaradLehrling4_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling4_15_00"); //Here, the arms delivery.

	B_ShowGivenThings	("7 noble swords, 5 noble long swords and 3 ruby blades given");

	Npc_RemoveInvItems	(hero, ItMw_Schwert1, 7);
	Npc_RemoveInvItems	(hero, ItMw_Schwert4, 5);
	Npc_RemoveInvItems	(hero, ItMw_Rubinklinge, 3);

	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_40_01"); //Clean work. Your skills are impressive.
	AI_Output(hero, self, "Info_Mod_Andre_HaradLehrling4_15_02"); //Is there anything else to do?
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_40_03"); //Not right now. If anything should come up, I'll let you know again.
	AI_Output(self, hero, "Info_Mod_Andre_HaradLehrling4_40_04"); //Thanks again for your cooperation.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Lord Andre instructed me to forge seven noble swords, five noble longsabers and three ruby blades. Get to work!");

	B_GivePlayerXP	(1000);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Andre_Kompass (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kompass_Condition;
	information	= Info_Mod_Andre_Kompass_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found this golden compass.";
};

FUNC INT Info_Mod_Andre_Kompass_Condition()
{
	if (Npc_HasItems(hero, ItMi_GoldKompass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kompass_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kompass_15_00"); //I found this golden compass.

	B_GiveInvItems	(hero, self, ItMi_GoldKompass, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kompass_40_01"); //Let me see.... That's it, the compass of the Esmeralda. Excellent! Hmm, and the thief?
	AI_Output(hero, self, "Info_Mod_Andre_Kompass_15_02"); //He paid for it with his life.
	AI_Output(self, hero, "Info_Mod_Andre_Kompass_40_03"); //This was the punishment for this act. You've earned the bounty and the reward for retrieving the compass.
	AI_Output(self, hero, "Info_Mod_Andre_Kompass_40_04"); //On behalf of the Paladins, I would also like to thank you. You're a role model for every citizen in this town.

	B_GiveInvItems	(self, hero, ItMi_Gold, 600);

	B_GivePlayerXP	(800);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_HEROLD_KOMPASS, LOG_SUCCESS);
};

var int Andre_LastPetzCounter;
var int Andre_LastPetzCrime;

INSTANCE Info_Mod_Andre_PMSchulden (C_INFO)
{
	npc         	= Mod_540_PAL_Andre_NW;
	nr          	= 1;
	condition   	= Info_Mod_Andre_PMSchulden_Condition;
	information 	= Info_Mod_Andre_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Andre_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Andre_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Andre_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Andre_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Andre_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_02"); //Apparently, it's not the latest accusations!

		if (Andre_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Andre_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Andre_LastPetzCounter);
		
			if (diff > 0)
			{
				Andre_Schulden = Andre_Schulden + (diff * 50);
			};
		
			if (Andre_Schulden > 1000)	{	Andre_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Andre_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Andre_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_05"); //Some new things have come up.
		
		if (Andre_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Andre_LastPetzCrime == CRIME_THEFT)
		|| ( (Andre_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_07"); //No one remembers seeing you at a theft.
		};
		
		if (Andre_LastPetzCrime == CRIME_ATTACK)
		|| ( (Andre_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_12"); //Make sure you don't get in trouble again.
	
			Andre_Schulden			= 0;
			Andre_LastPetzCounter 	= 0;
			Andre_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Andre_Schulden);
			AI_Output (self, hero, "Info_Mod_Andre_PMSchulden_40_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
		Info_AddChoice		(Info_Mod_Andre_PMSchulden,"I haven't got enough gold!",Info_Mod_Andre_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Andre_PMSchulden,"How much was that again?",Info_Mod_Andre_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Andre_PMSchulden,"I want to pay the penalty!",Info_Mod_Andre_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Andre_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Andre_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Andre_Schulden);

	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_AddChoice		(Info_Mod_Andre_PMSchulden,"I haven't got enough gold!",Info_Mod_Andre_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Andre_PMSchulden,"How much was that again?",Info_Mod_Andre_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Andre_PMSchulden,"I want to pay the penalty!",Info_Mod_Andre_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Andre_PETZMASTER   (C_INFO)
{
	npc         	= Mod_540_PAL_Andre_NW;
	nr          	= 1;
	condition   	= Info_Mod_Andre_PETZMASTER_Condition;
	information 	= Info_Mod_Andre_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Andre_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Andre_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Andre_PETZMASTER_Info()
{
	Andre_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Andre noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_00"); //You must be the new guy who caused trouble in this town.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_02"); //Murder is a grave offence!

		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Andre_Schulden = Andre_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_04"); //The guards have orders to judge every murderer on the spot.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_05"); //And most citizens won't tolerate a murderer in the city!
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_06"); //I have no interest in putting you on the gallows. We're at war, and we need every man we can get.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_11"); //I will not tolerate such behaviour in the city!
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_12"); //You'll have to pay a fine to make up for your crime!
		
		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_13"); //If you fight with the riffraff in the harbour, that's one thing...
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_14"); //But if you attack the King's citizens or soldiers, I will have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Andre_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_40_20"); //You'll have to pay compensation!
		
		Andre_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_15_21"); //How much?
	
	if (Andre_Schulden > 1000)	{	Andre_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Andre_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_AddChoice		(Info_Mod_Andre_PETZMASTER,"I haven't got enough gold!",Info_Mod_Andre_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Andre_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Andre_PETZMASTER,"I want to pay the penalty!",Info_Mod_Andre_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Andre_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Andre_Schulden);
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayNow_40_01"); //Good! I will see to it that everyone in the city learns about it - so your reputation would be reasonably restored.

	B_GrantAbsolution (LOC_CITY);
	
	Andre_Schulden			= 0;
	Andre_LastPetzCounter 	= 0;
	Andre_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Andre_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Andre_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Andre_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Andre_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayLater_40_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Andre_PETZMASTER_PayLater_40_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Andre_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Andre_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Andre_Kopfgeld (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Kopfgeld_Condition;
	information	= Info_Mod_Andre_Kopfgeld_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to collect bounty for a criminal.";
};

FUNC INT Info_Mod_Andre_Kopfgeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_15_00"); //I want to collect bounty for a criminal.

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Back off.", Info_Mod_Andre_Kopfgeld_Zurueck);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Hi))
	&& (Mod_Tom_Boese	==	TRUE)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Tom's trying to warn a friend about a militia squad.", Info_Mod_Andre_Kopfgeld_Tom);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& (Nagur_KillAkahasch == TRUE)
	&& (!Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Nagur wants the novice Akahash dead.", Info_Mod_Andre_Kopfgeld_Nagur);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Meldor_PaketSicher))
	&& (Mob_HasItems("CHEST_ANDRE_WAREHOUSE_PACKET", ItMi_HerbPaket) == 0)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Meldor has bogweed, which he sells illegally.", Info_Mod_Andre_Kopfgeld_Meldor);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_HabBeweise))
	&& (Npc_HasItems(hero, ItWr_AL_GebrandtDokumente) == 1)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Gerbrandt, Valentino, Cornelius and Fernando are dirty.", Info_Mod_Andre_Kopfgeld_Gerbrandt);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Kardif_KnowsRukhar))
	&& (Npc_HasItems(hero, ItWr_Rukhar_Wacholder) == 1)
	&& (Mod_KnowsRukharWacholder == 5)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Kardif ordered Rukhar to steal a shipment of juniper from Coragon.", Info_Mod_Andre_Kopfgeld_Kardif);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "He's trying to discredit Rangar.", Info_Mod_Andre_Kopfgeld_Den);
	};
	if (Mod_WilfriedsQuest == 7)
	&& (Npc_HasItems(hero, ItWr_WilfriedsListe) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "The citizen Wilfried was a cheater.", Info_Mod_Andre_Kopfgeld_Wilfried);
	};
	if (Nagur_KillAkahasch == 6)
	{
		Info_AddChoice	(Info_Mod_Andre_Kopfgeld, "Cardif helped Nagur and his gang set a trap for me.", Info_Mod_Andre_Kopfgeld_Kardif2);
	};
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Zurueck()
{
	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Tom()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Tom_15_00"); //Tom's trying to warn a friend about a militia squad.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Tom_40_01"); //I'm glad you told me. Here's your reward.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_967_BDT_Tom_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_967_BDT_Tom_NW, "GEFANGEN");

	Mod_Tom_Boese = FALSE;

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "I ratted Tom out to Lord Andre.");
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Nagur()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Nagur_15_00"); //Nagur wants the novice Akahash dead and has sent a contract killer.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Nagur_40_01"); //We will know how to prevent that. Thanks for your help.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_743_NONE_Nagur_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_743_NONE_Nagur_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "I ratted out Nagur to Lord Andre.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Nagur_KillAkahasch = 2;

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Meldor()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Meldor_15_00"); //Meldor has bogweed, which he sells illegally.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Meldor_40_01"); //Do you have any proof?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Meldor_15_02"); //He wanted me to make that package of swampweed disappear.

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Meldor_40_03"); //That's enough. Here's your reward.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	Mod_MeldorVerpfiffen = 1;

	AI_Teleport	(Mod_597_NONE_Meldor_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_597_NONE_Meldor_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_MELDOR_PAKET, "I ratted out Meldor to Lord Andre.");
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Gerbrandt()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Gerbrandt_15_00"); //Gerbrandt, Valentino, Cornelius and Fernando are dirty. I brought proof.

	B_GiveInvItems	(hero, self, ItWr_AL_GebrandtDokumente, 1);
	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Gerbrandt_40_01"); //All right, we'll arrest them immediately.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Gerbrandt_40_02"); //Here's your reward.

	B_GiveInvITems	(self, hero, ItMi_Gold, 300);

	B_GivePlayerXP	(300);

	AI_Teleport	(Mod_576_NONE_Fernando_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_576_NONE_Fernando_NW, "GEFANGEN");

	AI_Teleport	(Mod_578_NONE_Gerbrandt_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_578_NONE_Gerbrandt_NW, "GEFANGEN");

	AI_Teleport	(Mod_754_NONE_Valentino_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Lord Andre has arrested all the members of the gang. Now I should talk to Diego.");

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 2);

	Mod_AL_Gebrandt_Gefangen = TRUE;

	Mod_AlvaresAndre_Taeter = 1;
	
	B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "DIEGO");
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Kardif()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif_15_00"); //Kardif ordered Rukhar to steal a shipment of juniper from Coragon.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif_40_01"); //Do you have proof of this accusation?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif_15_02"); //Here, Rukhar had this letter with him.

	B_GiveInvItems	(hero, self, ItWr_Rukhar_Wacholder, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif_40_03"); //All right, we'll make the arrest. Here's your bounty.

	B_GiveInvITems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	AI_Teleport	(Mod_590_NONE_Kardif_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_590_NONE_Kardif_NW, "GEFANGEN");

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Cardif's in jail now. Now I should go to Coragon and tell him about it.");

	Mod_KnowsRukharWacholder = 6;

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Kardif2()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_00"); //Cardif helped Nagur and his gang set a trap for me.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_01"); //Nagur had already had the novice Akahasch on his conscience and I could only with difficulty resist my life.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_02"); //What?! Where is this criminal now?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_03"); //Nagur's messing with the wrong guy. He won't cause any more trouble.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_04"); //That makes me feel better. I had a hunch it wasn't a good idea to let him go.... after he served his sentence.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Kardif2_15_05"); //Kardif also seems to be working with smugglers who hide their stuff in crates and barrels in the port district.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_06"); //So that's how it is. I'll have my men search all the boxes immediately. And this delinquent cardio will receive his just punishment.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_07"); //Anyway, you helped to give the crime in this town a very serious blow.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_08"); //You're entitled to a greater reward from our city treasury.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Kardif2_40_09"); //Innos will accompany you on your next steps.

	AI_Teleport	(Mod_590_NONE_Kardif_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

	B_StartOtherRoutine	(Mod_590_NONE_Kardif_NW, "GEFANGEN");

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;

	Nagur_KillAkahasch = 7;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Den()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Den_15_00"); //He's trying to discredit Rangar. He seems jealous of him.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_40_01"); //The militia guy?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Den_15_02"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_40_03"); //I can't tolerate such behavior in the militia. I'll throw him out.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Den_40_04"); //Here's a little reward for you.

	B_GiveInvITems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(Mod_969_MIL_Den_NW, "NOMILIZ");

	AI_UnequipArmor	(Mod_969_MIL_Den_NW);

	Mod_DenVerpfiffen = 1;

	Npc_RemoveInvItems	(Mod_969_MIL_Den_NW, ItAr_Mil_L, 1);
	CreateInvItems	(Mod_969_MIL_Den_NW, ItAr_Bau_L, 1);
	AI_EquipBestArmor	(Mod_969_MIL_Den_NW);

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "I ratted that one out to Lord Andre.");
	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Andre_Kopfgeld);

	B_Göttergefallen(1, 1);

	Mod_AlvaresAndre_Taeter = 1;

	CurrentNQ += 1;
};

FUNC VOID Info_Mod_Andre_Kopfgeld_Wilfried()
{
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_00"); //The citizen Wilfried was a cheater.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_40_01"); //Was?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_02"); //I hunted him down. It was self-defense.
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_40_03"); //Do you have proof?
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_04"); //Yes, I do have it.

	Npc_RemoveInvItems	(hero, ItWr_WilfriedsListe, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 500);

	B_ShowGivenThings("List and 500 gold given");

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_40_05"); //(unmotivated) Congratulations. You did a great job.
	AI_Output(hero, self, "Info_Mod_Andre_Kopfgeld_Wilfried_15_06"); //Do I get another reward?
	AI_Output(self, hero, "Info_Mod_Andre_Kopfgeld_Wilfried_40_07"); //Not from me. But ask the victims.

	B_GivePlayerXP	(300);

	Mod_WilfriedsQuest = 8;

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_SUCCESS);

	Mod_AlvaresAndre_Taeter = 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Andre_Pickpocket (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_Pickpocket_Condition;
	information	= Info_Mod_Andre_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Andre_Pickpocket_Condition()
{
	C_Beklauen	(199, ItMi_Gold, 175);
};

FUNC VOID Info_Mod_Andre_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

	Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_BACK, Info_Mod_Andre_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Andre_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Andre_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
};

FUNC VOID Info_Mod_Andre_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Andre_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Andre_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Andre_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Andre_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Andre_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Andre_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Andre_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Andre_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Andre_EXIT (C_INFO)
{
	npc		= Mod_540_PAL_Andre_NW;
	nr		= 1;
	condition	= Info_Mod_Andre_EXIT_Condition;
	information	= Info_Mod_Andre_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Andre_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andre_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
