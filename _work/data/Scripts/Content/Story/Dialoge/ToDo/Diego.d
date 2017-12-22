INSTANCE Info_Mod_Diego_Hi (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Hi_Condition;
	information	= Info_Mod_Diego_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_00"); //You're still alive.
	AI_Output(hero, self, "Info_Mod_Diego_Hi_15_01"); //With a short break, yes.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_02"); //Damn, first good news in days. We had already written you off.
	AI_Output(hero, self, "Info_Mod_Diego_Hi_15_03"); //But here I stand.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_04"); //Sooner or later you'll have to tell me what you were doing at the sleeper temple.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_05"); //But I'm sure you don't know everything that's happened since then.
};

INSTANCE Info_Mod_Diego_WasFuerWelt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_WasFuerWelt_Condition;
	information	= Info_Mod_Diego_WasFuerWelt_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of world did we end up in?";
};

FUNC INT Info_Mod_Diego_WasFuerWelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_00"); //What kind of world did we end up in?
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_01"); //In a complicated one. As far as I can see, the idyllic time of the island is coming to an end.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_02"); //The Paladins are desperately trying to find a solution to make us, the convicts, harmless.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_03"); //Some of them prefer rather rough solutions.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_04"); //We are fortunate that Lord Hagen is so fickle - otherwise they would probably act more purposefully against us.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_05"); //Many colonists don't dare to go into town because of the militia.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_06"); //They gather in groups outside, for example on the farm of the farmer Onar.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_07"); //I doubt that this will work in the long run. Militia and paladins feel encircled, and then... then someone's doing something at the wrong moment, and peace is over.
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_08"); //Which side would you be on?
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_09"); //Ha! Like I'd get involved in those fools' war games!
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_10"); //I suppose you like the role of the Observer.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_11"); //You get to know a lot of things. Recently, a masked figure has been seen in several places, panicking the peasants.
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_12"); //I saw them outside Xardas's tower.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_13"); //Xardas?! Don't tell me this guy's still got his fingers in the pie!
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_14"); //He too speaks of a new threat.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_15"); //(mumbles) I would have been surprised if it ever got boring with Xardas... What are you going to do next?

	Info_ClearChoices	(Info_Mod_Diego_WasFuerWelt);

	Info_AddChoice	(Info_Mod_Diego_WasFuerWelt, "I just let myself drift.", Info_Mod_Diego_WasFuerWelt_B);
	Info_AddChoice	(Info_Mod_Diego_WasFuerWelt, "The first thing I do is familiarize myself with the groups.", Info_Mod_Diego_WasFuerWelt_A);
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_C()
{
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_C_11_00"); //I can tell you about the Ring of Water, if you want.

	Info_ClearChoices	(Info_Mod_Diego_WasFuerWelt);
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_B_15_00"); //I just let myself drift.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_B_11_01"); //You've actually earned it, but we can't afford to indulge in idleness now.

	Info_Mod_Diego_WasFuerWelt_C();
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_A_15_00"); //The first thing I do is familiarize myself with the groups.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_A_11_01"); //Like the colony, huh?

	Info_Mod_Diego_WasFuerWelt_C();
};

INSTANCE Info_Mod_Diego_WasJetzt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_WasJetzt_Condition;
	information	= Info_Mod_Diego_WasJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing now?";
};

FUNC INT Info_Mod_Diego_WasJetzt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasJetzt_15_00"); //What are you doing now?
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_01"); //When I'm not needed by the water magicians, I try to pursue my old trade.
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_02"); //Everyone has to see where he stays.
	AI_Output(hero, self, "Info_Mod_Diego_WasJetzt_15_03"); //Where can I get something in Khorinis?
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_04"); //Upstairs. But it's full of paladins.
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_05"); //Here in the harbour district, most of them are poor people.
};

INSTANCE Info_Mod_Diego_RingDesWassers (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_RingDesWassers_Condition;
	information	= Info_Mod_Diego_RingDesWassers_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the deal with the ring of water?";
};

FUNC INT Info_Mod_Diego_RingDesWassers_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_WasFuerWelt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_RingDesWassers_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_RingDesWassers_15_00"); //What's the deal with the ring of water?
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_01"); //We are the eyes and ears of the Water Magicians.
	AI_Output(hero, self, "Info_Mod_Diego_RingDesWassers_15_02"); //You're getting involved with the water magicians?
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_03"); //They are the only ones who remain reasonable and do not put their ideological nonsense before everything else.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_04"); //We don't have to be good friends for that.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_05"); //Vatras is our contact person in Khorinis. If you're interested, you should contact him.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_06"); //We're on to a big deal here.
};

INSTANCE Info_Mod_Diego_Boring (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring_Condition;
	information	= Info_Mod_Diego_Boring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Boring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Kapitel >= 3)
	&& (Mod_Mario_Diego == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	|| (Mod_PalaKapitel3 >= 4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Boring_11_00"); //Hey, you got a minute? For a little walk?
	AI_Output(hero, self, "Info_Mod_Diego_Boring_15_01"); //For old times' sake?
	AI_Output(self, hero, "Info_Mod_Diego_Boring_11_02"); //For old times' sake, that's right.
};

INSTANCE Info_Mod_Diego_Boring2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring2_Condition;
	information	= Info_Mod_Diego_Boring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going.";
};

FUNC INT Info_Mod_Diego_Boring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Boring))
	&& (Mod_DiegoDabei == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	|| (Mod_PalaKapitel3 >= 4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring2_15_00"); //Let's get going.
	AI_Output(self, hero, "Info_Mod_Diego_Boring2_11_01"); //Here we go. Let's go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LIGHTHOUSE");
};

INSTANCE Info_Mod_Diego_Boring3 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring3_Condition;
	information	= Info_Mod_Diego_Boring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Boring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Boring2))
	&& (Npc_GetDistToWP(self, "WP_DIEGO_ERINNERUNG_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_00"); //Listen - I don't know how much longer I'm staying in Khorinis.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_02"); //There's nothing for me to do here. I'm not cut out for regular work.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_03"); //But there's nothing to pick up in the docks, and I've got the city guard upstairs.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_15_04"); //We convicts are just not very welcome.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_05"); //You said it! Sometimes I think the time in the barrier wasn't so bad after all.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_06"); //In some ways, we were freer than we are now.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_07"); //(sighing) Man, I still preferred the few pigs in the Old Camp like the ore barons to those damned paladins who would have liked to hang you up as soon as you raised your nose.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_08"); //What do you think - was it even better then than it is now?

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	Info_AddChoice	(Info_Mod_Diego_Boring3, "You can tell you're transfiguring the past.", Info_Mod_Diego_Boring3_B);
	Info_AddChoice	(Info_Mod_Diego_Boring3, "Yeah, I think so.", Info_Mod_Diego_Boring3_A);
};

FUNC VOID Info_Mod_Diego_Boring3_C()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_C_15_00"); //Why don't you go back to the old camp?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_01"); //It's not like it used to be.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_02"); //The boys there now have to work hard for their daily bread, lying on the lazy skin all day long is no longer possible.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_C_15_03"); //Then where are you going?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_04"); //I can forget about it on Khorini's.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_05"); //Except for the city there are only small communities where it would be noticeable if I let off steam.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_06"); //No, I want to get out of here. How about you coming with me?

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	Info_AddChoice	(Info_Mod_Diego_Boring3, "No, my future is on Khorini's.", Info_Mod_Diego_Boring3_E);
	Info_AddChoice	(Info_Mod_Diego_Boring3, "Without hesitation, as soon as I'm done here.", Info_Mod_Diego_Boring3_D);
};

FUNC VOID Info_Mod_Diego_Boring3_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_B_15_00"); //You can tell you're transfiguring the past.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_B_11_01"); //I see, it's always been harder for you.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_B_11_02"); //You didn't notice much of the beautiful sides, because you were always on the road and got stuck with the Guidewolves. (laughs)

	Info_Mod_Diego_Boring3_C();
};

FUNC VOID Info_Mod_Diego_Boring3_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_A_15_00"); //Yeah, I think so.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_A_11_01"); //Too bad it's over. My dexterity was not often admired in my life.

	Info_Mod_Diego_Boring3_C();
};

FUNC VOID Info_Mod_Diego_Boring3_F()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_F_15_00"); //See you around.

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "START");
};

FUNC VOID Info_Mod_Diego_Boring3_E()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_E_15_00"); //No, my future is on Khorini's.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_01"); //I almost suspected you were saying that.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_02"); //But you know, I don't think you belong in Khorinis.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_03"); //Think again, I'm not leaving right now.

	Info_Mod_Diego_Boring3_F();
};

FUNC VOID Info_Mod_Diego_Boring3_D()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_D_15_00"); //Without hesitation, as soon as I'm done here.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_D_11_01"); //When the time comes, let me know. You know where I am.

	Info_Mod_Diego_Boring3_F();
};

INSTANCE Info_Mod_Diego_Daemonisch (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Daemonisch_Condition;
	information	= Info_Mod_Diego_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_00"); //Again on the hunt for monsters and orcs.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch_15_01"); //Yeah, the usual... but at the moment it's more of a hunt for information.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch_15_02"); //Maybe you can tell me if you heard anything since you've been spending the day in a pub.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_03"); //Well, there's not much going on at the harbour, not much to keep an eye on.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_04"); //It's said to have happened at the city gates. I only heard Vages.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_05"); //Quite a lot of people are going out and in at the moment - especially at the East Gate - and others want to have seen dark phenomena.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_06"); //If you want to know more, you should take a look around the suburb.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_07"); //Oh yes, and in the tavern' Zur fröhlichen Mastsau' there are also a lot of people at the moment.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_08"); //(laughs) Coragon will soon have to fear bottlenecks if people continue to devour so much.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Diego told me that there is a lot going on outside the city gates. Many people go in and out and dark phenomena are said to have been seen. In Coragon's tavern there are also a lot of people hanging around and stuffing themselves for three.");
};

INSTANCE Info_Mod_Diego_Daemonisch2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Daemonisch2_Condition;
	information	= Info_Mod_Diego_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Mod_HQ_Daemonisch == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_00"); //Are you all right?
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_01"); //Yeah, I think so... was just a harmless sleep spell.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_02"); //Did you see where he went?
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_03"); //He was fast as hell, but I thought I could see him running to the south gate.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_04"); //Then I have no time to lose. I'll explain later.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_05"); //All right, don't let me stop you.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "That must be him. To the south gate, after.");

	AI_StopProcessInfos	(self);

	if (Mod_HQ_Daemonisch_SP_01 == 2)
	{
		B_StartOtherRoutine	(Mod_753_NOV_Ulf_NW, "DAEMONISCH3");
	}
	else if (Mod_HQ_Daemonisch_SP_02 == 2)
	{
		B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "DAEMONISCH3");
	}
	else if (Mod_HQ_Daemonisch_SP_03 == 2)
	{
		B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "DAEMONISCH3");
	};
};

INSTANCE Info_Mod_Diego_Irdorath (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath_Condition;
	information	= Info_Mod_Diego_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have to take a ship to a harmless island (.... )";
};

FUNC INT Info_Mod_Diego_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_00"); //I have to take a ship to a harmless island and search for a suitable crew.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_01"); //Aha, now the fight against Xeres leads you with the ship from the island...
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_02"); //Well, I don't think Vatras would be reluctant to go with you... he was well aware of the danger Xeres and his henchmen posed to the city.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_03"); //And when it comes to support from battle-tested water warriors, you should contact the Keeper Ethan...
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_04"); //Well, first of all, of course, you should find a captain. Have you got one yet?
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_05"); //Uh, no.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_06"); //Well, there's nothing going on without a captain, of course.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_07"); //Under his command, the ship must reach the island unharmed and he will have a lot of influence, also with regard to the composition of the crew....
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_08"); //Yeah, okay. Can you recommend capable captains to me?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_09"); //Well, there's not many.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_10"); //First there's Paladin Cedric. He led the ship safely to the port of Khorinis.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_11"); //Without doubt a capable captain.... but he will certainly not take it from himself to make some conditions, who is taken along and who not.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_12"); //I think he's training next to the town hall upstairs.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_13"); //Hmm, okay, who else is there?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_14"); //I've heard that Jack was once a captain not too long ago.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_15"); //Even though he is no longer the youngest, he has a tremendous amount of experience in shipping.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_16"); //He will certainly make some very pragmatic decisions, but he will also leave you free to decide who you take on board.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_17"); //Okay, well, who else is there?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_18"); //Well, that's all I've ever heard of.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_19"); //What?! Really not a big choice....
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_20"); //You get around a lot. Maybe you will meet someone else somewhere on Khorinis, who is suitable to hold captain's office. Good luck to you.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Diego has named Vatras and the Keeper Ethan as further possible candidates. Only Jack or the Paladin Cedric are considered captains in town, unless I find someone else on the island.");
};

INSTANCE Info_Mod_Diego_Irdorath2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath2_Condition;
	information	= Info_Mod_Diego_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And how about you? Would you join my team?";
};

FUNC INT Info_Mod_Diego_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath2_15_00"); //And how about you? Would you join my team?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath2_11_01"); //Of course, I was just waiting for you to ask.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath2_15_02"); //Nice to meet you. Then welcome aboard. I'll see you back at the ship.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Very good, Diego's already on board.");

	B_GivePlayerXP	(150);

	Mod_DiegoDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Diego_Irdorath3 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath3_Condition;
	information	= Info_Mod_Diego_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Diego_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_DiegoDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath3_11_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_DiegoDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Diego_Irdorath4 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath4_Condition;
	information	= Info_Mod_Diego_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Diego_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_DiegoDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath4_11_01"); //Very well, I'll be back at the harbour.

	Mod_DiegoDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Diego_Kap6 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kap6_Condition;
	information	= Info_Mod_Diego_Kap6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Kap6_Condition()
{
	if (Mod_Xardas_Ende == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kap6_Info()
{
	var c_npc Diego; Diego = Hlp_GetNpc(Mod_538_RDW_Diego_NW);
	var c_npc Lester; Lester = Hlp_GetNpc(Mod_557_PSINOV_Lester_NW);
	var c_npc Milten; Milten = Hlp_GetNpc(Mod_534_KDF_Milten_NW);
	var c_npc Gorn; Gorn = Hlp_GetNpc(Mod_533_SLD_Gorn_NW);

	TRIA_Invite(Lester);
	TRIA_Invite(Milten);
	TRIA_Invite(Gorn);

	TRIA_Start();

	AI_TurnToNpc	(Diego, hero);
	AI_TurnToNpc	(Lester, hero);
	AI_TurnToNpc	(Milten, hero);
	AI_TurnToNpc	(Gorn, hero);

	TRIA_Next(Diego);

	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_00"); //What are you guys doing here?
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_11_01"); //We heard you wanted all the fun for yourself.

	TRIA_Next(Gorn);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_03_02"); //But I've only just sharpened my axe.

	TRIA_Next(Milten);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_03"); //Xardas told us what you're up to.

	TRIA_Next(Lester);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_13_04"); //And that's when we thought,"It'd be bad if we let you in alone again."
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_05"); //You do realize it's going to be dangerous? That we can all die?

	TRIA_Next(Gorn);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_03_06"); //If you don't make it, we'll die sooner or later.

	TRIA_Next(Lester);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_13_07"); //There are five of us. Who could stop us?
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_08"); //All right, then. Glad you could make it.

	TRIA_Next(Diego);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_11_09"); //You wouldn't have changed our mind anyway. You've never been good at that before.

	TRIA_Next(Milten);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_10"); //I think Xardas wanted to see you before we left. You still have to pick up your rune.
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_11"); //My rune?
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_12"); //Come on, let's go.

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_Kap6_2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kap6_2_Condition;
	information	= Info_Mod_Diego_Kap6_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Kap6_2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Kap6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kap6_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_2_11_00"); //Let's go now! We're getting bored.
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_2_15_01"); //Let's get started.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_PlateauAngriff (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_PlateauAngriff_Condition;
	information	= Info_Mod_Diego_PlateauAngriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "We are planning an advance against the monsters on the pasture plateau (... )";
};

FUNC INT Info_Mod_Diego_PlateauAngriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_25))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_Angriff_01))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_PlateauAngriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_PlateauAngriff_15_00"); //We are planning a push against the monsters on the pasture plateau and could need some more support.
	AI_Output(self, hero, "Info_Mod_Diego_PlateauAngriff_11_01"); //Monsters?! Just like old times. You remember the troll, don't you? It would be a pleasure to fight at your side again.
	AI_Output(hero, self, "Info_Mod_Diego_PlateauAngriff_15_02"); //Very good. Very good. I'll meet you at Orlan's tavern.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAMMELN");
};

INSTANCE Info_Mod_Diego_BalrogGigantTot (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_BalrogGigantTot_Condition;
	information	= Info_Mod_Diego_BalrogGigantTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_BalrogGigantTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_PlateauAngriff))
	&& (Mod_WM_CronosAttack == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_BalrogGigantTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_BalrogGigantTot_11_00"); //Yeah, just like old times... only with more monsters and comrades-in-arms. If you're gonna do this again, you know where to find me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Diego_Treffen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Treffen_Condition;
	information	= Info_Mod_Diego_Treffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gorn sent me.";
};

FUNC INT Info_Mod_Diego_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_AtCastlemine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario2)))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Joe))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_HierKristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Treffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Treffen_15_00"); //Gorn sent me. You want me to tell you that you're going to the Dead Harpie tavern.
	AI_Output(self, hero, "Info_Mod_Diego_Treffen_11_01"); //All right, I'll be on my way right away.

	B_LogEntry	(TOPIC_MOD_TREFFEN, "Diego immediately sets off for the tavern.");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "TREFFEN");
};

INSTANCE Info_Mod_Diego_Dieb (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Dieb_Condition;
	information	= Info_Mod_Diego_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard you belonged to the guild of thieves.";
};

FUNC INT Info_Mod_Diego_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_CITY_HABOUR_02_B"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Dieb_15_00"); //I heard you belonged to the guild of thieves.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_01"); //Of course, that's why they threw me in the colony. But how do you know that?
	AI_Output(hero, self, "Info_Mod_Diego_Dieb_15_02"); //One of the paladins told me that one of the thieves stole their precious crystal and I am now looking for the crystal.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_03"); //Oh, the crystal. Yeah, I stole it from the Paladin to spite her. It's in the canalization, in Fingers' old room.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_04"); //Here's the key to the sewer entrance. But watch out, the others don't know who you are, and they might give you a hard time.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_05"); //Good luck to you!

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Diego gave me a key to the sewer where the crystal is supposed to be hidden. There it is in the old room of Fingers.");

	B_GiveInvItems	(self, hero, ItKe_ThiefGuildKey_MIS, 1);

	DiegoGibtDiebesQuest = Wld_GetDay();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_Kristall (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kristall_Condition;
	information	= Info_Mod_Diego_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you help me with this crystal thing?";
};

FUNC INT Info_Mod_Diego_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Dieb))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_02_B") < 1000)
	&& (Npc_HasItems(hero, Mod_PaladinKristall) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Mod_PalaKristall == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario2)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Kristall_15_00"); //Can you help me with this crystal thing?
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_01"); //I could get you the crystal, but I can't leave my post here.
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_02"); //If you get me a replacement, I can go.
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_03"); //And bring five more diets.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "So that I don't have to fetch the crystal myself, Diego offers me his help. However, he needs five diets and a replacement. I should ask the other members of the Ring of Water or the Water Novices.");
};

INSTANCE Info_Mod_Diego_JoeIsRelay (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_JoeIsRelay_Condition;
	information	= Info_Mod_Diego_JoeIsRelay_Info;
	permanent	= 0;
	important	= 0;
	description	= "Joe will relieve you.";
};

FUNC INT Info_Mod_Diego_JoeIsRelay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Diego))
	&& (Mod_PalaKristall == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_JoeIsRelay_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_JoeIsRelay_15_00"); //Joe will relieve you.
	AI_Output(self, hero, "Info_Mod_Diego_JoeIsRelay_11_01"); //Very well, then all I need is the plank from you.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "I've informed Diego that Joe will succeed him. Now all he needs is the five dashes.");
};

INSTANCE Info_Mod_Diego_Joe (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Joe_Condition;
	information	= Info_Mod_Diego_Joe_Info;
	permanent	= 0;
	important	= 0;
	description	= "It's all set up.";
};

FUNC INT Info_Mod_Diego_Joe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_JoeIsRelay))
	&& (Npc_HasItems(hero, ItKe_Lockpick) >= 5)
	&& (Mod_PalaKristall == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Joe_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Joe_15_00"); //It's all set up. Joe's taking over your post, and here are the Dietriches.

	B_GiveInvItems	(hero, self, ItKe_Lockpick, 5);

	AI_Output(self, hero, "Info_Mod_Diego_Joe_11_01"); //Very well, I'll be on my way right away. Come back tomorrow, then I should be done.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Diego's on his way. Tomorrow I can pick up the crystal from him.");

	Mod_DiegoHoltKristall = Wld_GetDay();

	Mod_PalaKristall = 2;

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "KRISTALL");
};

INSTANCE Info_Mod_Diego_HierKristall (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_HierKristall_Condition;
	information	= Info_Mod_Diego_HierKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_HierKristall_Condition()
{
	if (Mod_DiegoHoltKristall < Wld_GetDay())
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_02_B") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Joe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_HierKristall_Info()
{
	if (Npc_HasItems(hero, Mod_PaladinKristall) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	{
		AI_Output(self, hero, "Info_Mod_Diego_HierKristall_11_00"); //Here's the crystal.

		B_GiveInvItems	(self, hero, Mod_PaladinKristall, 1);

		B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "I got the crystal. Either I go to Lothar's now, or I take him to someone else. The other guild leaders would be delighted with this precious crystal.");
		B_SetTopicStatus	(TOPIC_MOD_DIEGO_KRISTALL, LOG_SUCCESS);

		Wld_RemoveItem	(Mod_PaladinKristall);

		Mod_KristallDiego = 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Diego_HierKristall_11_01"); //The crystal's already gone, I can't help you there either.
	};
};

INSTANCE Info_Mod_Diego_Gerbrandt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Gerbrandt_Condition;
	information	= Info_Mod_Diego_Gerbrandt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a problem.";
};

FUNC INT Info_Mod_Diego_Gerbrandt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Gerbrandt))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Gerbrandt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Gerbrandt_15_00"); //I have a problem. I have to prove to Gerbrandt that he is jointly responsible for the banishment of Morgahard.
	AI_Output(self, hero, "Info_Mod_Diego_Gerbrandt_11_01"); //Search his house, one of his candlesticks is a switch to open a secret corner in the house opposite.
	AI_Output(self, hero, "Info_Mod_Diego_Gerbrandt_11_02"); //You'll find evidence there. But give it to me first, Morgahard is not the only one who was in the colony because of Gerbrandt and his gang.
	AI_Output(hero, self, "Info_Mod_Diego_Gerbrandt_15_03"); //All right, I'll get it for you.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego told me that Gerbrandt keeps the evidence in a secret niche of the opposite house, which can be opened by a candle holder in his house. I'm supposed to give him the evidence when I have it.");
};

INSTANCE Info_Mod_Diego_HabBeweise (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_HabBeweise_Condition;
	information	= Info_Mod_Diego_HabBeweise_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the evidence.";
};

FUNC INT Info_Mod_Diego_HabBeweise_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Gerbrandt))
	&& (Npc_HasItems(hero, ItWr_AL_GebrandtDokumente) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_HabBeweise_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_HabBeweise_15_00"); //I have the evidence.

	B_GiveInvItems	(hero, self, ItWr_AL_GebrandtDokumente, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Diego_HabBeweise_11_01"); //Very well, show Lord Andre this evidence. I'll meet you in front of Gerbrandt's house.

	B_GiveInvItems	(self, hero, ItWr_AL_GebrandtDokumente, 1);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego saw the evidence. I'm supposed to give it to Lord Andre and meet him outside Gerbrandt's house.");

	B_StartOtherRoutine	(self, "GERBRANDT");
};

INSTANCE Info_Mod_Diego_GerbrandtGefangen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GerbrandtGefangen_Condition;
	information	= Info_Mod_Diego_GerbrandtGefangen_Info;
	permanent	= 0;
	important	= 0;
	description	= "You've been arrested.";
};

FUNC INT Info_Mod_Diego_GerbrandtGefangen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Gerbrandt))
	&& (Mod_AL_Gebrandt_Gefangen == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GerbrandtGefangen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GerbrandtGefangen_15_00"); //You've been arrested.
	AI_Output(self, hero, "Info_Mod_Diego_GerbrandtGefangen_11_01"); //All right, Gerbrandt's house is mine now. I found some of Gerbrandt's money. I think you can use it.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego gave me Gerbrandt's money as a reward. Now I was told to tell Esteban that Morgahard is allowed into town.");

	B_StartOtherRoutine	(Mod_1928_BDT_Morgahard_NW, "STADT");
};

INSTANCE Info_Mod_Diego_RDW (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_RDW_Condition;
	information	= Info_Mod_Diego_RDW_Info;
	permanent	= 0;
	important	= 0;
	description	= "Vatras sent me.";
};

FUNC INT Info_Mod_Diego_RDW_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_RDW_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_RDW_15_00"); //Vatras sent me. He said you could help me find the missing persons.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_01"); //You wanna join us?
	AI_Output(hero, self, "Info_Mod_Diego_RDW_15_02"); //Sure, why not. So now you're telling me what you know?
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_03"); //Yeah, yeah. It started about two weeks ago. One of the citizens said his friend disappeared.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_04"); //Of course, we looked for and questioned him immediately, but he didn't seem to know anything.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_05"); //More and more people disappeared in the following days. The only thing we know is that they always disappear at night.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "The missing people always seem to disappear at night.");
};

INSTANCE Info_Mod_Diego_Person (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Person_Condition;
	information	= Info_Mod_Diego_Person_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who is this citizen who reported the first missing person?";
};

FUNC INT Info_Mod_Diego_Person_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_RDW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Person_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Person_15_00"); //Who is this citizen who reported the first missing person?
	AI_Output(self, hero, "Info_Mod_Diego_Person_11_01"); //His name is Gerbrandt. He's in the upper district, but you won't get in there.
	
	B_LogEntry	(TOPIC_MOD_VERMISSTE, "The person who reported the first missing person is called Gerbrandt and lives in the upper district.");
};

INSTANCE Info_Mod_Diego_Mario (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Mario_Condition;
	information	= Info_Mod_Diego_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you up for an adventure?";
};

FUNC INT Info_Mod_Diego_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe4))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_00"); //Are you up for an adventure?
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_01"); //What would my life have been like if I had ever answered no to this question?
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_02"); //(laughs) What do you have to offer?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_03"); //A lot of vicious goblins. Three brave warriors.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_04"); //I like goblins. They always hide a lot of gold. But they don't hide it well.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_05"); //Who's the third combatant?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_06"); //The unpopular militiaman Mario in his own ranks.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_07"); //Those who do not have obedience are wrongly kept there. All right, I'm in. If I get anything from the loot.
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_08"); //Of course, of course.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_09"); //When do we leave?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_10"); //Right now, right now.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_11"); //All right, go ahead.
	
	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Diego has joined us. Now all I have to do is pick up Mario and we're ready to go.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Diego_Mario2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Mario2_Condition;
	information	= Info_Mod_Diego_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_11_00"); //That's the way it has to be.
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_11_01"); //Uh, if I'm not mistaken, did Mario give you a little reward in the form of gold coins?

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Info_ClearChoices	(Info_Mod_Diego_Mario2);

	Info_AddChoice	(Info_Mod_Diego_Mario2, "You've got it wrong. There is no reward.", Info_Mod_Diego_Mario2_C);
	Info_AddChoice	(Info_Mod_Diego_Mario2, "Yeah, here's a little piece.", Info_Mod_Diego_Mario2_B);
	Info_AddChoice	(Info_Mod_Diego_Mario2, "Yeah, here's your half.", Info_Mod_Diego_Mario2_A);
};

FUNC VOID Info_Mod_Diego_Mario2_C()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_C_15_00"); //You've got it wrong. There is no reward.
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_C_11_01"); //Hey, you must have misunderstood the thief code. You don't screw friends!

	Mod_Mario_Diego = 1;

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

FUNC VOID Info_Mod_Diego_Mario2_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_B_15_00"); //Yeah, here's a little piece.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Diego_Mario2_B_11_01"); //A little skinny, huh? But what else can you expect from a militiaman?

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

FUNC VOID Info_Mod_Diego_Mario2_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_A_15_00"); //Yeah, here's your half.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Diego_Mario2_A_11_01"); //Well, it was worth our little trip. It feels good to move the old bones again.

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

INSTANCE Info_Mod_Diego_VermissteFertig (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_VermissteFertig_Condition;
	information	= Info_Mod_Diego_VermissteFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_VermissteFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_VermissteFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_00"); //The riddles about the missing citizens you have solved really well.
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_01"); //Into the demonic magicians' mines... who would have guessed?
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_02"); //(to oneself) But hopefully this will not lead to military conflicts....

	AI_StopProcessInfos	(self);

	/*Wld_InsertNpc	(Mod_7660_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7661_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7662_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7663_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7664_MIL_Miliz_NW,	"NW_CASTLEMINE_01");*/

	Wld_InsertNpc	(Mod_7665_MIL_Miliz_NW,	"XARDAS");
	Wld_InsertNpc	(Mod_7666_MIL_Miliz_NW,	"XARDAS");
	Wld_InsertNpc	(Mod_7667_MIL_Miliz_NW,	"XARDAS");

	B_KillNpc	(Mod_7665_MIL_Miliz_NW);

	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
};

INSTANCE Info_Mod_Diego_DrachenFrei (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_DrachenFrei_Condition;
	information	= Info_Mod_Diego_DrachenFrei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_DrachenFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_DrachenFrei_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_DrachenFrei_11_00"); //Hey, I hear the environment was haunted by powerful demons.
	AI_Output(hero, self, "Info_Mod_Diego_DrachenFrei_15_01"); //You probably mean the dragons...
	AI_Output(self, hero, "Info_Mod_Diego_DrachenFrei_11_02"); //Dragons? Really? And I thought they were just creatures from books...
	AI_Output(hero, self, "Info_Mod_Diego_DrachenFrei_15_03"); //(to itself) Hmm, well, somehow it's true...
};

INSTANCE Info_Mod_Diego_Flugblatt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Flugblatt_Condition;
	information	= Info_Mod_Diego_Flugblatt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Diego_Flugblatt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Flugblatt_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Diego_Flugblatt_11_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Diego_Flugblatt_11_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Diego_Lehrer (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lehrer_Condition;
	information	= Info_Mod_Diego_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Diego_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Diego_Lehrer_11_00"); //I can teach you how to pick locks.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Diego_Lehrer_11_01"); //Besides, I can help you get smarter again.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Diego can teach me how to pick locks and get smarter.");
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Diego can teach me how to pick locks.");
	};
};

INSTANCE Info_Mod_Diego_Lernen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lernen_Condition;
	information	= Info_Mod_Diego_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Pick locks", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));
};

FUNC INT Info_Mod_Diego_Lernen_Condition()
{
	Info_Mod_Diego_Lernen.description = B_BuildLearnString("Pick locks", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Lernen_15_00"); //Teach me how to pick locks.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_PICKLOCK))
	{
		AI_Output(self, hero, "Info_Mod_Diego_Lernen_11_01"); //If you want to pick a lock, you should have enough lockers with you. Besides, you should be pretty smart.
	};
};

INSTANCE Info_Mod_Diego_GeschickteFinger (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GeschickteFinger_Condition;
	information	= Info_Mod_Diego_GeschickteFinger_Info;
	permanent	= 0;
	important	= 0;
	description	= "My diets always break off....";
};

FUNC INT Info_Mod_Diego_GeschickteFinger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GeschickteFinger_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GeschickteFinger_15_00"); //My diets always break off - do you have any advice for me?
	AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger_11_01"); //How often your diets break off depends on your skill.
	AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger_11_02"); //But there's a trick you can use more cautiously.
};

INSTANCE Info_Mod_Diego_GeschickteFinger2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GeschickteFinger2_Condition;
	information	= Info_Mod_Diego_GeschickteFinger2_Info;
	permanent	= 1;
	important	= 0;
	description	= "";
};

FUNC INT Info_Mod_Diego_GeschickteFinger2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Diego_GeschickteFinger2.description = "Show me the trick to opening locks. (500 Gold)";
	}
	else
	{
		Info_Mod_Diego_GeschickteFinger2.description = "Show me the trick to opening locks. (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Diego_GeschickteFinger))
	&& (Dietrich_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GeschickteFinger2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GeschickteFinger2_15_00"); //Show me the trick to opening locks.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_01"); //A normal lock consists of several interlocks.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_02"); //You have to push them in the right direction so that you can move the bolt at the end.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_03"); //If you push one of the tumblers in the wrong direction, the dietrich will normally break off.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_04"); //However, you can already feel it when you are travelling in the wrong direction, at a tiny small resistance about halfway down the track.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_05"); //To notice this resistance, you need to be focused and trained.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_06"); //You will not succeed in preventing abortion in all cases, but at least in some cases.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_07"); //The best thing to do is just try it out.

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};

		Dietrich_Perk = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_08"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Diego_Lernen_DEX (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lernen_DEX_Condition;
	information	= Info_Mod_Diego_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Diego_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Lernen_DEX_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Diego_Lernen_DEX_16_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Diego_Lernen_DEX);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Diego_Pickpocket (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Pickpocket_Condition;
	information	= Info_Mod_Diego_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Diego_Pickpocket_Condition()
{
	C_Beklauen	(200, ItKe_Lockpick, 25);
};

FUNC VOID Info_Mod_Diego_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

	Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_BACK, Info_Mod_Diego_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Diego_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Diego_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
};

FUNC VOID Info_Mod_Diego_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Diego_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Diego_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Diego_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Diego_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Diego_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Diego_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Diego_EXIT (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_EXIT_Condition;
	information	= Info_Mod_Diego_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Diego_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_EXIT_11_00"); //I'll see you.... hopefully.

	AI_StopProcessInfos	(self);
};
