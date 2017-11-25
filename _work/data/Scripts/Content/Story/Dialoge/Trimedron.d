INSTANCE Info_Mod_Trimedron_Hi (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Hi_Condition;
	information	= Info_Mod_Trimedron_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Trimedron_Hi_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		self.aivar[AIV_AttackReason] = 0;
		self.aivar[AIV_LastPlayerAR] = 0;
		B_SetAttitude (self, ATT_FRIENDLY);
		return 0;
	}
	else
	{
		B_Attack	(self, hero, AR_None, 0);
		return 0;
	};
};

FUNC VOID Info_Mod_Trimedron_Hi_Info()
{
	
};

INSTANCE Info_Mod_Trimedron_Formel (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Formel_Condition;
	information	= Info_Mod_Trimedron_Formel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pod audmeau athuk.";
};

FUNC INT Info_Mod_Trimedron_Formel_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Formel_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_00"); //Pod audmeau athuk.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_01"); //I listened to your words and gave you my hearing.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_02"); //Even though it amazes me to find a human being here again after such a long time.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_03"); //So say, where do you come from and what is your desire?
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_04"); //I come from the mainland and came here by teleport magic.... as the forefathers of the culture of this island.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_05"); //Diese "civilization" ist seit langem erloschen, die Insel von Menschen unbewohnt.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_06"); //I had the same impression. What happened to the residents?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_07"); //Many centuries ago, the land and sea began to rage.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_08"); //It was the time when Innos and Beliar were at war in the land of Adano.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_09"); //Fire, toxic fumes and earthquakes devastated the island and threatened all its inhabitants.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_10"); //Since our teleport mechansimens had been damaged by the earthquakes, the priests and scholars hurriedly created portals which they maintained solely with the help of their spiritual powers.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_11"); //Evacuation began, but before all the inhabitants were able to escape, a massive explosion opened up the ground.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_12"); //Hot, poisonous vapours escaped abruptly and covered everything below this place.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_13"); //They brought to everyone the immediate death that was still on the island - not least to the priests and scholars.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_14"); //... and thus the head of the local culture. First Xeres, then natural disasters. So that's why they're going out.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_15"); //Xeres?! You're pronouncing the name of this abominable wrong-doer?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_16"); //Then you report on the final extinction of culture and yet you are able to read their texts, understand their language.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_17"); //Who are you, what's the deal with your appearance here? Explain yourself!
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_18"); //I come from the same island where your culture was once at home, but from another part of the island.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_19"); //With some of Adano's magicians, I recently discovered and explored the ruins of what was once your home.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_20"); //We did a lot of research, learned a lot about the old culture and learned a lot.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_21"); //In the course of our investigations, however, we have reactivated some portals.... which - how should I put it - enabled Xeres to return to this world.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_22"); //With Adanos, that's not possible. Xeres was destroyed.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_23"); //You know about this?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_24"); //Of course, of course! We stayed in contact with the other builders via teleport mechanisms, some of whom had settled somewhere else and some of whom had stayed behind in Jharkendar.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_25"); //That doesn't matter now. How do you know he'd come back? Are you kidding me?!
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_26"); //No, I assure you I'm telling the truth.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_27"); //With the help of his powerbearers and orcs, he is about to subjugate all of Khorinis.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_28"); //Only if we restore Uriziel, we can stop him.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_29"); //You know all this? Even the name of the sword with which Xeres was destroyed?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_30"); //For true, it makes me wonder whether there may be something true in your words.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_31"); //I also recently felt all the strong magical shocks in the spheres.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_32"); //And yet... how can I be sure that you are who you pretend to be?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_33"); //Who says you don't want to use the power of the sword to pursue other plans?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_34"); //No, I can't possibly just give you access to the ritual site.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_35"); //This will be your concern, which leads you here...
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_36"); //Yes, it's the only way! What can I do to convince you?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_37"); //Well, let me think about it....
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_38"); //First of all, tell me how the sword was destroyed and how you intend to restore it.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_39"); //An orcish shaman of the Xeres destroyed it in a ritual.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_40"); //The priests of the three gods want to restore the sword with the help of the three weapons of the gods.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_41"); //Orkisch ... Ork ... (nachdenklich) Es klingt nach einer Abwandlung des Wortes "primordial ura".
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_42"); //And you're talking about the weapons of the new three deities. For true, everything you tell me seems conclusive. And yet...
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_43"); //Great, he still has doubts.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_44"); //Wait... if you really want to destroy Xeres, you must also get rid of him as the man who banished him.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_45"); //You should be able to find them on Khorinis or surrounding islands and place them with the gods' weapons.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_46"); //The magicians should be able to give you clear information about their whereabouts.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_47"); //Once you have done this and brought me their soul stones as a testimony of your success, I will reveal the entrance to the holy place.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_48"); //And you'll probably need their hearts anyway for the ritual.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_49"); //All right, if necessary, I'll be on my way.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_50"); //Good. The Trinity of the Radano shall guard you.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Before Trimedron releases the ceremonial site, he asks me to destroy the Xeriah's powerbearers and bring him the bastard's soul stones. The mages can probably give me more information about the creatures' current whereabouts.");
};

FUNC VOID B_Say_Antwort_Seelenstein()
{
	if (Npc_HasItems(hero, ItAt_SoulStone) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_00"); //Ausgezeichnet. Ich spüre jetzt nur noch die Mächte zweier andere Machtträger.
	}
	else if (Npc_HasItems(hero, ItAt_SoulStone) == 2)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_01"); //Unglaublich. Wenn mich meine Wahrnehmung nicht täuscht, so ist es nur noch die Macht eines Seelensteines, die es zu erringen gilt.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_02"); //Drei Seelensteine sind nun in unserem Besitz.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_03"); //Jetzt noch an deinem Vorhaben zu zweifeln, müsste von Verblendung zeugen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_04"); //Ich werde nun den Zugang zur Ritualstätte offen legen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_05"); //Dieser Zettel enthält die Formel, die, wenn am richtigen Ort dort oben am Fels ausgeprochen, den Zugang zur Ritualstätte öffnet.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_06"); //Der dreifaltige Radanos möge euer Vorhaben gelingen lassen ...

		B_GiveInvItems	(self, hero, ItWr_Ritualplatz, 1);

		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_07"); //Großartig, dann kann ich die Magier herbeiholen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_08"); //Ach, und noch etwas. Mir ist der Name des Mannes eingefallen, der Xeres bezwang und ich bin auch nun bereit, ihn dir verraten.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_09"); //Wenn ich mich recht entsinne, trug er den Namen ... Argis.
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_10"); //Argis?! Meinst du vielleicht Argez?
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_11"); //(verblüfft) Ja, genau, Argez. Wie ist es möglich, dass du es weißt?
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_12"); //Ich begegnete auf Khorinis einem Mann, der diesen Namen trug.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_13"); //Was?! Das muss ein Zufall sein ... aber vielleicht ... Ach Unsinn ...
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_14"); //Geh jetzt deinen Aufgaben weiter nach und hole die Magier herbei.

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Trimedron gave me a note with the magic formula that will open the way to the ritual site. It will be on the hill here. I should open the cave and then go to Xardas.");
	};
};

INSTANCE Info_Mod_Trimedron_SeelensteinUrnol (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUrnol_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUrnol_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have here the soul stone of Urnol, the shadow lord.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUrnol_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Urnol) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUrnol_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUrnol_15_00"); //I have here the soul stone of Urnol, the shadow lord.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Urnol, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinFormwandler (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinFormwandler_Condition;
	information	= Info_Mod_Trimedron_SeelensteinFormwandler_Info;
	permanent	= 0;
	important	= 0;
	description	= "The changeable shape of the shape-shifter....";
};

FUNC INT Info_Mod_Trimedron_SeelensteinFormwandler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Formwandler) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinFormwandler_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinFormwandler_15_00"); //The changeable shape of the shape-shifter was not able to save him from destruction. Here's his soul stone.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Formwandler, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinUD (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUD_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUD_Info;
	permanent	= 0;
	important	= 0;
	description	= "I snatched this soul stone from the body of the undead dragon.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUD_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_UD) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUD_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUD_15_00"); //I snatched this soul stone from the body of the undead dragon.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_UD, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_Fragen (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Fragen_Condition;
	information	= Info_Mod_Trimedron_Fragen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have one more question...";
};

FUNC INT Info_Mod_Trimedron_Fragen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Fragen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Fragen_15_00"); //I have one more question...
	AI_Output(self, hero, "Info_Mod_Trimedron_Fragen_07_01"); //Yes, as far as it seems reasonable and possible, I will give you information.
};

INSTANCE Info_Mod_Trimedron_Teleporter (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Teleporter_Condition;
	information	= Info_Mod_Trimedron_Teleporter_Info;
	permanent	= 0;
	important	= 0;
	description	= "For my return to Khorinis, I have to find a teleporter.";
};

FUNC INT Info_Mod_Trimedron_Teleporter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Teleporter_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Teleporter_15_00"); //For my return to Khorinis I have to find a teleporter and activate it with my magical focus. Do you know where I can find one?
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_01"); //Yes, near the settlement.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_02"); //The corresponding pedestal was located near a tower, but was buried under rubble during one of the earthquakes.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_03"); //So you'll have to pull up a pickaxe to uncover the plinth.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "The plinth is located under rubble near a dilapidated tower. I'm gonna have to dig.");
};

INSTANCE Info_Mod_Trimedron_Xeres (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Xeres_Condition;
	information	= Info_Mod_Trimedron_Xeres_Info;
	permanent	= 0;
	important	= 0;
	description	= "But if you knew about the apparent extermination of Xeres (...) )";
};

FUNC INT Info_Mod_Trimedron_Xeres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Xeres_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Xeres_15_00"); //If you knew about the apparent annihilation of Xeres, why did you never return?
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_01"); //Return? Almost all settlements and most of the ritual sites were destroyed.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_02"); //And Xeres as such may have disappeared from the face of the earth... but this did not apply to his lackeyship of evil.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_03"); //The priesthood of the blood cult, the renegade and treacherous Uraks, demonic creatures.... they all would have made a new settlement possible only at the cost of another bloodshed.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_04"); //On this island we had found our new home and were - at least for the longest time - safe from all evils.
};

INSTANCE Info_Mod_Trimedron_Urak (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Urak_Condition;
	information	= Info_Mod_Trimedron_Urak_Info;
	permanent	= 0;
	important	= 0;
	description	= "You mentioned the word' Urak' earlier in connection with the orcs.";
};

FUNC INT Info_Mod_Trimedron_Urak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Urak_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Urak_15_00"); //Du erwähntest vorher in Zusammenhang mit den Orks das Wort "primordial ura". Was hat es damit auf sich?
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_01"); //The Uraks were once the inhabitants of yearendar, like everyone else.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_02"); //But after Xeres had won it, they sneak into his side and betrayed everything that our faith, our culture stood for.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_03"); //Much suffering was inflicted upon the steadfast and faithful builders, and many innocent people were taken away by their murdering hands.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_04"); //After Xeres had been banished and the three new gods had emerged from the power and will of Radano, the Celestials punished the Uraks for their despicable iniquity.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_05"); //They had raged like a horde of warg in blood frenzy and were supposed to express this through their appearance.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_06"); //For all time the animal figure was to disfigure it, which still draws the orcs today.
};

INSTANCE Info_Mod_Trimedron_Argez (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Argez_Condition;
	information	= Info_Mod_Trimedron_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "You were talking about a young man.";
};

FUNC INT Info_Mod_Trimedron_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_00"); //You spoke of a young man who sent Xeres back into the womb of the earth through Uriziel. What do you know about him?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_01"); //Well, this chapter of our history is one of the most mysterious and could never be fully elucidated.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_02"); //No one knows where this man came from and where he went after the banishment of Xeres.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_03"); //How is that possible?! There must be something about him....
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_04"); //It's like I said.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_05"); //He seemed to have come out of nowhere... and he disappeared without a trace.... as if he never really existed.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_06"); //But wait... allegedly someone once heard his name...
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_07"); //(Expected) Yes?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_08"); //He... I can't even think of him.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_09"); //Great! A ghost with amnesia.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_10"); //It's been centuries... I just need some time to think.
};

INSTANCE Info_Mod_Trimedron_EXIT (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_EXIT_Condition;
	information	= Info_Mod_Trimedron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trimedron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trimedron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
