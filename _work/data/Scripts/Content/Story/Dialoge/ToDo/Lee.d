INSTANCE Info_Mod_Lee_Hi (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Hi_Condition;
	information	= Info_Mod_Lee_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Hi_04_00"); //You again? After your act, the Water Magicians were pretty pissed off. You're lucky they're not in the camp right now.
};

INSTANCE Info_Mod_Lee_AL (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_AL_Condition;
	information	= Info_Mod_Lee_AL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_AL_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_AL_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_AL_04_00"); //I can't believe it... overrun by orcs. I don't know if I'm supposed to laugh or cry....
};

INSTANCE Info_Mod_Lee_WieStehts (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_WieStehts_Condition;
	information	= Info_Mod_Lee_WieStehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "What does it look like here in the warehouse (.... )";
};

FUNC INT Info_Mod_Lee_WieStehts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_WieStehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_00"); //What is the situation here in the camp after the fall of the barrier?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_01"); //Oh, it hasn't exactly gotten any easier. When the barrier was still in place, we all had a common goal: your fall and our escape.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_02"); //Now that it no longer stands, only a hard regiment prevents total anarchy from erupting. Sylvio is a great help to me, who knows how to deal with thugs and thieves.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_03"); //Yeah, and why don't you all just run away from the Minental, as originally planned?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_04"); //And where to, please? The paladins who settled in Khorinis, held in their arms and then the gallows?
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_05"); //Well...
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_06"); //No, if we do not want to fall victim to the jurisdiction of the king and his paladins, we must be a little more proactive.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_07"); //Some of our mercenaries have already sneaked over the pass and settled in Khorinis on the big farm to explore the situation, as you probably already know.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_08"); //Why did you sneak up on me? And why so few?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_09"); //Have you ever noticed the strange birds on the pass? The royalists call them themselves. The king seems to have sent them there, but don't ask me what they're up to.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_10"); //Well, anyway, these are battle-proven guys who could ruin our tour if a whole bunch of us wanted to cross the pass.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_11"); //And then, well, there's the old quarrel with the Old Camp. They have lost their source of income, their mine, but now they are like a whore with King and everyone else who has money and ore.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_12"); //And you never know what they're going to do next. That's why I don't want to pull too many of my men out of the camp's protection, but rather plan and prepare everything well.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_13"); //And what do these preparations look like?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_14"); //We train our people and prepare them for the final blow against the king. Otherwise, we'll never really be able to live in peace.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_15"); //Against the king? But he's on the mainland.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_16"); //Yes, on the mainland and weakened by the orcs. At an auspicious time we break out of the Mine Valley, seize a ship and pay a visit to the king.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_17"); //And as the land is meanwhile overrun with orcs, we train many of our men especially in the fight against orcs, train them to be orc hunters, so that they can show the hairy green skins that we can't fool around with.

	if (hero.guild == GIL_MIL) {
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_18"); //But we only admit the best to the ranks of the Orc hunters. I'd like to have you with me, too, because you've shown me that you have fighting power and brains before.
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_19"); //Sylvio leads the Orkjäger and decides who is allowed to participate. Look where you can make yourself useful in the camp.

		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_HAGEN_ASYLANTEN, "Sylvio decides who gets in on the Orc hunters.", "Lee plans to break out of the Minental with his followers and reach the mainland, where they want to overthrow the king. The outbreak is already being prepared.");
	} else {
		B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Lee plans to break out of the Minental with his followers and reach the mainland, where they want to overthrow the king. The outbreak is already being prepared.");
	};
};

INSTANCE Info_Mod_Lee_Aufgabe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Aufgabe_Condition;
	information	= Info_Mod_Lee_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have an assignment for me?";
};

FUNC INT Info_Mod_Lee_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Aufgabe_15_00"); //Do you have a job for me?
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_01"); //Yeah, there's actually something you could do. Lastly, an informant told me that something seems to be brewing in the old camp. Go and spy on something.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_02"); //Talk to as many shadows as possible, because you can always get the best information from them under the hand.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_03"); //Mordrag will give you a shadow armor, which he still has from his stay in the old camp before the fall of the barrier. You'll find him in the pub.

	Log_CreateTopic	(TOPIC_MOD_SLD_SPY, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee gave me the assignment to spy at Old Camp. I'm supposed to get a shadow armor from Mordrag and talk to as many shadows as possible.");

	B_RemoveNpc	(Mod_1108_GRD_Bullit_MT);
};

INSTANCE Info_Mod_Lee_GotoSylvio (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GotoSylvio_Condition;
	information	= Info_Mod_Lee_GotoSylvio_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_GotoSylvio_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GotoSylvio_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_GotoSylvio_04_00"); //Oh, I almost forgot. Sylvio wanted to talk to the person I assigned this assignment to. So it's best to see him first.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sylvio wanted to see me before.");
};

INSTANCE Info_Mod_Lee_Infos (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Infos_Condition;
	information	= Info_Mod_Lee_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have important information (.... )";
};

FUNC INT Info_Mod_Lee_Infos_Condition()
{
	if (Mod_SLD_Spy == 1)
	&& (Npc_HasItems(hero, ItAr_Stt_Mordrag) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_00"); //I have gained important information from my conversations with some of the shadows. Apparently, a guardsman fell victim to murder.
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_01"); //Another guardsman wants one of our men to be the culprit and the old camp plans to attack us at dawn in the next few days.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_02"); //(shake) What?! I don't think the old camp's gonna get a full neck full.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_03"); //(more contemplative) They can't cross the mountains anymore, we've already made sure of that. Most likely they will try to do it with a frontal attack, which should cause us some losses.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_04"); //I'll keep my men in position by the main entrance at dawn the next few days.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_05"); //(to the hero) If you were there as well, it would give you some plus points. Although, of course, you've already done us a great service.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee wants to intercept the guards' attack at dawn at the main entrance. If I were with you, I could prove myself a fighter.");

	Mod_SLD_Spy = 2;

	Mod_SLD_KampfDay = Wld_GetDay();

	B_GivePlayerXP	(250);

	Npc_RemoveInvItems	(hero, ItAr_Stt_Mordrag, 1);

	B_StartOtherRoutine	(self, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "GARDISTEN");
};

INSTANCE Info_Mod_Lee_SchlachtVerpasst (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtVerpasst_Condition;
	information	= Info_Mod_Lee_SchlachtVerpasst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtVerpasst_Condition()
{
	if (Mod_SLD_Spy == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtVerpasst_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_00"); //Too bad you weren't at the fight. We gave the guards a good rubdown. A dying guardsman gave me some more information about the murder.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_01"); //Time and appearance fit only on Sentenza as murderer. He'll get something to hear. Do business with those from the old camp, so really...
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_02"); //Here's your pay.

	B_ShowGivenThings	("200 gold and 8 ore obtained");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 8);

	B_GivePlayerXP	(200);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_SchlachtDa (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDa_Condition;
	information	= Info_Mod_Lee_SchlachtDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDa_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Wld_GetDay() > Mod_SLD_KampfDay)
	&& (Wld_IsTime(05,00,08,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDa_04_00"); //Glad you could make it. Here they come, too.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7221_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7222_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7223_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7224_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7225_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7226_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7227_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7228_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7229_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7230_GRD_Gardist_MT, "OW_PATH_066");
};

INSTANCE Info_Mod_Lee_SchlachtDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDabei_Condition;
	information	= Info_Mod_Lee_SchlachtDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDabei_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtDa))
	&& (NpC_IsDead(Mod_7221_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7222_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7223_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7224_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7225_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7226_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7227_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7228_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7229_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7230_GRD_Gardist_MT))
	&& (Mod_NL_SchlachtDa == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_00"); //Excellent. We would have crushed them all. The old camp will need something until it recovers from the loss.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_01"); //A dying guardsman gave me some more information about the murder. Time and appearance fit only on Sentenza as murderer.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_02"); //He'll get something to hear. Do business with those from the old camp, so really...
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_03"); //Ah, here you have gold and ore as your well-deserved pay.

	B_ShowGivenThings	("300 gold and 10 ore preserved");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	B_GivePlayerXP	(400);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_Kagan (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Kagan_Condition;
	information	= Info_Mod_Lee_Kagan_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Kagan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kagan_Isidro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Kagan_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_00"); //I have heard that by your influence the two swamp scribbles have left the camp.
	AI_Output(hero, self, "Info_Mod_Lee_Kagan_15_01"); //Well...
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_02"); //You did really well. Now the men in the camp are even more rarely seduced to the pleasure of bogweed.
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_03"); //Here's some ore and gold as a reward.

	B_ShowGivenThings	("200 gold and 6 ore obtained");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 6);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lee_OrkjaegerDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerDabei_Condition;
	information	= Info_Mod_Lee_OrkjaegerDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerDabei_Condition()
{
	if (Mod_Gilde == 19)
	&& (Mod_SLD_Orkjaeger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerDabei_04_00"); //Congratulations. Heard you were with the Orc hunters. I'd have been surprised if you hadn't made it.
};

INSTANCE Info_Mod_Lee_OrkjaegerNoway (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerNoway_Condition;
	information	= Info_Mod_Lee_OrkjaegerNoway_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerNoway_Condition()
{
	if (Mod_SLD_Orkjaeger == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerNoway_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_00"); //What about your recording with the Orc hunters? How's it coming?
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_01"); //No. Sylvio decided not to admit me.
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_02"); //What?! I would have loved to see a fighter like you in the ranks of the Orc hunters. Too bad. Unless....
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_03"); //Yeah, what?
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_04"); //Well, if you challenge him to the competition and take the victory, you would automatically become leader of the Orc hunters. Those are the rules.
};

INSTANCE Info_Mod_Lee_Wettstreit (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Wettstreit_Condition;
	information	= Info_Mod_Lee_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then I challenge him to a contest.";
};

FUNC INT Info_Mod_Lee_Wettstreit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_OrkjaegerNoway))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Wettstreit_15_00"); //Then I challenge him to a contest.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_01"); //Then go to Sylvio's and tell him. In the meantime, I'll have everything ready.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_02"); //Then come back to me and I'll teach you what to do.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "If I challenge Sylvio to the competition and win, I can take over his position and become an orc hunter. After that, Lee will tell me what to do.");
};

INSTANCE Info_Mod_Lee_GiveMap (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GiveMap_Condition;
	information	= Info_Mod_Lee_GiveMap_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, what's the competition?";
};

FUNC INT Info_Mod_Lee_GiveMap_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_Wettstreit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GiveMap_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_GiveMap_15_00"); //Okay, what's the competition?
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_01"); //Here's a map.

	B_GiveInvItems	(self, hero, ItWr_Map_Wettstreit_01, 1);

	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_02"); //The blue cross shows you the location of a key, the red cross shows you the location of a trunk to which the key fits. There's a second key Sylvio's looking for.
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_03"); //Whoever with the contents of the chest first obtained won. All clear? All right, let's go.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Lee gave me a two-cross card. The Blue Cross shows me where I can find the key to the chest marked with the red cross. I'm supposed to take the contents of the chest to Lee. Sylvio will have to pursue the same goal and find a second key.");

	Mod_SLD_Wettstreit = 1;

	Wld_InsertNpc	(Mod_7231_SLD_Organisator_MT,	"LOCATION_29_04");
	Wld_InsertNpc	(Mod_7232_SLD_Organisator_MT,	"OW_ABYSS_SPAWN_WARAN");

	B_KillNpc	(Mod_7231_SLD_Organisator_MT);
	B_KillNpc	(Mod_7232_SLD_Organisator_MT);
};

INSTANCE Info_Mod_Lee_HabPfeife (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_HabPfeife_Condition;
	information	= Info_Mod_Lee_HabPfeife_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the contents of the chest.";
};

FUNC INT Info_Mod_Lee_HabPfeife_Condition()
{
	if (Mod_SLD_Wettstreit == 3)
	&& (Npc_HasItems(hero, ItMi_LeePipe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_HabPfeife_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_HabPfeife_15_00"); //I have the contents of the chest.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_01"); //Show me...

	B_GiveInvItems	(hero, self, ItMi_LeePipe, 1);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_02"); //Fact. That's how you won the contest. Congratulations!
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_03"); //(to himself) I'm just wondering where are the mercenaries who were in charge of the keys.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_04"); //(again to the hero) Well, no matter what, with that you are now leader of the Orc hunters and therefore even Orkjäger. Here's your new armor.

	B_ShowGivenThings	("Receive Hunting Armor");

	CreateInvItems	(hero, ItAr_Sld_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Sld_H);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_05"); //A good piece. You can pick up your weapon at Thofeistos. I'm sure you'll live up to your new position.

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Orkfriedhof))
	{
		AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_06"); //Now you can hurry to the Orc Cemetery. Maybe you'll get there in time.
	};

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(600);

	B_Göttergefallen(2, 5);

	Mod_Gilde = 19;

	Mod_LeeOJGBoss = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);

	if (!Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		B_StartOtherRoutine	(Mod_10000_Orc_Tarrok_MT, "START");
	};
};

INSTANCE Info_Mod_Lee_Orkfriedhof (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Orkfriedhof_Condition;
	information	= Info_Mod_Lee_Orkfriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Orkfriedhof_Condition()
{
	if (Mod_NL_UOS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Orkfriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_00"); //Hey, good of you to come by.
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_02"); //The swamp camp has contacted us and asked for our help.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_03"); //Recently, when some swamp scribbles searched the orc cemetery for treasures and artifacts, the orcs' mortal remains suddenly rose to become undead existence. Only a novice has managed to escape.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_04"); //We are now to use our ability to fight the green skins and search for survivors.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_05"); //The pay's good and our boys can use some extra training.
	AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_06"); //Orc cemetery?! Undead orcs?! I have to go there....

	Log_CreateTopic	(TOPIC_MOD_SLD_FRIEDHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_RUNNING);

	if (Mod_Gilde == 19)
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_07"); //Hey, I didn't expect that much enthusiasm, even though I was hoping you'd lead our boys in the fight.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_08"); //They're already waiting outside the Orc Cemetery to get started. Hurry up, so you don't miss the fun.

		B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Orc cemetery?! Undead orcs?! There must be the shaman....");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_09"); //Hey, so much enthusiasm for the fight honors you. However, you have to become orcish hunters before you can accompany the boys on their mission.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_10"); //But you don't have much time before it starts. (Hesitantly) There is only the possibility...
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_11"); //Yeah, what?
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_12"); //You would have to challenge Sylvio to the competition and defeat him to take his position. If that's what you want...
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_13"); //Yes, I must go to this cemetery.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_14"); //Okay, then let Sylvio know and come back to me.

		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_SLD_FRIEDHOF, "If I challenge Sylvio to the competition and win, I can take over his position and become an orc hunter. After that, Lee will tell me what to do.", "Orc cemetery?! Undead orcs?! There must be the shaman.... But I don't get admission to the cemetery until I'm an orc hunter.");
	};

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_15"); //I've got some teleport slogans for you. Have gurus made you some time ago....

	B_GiveInvItems	(self, hero, ItSc_TeleportOrkfriedhof, 3);
};

INSTANCE Info_Mod_Lee_OrkschamaneTot (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkschamaneTot_Condition;
	information	= Info_Mod_Lee_OrkschamaneTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkschamaneTot_Condition()
{
	if ((Mod_NL_UOS == 8)
	|| (Mod_NL_UOS == 7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkschamaneTot_Info()
{
	if (Mod_NL_UOS == 7)
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_00"); //You've done it. The swamp camp was extremely satisfied with the rescue of his people and generously rewarded us for it. Here's your share.

		CreateInvItems	(hero, ItMi_Gold, 400);
		CreateInvItems	(hero, ItMi_Nugget, 4);
		CreateInvItems	(hero, ItPo_Health_03, 5);

		B_GivePlayerXP	(500);

		B_ShowGivenThings	("400 gold, 4 pieces of ore and 5 extracts of healing obtained");

		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_01"); //But now say: Where are our boys? Do they make a well-deserved rest in the swamp camp?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_02"); //Uh, no. Well... all the undead and orcs have been badly injured. What can I say...? all are dead (to himself) or undead....
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_03"); //I hope this is a bad joke.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_04"); //Well, I wish it were.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_05"); //(resigned) So many good men... This.... these damn orcs. They'll pay for this.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_06"); //And you have failed miserably in your position as a hurricane leader if they all died.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_07"); //(angrily) Maybe I made a bad choice with Sylvio as leader of the Orkjäger also, if my boys were in such bad shape.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_08"); //What?! You here? And what about the orc cemetery?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_09"); //Well, I was there...
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_10"); //Yeah, what else? Did you save anyone?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_11"); //No, I'm afraid not. You are now.... uh, they were all dead.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_12"); //(unhappy) Damn it. The swamp fritters won't be happy about that...
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_13"); //But where are the other boys? I bet they'll make a nice Lenz in the swamp camp. Tell them to get over here.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_14"); //Well, that might be a little difficult.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_15"); //What's that supposed to mean?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_16"); //Well, they're all dead (to themselves) or undead.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_17"); //(baff) This is a bad joke.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_18"); //Well, I don't think so. Zombies, orcs and undead shamans have gotten us into trouble.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_19"); //What?! What?! So many good men? This.... these damn orcs, they'll pay for that.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_20"); //And you're gonna kick my face in here after you let them die?! Their leader?! Soon you failed.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_21"); //And Sylvio is having a nice day?! Maybe I wasn't so good at my choice after all, when the guys were in such bad shape. He'll be in trouble.
		};

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);

	// Orkfriedhof wieder dicht machen

	Wld_SendTrigger	("EVT_ORCGRAVYARD_MOVER_01");
};

INSTANCE Info_Mod_Lee_FreieMine (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_FreieMine_Condition;
	information	= Info_Mod_Lee_FreieMine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_FreieMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_FreieMine_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_00"); //At last you're here...
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_02"); //The mine's full of shit. Constant minecrawl attacks, no matter how many of the beasts we do.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_03"); //You cleaned the old mine from the beasts back then....
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_04"); //... and you thought of me to solve the problem.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_05"); //Yes, you are the most qualified person to contact when it comes to these mine crawlers.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_06"); //So go to the mine and see what you can do.
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_07"); //Ok, but I wanted to inform you that on Khorinis...
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_08"); //(interrupts) There's plenty of time. First the crawlers.

	Log_CreateTopic	(TOPIC_MOD_NL_CRAWLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_CRAWLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "The free mine suffers from a minecrawler plague. Lee told me to straighten this out.");
};

INSTANCE Info_Mod_Lee_Gormgniez (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Gormgniez_Condition;
	information	= Info_Mod_Lee_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_00"); //Did you solve the crawler problem in the mine?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_01"); //Yes, it's quiet there again.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_02"); //Very good, I didn't expect anything else. Here's your pay.

	B_ShowGivenThings	("400 gold and 10 ore preserved");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_03"); //Any other news from the world, worth mentioning, worth knowing?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_04"); //Well, for example, khorinis was struck by dragons.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_05"); //Dragons? You're kidding me, right? But if it were true...
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_06"); //It is true.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_07"); //(how obsessed) Yeah, I knew it. Everyone thought I was crazy when I bought the expensive dragon hunter's armour. But now, yes, now they come into operation.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_08"); //I'm about to send my elite to Khorinis for support.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_09"); //Go to Thofeistos, have him give you ore as a reward.

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "I'm supposed to collect some ore chunks from Thofeistos as a reward.");

	B_RemoveNpc	(Mod_1288_SLD_Butch_MT);
	B_RemoveNpc	(Mod_1306_SLD_Organisator_MT);
	B_RemoveNpc	(Mod_1314_SLD_Organisator_MT);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lee_Plage (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Plage_Condition;
	information	= Info_Mod_Lee_Plage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Plage_Condition()
{
	if (Mod_NL_JeremiahHasEier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Plage_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_00"); //Jesus Christ, that's all there was to it.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_01"); //What is it this time? Undead, orcs, or worse?
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_02"); //I mean that filthy vermin crawling out of the lake, those worms and crabs.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_03"); //Everywhere these creatures crawl, defile everything edible that you leave open, you can't turn a blind eye without these parasites getting stuck to you and the lake also stinks slowly of them.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_04"); //Well, what can I do?
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_05"); //What can I do for you? That's what I want to tell you.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_06"); //On Khorinis these hunters and rangers run around. They know all about that crap.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_07"); //Since you're all over the island all the time anyway, why don't you go to one and ask him for advice?
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_08"); //Okay, then I'll be on my way...
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_09"); //(urgent) Yes, do a little bit before the whole area is contaminated by this dirt and we have to clear the camp last.

	Log_CreateTopic	(TOPIC_MOD_NL_PLAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Annoying vermin emerge from the lake in the New Camp. Lee wants me to ask the Rangers how to deal with this plague.");
};

INSTANCE Info_Mod_Lee_PlageFertig (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_PlageFertig_Condition;
	information	= Info_Mod_Lee_PlageFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PlageFertig_Condition()
{
	if (Mod_NL_JeremiahHasEier == 6)
	&& (Wld_GetDay()-3 >= Mod_NL_JeremiahHasEier_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_PlageFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_00"); //The parasites have become considerably less. Was that your doing?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_01"); //Yes, I had my share of it. Not much longer and the plague should be history once and for all.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_02"); //Really, no more beasts on the lake?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_03"); //Uh, well, except for the Lurkers, which I relocated.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_04"); //What, how, are you kidding me?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_05"); //No, the Lurkers are the natural enemies of this crawling animal.
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_06"); //It is important that at least a small population of them remain at the lake.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_07"); //Well, for my sake. In any case, you did a really good job and did a huge service to the camp.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_08"); //Here, you've earned more than your reward.

	B_ShowGivenThings	("400 gold, 20 ore, 5 pure life energies and elixir of life preserved");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItPo_Health_Addon_04, 5);
	CreateInvItems	(hero, ItPo_Perm_Health, 1);

	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(600);
};

INSTANCE Info_Mod_Lee_ZugangKneipe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe_Condition;
	information	= Info_Mod_Lee_ZugangKneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to go to the pub and need your permission.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Khaled_KenneLee))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_00"); //I'd like to go to the pub and need your permission.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_01"); //To the pub? Well, the rules say you have to be a mercenary or a scout.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_02"); //And if I just give you permission, I'm contributing to a policy violation. And that would be bad for camp morale.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_03"); //So you either have to become mercenaries and support the boys in Khorinis or...
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_04"); //... I choose the prospector's path?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_05"); //Yeah, that's the other option.
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_06"); //And what do I have to do?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_07"); //Let me think about it.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_08"); //In order to be a full-fledged prospector, you have to dig ore and pay your share to the camp.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_09"); //So, let's say, bring me ten lumps of ore.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_10"); //This symbolic amount is enough for me.

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "I'm supposed to bring Lee 10 lumps of ore as proof of my activity as a prospector. Then I can go to the pub.");
};

INSTANCE Info_Mod_Lee_ZugangKneipe2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe2_Condition;
	information	= Info_Mod_Lee_ZugangKneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are ten lumps of ore.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_ZugangKneipe))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe2_15_00"); //Here are ten lumps of ore.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_01"); //Good to create that was certainly not a feat, but only for the entrance to the pub no one should tear off a leg.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_02"); //Here, my written permission. Have a drink to my health.

	B_GiveInvItems	(self, hero, ItWr_LeeInKneipe, 1);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "Well, I have Lee's written permission.");
};

INSTANCE Info_Mod_Lee_KesselProblem (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem_Condition;
	information	= Info_Mod_Lee_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem_Condition()
{
	if (Kapitel >= 3)
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem_Info()
{
	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_00"); //Damn it! Here we go again.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem_15_01"); //What is it?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_02"); //At present, wild animals in the mountains are making the work in the valley basin unsafe. Even a prospector was eaten by you.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_03"); //Someone should see what's going on before the ore arrives here soon.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_04"); //Hmm, obviously no longer depend on my men there.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_05"); //Head chef Bullco also seems to spend more time at the tavern than in front of the mine.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_06"); //Could you perhaps look around in the valley basin and ask yourself what the situation is really like?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_07"); //Let me know if there are any problems...

	Log_CreateTopic	(TOPIC_MOD_NL_TALKESSELPROB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Lee cursed about the problems in the basin. Wild animals from the mountains are living there and have already killed a prospector. Ore supplies could suffer increasingly from this. Lee asked me to take a look around and let him know if there are any serious problems.");
};

INSTANCE Info_Mod_Lee_KesselProblem2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem2_Condition;
	information	= Info_Mod_Lee_KesselProblem2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem2_Condition()
{
	if (Mod_NL_TalkesselProblem == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_00"); //(irred) Stop! I heard that Bruce has blessed the temporal... and I heard you were involved in it.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_01"); //What the hell happened at the boiler?!
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_02"); //I had no choice. He tried to kill me.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_03"); //(Surprised) But.... why? What happened there?
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_04"); //Well, I figured him out.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_05"); //He used part of the ore from the boiler for his own business.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_06"); //The whole story with the wild animals was invented. To deceive him, he even got a shadow runner's fur from Fester.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_07"); //Here's his list.

	B_GiveInvItems	(hero, self, ItWr_KesselProblem, 1);

	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_08"); //You're right. Really. He spent the ore by the bucketload.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_09"); //And another deceitful deception. Probably killed the prospector himself, as a diversion.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_10"); //(Furiously) Embezzlement of ore for dubious transactions.... and even murder.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_11"); //And Bullco sits in front of the pub and drinks. He has been the longest time head of the valley basin....
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_12"); //Hmm... and what about Fester. What are those other things he sold Bruce?

	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1288_SLD_Butch_MT, "BOSS");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);

	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "Goods from outside. Wine, ham...", Info_Mod_Lee_KesselProblem2_B);
	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "He sold him swamp herb.", Info_Mod_Lee_KesselProblem2_A);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_B()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_00"); //Goods from outside. Wine, ham...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_01"); //(again quiet) So? All right, all right. I'm gonna change words with him and get to the bottom of him.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_02"); //Maybe he didn't know anything about Bruce's schemes.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_03"); //Well...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_04"); //Oh, that's right. You did a very good job.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_05"); //Thanks to you, things will be better from now on in the camp. Here, you certainly deserve the ore and gold.

	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("20 Ore and 200 gold obtained");

	Mod_NL_TalkesselProblem = 5;

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_A()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_00"); //He sold him swamp herb.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_01"); //What?! What?! Sell cabbage in my warehouse?! He'll be in trouble.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_02"); //From now on get up at 6 o' clock, exercise... I'll make sure he doesn't get any more ideas.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_03"); //So...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_04"); //(to the hero) Hmm, huh? Oh, that's right. You did a really good job.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_05"); //All the freeloaders and good-for-nothinges get what they deserve.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_06"); //Here, you've really earned the ore and gold.

	CreateInvItems	(hero, ItMi_Nugget, 27);
	CreateInvItems	(hero, ItMi_Gold, 260);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("27 Ore and 260 gold preserved");

	Mod_NL_TalkesselProblem = 6;

	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "STRAFE");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

INSTANCE Info_Mod_Lee_SentenzaSchwert (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SentenzaSchwert_Condition;
	information	= Info_Mod_Lee_SentenzaSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "So you guys were up to speed?";
};

FUNC INT Info_Mod_Lee_SentenzaSchwert_Condition()
{
	if (Mod_NL_BruceTot == 3)
	&& (Npc_IsDead(Mod_796_SLD_Sentenza_MT))
	&& (Npc_IsDead(Mod_779_SLD_Bullco_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SentenzaSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_00"); //So you guys were up to speed?
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_01"); //Well, I had a strong suspicion. Ultimately, Bruce has never moved far enough from the basin to visit other traders.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_02"); //So he must have had backers in the camp.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_03"); //Roscoe then kept his eyes and ears open for me.... and get enough to put the bastards here.
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_04"); //Yeah, that was good timing.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_05"); //Well, anyway, thanks to your help, our camp is poorer by two scoundrels again. Here some ore.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_06"); //I'm sure you'll find enough in their pockets. And the wild animals shall take the rest.

	B_GivePlayerXP	(300);

	B_SetTopicStatus	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Lee_Mitmachen (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Mitmachen_Condition;
	information	= Info_Mod_Lee_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I join you guys?";
};

FUNC INT Info_Mod_Lee_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_00"); //Can I join you guys?
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_01"); //Join us? Well, we can always use good men, and you showed me you weren't a good-for-nothing back then.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_02"); //However, I'd prefer you to prove yourself first, so that the mercenaries respect your recording.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_03"); //Many new guys are in the camp and not everyone can remember you from the others.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_04"); //You've always been out and about.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_05"); //Okay, what do you want me to do?
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_06"); //Well, knowing you, I'm sure you've been halfway to khorinis and you know your way around.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_07"); //Yeah, I've been here and there.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_08"); //Well, then I want you to support the boys on the big farm in Khorinis.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_09"); //To gain a foothold there is the first priority.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_10"); //If you act a little skillful, I'm sure I'll see you back in the mercenary armor soon.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_11"); //Unless, of course, you belong to another large camp or even to the Old Camp. You all right? Good.
};

var int Lee_LastPetzCounter;
var int Lee_LastPetzCrime;

INSTANCE Info_Mod_Lee_PMSchulden (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PMSchulden_Condition;
	information 	= Info_Mod_Lee_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lee_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lee_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Lee_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_02"); //Apparently, it's not the latest accusations!

		if (Lee_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Lee_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lee_LastPetzCounter);
		
			if (diff > 0)
			{
				Lee_Schulden = Lee_Schulden + (diff * 50);
			};
		
			if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lee_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lee_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_05"); //Some new things have come up.
		
		if (Lee_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Lee_LastPetzCrime == CRIME_THEFT)
		|| ( (Lee_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_07"); //No one remembers seeing you at a theft.
		};
		
		if (Lee_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lee_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_12"); //Make sure you don't get in trouble again.
	
			Lee_Schulden			= 0;
			Lee_LastPetzCounter 	= 0;
			Lee_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Lee_Schulden);
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"I haven't got enough gold!",Info_Mod_Lee_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"How much was that again?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"I want to pay the penalty!",Info_Mod_Lee_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lee_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lee_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Lee_Schulden);

	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"I haven't got enough gold!",Info_Mod_Lee_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"How much was that again?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"I want to pay the penalty!",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lee_PETZMASTER   (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PETZMASTER_Condition;
	information 	= Info_Mod_Lee_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PETZMASTER_Info()
{
	Lee_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_02"); //Murder is a grave offence!

		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lee_Schulden = Lee_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_06"); //I have no interest in putting you on the gallows. We're at war, and we need every man we can get.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_11"); //I will not tolerate such behaviour in our country!
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_12"); //You'll have to pay a fine to make up for your crime!
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_13"); //If you fight with the riffraff in town, that's one thing...
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_14"); //But if you attack the peasants or other mercenaries, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_20"); //You'll have to pay compensation!
		
		Lee_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_15_21"); //How much?
	
	if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lee_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PETZMASTER,"I haven't got enough gold!",Info_Mod_Lee_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PETZMASTER,"I want to pay the penalty!",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lee_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Lee_Schulden);
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayNow_04_01"); //Good! I will see to it that every farmer and mercenary learns about it - this will restore your reputation to some extent.

	B_GrantAbsolution (LOC_FARM);
	
	Lee_Schulden			= 0;
	Lee_LastPetzCounter 	= 0;
	Lee_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lee_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Lee_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lee_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lee_Pickpocket (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Pickpocket_Condition;
	information	= Info_Mod_Lee_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Lee_Pickpocket_Condition()
{
	C_Beklauen	(158, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_BACK, Info_Mod_Lee_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lee_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lee_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
};

FUNC VOID Info_Mod_Lee_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lee_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lee_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lee_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lee_EXIT (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 999;
	condition	= Info_Mod_Lee_EXIT_Condition;
	information	= Info_Mod_Lee_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lee_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
