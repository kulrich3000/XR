INSTANCE Info_Mod_Daron_Hi (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Hi_Condition;
	information	= Info_Mod_Daron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Daron_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daron_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Daron_Hi_10_01"); //I'm the fire magician Daron. What can I do for you, stranger?
};

INSTANCE Info_Mod_Daron_ZugangZumKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_ZugangZumKloster_Condition;
	information	= Info_Mod_Daron_ZugangZumKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you give me access to the monastery?";
};

FUNC INT Info_Mod_Daron_ZugangZumKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Hi))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_15_00"); //Can you give me access to the monastery?
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_10_01"); //What do you want in our convent?

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	{
		Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "I'm supposed to steal the Holy Hammer for the demon summoners.", Info_Mod_Daron_ZugangZumKloster_Witz);
	};
	Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "I want to be a fire novice.", Info_Mod_Daron_ZugangZumKloster_Novize);
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Witz()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Witz_15_00"); //I'm supposed to steal the Holy Hammer for the demon summoners.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Witz_10_01"); //I see you have a sense of humour. But we mages are serious people and don't want to laugh.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Witz_10_02"); //Now tell me why you're asking to join our monastery.
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Novize()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Novize_15_00"); //I want to be a fire novice.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Novize_10_01"); //If this is really your desire, then you shall receive your request.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Novize_10_02"); //But I will not give you the key to our holy gate until you have done me a favour.

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "To become a fire novice I must first get access to the monastery. Daron will give me the key if I do him a favor.");

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);

	Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "What am I supposed to do for you?", Info_Mod_Daron_ZugangZumKloster_Gefallen);
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Gefallen()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Gefallen_15_00"); //What am I supposed to do for you?
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_01"); //Pyrokar, the chief fire magician, sent me to the city to get a remedy for a disease that has infected some of our novices.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_02"); //This disease has triggered a strong fever that our magic cannot cure.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_03"); //A cure for this can be found in the water magician Vatras, who preaches his sermons at his little temple here in the city.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_04"); //But my pride as a fire magician doesn't allow me to ask a water magician for help.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_05"); //You'd really be doing me a favor if you picked up the medicine from him.

	Log_CreateTopic	(TOPIC_MOD_DARONSGEFALLEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DARONSGEFALLEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "I'm supposed to get Daron a medicine from the water magician Vatras.");

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);

	B_StartOtherRoutine	(Mod_915_NOV_Dyrian_NW, "KRANK");
	B_StartOtherRoutine	(Mod_913_NOV_Agon_NW, "KRANK");
	B_StartOtherRoutine	(Mod_919_NOV_Igaraz_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1192_NOV_Novize_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1194_NOV_Novize_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1195_NOV_Novize_NW, "KRANK");
};

INSTANCE Info_Mod_Daron_HabTrank (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_HabTrank_Condition;
	information	= Info_Mod_Daron_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got the potion of Vatras.";
};

FUNC INT Info_Mod_Daron_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ZugangZumKloster))
	&& (Npc_HasItems(hero, VatrasNovizenTrunk) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_HabTrank_15_00"); //I have the potion of Vatras.

	B_GiveInvItems	(hero, self, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_01"); //Thanks. If you want, I can take you to the monastery now.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_02"); //But there is still one thing that prevents me from leaving.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_03"); //The novice Akahasch has disappeared a few days ago.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_04"); //He was last seen in the harbour quarter in the tavern... you might be able to get information about your whereabouts... I'd hate to go there myself, if you know what I mean.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_05"); //So if you...
	AI_Output(hero, self, "Info_Mod_Daron_HabTrank_15_06"); //(eye twisting) Yeah, I understand. I'll ask around.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_07"); //Very good. Very good. As soon as you find him, bring him to me.

	B_GivePlayerXP	(50);

	Log_CreateTopic	(TOPIC_MOD_ASS_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DARONSGEFALLEN, TOPIC_MOD_ASS_AUFNAHME, "I gave Daron the potion.", "In order for Daron to accompany me to the monastery, I must first find out the whereabouts of the novice Akahasch. He was last seen at the tavern in the harbour quarter. As soon as I find him, I shall escort him to Daron.");

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Daron_Akahasch (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Akahasch_Condition;
	information	= Info_Mod_Daron_Akahasch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Akahasch.";
};

FUNC INT Info_Mod_Daron_Akahasch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_HabTrank))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Akahasch_Hi))
	|| (Npc_IsDead(Mod_4016_NOV_Akahasch_NW)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Akahasch_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_00"); //I found Akahasch.

	if (Mod_Akahasch_Guiding == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_01"); //Ahh, I see he's with you. Let's go straight to the monastery, the rest can be discussed there.
	}
	else if (Mod_Akahasch_Guiding == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_02"); //I brought him back to the convent.
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_03"); //Yes? That's good news. Then we can leave immediately.
	}
	else if (Mod_Akahasch_Guiding == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_04"); //Where's he at?
		AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_05"); //He was lying dead near the lighthouse.... wild animals must have caught him.
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_06"); //What do you say? Innos have mercy on his soul. But what had he lost in the middle of the wilderness?
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_07"); //Anyway, there's nothing to keep me in town anymore. So let's go to the monastery.
	};

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Daron_KlosterGuide (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_KlosterGuide_Condition;
	information	= Info_Mod_Daron_KlosterGuide_Info;
	permanent	= 0;
	important	= 0;
	description	= "Take me to the monastery.";
};

FUNC INT Info_Mod_Daron_KlosterGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Akahasch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_KlosterGuide_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_KlosterGuide_15_00"); //Take me to the monastery.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterGuide_10_01"); //All right, follow me.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKLOSTER");
};

INSTANCE Info_Mod_Daron_InsKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_InsKloster_Condition;
	information	= Info_Mod_Daron_InsKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_InsKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_KlosterGuide))
	&& (Npc_GetDistToWP(self, "NW_MONASTERY_ENTRY_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_InsKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_00"); //Hier ist das Kloster. Du wirst allerdings nicht ohne weiteres hineinkommen.
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_01"); //Ich werde die Flammen für dich einfrieren, damit du das Tor durchschreiten kannst. Solange du Innos treu bleibst kannst du dieses Tor immer durchschreiten, auch wenn du nicht zu uns gehörst. 
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_02"); //Komm weiter.

	Npc_ExchangeRoutine	(self, "GUIDEINKLOSTER");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Akahasch2 (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Akahasch2_Condition;
	information	= Info_Mod_Daron_Akahasch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Akahasch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_InsKloster))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	|| ((Mod_Akahasch_Guiding == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Akahasch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_10_00"); //Now I would still be interested to know what Akahash had lost in the wilderness?

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	Info_AddChoice	(Info_Mod_Daron_Akahasch2, "A bunch of weirdos in town chasing after him.", Info_Mod_Daron_Akahasch2_B);
	Info_AddChoice	(Info_Mod_Daron_Akahasch2, "He owed a bet and took off.", Info_Mod_Daron_Akahasch2_A);
};

FUNC VOID Info_Mod_Daron_Akahasch2_B()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch2_B_15_00"); //A bunch of weirdos in town chasing after him.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_B_10_01"); //Yes?! Hmm... the venerable servants of the highest of the gods must occasionally defy hostilities of the unworthy.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_B_10_02"); //Akahasch has endured the test imposed on him and is to use the next weeks in the monastery for the recovery of body and mind.

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	B_StartOtherRoutine	(Mod_4016_NOV_Akahasch_NW, "KLOSTER2");
};

FUNC VOID Info_Mod_Daron_Akahasch2_A()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch2_A_15_00"); //He owed money and ran away when the ground got hot under his feet.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_A_10_01"); //That's how it is?! Then hard work for a few weeks will certainly keep him from speaking any more languages.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_A_10_02"); //He should get to know me....

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	B_StartOtherRoutine	(Mod_4016_NOV_Akahasch_NW, "KLOSTER2");

	Mod_DaronAkahasch_Day = Wld_GetDay();

	Mod_DaronAkahasch = 1;
};

INSTANCE Info_Mod_Daron_ImKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_ImKloster_Condition;
	information	= Info_Mod_Daron_ImKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_ImKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_InsKloster))
	&& (Npc_GetDistToWP(self, "NW_MONASTERY_PLACE_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_ImKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_ImKloster_10_00"); //Well, here we are. Take the medicine to Pyrokar.
	
	B_GiveInvItems	(self, hero, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Daron_ImKloster_10_01"); //I'm going to do my job.

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Daron has taken me to the monastery to take the medicine to Pyrokar.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LIFEKLOSTER");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Daron_FeuerGegenEis (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_FeuerGegenEis_Condition;
	information	= Info_Mod_Daron_FeuerGegenEis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_FeuerGegenEis_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_FeuerGegenEis_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_FeuerGegenEis_10_00"); //I'm glad you came. You need to talk to Pyrokar right now. Go to him without delay.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Drachen (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Drachen_Condition;
	information	= Info_Mod_Daron_Drachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you noticed anything unusual lately?";
};

FUNC INT Info_Mod_Daron_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ImKloster))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Drachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_Drachen_15_00"); //Have you noticed anything unusual lately?
	AI_Output(self, hero, "Info_Mod_Daron_Drachen_10_01"); //That's what I mean. Every night on the mountains west of the monastery you can see a bright blaze every night.
	AI_Output(self, hero, "Info_Mod_Daron_Drachen_10_02"); //What might be going on there?

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Daron told of bright blazing on the mountains west of the monastery.");
};

INSTANCE Info_Mod_Daron_KlosterAngegriffen (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_KlosterAngegriffen_Condition;
	information	= Info_Mod_Daron_KlosterAngegriffen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_KlosterAngegriffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_KlosterAngegriffen_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_00"); //With Innos, what a nightmare.
	AI_Output(hero, self, "Info_Mod_Daron_KlosterAngegriffen_15_01"); //Hello, is there anything new?
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_02"); //Will there be anything new?! At nightfall, hordes of fiery demons invaded our monastery.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_03"); //It happened so suddenly that we didn't even know what happened to us.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_04"); //After a short fight we had to surrender to the superiority and fled to the inner rooms.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_05"); //At first we were surprised and happy to see that we all got away with life, which is surely due to our experience in dealing with fire.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_06"); //The next morning, however, we discovered that the bastards had stolen most of our riches and supplies.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_07"); //Wrong-doers, beasts, outbreaks....
	AI_Output(hero, self, "Info_Mod_Daron_KlosterAngegriffen_15_08"); //I don't want to bother you any more.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Katar (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Katar_Condition;
	information	= Info_Mod_Daron_Katar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Katar_Condition()
{
	if (Mod_Sekte_Karras >= 1)
	&& (Mod_Sekte_Joseppe < 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Katar_Info()
{
	AI_TurnToNpc	(self, Mod_1190_NOV_Katar_NW);

	AI_Output(self, hero, "Info_Mod_Daron_Katar_10_00"); //What are you doing? Innos can't always forgive! That means punishment.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Rasend (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Rasend_Condition;
	information	= Info_Mod_Daron_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Rasend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Martin_Rasend))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_00"); //I see many brethren lying here before me. Gone by the hand of a cursed demon.
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_01"); //What has happened? Demon again?
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_02"); //Yes, the same loathsome beast responsible for carnage in the city.
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_03"); //He came out of nowhere and before anyone understood what was going on, he had already killed many of my brothers.
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_04"); //You didn't have a chance...
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_05"); //And where is the demon now, where did he disappear to afterwards?
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_06"); //When he had finally quenched his greed for killing, he rose again into the air and flew eastwards in the same direction he had taken from the city.
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_07"); //To the east... But with that he would exactly... the excavation site of the Water Magicians! I have to keep going.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Even in the monastery, the demon raged like a berserk. But what worries me more than anything else is the fact that it has flown eastwards... pretty much in the direction of the excavation site.");

	B_KillNpc	(Mod_1535_WKR_Wasserkrieger_NW);
	B_KillNpc	(Mod_1534_WKR_Wasserkrieger_NW);

	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RASEND");
	B_StartOtherRoutine	(Mod_538_RDW_Diego_NW, "RASEND");
};

INSTANCE Info_Mod_Daron_Pickpocket (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Pickpocket_Condition;
	information	= Info_Mod_Daron_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Daron_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_InnosStatue, 1);
};

FUNC VOID Info_Mod_Daron_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

	Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_BACK, Info_Mod_Daron_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Daron_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Daron_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
};

FUNC VOID Info_Mod_Daron_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Daron_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Daron_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Daron_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Daron_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Daron_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Daron_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Daron_EXIT (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_EXIT_Condition;
	information	= Info_Mod_Daron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Daron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
