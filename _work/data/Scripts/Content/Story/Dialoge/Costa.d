INSTANCE Info_Mod_Costa_Hi (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Hi_Condition;
	information	= Info_Mod_Costa_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Costa_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Costa_Hi_Info()
{
	B_Say	(hero, self, "$WHoAREYOU");

	AI_Output(self, hero, "Info_Mod_Costa_Hi_34_00"); //Costa, Buddler. It's easy to see.
};

INSTANCE Info_Mod_Costa_Buddler (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Buddler_Condition;
	information	= Info_Mod_Costa_Buddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Interested in working as a Buddler again?";
};

FUNC INT Info_Mod_Costa_Buddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Buddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_00"); //Interested in working as a Buddler again?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_01"); //Unfortunately, there's not so much left to do with me. I haven't prospected a scrap of ore since the fall of the barrier.
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_02"); //And unfortunately I lost my Buddler book in a fight with a skeleton. It's all there is to get me back in shape.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_03"); //Why does a Buddler mess with a skeleton?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_04"); //Well, you have to do something. Tried to find artifacts after the fall of the barrier. Wasn't very good, I guess.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_05"); //Then the skeleton is a better artefact seeker than you are. Where's that skeleton supposed to be?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_06"); //I suppose it's still in my little camp on the way to the New Camp by the river.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_07"); //I'm gonna get your book somehow, you pack a seven-point bag.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Costa would be willing to dig in our mine, but he is no longer entirely in the matter. I am supposed to get him his Buddler book, which he lost in a fight with a skeleton. The skeleton is now in its camp on the river to the New Camp. I'd better take Melcador with me.");
};

INSTANCE Info_Mod_Costa_Buddler2 (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Buddler2_Condition;
	information	= Info_Mod_Costa_Buddler2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the book.";
};

FUNC INT Info_Mod_Costa_Buddler2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler5))
	&& (Npc_HasItems(hero, ItWr_Buddlerbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Buddler2_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Buddler2_15_00"); //Here's the book.

	B_GiveInvItems	(hero, self, ItWr_Buddlerbuch, 1);

	AI_Output(self, hero, "Info_Mod_Costa_Buddler2_34_01"); //Thanks, now I can get fit again. Where am I supposed to dig?
	AI_Output(hero, self, "Info_Mod_Costa_Buddler2_15_02"); //Go to the abandoned mine and wait for it.
	AI_Output(self, hero, "Info_Mod_Costa_Buddler2_34_03"); //I'll be on my way right away.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Costa's on his way to the mine now.");

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MINE");
};

INSTANCE Info_Mod_Costa_SchonImmerHier (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_SchonImmerHier_Condition;
	information	= Info_Mod_Costa_SchonImmerHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you always been in the Old Camp?";
};

FUNC INT Info_Mod_Costa_SchonImmerHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_SchonImmerHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_SchonImmerHier_15_00"); //Have you always been in the Old Camp?
	AI_Output(self, hero, "Info_Mod_Costa_SchonImmerHier_34_01"); //Way too long, anyway. I saw you months ago, too.
	AI_Output(self, hero, "Info_Mod_Costa_SchonImmerHier_34_02"); //But we never talked or anything.
};

INSTANCE Info_Mod_Costa_NichtZufrieden (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_NichtZufrieden_Condition;
	information	= Info_Mod_Costa_NichtZufrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "You don't look very happy.";
};

FUNC INT Info_Mod_Costa_NichtZufrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_SchonImmerHier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_15_00"); //You don't look very happy.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_01"); //Yeah, damn it. I had my chance to escape from the camp, but I just missed it.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_02"); //The others met in the middle of the night and left while I slept soundly.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_03"); //To make matters worse, I had given Jesse my most valuable possessions before, because he wanted to get them out independently of us.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_04"); //I don't care about the ore, but I need my belt back. I couldn't have done the work in the mines without him.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_05"); //And besides, all my pants are slipping now.

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);

	Info_AddChoice	(Info_Mod_Costa_NichtZufrieden, "Good luck searching.", Info_Mod_Costa_NichtZufrieden_B);
	Info_AddChoice	(Info_Mod_Costa_NichtZufrieden, "I'll try to find your belt.", Info_Mod_Costa_NichtZufrieden_A);
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_B()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_B_15_00"); //Good luck searching.

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_A()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_A_15_00"); //I'll try to find your belt.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_01"); //It's easier said than done, I'm afraid. We did not know where to turn after the escape.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_02"); //That's why I have no idea where Jesse might be now.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_03"); //But if you ever run into him, tell him to get my belt out.

	Mod_Costa_Guertel = 1;

	Mod_Costa_Guertel_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);

	Log_CreateTopic	(TOPIC_MOD_COSTA_GUERTEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_COSTA_GUERTEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_COSTA_GUERTEL, "Costa left Jesse his belongings before they tried to escape from the camp. Only Costa didn't make it. Of his possessions, his belt is most important to him. When I meet Jesse, I'm supposed to bring Costa back his belt.");
};

INSTANCE Info_Mod_Costa_Jesse (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Jesse_Condition;
	information	= Info_Mod_Costa_Jesse_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Jesse.";
};

FUNC INT Info_Mod_Costa_Jesse_Condition()
{
	if (Mod_Costa_Guertel == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Jesse_Costa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Jesse_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Jesse_15_00"); //I found Jesse.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_01"); //Ha! And? Did he pull out my belt?
	AI_Output(hero, self, "Info_Mod_Costa_Jesse_15_02"); //Not that one. He's coming to get you out of here in person. I want you to show up at your rendezvous point at midnight.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_03"); //Jesse's a real pal! I just hope the guards don't catch us...
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_04"); //Thank you very much for your message. Maybe we'll meet again sometime.

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_COSTA_GUERTEL, LOG_SUCCESS);

	Mod_Costa_Guertel_Tag = Wld_GetDay();

	B_StartOtherRoutine	(self, "TREFFEN");
	B_StartOtherRoutine	(Mod_1506_BUD_Jesse_MT, "TREFFEN");
};

INSTANCE Info_Mod_Costa_Jesse2 (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Jesse2_Condition;
	information	= Info_Mod_Costa_Jesse2_Info;
	permanent	= 0;
	important	= 0;
	description	= "You've done it.";
};

FUNC INT Info_Mod_Costa_Jesse2_Condition()
{
	if (Mod_Costa_Guertel_Tag < Wld_GetDay())
	&& (Npc_KnowsInfo(hero, Info_Mod_Costa_Jesse))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Jesse2_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_00"); //You've done it.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_01"); //I've done it. Jesse gave me back all my old stuff.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_02"); //But because you almost had the biggest part of my escape, I want to give you my belt.

	B_GiveInvItems	(self, hero, ItBe_Addon_STR_10, 1);

	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_03"); //So what are you gonna do about sliding pants?
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_04"); //I got new ones! No more slipping!
	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_05"); //Take care, then.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Costa_Lagermusik (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Lagermusik_Condition;
	information	= Info_Mod_Costa_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you want to join Gravo's music group?";
};

FUNC INT Info_Mod_Costa_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Lagermusik_15_00"); //Do you want to join Gravo's music group?
	AI_Output(self, hero, "Info_Mod_Costa_Lagermusik_34_01"); //My grandmother might like to hear what the music calls it. I need some hard stuff, man. I'm not a part of his bagpipe music. Not a chance.
};

INSTANCE Info_Mod_Costa_WarumNichtWeg (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_WarumNichtWeg_Condition;
	information	= Info_Mod_Costa_WarumNichtWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you try to escape the camp anyway?";
};

FUNC INT Info_Mod_Costa_WarumNichtWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_NichtZufrieden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_WarumNichtWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_WarumNichtWeg_15_00"); //Why don't you try to escape the camp anyway?
	AI_Output(self, hero, "Info_Mod_Costa_WarumNichtWeg_34_01"); //Oh, I just don't have a knack for this kind of thing.
	AI_Output(self, hero, "Info_Mod_Costa_WarumNichtWeg_34_02"); //If someone's got this organized, all right, but I wouldn't dare alone.
};

INSTANCE Info_Mod_Costa_Pickpocket (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Pickpocket_Condition;
	information	= Info_Mod_Costa_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Costa_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Costa_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

	Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_BACK, Info_Mod_Costa_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Costa_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Costa_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
};

FUNC VOID Info_Mod_Costa_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Costa_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Costa_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Costa_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Costa_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Costa_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Costa_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Costa_EXIT (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_EXIT_Condition;
	information	= Info_Mod_Costa_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Costa_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Costa_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
