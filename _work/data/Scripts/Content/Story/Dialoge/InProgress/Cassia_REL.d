INSTANCE Info_Mod_Cassia_REL_VorTaverne (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_VorTaverne_Condition;
	information	= Info_Mod_Cassia_REL_VorTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_VorTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_InTaverne))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_00"); //You guys really did a good job of it. Nice and scary.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_01"); //This was to spread in no time at all throughout the city and earn respect for the building.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_15_02"); //You heard everything? So we can move in?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_03"); //Not quite yet.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_04"); //Butchers and master brewers will soon learn about the rumours and go to the house to see for themselves.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_05"); //They have already paid the first instalment for the house.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_06"); //There I will wait for her at the front entrance and give the hysterical woman.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_07"); //During this time, you will sneak behind and over and light the torch in the basement from behind.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_08"); //That should give them the rest of it.... and her key to the building.

	B_GivePlayerXP	(150);

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "Does a summon spell work?", Info_Mod_Cassia_REL_VorTaverne_B);
	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "All right.", Info_Mod_Cassia_REL_VorTaverne_A);
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_C()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_C_17_00"); //All right, follow me.

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOHAUS");
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_00"); //Does a summon spell work?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_B_17_01"); //So that we have two dead bodies in the basement and the city guards knock heavily armed at our door?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_02"); //I see.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_A_15_00"); //All clear.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

INSTANCE Info_Mod_Cassia_REL_AtHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_AtHaus_Condition;
	information	= Info_Mod_Cassia_REL_AtHaus_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have received all packages.";
};

FUNC INT Info_Mod_Cassia_REL_AtHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_VorTaverne))
	&& (Npc_GetDistToWP(hero, "REL_CITY_053") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_AtHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_17_00"); //Ahh, here they come. Here's the rune.

	B_GiveInvItems	(self, hero, ItRu_Fackel, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_17_01"); //You know what to do.

	B_LogEntry	(TOPIC_MOD_DIEB_UMZUG, "While Cassia is distracting the two of them, I will sneak up behind them and light a torch with the help of a spell.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "BESICHTIGUNG");
};

INSTANCE Info_Mod_Cassia_REL_InHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_InHaus_Condition;
	information	= Info_Mod_Cassia_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_InHaus_Condition()
{
	if (Mod_Diebe_FackelAn == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_17_00"); //Excellent. We're not going to see those two fools again.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_17_01"); //Now we can settle down here in peace of mind.

	B_GivePlayerXP	(350);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_UMZUG, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "START");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "START");
	B_StartOtherRoutine	(self, "INHAUS");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INHAUS");
};

INSTANCE Info_Mod_Cassia_REL_Glorie (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie_Condition;
	information	= Info_Mod_Cassia_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus2))
	&& (Wld_GetDay() > Mod_Dieb_Haus_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_00"); //Ahh, good thing you are.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_01"); //We've just worked out something you can help us with.... have to.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_02"); //A finished plan, I hear. What is there to get this time? Some gold, some ham...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_03"); //No, it's a little more complex this time.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_04"); //We will need every member of our community to succeed.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_05"); //That sounds exciting. What's this about?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_06"); //First of all, it is about obtaining valuable documents that could contain even more valuable information.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_07"); //They are stored somewhere in the shallows of the library.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_08"); //So a break-in?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_09"); //No, it would probably take days, if not weeks, to find what we are looking for among all the writings and books.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_10"); //And the lock that could be cracked is not a common door lock.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_11"); //So first, listen to me.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_12"); //Well, there's a scholar in this town who enters the library at noon every day.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_13"); //He is accompanied by a bodyguard who always stops at the entrance.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_14"); //As soon as the librarian sees the old man, he jumps up and walks through a locked trap door into a room below.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_15"); //After a few minutes he comes out with a stack of documents and brings them to the scholar.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_16"); //These are very exclusive and special documents, as no one else gets them.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_17"); //And believe me, we pulled out all the stops on diplomacy.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_18"); //In any case, the learned old man always reads a few hours in it before he returns them to the librarian and they disappear in the room below.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_19"); //Hmm, and where are we going to get in?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_20"); //At the tailor's.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_21"); //I don't understand...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_22"); //Because you didn't collect the necessary information.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_23"); //Because as we have learned, the tailor is currently working on a dress for the scholar.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_24"); //The robe looks almost exactly like the eccentric fiddle that the old man used to walk around in.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_25"); //I'm beginning to understand. One of us gets the dress and pretends to be the old man.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_26"); //So you can draw obvious conclusions.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_27"); //But enough of the flattery.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_28"); //This will be your job and Ramirez's.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_29"); //While he is distracting the tailor and glamouring - believe me, I'm not going to succeed - you're going to rip your dress off.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_30"); //With this beard here, you should look like the old thing.

	B_GiveInvItems	(self, hero, ItAr_Bart, 1);

	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_31"); //Okay, then I know my other job.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_32"); //As you might have guessed, you're going to the library dressed like that.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_33"); //Attila ensures that the old man doesn't show up with his watchdog in the library by involving him in a conversation.... or whatever will be necessary.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_34"); //Well, the librarian won't realize that he doesn't have the right scholar in front of him.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_35"); //A good point.... where Jesper is used.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_36"); //The librarian is actually blind as a mole, without his monocle he can barely recognize the book in front of his nose.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_37"); //As soon as he rubs his eyes and puts the monocle aside, Jesper will make sure that he won't get his hands on it again so quickly.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_38"); //The only thing you have to do is to get close enough to the librarian to recognize the eccentric fiddle and the long beard.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_39"); //There's no one else walking around like that... even in this town.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_40"); //You don't need to and shouldn't have to say anything... the boy will caress himself.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_41"); //Afterwards you leave the library with your papers.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_42"); //If all goes well, you should also have enough time to bring the dress back before the tailor notices the loss.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_43"); //Well... and what's your job here?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_44"); //Me?! I'm kind of the wild card, if things don't go as planned.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_45"); //I will always be close by, observing the surroundings and intervening when it seems necessary.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_46"); //Okay, when do we start?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_47"); //Tomorrow morning at 10:00, you'll meet Ramirez here and go to the tailor's.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_48"); //If everything goes as planned, it should give us the ideal time frame for our coup.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_49"); //You all right? We're counting on you.

	Log_CreateTopic	(TOPIC_MOD_DIEB_GLORIE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GLORIE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "That's a bigger story now. I'm supposed to meet Ramirez here tomorrow morning at 10:00. I will go to the tailor with him and steal the scholar's robe while Ramirez distracts him. With the new clothes and a false beard I go to the library where Jesper robbed the librarian of his visual aid. I just need to face him, and he should bring me some valuable documents. During this time, Attila will ensure that the visit of the right scholar to the library is delayed. As soon as I have the papers, all I have to do is put the dress back at the tailor's before he notices the loss.");

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Cassia_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie2_Condition;
	information	= Info_Mod_Cassia_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Glorie3))
	&& (Npc_HasItems(hero, ItAr_GelehrterNeu) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie2_17_00"); //No time to lose. Put your clothes on and then go to the library.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie3_Condition;
	information	= Info_Mod_Cassia_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie2))
	&& (Npc_GetDistToWP(hero, "REL_CITY_145") < 500)
	&& (Mod_Dieb_Verkleidung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie3_17_00"); //Come on, in you go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie4_Condition;
	information	= Info_Mod_Cassia_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie3))
	&& (Npc_HasItems(hero, ItWr_DiebDokumente) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_00"); //Now enough of the words. Did you get the files?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie4_15_01"); //Yes, here.

	B_GiveInvItems	(hero, self, ItWr_DiebDokumente, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_02"); //Let me see.

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_03"); //No... that doesn't seem important....

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_04"); //Completely irrelevant...

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_05"); //Uninteresting...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_06"); //It will take a few hours to find something useful in the pile of documents.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DOKUMENTELESEN");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "DOKUMENTELESEN");

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "We were able to successfully steal the notes. Now it will take some time to study them.");

	B_GivePlayerXP	(500);

	// Blubberlutsch: Milkys Zeitscripte nehmen und 6 Stunden Cooldown für nächstes Gespräch!!!
};

INSTANCE Info_Mod_Cassia_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie5_Condition;
	information	= Info_Mod_Cassia_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie5_17_00"); //Well, I think we got something. Here, read it yourself.

	B_GiveInvItems	(self, hero, ItWr_BesaenftigungBeliars, 1);

	AI_StopProcessInfos	(self);

	B_UseItem (hero, ItWr_BesaenftigungBeliars);

	Npc_SetRefuseTalk (self, 15);
};

INSTANCE Info_Mod_Cassia_REL_Glorie6 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie6_Condition;
	information	= Info_Mod_Cassia_REL_Glorie6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie5))
	&& (!Npc_RefuseTalk(self))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie6_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_00"); //Well, doesn't that sound tempting?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_01"); //A little sacrifice of gold every few days.... possibly for centuries.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_02"); //Now we have to find out where this sacrifice is made.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_03"); //After the last action, you are the one who will certainly not be recognized again...
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_04"); //... so I can have the pleasure. I see.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_05"); //So, always stay close to the governor as soon as twilight sets in.... I trust you to do it.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "It seems that gold sacrifices have been offered to Beliar here for ages to protect the city from his anger. I have to shadow the governor at night to see where the gold lands.");
};

INSTANCE Info_Mod_Cassia_REL_Glorie7 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie7_Condition;
	information	= Info_Mod_Cassia_REL_Glorie7_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found out where they're sacrificing their gold.";
};

FUNC INT Info_Mod_Cassia_REL_Glorie7_Condition()
{
	if (Mod_Diebe_Brunnen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie7_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_00"); //I found out where they're sacrificing their gold. It's the closed well, right around here.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_01"); //Ahh, of course... nothing is better suited to trick a victim into Adanos than a well.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_02"); //So what should we do next?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_03"); //Well, the proximity of the well to our dwelling naturally plays into our hands.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_04"); //We will also have to use it to make our way through the ground with pickaxes.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_05"); //If we are lucky, we could find one of the cavities that seem to run underneath the city after just a few metres.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_06"); //Hopefully by tomorrow we'll have everything we need to get started with the tunnel.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Cassia's planning to build a tunnel from our hiding place.");

	Mod_Diebe_BrunnenTag = Wld_GetDay();
};

INSTANCE Info_Mod_Cassia_REL_Glorie8 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie8_Condition;
	information	= Info_Mod_Cassia_REL_Glorie8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie8_Condition()
{
	if (Mod_Diebe_Brunnen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie8_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie8_17_00"); //Come on, keep chipping.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie8_17_01"); //(to the hero) And you can also swing the pickaxe... You must be missing that from the colony.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_REL_Glorie9 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie9_Condition;
	information	= Info_Mod_Cassia_REL_Glorie9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie9_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie9_17_00"); //All right, grab some torches and go. We are very close to our goal.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7709_OUT_Attila_REL, "SCHATZKAMMER");
};

INSTANCE Info_Mod_Cassia_REL_Glorie10 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie10_Condition;
	information	= Info_Mod_Cassia_REL_Glorie10_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie10_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie10_17_00"); //I'd like to say we hit the jackpot. I don't blame anyone when he throws himself on the pile of gold and fills his pockets? (rapidly) I'll be the first to do it.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7709_OUT_Attila_REL, "INSCHATZKAMMER");

	B_SetTopicStatus	(TOPIC_MOD_DIEB_GLORIE, LOG_SUCCESS);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Cassia_REL_EXIT (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_EXIT_Condition;
	information	= Info_Mod_Cassia_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
