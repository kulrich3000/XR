INSTANCE Info_Mod_Milten_Hi (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Hi_Condition;
	information	= Info_Mod_Milten_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_00"); //(amazed) YOU?! Wait a minute.... Now you owe me some answers!
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_01"); //I know. Yes, I killed the sleeper, and yes, I died doing it. Actually. But now I'm standing here.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_02"); //I see the facts before me - but how the fuck?!
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_03"); //Xardas.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_04"); //(laughs) All right, then I know. It's definitely good to know you're here.
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_05"); //You made yourself amazingly quick. Have you now been officially accepted into the Fire Magic Community?
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_06"); //Yes, but it took a lot of convincing. Well, I had no advocates, no decent training. But in doing magic, I'm beating them all here, they quickly understood that.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_07"); //So I was able to save myself the novice's robe right away.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_28_08"); //And you? What are your plans?
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
	
	Info_AddChoice(Info_Mod_Milten_Hi, "I'm interested in fire magicians.", Info_Mod_Milten_Hi_B);
	Info_AddChoice(Info_Mod_Milten_Hi, "I have to find out for myself.", Info_Mod_Milten_Hi_A);
};

FUNC VOID Info_Mod_Milten_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Milten_Hi_B_15_00"); //I'm interested in fire magicians.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_28_01"); //Congratulations, then you've come to the monastery! Of course, I'd appreciate it if you joined us.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_28_02"); //What about your skills?
	AI_Output(hero, self, "Info_Mod_Milten_Hi_B_15_03"); //Bad. I have to learn everything from scratch.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_28_04"); //Oh, dear, then there's no way for you to pass the novitiate. But don't worry, it will pass.
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
};

FUNC VOID Info_Mod_Milten_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Milten_Hi_A_15_00"); //I have to find out for myself.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_A_28_01"); //No wonder about what you've been through. Take a little time.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_A_28_02"); //Maybe you'll even feel like joining the monastery in the end. I'd be glad to.
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
};

INSTANCE Info_Mod_Milten_Daemonisch (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Daemonisch_Condition;
	information	= Info_Mod_Milten_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_00"); //Hello, I hope I haven't exactly interrupted you....
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_01"); //No, no, they were just finishing up.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_02"); //Seems to be a lot of secrecy in the game again, just as you have set yourself apart from the others.... well, anyway, I'm from Lester.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_03"); //Lester? What's the matter with him?
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_04"); //He wants me to tell you that he's modifying some of the leading roles for you.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_05"); //They could help you find the gods' weapons.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_06"); //Okay, thank you. I'll stop by his place.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_07"); //Yeah, do that. I will, however, take care of the incident with the late novice.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_08"); //Deceased novice?!
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_09"); //Dyrian, he's been dead all of a sudden this morning. Babo saw it happen.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_28_10"); //Must have taken the poor man pretty much with him, as he has barely gotten a word out of him since.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	AI_Teleport	(self, "ALTAR");

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Milten reported that Dyrian was suddenly deceased. Eyewitness Babo seems pretty upset.");

	B_StartOtherRoutine	(Mod_793_BAU_Pepe_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_566_NONE_Brian_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_981_RIT_Tengron_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_914_NOV_Babo_NW, "DAEMONISCH2");
	B_StartOtherRoutine	(Mod_538_RDW_Diego_NW, "DAEMONISCH");

	B_KillNpc	(Mod_1205_SLD_Soeldner_NW);

	B_RemoveNpc	(Mod_777_NONE_Rukhar_NW);
	B_RemoveNpc	(Mod_915_NOV_Dyrian_NW);

	Wld_InsertNpc	(Zombie_Paladin_01, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Zombie_Paladin_02, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13000_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13001_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13002_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13003_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13004_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13005_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13006_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13007_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13008_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13009_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13010_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13011_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13012_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13013_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13014_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13015_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13016_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
};

INSTANCE Info_Mod_Milten_Daemonisch2 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Daemonisch2_Condition;
	information	= Info_Mod_Milten_Daemonisch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to know something.";
};

FUNC INT Info_Mod_Milten_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulthar_Daemonisch))
	&& (hero.guild != GIL_VLK)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Daemonisch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_00"); //I'd like to know something.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_28_01"); //Yeah, what's it about?
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_02"); //What does monastery wine consist of?
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_28_03"); //Hmm, I don't know if I should tell you that. Actually, this knowledge is intended only for Fire Magicians.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_04"); //It may prove important.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_28_05"); //All right, all right. So, take five bottles of ordinary wine, go with it to a shrine of Innos, consecrate it and distribute a potion to heal obsession with it. That's about it, too.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "For the monastery wine, five normal bottles of wine are taken, distributed at an Innoshrine a bottle of Healing of the obsession on it and blessed.");
};

INSTANCE Info_Mod_Milten_Irdorath (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath_Condition;
	information	= Info_Mod_Milten_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "As you probably know, I have to go to the island.";
};

FUNC INT Info_Mod_Milten_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath_15_00"); //As you probably know, I have to go to the island.
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath_15_01"); //Can you think of anyone who could go with me?
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_28_02"); //Hmm, among the fire magicians of the monastery everyone has his assigned tasks.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_28_03"); //It won't be easy to find someone who doesn't want to be left out....
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_28_04"); //Among the paladins, you will most likely be able to count on Tengron as your companion, who has already shown conscientiousness in the threat of the soul tormentor and is destined to be released for the mission?

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Milten said that maybe Paladin Tengron could still be won over for the trip.");
};

INSTANCE Info_Mod_Milten_Irdorath2 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath2_Condition;
	information	= Info_Mod_Milten_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And what about you?";
};

FUNC INT Info_Mod_Milten_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath2_15_00"); //And what about you?
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath2_28_01"); //I am not bound to the monastery. As you ask me, it will be a pleasure to accompany you on this adventure.
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath2_15_02"); //Then I welcome you aboard. I'll see you at the harbour.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath2_28_03"); //Excellent. See you later.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Great, with Milten I would have a magician of fire on board.");

	B_GivePlayerXP	(150);

	Mod_MiltenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Milten_Irdorath3 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath3_Condition;
	information	= Info_Mod_Milten_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Milten_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_MiltenDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	&& ((Mod_VatrasDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MyxirDabei > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath3_28_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_MiltenDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_Irdorath4 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath4_Condition;
	information	= Info_Mod_Milten_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Milten_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_MiltenDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath4_28_01"); //Very well, I'll be back at the harbour.

	Mod_MiltenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Milten_Aufgabe (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Aufgabe_Condition;
	information	= Info_Mod_Milten_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have a job for me?";
};

FUNC INT Info_Mod_Milten_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_15_00"); //Do you have a job for me? Pyrokar says I have to do something for every fire magician to get in.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_28_01"); //Hmmm...
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_28_02"); //There's something you could help me with. That's pretty dangerous, though.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);

	Info_AddChoice	(Info_Mod_Milten_Aufgabe, "How can I help you?", Info_Mod_Milten_Aufgabe_Wie);
};

FUNC VOID Info_Mod_Milten_Aufgabe_Wie()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Wie_15_00"); //How can I help you?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Wie_28_01"); //My teacher Neoras asked me to brew a potion.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Wie_28_02"); //But you need a very rare plant and it is not easy to get one.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);
	
	Info_AddChoice	(Info_Mod_Milten_Aufgabe, "What kind of plant is that?", Info_Mod_Milten_Aufgabe_Pflanze);
};

FUNC VOID Info_Mod_Milten_Aufgabe_Pflanze()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_00"); //What kind of plant is that?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_28_01"); //The plant is called Sonnenaloe and grows only near a Black Troll.
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_02"); //A BLACK TROLL???
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_28_03"); //Yeah, that's why I couldn't finish the potion yet. Alone, it's impossible for a magician like me to kill the troll.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_28_04"); //I could help you with my magic, and then you can grab the plant.
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_05"); //And where is this troll?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_28_06"); //He lives in a cave just north of the island. I can save us a bit of the journey by teleporting us out of the monastery.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_28_07"); //We have to walk the rest of the way. Let me know when it starts.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);

	Log_CreateTopic	(TOPIC_MOD_MILTEN_TROLL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILTEN_TROLL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILTEN_TROLL, "Milten wants me to go with him to a black troll to get a plant.");
};

INSTANCE Info_Mod_Milten_Teleport_Hin (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Teleport_Hin_Condition;
	information	= Info_Mod_Milten_Teleport_Hin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's go!";
};

FUNC INT Info_Mod_Milten_Teleport_Hin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Milten_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Teleport_Hin_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "NW_TROLLAREA_PATH_47B");
	AI_Teleport	(hero, "NW_TROLLAREA_PATH_47A");

	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Teleport_RING",  self  , self	, 0, 0, 0, FALSE );
	
	B_StartOtherRoutine	(self, "GUIDETOTROLLPARTONE");

	AI_Teleport	(self, "NW_TROLLAREA_PATH_47B");
	AI_Teleport	(hero, "NW_TROLLAREA_PATH_47A");
};

INSTANCE Info_Mod_Milten_Teleport_Da (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Teleport_Da_Condition;
	information	= Info_Mod_Milten_Teleport_Da_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Teleport_Da_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Teleport_Hin))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_47B"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Teleport_Da_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Teleport_Da_28_00"); //From here we have to walk, follow me.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTTWO");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Milten_Station (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Station_Condition;
	information	= Info_Mod_Milten_Station_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Station_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Teleport_Da))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_41"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Station_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Station_28_00"); //If you leave the path here, you will come to the Water Magician's excavation site. But you can take a look at them later.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTTHREE");
};

INSTANCE Info_Mod_Milten_AnSee (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_AnSee_Condition;
	information	= Info_Mod_Milten_AnSee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_AnSee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Station))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_13"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_AnSee_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_AnSee_28_00"); //We're almost there. On the other side of this lake is the cave.
	AI_Output(hero, self, "Info_Mod_Milten_AnSee_15_01"); //Let's keep moving.
	AI_Output(self, hero, "Info_Mod_Milten_AnSee_28_02"); //Okay, follow me.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTFOUR");
};

INSTANCE Info_Mod_Milten_BeiTroll (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_BeiTroll_Condition;
	information	= Info_Mod_Milten_BeiTroll_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_BeiTroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_AnSee))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_81"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_BeiTroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_BeiTroll_28_00"); //Here we are. I have a potion for you that will make you faster.
	AI_Output(self, hero, "Info_Mod_Milten_BeiTroll_28_01"); //All you have to do is get the plant and come to me. I'll teleport us back to the monastery.
	
	CreateInvItems	(self, ItPo_Speed, 1);

	B_GiveInvItems	(self, hero, ItPo_Speed, 1);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "STAYATTROLL");
};

INSTANCE Info_Mod_Milten_HabPflanze (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabPflanze_Condition;
	information	= Info_Mod_Milten_HabPflanze_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_HabPflanze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_BeiTroll))
	&& (Npc_HasItems(hero, ItPl_Sagitta_Herb_MIS) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabPflanze_Info()
{
	AI_StopProcessInfos	(self);
	
	AI_Teleport	(self, "NW_MONASTERY_ALCHEMY_01");
	AI_Teleport	(hero, "NW_MONASTERY_ALCHEMY_01");

	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Teleport_RING",  self  , self	, 0, 0, 0, FALSE );
	
	B_StartOtherRoutine	(self, "WAITFORPLAYER");
	
	AI_Teleport	(self, "NW_MONASTERY_ALCHEMY_01");
	AI_Teleport	(hero, "NW_MONASTERY_ALCHEMY_01");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_Fertig (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Fertig_Condition;
	information	= Info_Mod_Milten_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_HabPflanze))
	&& (Npc_HasItems(hero, ItPl_Sagitta_Herb_MIS) == 1)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Fertig_28_00"); //Back here at last.
	AI_Output(hero, self, "Info_Mod_Milten_Fertig_15_01"); //This is the Sonnenaloe.

	B_GiveInvItems	(hero, self, ItPl_Sagitta_Herb_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Milten_Fertig_28_02"); //Thanks. Now I can finally finish the potion for Master Neoras.
	AI_Output(self, hero, "Info_Mod_Milten_Fertig_28_03"); //Best you give him the potion, then you can convince him. Come back tomorrow and I'll be ready.

	MiltenBrautTrank = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_NEORAS_TRANK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NEORAS_TRANK, LOG_RUNNING);
	B_LogEntry_NMore	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_NEORAS_TRANK,TOPIC_MOD_MILTEN_TROLL, "Milten will vote for me.", "With the sun-aloe I brought Milten, he's supposed to brew a potion for Neoras. He wants to give it to me so I can give it to Neorah.", "I got Milten the plant.");

	B_SetTopicStatus	(TOPIC_MOD_MILTEN_TROLL, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_HabTrank (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabTrank_Condition;
	information	= Info_Mod_Milten_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the potion ready yet?";
};

FUNC INT Info_Mod_Milten_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& (Wld_GetDay() > MiltenBrautTrank)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HabTrank_15_00"); //Is the potion ready yet?
	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_28_01"); //Yeah, I just finished.
	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_28_02"); //Here he is, sir.

	B_GiveInvItems	(self, hero, NeorasTrankVonMilten, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_28_03"); //Take him to Neoras, he'll be convinced of you.
	
	B_LogEntry	(TOPIC_MOD_NEORAS_TRANK, "Milten gave me the potion.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_MardukAufgabe (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MardukAufgabe_Condition;
	information	= Info_Mod_Milten_MardukAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Master Marduk told me to get such a rune on him.";
};

FUNC INT Info_Mod_Milten_MardukAufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Marduk_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MardukAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_MardukAufgabe_15_00"); //Master Marduk told me to get such a rune on him.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_28_01"); //Well, you must have made a nice impression on him.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_28_02"); //He should be as aware as I am of the fact that you will never be able to do it on your own, without the support of a magician?
	AI_Output(hero, self, "Info_Mod_Milten_MardukAufgabe_15_03"); //That's why I'm asking you.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_28_04"); //All right, I'll help you with that... but this is between us, all right?
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_28_05"); //I need a rune stone, bad luck and a fireball spell roll.

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Milten has agreed to help me build the rune. It requires the following ingredients: a rune stone, pitch and a fireball spell roll.");
};

INSTANCE Info_Mod_Milten_HabZutatenRune (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabZutatenRune_Condition;
	information	= Info_Mod_Milten_HabZutatenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the stuff.";
};

FUNC INT Info_Mod_Milten_HabZutatenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_MardukAufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Npc_HasItems(hero, ItMi_RuneBlank) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	&& (Npc_HasItems(hero, ItSc_InstantFireball) >= 1)
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabZutatenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_00"); //I got the stuff.
	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_28_01"); //Let's see now. First, a rune stone.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_02"); //Here he is, sir.

	B_GiveInvItems	(hero, self, ItMi_RuneBlank, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_28_03"); //Bad luck, then.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_04"); //There you go, please.

	B_GiveInvItems	(hero, self, ItMi_Pitch, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_28_05"); //And a fireball role.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_06"); //I did, too.

	B_GiveInvItems	(hero, self, ItSc_InstantFireball, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_28_07"); //Good, that's all. Come back tomorrow and the rune should be ready.

	MiltenBautRune	=	Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "I brought Milten all the ingredients. He said to come back tomorrow.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_RuneFertig (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_RuneFertig_Condition;
	information	= Info_Mod_Milten_RuneFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the rune ready?";
};

FUNC INT Info_Mod_Milten_RuneFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_HabZutatenRune))
	&& (Wld_GetDay() > MiltenBautRune)
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_RuneFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_RuneFertig_15_00"); //Is the rune ready?
	AI_Output(self, hero, "Info_Mod_Milten_RuneFertig_28_01"); //Here she is.

	B_GiveInvItems	(self, hero, ItRu_InstantFireball, 1);

	AI_Output(hero, self, "Info_Mod_Milten_RuneFertig_15_02"); //Thank you very much.
	AI_Output(self, hero, "Info_Mod_Milten_RuneFertig_28_03"); //But as I said, this is between us. (grins) I'm just too curious to see Marduk's face when you bring him the rune.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Milten gave me the rune. I just need to take her to Marduk's now.");
};

INSTANCE Info_Mod_Milten_MardukRune (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MardukRune_Condition;
	information	= Info_Mod_Milten_MardukRune_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_MardukRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MardukRune_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_28_00"); //Marduk's reaction has exceeded my expectations.
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_01"); //Milten?
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_28_02"); //I told you, I'm not missing this. It was a bit like olden times when Saturas called red, if you understand....
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_03"); //Hmm... angry magician.... Heap of ore?
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_28_04"); //Exactly.
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_05"); //And I was happy to have you back.
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_28_06"); //Anytime again. I'm sure it wasn't our last trick. Until then.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_Treffen (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Treffen_Condition;
	information	= Info_Mod_Milten_Treffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gorn sent me.";
};

FUNC INT Info_Mod_Milten_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_AtCastlemine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Hi))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Treffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Treffen_15_00"); //Gorn sent me. You want me to tell you that you're going to the Dead Harpie tavern.
	AI_Output(self, hero, "Info_Mod_Milten_Treffen_28_01"); //All right, I'll be on my way right away.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TREFFEN, "Milten immediately sets off for the meeting.");

	Npc_ExchangeRoutine	(self, "TREFFEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW,	"TREFFEN");
};

INSTANCE Info_Mod_Milten_HaveYouCrawlerEggs (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HaveYouCrawlerEggs_Condition;
	information	= Info_Mod_Milten_HaveYouCrawlerEggs_Info;
	permanent	= 0;
	important	= 0;
	description	= "You know where I can get minecrawler eggs from?";
};

FUNC INT Info_Mod_Milten_HaveYouCrawlerEggs_Condition()
{
	if (Mod_MinecrawlerEi >= 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HaveYouCrawlerEggs_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HaveYouCrawlerEggs_15_00"); //You know where I can get minecrawler eggs from?
	AI_Output(self, hero, "Info_Mod_Milten_HaveYouCrawlerEggs_28_01"); //Gorn brought me some from the open mine back then. Nice specimens.
	AI_Output(self, hero, "Info_Mod_Milten_HaveYouCrawlerEggs_28_02"); //I didn't know there was a queen in the free mine.
	
	Mod_MinecrawlerEi = 2;
};

INSTANCE Info_Mod_Milten_MinecrawlerEi (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MinecrawlerEi_Condition;
	information	= Info_Mod_Milten_MinecrawlerEi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still have Gorn's minecrawler eggs?";
};

FUNC INT Info_Mod_Milten_MinecrawlerEi_Condition()
{
	if (Mod_MinecrawlerEi	==	2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MinecrawlerEi_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_MinecrawlerEi_15_00"); //Do you still have Gorn's minecrawler eggs?
	AI_Output(self, hero, "Info_Mod_Milten_MinecrawlerEi_28_01"); //I've used one, but you can have the other.
	
	CreateInvItems	(self, ItAt_Crawlerqueen, 1);
	B_GiveInvItems	(self, hero, ItAt_Crawlerqueen, 1);

	Mod_MinecrawlerEi	=	3;
};

INSTANCE Info_Mod_Milten_Drachen (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Drachen_Condition;
	information	= Info_Mod_Milten_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Drachen_Condition()
{
	if (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_28_00"); //Hey, I might have something for you.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_28_01"); //After the attack of these fire lizards, I researched in ancient writings.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_28_02"); //I came across this ominous recipe in an ancient, heavily weathered book.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_28_03"); //Maybe you can do something with it.

	B_GiveInvItems	(self, hero, ItWr_DrachensudManaverbrennung, 1);
};

INSTANCE Info_Mod_Milten_Leichengase (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Leichengase_Condition;
	information	= Info_Mod_Milten_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Milten, I need your help!";
};

FUNC INT Info_Mod_Milten_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_00"); //Milten, I need your help!
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_28_01"); //Sure, what's it about?
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_02"); //I need to get a troll to eat this bag of herbs in here.
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_28_03"); //What?! Well, you'll have your reasons.
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_04"); //Can you help me or not?
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_28_05"); //I've got an idea.
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_28_06"); //Go to Hyglas, he's in charge of the spell rolls here at the monastery. Ask him for help.
	
	if (hero.guild != GIL_VLK) {
		AI_Output(self, hero, "Info_Mod_Milten_Leichengase_28_07"); //Here's the key to the library.
		B_GiveInvItems	(self, hero, ItKe_KlosterBibliothek, 1);
	};

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Milten referred me to Hyglas.");
};

INSTANCE Info_Mod_Milten_Pickpocket (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Pickpocket_Condition;
	information	= Info_Mod_Milten_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Milten_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 36);
};

FUNC VOID Info_Mod_Milten_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

	Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_BACK, Info_Mod_Milten_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Milten_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Milten_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
};

FUNC VOID Info_Mod_Milten_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Milten_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Milten_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Milten_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Milten_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Milten_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Milten_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Milten_EXIT (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_EXIT_Condition;
	information	= Info_Mod_Milten_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Milten_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
