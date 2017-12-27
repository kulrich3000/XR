INSTANCE Info_Mod_Marduk_Hi (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Hi_Condition;
	information	= Info_Mod_Marduk_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Marduk_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Marduk_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Marduk_Hi_32_01"); //Greetings, stranger. What can I do for you?
};

INSTANCE Info_Mod_Marduk_Aufgabe (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Aufgabe_Condition;
	information	= Info_Mod_Marduk_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a novice.";
};

FUNC INT Info_Mod_Marduk_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Aufgabe_15_00"); //Ich möchte Novize werden und wollte dich daher um eine Aufgabe bitten.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_01"); //So, eine Aufgabe. Ein Diener Innos zu sein, ist aber nicht nur eine Aufgabe, sondern eine Berufung.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_02"); //Wenn du einige Wochen lang fleißig bei den Alltagsarbeiten im Kloster geholfen und eifrig zu Innos gebetet hast, wirst du mich von der Ernsthaftigkeit deines Wunsches überzeugt haben.
	AI_Output(hero, self, "Info_Mod_Marduk_Aufgabe_15_03"); //Aber das dauert ja ewig. Gibt es keinen schnelleren Weg?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_04"); //(spöttisch) So, tatsächlich, es wäre dir zu anstrengend und zeitraubend?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_05"); //Wenn du zu gut für die Aufgaben eines Novizen bist, wirst du wohl eher den Fähigkeiten eines Feuermagiers gerecht, oder?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_06"); //Dann bring mir doch ... eine Feuerballrune. Damit wäre ich von deinem fortgeschrittenen Können überzeugt.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_07"); // (zu sich selbst, kopfschüttelnd) Tse, da hör sich das mal einer an ... so viel Unverfrorenheit.

	Log_CreateTopic	(TOPIC_MOD_MARDUK_FEUERBALL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARDUK_FEUERBALL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "I asked Marduk for a task and he gave me weeks of work and prayer in the monastery. When I asked him whether there was a faster way, he reacted somewhat irritated and told me to get him a fireball run. I don't think I can easily make one myself. Maybe I could get help from someone else...");
};

INSTANCE Info_Mod_Marduk_FeuerballRune (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_FeuerballRune_Condition;
	information	= Info_Mod_Marduk_FeuerballRune_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Marduk_FeuerballRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Aufgabe))
	&& (Npc_HasItems(hero, ItRu_InstantFireball) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_FeuerballRune_Info()
{
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_00"); //What do you want? Shouldn't you rather reap grapes, or kneel before the altar and pray?
	AI_Output(hero, self, "Info_Mod_Marduk_FeuerballRune_15_01"); //No... I wanted to bring you my advanced work instead, master.

	B_GiveInvItems	(hero, self, ItRu_InstantFireball, 1);

	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_02"); //What?! That... that's not possible. This must be a fake.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_03"); //Don't you dare make a fool of me.
	AI_Output(hero, self, "Info_Mod_Marduk_FeuerballRune_15_04"); //No, the rune is handmade by a talented hand... and now in your possession, as required of you.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_05"); //But you could never have done it alone... not even with the help of a novice....
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_06"); //(considered) Wait a minute... (seriously) Hmm, all right, I don't even want to ask who helped you with that.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_07"); //You have indeed fulfilled your task, as I have to admit - albeit reluctantly.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_08"); //And since you seem to have managed to convince one of the other magicians of you completely, I will be all the less reluctant to accept you.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_09"); //So go with Inno's blessing and my consent.

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_MARDUK_FEUERBALL, "I helped Marduk.", "I brought Marduk the rune.");

	B_SetTopicStatus	(TOPIC_MOD_MARDUk_FEUERBALL, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_Göttergefallen(1, 1);

	B_StartOtherRoutine	(Mod_534_KDF_Milten_NW, "MARDUK");
};

INSTANCE Info_Mod_Marduk_Nachtschicht (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Nachtschicht_Condition;
	information	= Info_Mod_Marduk_Nachtschicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Marduk_Nachtschicht_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Mod_Gilde == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Nachtschicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_00"); //So now you're actually a novice... and so shall you fulfill the tasks of a novice.
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht_15_01"); //What is there to do?
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_02"); //This year we have a particularly good grape harvest... our novices can hardly keep up with pressing all the grapes.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_03"); //So when the other novices have gone to sleep at night, you can continue stomping on them for at least two hours.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_04"); //Your arms are rested and strong, so that should be enough to catch up...
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht_15_05"); //Is there anything else?
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_06"); //Yeah. As you may have noticed, disturbing things have been going on outside the monastery walls lately.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_07"); //We do not know the exact originators, but these are undoubtedly sinister, demonic powers, which are especially strong at night when Innos' rays do not enlighten the world.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_08"); //So I would like you to pray at least for one week daily at midnight at our Innoshrine.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_09"); //May his presence protect us from evil and distract us from the monastery even when his star is not in the sky.

	Log_CreateTopic	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARDUK_NACHTSCHICHT, "Marduk told me to stomp on grapes for two hours when the other novices went to bed. In addition, I am to pray for one week at midnight in the monastery of Innos.");
};

INSTANCE Info_Mod_Marduk_Nachtschicht2 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Nachtschicht2_Condition;
	information	= Info_Mod_Marduk_Nachtschicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I did what you told me to do.";
};

FUNC INT Info_Mod_Marduk_Nachtschicht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Nachtschicht))
	&& (Mod_Marduk_Gestampft == TRUE)
	&& (Mod_Marduk_Gebetet == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Nachtschicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht2_15_00"); //I did what you told me to do.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht2_32_01"); //That's what you did good for, Novice. You have shown perseverance to get your rune back as a reward. Use them according to Innos' will.

	B_GiveInvItems	(self, hero, ItRu_InstantFireball, 1);

	B_SetTopicStatus	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Marduk_Innosklinge (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Innosklinge_Condition;
	information	= Info_Mod_Marduk_Innosklinge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Reverend Magician, I would like to dedicate my sword.";
};

FUNC INT Info_Mod_Marduk_Innosklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis3))
	&& (Mod_AndreSchwert_Test == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Innosklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Innosklinge_15_00"); //Reverend Magician, I would like to dedicate my sword.

	if (Mod_Gilde == 2)
	{
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_01"); //The holy consecration alone is open to a paladin and quarrels Innos.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_02"); //And I don't see you being one.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_03"); //To receive the consecration, you must pass the tests of fire.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_04"); //Go to the basement of the monastery. You can reach him through the library.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_05"); //There you will find a teleport that will take you to the chambers of examinations.

		B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "To consecrate the sword, I must pass the tests of fire. To do this I have to go to the cellar of the monastery, which I reach via the library.");

		Mod_AndreSchwert_Test = 1;
	};
};

INSTANCE Info_Mod_Marduk_Kreis1	(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis1_Condition;
	information	= Info_Mod_Marduk_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the first Circle of Magic.";
};
FUNC INT Info_Mod_Marduk_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Hi))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis1_15_00"); //Teach me the first circle of magic.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis1_32_01"); //The first circle allows you to use the runes you have created.
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis1_32_02"); //You can now learn the spell formulas to create your own runes.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Marduk_Kreis2		(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis2_Condition;
	information	= Info_Mod_Marduk_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the second Circle of Magic.";
};
FUNC INT Info_Mod_Marduk_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis2_15_00"); //Teach me the second circle of magic.
	
	if (Kapitel >= 1)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis2_32_01"); //Step into the second circle and learn to cast even more powerful spells.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis2_32_02"); //The time has not yet come.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Marduk_Kreis3		(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis3_Condition;
	information	= Info_Mod_Marduk_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the third Circle of Magic.";
};
FUNC INT Info_Mod_Marduk_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis3_15_00"); //Teach me the third circle of magic.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis3_32_01"); //Yes, the time has come. Enter the third circle of magic. New spells await you.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis3_32_02"); //It's not yet time for you to learn the third circle.
	};
};		

INSTANCE Info_Mod_Marduk_Kreis4 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis4_Condition;
	information	= Info_Mod_Marduk_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fourth Circle of Magic.";
};

FUNC INT Info_Mod_Marduk_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis4_15_00"); //I want to learn the fourth circle of magic.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis4_32_01"); //Good. All characters are fulfilled. Now step into the fourth circle so that you have the power of the new spells.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis4_32_02"); //It's not yet.
	};
};

INSTANCE Info_Mod_Marduk_Kreis5 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis5_Condition;
	information	= Info_Mod_Marduk_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fifth Circle of Magic.";
};

FUNC INT Info_Mod_Marduk_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis5_15_00"); //I want to learn the fifth circle of magic.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis5_32_01"); //Then join the fifth circle of magic. You will now master more powerful spells than ever before.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis5_32_02"); //The time has not yet come.
	};
};

INSTANCE Info_Mod_Marduk_Kreis6	(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis6_Condition;
	information	= Info_Mod_Marduk_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the last Circle of Magic.";
};

FUNC INT Info_Mod_Marduk_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis6_15_00"); //Teach me the last circle of magic.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_01"); //A lot of time has passed since you made your covenant with Innos. Much has happened and we find no peace.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_02"); //You are the chosen Innos'. And as such, you will need all the strength to survive your battles.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_03"); //I dedicate you now, elect. You're entering the sixth circle.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_04"); //You can now learn the spells of the last circle from Hyglas if you wish.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_05"); //It's not the time yet. If you have walked a little further along the path that Innos shows you, then I will instruct you.
	};
};

INSTANCE Info_Mod_Marduk_Pickpocket (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Pickpocket_Condition;
	information	= Info_Mod_Marduk_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Marduk_Pickpocket_Condition()
{
	C_Beklauen	(133, ItMi_Gold, 61);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

	Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_BACK, Info_Mod_Marduk_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Marduk_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Marduk_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Marduk_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Marduk_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Marduk_EXIT (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_EXIT_Condition;
	information	= Info_Mod_Marduk_EXIt_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Marduk_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Marduk_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
