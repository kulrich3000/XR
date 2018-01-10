INSTANCE Info_Mod_Andokai_Hi (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Hi_Condition;
	information	= Info_Mod_Andokai_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andokai_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_12_00"); //What are you doing here?

	Info_ClearChoices	(Info_Mod_Andokai_Hi);

	Info_AddChoice	(Info_Mod_Andokai_Hi, "I was just looking around.", Info_Mod_Andokai_Hi_B);
	Info_AddChoice	(Info_Mod_Andokai_Hi, "Xardas referred me to you.", Info_Mod_Andokai_Hi_A);
};

FUNC VOID Info_Mod_Andokai_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_B_15_00"); //I was just looking around.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_B_12_01"); //You're a funny guy. You're lucky we don't have unpleasant visitors anymore... out of the way.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_B_12_02"); //If you don't want to apply to us, make sure you win some land.
};

FUNC VOID Info_Mod_Andokai_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_00"); //Xardas referred me to you. I want to join you.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_01"); //Xardas? There, there. And you want to be a novice? You look weak.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_02"); //I used to be stronger.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_03"); //How nice for you. If Xardas thinks you're suitable, there must be something about you.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_04"); //But I won't take you in unless you've proven how useful you can be to us.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_05"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_06"); //The first thing you have to do is convince me of your attitude.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_07"); //Khorinis has a monastery of fire magicians - our fierce enemies, as you know.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_08"); //It can't hurt if you hurt them a little - as a sign of trust for me.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_09"); //How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_10"); //The magicians bunker a relic in the depths of their vaults, guarding it like the apple of their eyes - the Holy Hammer.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_11"); //Would you now find that he would have disappeared - well, that would be very fun.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_12"); //So you will go to the monastery and steal that hammer.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_13"); //All clear. Am I just gonna be allowed into the convent?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_14"); //No. Only Innos believers can pass the entrance gate. To the right of the entrance, however, there is a low wall that leads to the inside of the monastery.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_15"); //But to avoid attracting attention, you must wear a novice's robe. We have a crude imitation that you'll hardly impress anyone with.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_16"); //But the old eyes of Gorax won't notice any difference. It may be possible to pass through the gate, but it is a risky attempt.

	CreateInvItems	(self, ITAR_FAKE_NOV_L, 1);
	B_GiveInvItems	(self, hero, ITAR_FAKE_NOV_L, 1);

	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_17"); //How do I get the hammer? Isn't he being protected?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_18"); //Of course he will. You're gonna have to come up with something.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_19"); //If you don't know what to do, ask Bodo in town. He himself recently had to fulfil a similar task.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_20"); //I'll be on my way, then.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_21"); //Wait! If you're already in the monastery, there's something else you can do. Gorax is responsible for wine production there.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_22"); //Wine is good, we need it not only for our rituals, but also because it tastes great - you have to leave it at the red fart knot.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_23"); //Acquire the trust of Gorax. Tell him to run an errand. Then take the wine and go back. Bring it to Myxir.

	Info_ClearChoices	(Info_Mod_Andokai_Hi);

	Log_CreateTopic	(TOPIC_MOD_ANDOKAI_WEIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ANDOKAI_WEIN, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DAEMONENBESCHWOERER, TOPIC_MOD_ANDOKAI_WEIN, "My first mission is to steal the Sacred Hammer for Andokai, which the Fire Magicians hid somewhere in the vaults of their monastery in Khorinis.", "I am to go to the monastery of fire magicians and convince Gorax to hand me a shipment of wine, which I then bring to Myxir.");
	B_LogEntry_NS	(TOPIC_MOD_ANDOKAI_WEIN, "I don't attract attention in the monastery when I wear a novice's robe. In addition, I have to climb over the wall to the right of the entrance gate of the monastery to reach the inner courtyard.");
	B_LogEntry_NS	(TOPIC_MOD_DAEMONENBESCHWOERER, "I don't attract attention in the monastery when I wear a novice's robe. In addition, I have to climb over the wall to the right of the entrance gate of the monastery to reach the inner courtyard. How I steal the hammer without being noticed, maybe Bodo can tell me in town.");
};

INSTANCE Info_Mod_Andokai_Hammer (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Hammer_Condition;
	information	= Info_Mod_Andokai_Hammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the kicker.";
};

FUNC INT Info_Mod_Andokai_Hammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& (Npc_HasItems(hero, ITAR_FAKE_NOV_L) == 1)
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Hammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hammer_15_00"); //Here's the kicker.

	B_GiveInvItems	(hero, self, Holy_Hammer_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_01"); //All right, all right. You don't seem to have a problem working against the Fire Magicians.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_02"); //This is gratifying, albeit a basic prerequisite.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_03"); //The next task will test your stamina, perseverance, intelligence and fighting ability.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_04"); //I want you to find the library of this fortress.
	AI_Output(hero, self, "Info_Mod_Andokai_Hammer_15_05"); //Uh...?
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_06"); //There's a gate under me. This gate leads into a maze. And somewhere behind the maze is the library.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_07"); //I want to know how to get there. You will find this way.

	Npc_RemoveInvItems	(hero, ITAR_FAKE_NOV_L, 1);

	B_GivePlayerXP	(150);

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Behind the big gate on the square of the Beliaran Fortress there is a maze that leads to a library. And I have to find the way.");
	
	if (!Npc_KnowsInfo(hero, Info_Mod_Gorax_Andokai)) {
		B_SetTopicStatus(TOPIC_MOD_ANDOKAI_WEIN, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Andokai_WarInBib (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_WarInBib_Condition;
	information	= Info_Mod_Andokai_WarInBib_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the library.";
};

FUNC INT Info_Mod_Andokai_WarInBib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (Mod_BibEntdeckt)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_WarInBib_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_00"); //I found the library.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_01"); //Did you remember the route?

	if (Mod_BeliarStatue_Bibliothek_Dabei)
	{
		AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_02"); //I've connected a Beliar statue there to the teleport network.
		AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_03"); //Someone thinking. You convince me more and more.

		B_GivePlayerXP	(300);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_04"); //Yeah. The right aisles are all open.
		AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_05"); //This means that it will now be easier for us to find our way through the labyrinth.

		B_GivePlayerXP	(200);
	};

	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_06"); //I will instruct my magicians to thoroughly explore the library.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_07"); //I'd be willing to accept you as a novice. Now all I need is Xardas' approval. He wants to look at every new recruit.
	AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_08"); //Do we have to? I've known Xardas for a long time.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_09"); //Then maybe it'll be easier to convince him.

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "If Xardas agrees, Andokai will accept me as a novice.");

	Wld_InsertNpc	(Mod_7755_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7756_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7757_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7758_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7759_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
};

INSTANCE Info_Mod_Andokai_Skinner (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Skinner_Condition;
	information	= Info_Mod_Andokai_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got some swampweed here.";
};

FUNC INT Info_Mod_Andokai_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_HasItems(hero, ItMi_Traumruf) >= 2)
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_02) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Skinner_15_00"); //I've got some swamp herb here, master of the spherical manifestation.
	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_01"); //Excellent. This will certainly increase my knowledge of Beliar and dark magic. What do you have to offer?
	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_02"); //I'll take two dream cries, plus the 12 black wise men.

	Npc_RemoveInvItems	(hero, ItMi_Traumruf, 2);
	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_02, 12);

	B_ShowGivenThings	("Swamp herb stems given");

	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_03"); //I think this should cover your expenses.

	CreateInvItems	(self, ItMi_Gold, 750);
	B_GiveInvItems	(self, hero, ItMi_Gold, 750);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Andokai remunerated me generously for the swampweed.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Andokai_Moorhexe (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Moorhexe_Condition;
	information	= Info_Mod_Andokai_Moorhexe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have heard that you are in possession of metamorphosis spells.";
};

FUNC INT Info_Mod_Andokai_Moorhexe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Moorhexe_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_00"); //I have heard that you are in possession of metamorphosis spells. Could I perhaps purchase some of them?
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_01"); //Ha, that's where it all ends. You want material designed for our priceless research?
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_02"); //As a simple mercenary, you can't even work a simple fire-arrow castor.
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_03"); //Well, I was at least talented enough to enter your monastery through the shrines and teleport myself all over Khorinis.
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_04"); //I am happy to provide proof of my experience with runes and spell roles.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_05"); //What are you daring to mock mine?!
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_06"); //l-- (stopps suddenly) But wait, let me think... I have a little task that will show whether you are highly gifted or a complete fool.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_07"); //A valuable relic, the golden stick of Pyrman, was stolen from the Innos monastery during a raid by demonic creatures.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_08"); //If you succeed in bringing me this one, you've convinced me.

	Log_CreateTopic	(TOPIC_MOD_NL_STAB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_STAB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_STAB, "Andokai only wanted to leave me with the condition of transformational roles when I got him the' staff Pyrmans'. He was stolen from the monastery of fire magicians during the raid.");
};

INSTANCE Info_Mod_Andokai_PyrmansStab (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_PyrmansStab_Condition;
	information	= Info_Mod_Andokai_PyrmansStab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_PyrmansStab_Condition()
{
	if (Npc_HasItems(hero, ItMw_PyrmansStab) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_PyrmansStab_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_00"); //What are you doing back here?! As long as you don't have the staff, you'll need me...
	AI_Output(hero, self, "Info_Mod_Andokai_PyrmansStab_15_01"); //I have the staff.
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_02"); //What?! You're trying to fool me. I'm gonna have to ask you....

	B_GiveInvItems	(hero, self, ItMw_PyrmansStab, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_03"); //... ohh... truly. I don't know what to say.... That changes the situation, of course...
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_04"); //Here, take this slightly damaged bunny rune.

	B_GiveInvItems	(self, hero, ItRu_TrfRabbit, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_05"); //It may not be complete, but it does not require magic circles as a basis for its use.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_NL_STAB, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andokai_UngeheuerInBib (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_UngeheuerInBib_Condition;
	information	= Info_Mod_Andokai_UngeheuerInBib_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_UngeheuerInBib_Condition()
{
	if (Mod_BeliarBibScene == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib_12_00"); //Would you go with him? I don't put much emphasis on this weakling.

	Info_ClearChoices	(Info_Mod_Andokai_UngeheuerInBib);

	Info_AddChoice	(Info_Mod_Andokai_UngeheuerInBib, "Let him go alone.", Info_Mod_Andokai_UngeheuerInBib_B);
	Info_AddChoice	(Info_Mod_Andokai_UngeheuerInBib, "No problem.", Info_Mod_Andokai_UngeheuerInBib_A);
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_C()
{
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib_C_12_00"); //Then it's settled. I will now turn to important things again.

	Info_ClearChoices	(Info_Mod_Andokai_UngeheuerInBib);
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib_B_15_00"); //Let him go alone.

	B_StartOtherRoutine	(Mod_7756_KDS_SchwarzerMagier_MT, "START");

	Info_Mod_Andokai_UngeheuerInBib_C();
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib_A_15_00"); //No problem.

	Mod_BeliarBibScene = 3;

	Log_CreateTopic	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BELIAR_UNGEHEUER, "I have agreed to go to the library with a magician to check up on him. Apparently something strange has happened there.");

	Info_Mod_Andokai_UngeheuerInBib_C();
};

INSTANCE Info_Mod_Andokai_UngeheuerInBib2 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_UngeheuerInBib2_Condition;
	information	= Info_Mod_Andokai_UngeheuerInBib2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The library's clean again.";
};

FUNC INT Info_Mod_Andokai_UngeheuerInBib2_Condition()
{
	if (Mod_BeliarBibScene == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_00"); //The library's clean again.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_01"); //Good work. What has the novice done?
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_02"); //He released some very old creatures. But they're all dead.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_03"); //I'm already trying so hard to choose the novices. Why am I still being punished with fools like that?
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_04"); //Only Beliar knows.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_05"); //That's right, you are. I'm going to tighten up the terms of admission.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7755_KDS_SchwarzerMagier_MT, "START");
	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Andokai_Bibliothek1 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Bibliothek1_Condition;
	information	= Info_Mod_Andokai_Bibliothek1_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you know about the library?";
};

FUNC INT Info_Mod_Andokai_Bibliothek1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Bibliothek1_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Bibliothek1_15_00"); //How do you know about the library?
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_01"); //The two inhabitants of the fortress told us about it when we came here. But even on the torture they didn't want to tell us the way through the maze.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_02"); //Since then, we have already sent in some novice candidates, but either they didn't come back at all or they didn't succeed.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_03"); //The labyrinth seems to contain more than just a few dead ends.
};

INSTANCE Info_Mod_Andokai_Bibliothek2 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Bibliothek2_Condition;
	information	= Info_Mod_Andokai_Bibliothek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing there?";
};

FUNC INT Info_Mod_Andokai_Bibliothek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Bibliothek2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Bibliothek2_15_00"); //What are you doing there?
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek2_12_01"); //The library is supposed to be huge. Who knows what ancient treasures and wisdom are hidden there.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek2_12_02"); //What you have to hide is worth a little perseverance.
};

INSTANCE Info_Mod_Andokai_Infos (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Infos_Condition;
	information	= Info_Mod_Andokai_Infos_Info;
	permanent	= 1;
	important	= 0;
	description	= "I have some more general questions....";
};

FUNC INT Info_Mod_Andokai_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_15_00"); //I have some more general questions....
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_12_01"); //What's up?

	Info_ClearChoices	(Info_Mod_Andokai_Infos);

	Info_AddChoice	(Info_Mod_Andokai_Infos, DIALOG_BACK, Info_Mod_Andokai_Infos_BACK);

	Info_AddChoice	(Info_Mod_Andokai_Infos, "Tell me about Beliar.", Info_Mod_Andokai_Infos_C);
	Info_AddChoice	(Info_Mod_Andokai_Infos, "Tell me about the fortress.", Info_Mod_Andokai_Infos_B);
	Info_AddChoice	(Info_Mod_Andokai_Infos, "Tell me about the black mages.", Info_Mod_Andokai_Infos_A);
};

FUNC VOID Info_Mod_Andokai_Infos_BACK()
{
	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_C()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_C_15_00"); //Tell me about Beliar.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_01"); //Beliar is the god of chaos and in eternal war with Innos, the god of currant shit.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_02"); //Beliar encourages boundless thinking and doesn't believe in calcified traditions that are downplayed without meaning and reason.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_03"); //His followers are therefore mostly free spirits and courageous people who are not subject to any laws.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_B_15_00"); //Tell me about the fortress.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_01"); //The fortress used to offer partisans protection in the fight against the orcs.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_02"); //After the end of the war, the local leader was ennobled and allowed to keep them.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_03"); //When we found her, she was inhabited by just two old people, a run-down descendant of the leader and his servant.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_04"); //They were too weak to run away from us. So we took possession of the fortress.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_05"); //Years have passed since then. But this wall has not yet revealed all its secrets.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_06"); //After all, it offers everything we need in excess.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_A_15_00"); //Tell me about the black mages.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_01"); //There are many of us, but we usually stay hidden.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_02"); //You will find us in high offices and as blameless citizens, and you will be able to search our houses and won't notice any of our sentiments.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_03"); //We've learned to live inconspicuously. For example, I was only thrown into the barrier because I joined a workers' protest.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_04"); //What at first seemed like a hard blow of fate turned out to be the greatest happiness of my life.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_05"); //Together with other comrades I found this old fortress where we could live out our faith openly for the first time.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_06"); //Due to the fall of the barrier, things have not remained quite so quiet.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_07"); //Xardas brought us some lost souls from the Old Camp, whose brains we could form according to our ideas, after their memory had been erased.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_08"); //As a result, we have meanwhile grown into a handsome troop.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

INSTANCE Info_Mod_Andokai_WoKloster (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_WoKloster_Condition;
	information	= Info_Mod_Andokai_WoKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find the monastery?";
};

FUNC INT Info_Mod_Andokai_WoKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_WoKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_WoKloster_15_00"); //Where can I find the monastery?
	AI_Output(self, hero, "Info_Mod_Andokai_WoKloster_12_01"); //Make your way to Khorinis. From the northern city gate, head towards the Tavern Zur toten Harpie. From there a path leads directly to the monastery.
	AI_Output(self, hero, "Info_Mod_Andokai_WoKloster_12_02"); //Maybe you'll find a fool in Khorinis to take you there.
};

instance Info_Mod_Andokai_Runen	(C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Runen_Condition;
	information	= Info_Mod_Andokai_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Instruct me (create runes)";
};

func int Info_Mod_Andokai_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 1)
	{
		return 1;
	};
};

func void Info_Mod_Andokai_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Andokai_Runen_15_00"); //Teach me.
	
	Info_ClearChoices 	(Info_Mod_Andokai_Runen);
	Info_AddChoice		(Info_Mod_Andokai_Runen, DIALOG_BACK, Info_Mod_Andokai_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Skull] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_Skull, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Skull)), Info_Mod_Andokai_Runen_Skull);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ArmyOfDarkness] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_ArmyOfDarkness, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_ArmyOfDarkness)) ,Info_Mod_Andokai_Runen_ArmyOfDarkness);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonDemon] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonDemon, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonDemon)), Info_Mod_Andokai_Runen_SummonDemon);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_BreathOfDeath] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_BreathOfDeath, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_BreathOfDeath)) ,Info_Mod_Andokai_Runen_BreathOfDeath);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Andokai_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonZombie] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonZombie, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonZombie)), Info_Mod_Andokai_Runen_SummonZombie);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonGolem] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGolem, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGolem)), Info_Mod_Andokai_Runen_SummonGolem);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_DestroyUndead] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_DestroyUndead, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_DestroyUndead)), Info_Mod_Andokai_Runen_DestroyUndead);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonSkeleton] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonSkeleton, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonSkeleton)), Info_Mod_Andokai_Runen_SummonSkeleton);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Andokai_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonGuardian] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGuardian, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGuardian)), Info_Mod_Andokai_Runen_SummonGuardian);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_EnergyBall] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_BeliarsRage, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_EnergyBall)), Info_Mod_Andokai_Runen_BeliarsRage);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonGoblinSkeleton] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGoblinSkeleton, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGoblinSkeleton)), Info_Mod_Andokai_Runen_SummonGoblinSkeleton);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Andokai_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Andokai_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonWolf] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonWolf, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonWolf)), Info_Mod_Andokai_Runen_SummonWolf);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SuckEnergy] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SuckEnergy, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SuckEnergy)), Info_Mod_Andokai_Runen_SuckEnergy);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Andokai_Runen_12_01"); //There's nothing more I can teach you.
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Andokai_Runen);
};

FUNC VOID Info_Mod_Andokai_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SuckEnergy()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SuckEnergy);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SuckEnergy) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SuckEnergy, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_Zerfleischen()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zerfleischen);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Zerfleischen) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Zerfleischen, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGoblinSkeleton()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGoblinSkeleton);
	
	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumGobSkel) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumGobSkel, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGuardian()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGuardian);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SummonGuardian) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SummonGuardian, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonZombie()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonZombie);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SummonZombie) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SummonZombie, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGolem);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumGol) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumGol, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_DestroyUndead()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_DestroyUndead);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_HarmUndead) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_HarmUndead, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BeliarsRage()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_EnergyBall);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_BeliarsRage) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_BeliarsRage, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonSkeleton()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonSkeleton);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumSkel) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumSkel, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonDemon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDemon);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumDemon) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumDemon, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BreathOfDeath()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_BreathOfDeath);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_BreathOfDeath) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_BreathOfDeath, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_Skull()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Skull);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Skull) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Skull, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_FullHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_ArmyOfDarkness()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ArmyOfDarkness);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_ArmyOfDarkness) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_ArmyOfDarkness, 1);
	};
};

INSTANCE Info_Mod_Andokai_Pickpocket (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Pickpocket_Condition;
	information	= Info_Mod_Andokai_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Andokai_Pickpocket_Condition()
{
	C_Beklauen	(170, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

	Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_BACK, Info_Mod_Andokai_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Andokai_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Andokai_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Andokai_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Andokai_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Andokai_EXIT (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_EXIT_Condition;
	information	= Info_Mod_Andokai_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Andokai_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andokai_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
