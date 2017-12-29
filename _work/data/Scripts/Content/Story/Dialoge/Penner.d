INSTANCE Info_Mod_Penner_ReallyHi (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_ReallyHi_Condition;
	information	= Info_Mod_Penner_ReallyHi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_ReallyHi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_ReallyHi_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_ReallyHi_27_00"); //You got a coin?
	AI_Output(hero, self, "Info_Mod_Penner_ReallyHi_15_01"); //I have a lot of coins.
	AI_Output(self, hero, "Info_Mod_Penner_ReallyHi_27_02"); //And give me one of those?
	AI_Output(hero, self, "Info_Mod_Penner_ReallyHi_15_03"); //Well, I don't know. Answer my questions, and I might change my mind.
};

INSTANCE Info_Mod_Penner_OnlyPenner (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_OnlyPenner_Condition;
	information	= Info_Mod_Penner_OnlyPenner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you the only homeless guy here?";
};

FUNC INT Info_Mod_Penner_OnlyPenner_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_OnlyPenner_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_OnlyPenner_15_00"); //Are you the only homeless guy here?
	AI_Output(self, hero, "Info_Mod_Penner_OnlyPenner_27_01"); //Yup. That's an advantage. I have no competition.
};

INSTANCE Info_Mod_Penner_WarumArm (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_WarumArm_Condition;
	information	= Info_Mod_Penner_WarumArm_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you manage to live in such a wealthy city (...) )";
};

FUNC INT Info_Mod_Penner_WarumArm_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_WarumArm_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_WarumArm_15_00"); //How did you manage to get poor in such a rich city?
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_01"); //Being a bum doesn't mean I'm poor. I even have a lot of money.
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_02"); //I could choose my profession. And what could be nicer than sitting around lazily all day, picking up conversations and selling information at face value?
	AI_Output(hero, self, "Info_Mod_Penner_WarumArm_15_03"); //You deal in information?
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_04"); //You could say that. Everything has its price.
};

INSTANCE Info_Mod_Penner_Infos (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Infos_Condition;
	information	= Info_Mod_Penner_Infos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Sell me information...";
};

FUNC INT Info_Mod_Penner_Infos_Condition()
{
	return 1;
};

var int Mod_Penner_HeardAboutJuliana;

FUNC VOID Info_Mod_Penner_Infos_Choices()
{
	Info_ClearChoices	(Info_Mod_Penner_Infos);

	Info_AddChoice	(Info_Mod_Penner_Infos, DIALOG_BACK, Info_Mod_Penner_Infos_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "Can you tell me something about Elvira? (50 Gold)", Info_Mod_Penner_Infos_F);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_WasLos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 10)
	&& (!Mod_Penner_HeardAboutJuliana)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "What do you know about the disappearance of Juliana's husband? (10 Gold)", Info_Mod_Penner_Infos_E);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Mod_REL_Buerger == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "Who is mainly responsible for the water supply? (50 Gold)", Info_Mod_Penner_Infos_D);
		//Info_AddChoice	(Info_Mod_Penner_Infos, "Wie viele Stände hat der Marktplatz von Khorata? (50 Gold)", Info_Mod_Penner_Infos_C);
		Info_AddChoice	(Info_Mod_Penner_Infos, "What was the keeper's name of the three rats? (50 Gold)", Info_Mod_Penner_Infos_B);
		Info_AddChoice	(Info_Mod_Penner_Infos, "Where can I find an abortion? (50 Gold)", Info_Mod_Penner_Infos_A);
	};
};

FUNC VOID Info_Mod_Penner_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_15_00"); //Sell me information...

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_BACK()
{
	Info_ClearChoices	(Info_Mod_Penner_Infos);
};

FUNC VOID Info_Mod_Penner_Infos_F()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_F_15_00"); //Can you tell me something about Elvira?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_01"); //The snail at the fire magicians?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_02"); //Yes... Wait a minute, there was some funny story at the tavern.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_03"); //Something about alcohol and monastery wine.... Yes, that's right, she was actually there once to preach the word' Innos' and to convert the drinkers.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_04"); //Of course, all the guys were just yelling there when she came in.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_05"); //The innkeeper made one of his own and offered her a monastery wine.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_06"); //And her? First I was hesitant and then asked for the alcohol-free monastery wine, huhä.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_07"); //She's probably going to be different with alcohol, if you know what I mean, haha.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_E()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_00"); //What can you tell me about the disappearance of Juliana's husband?

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_01"); //You mean Endres? I can tell you that he's disappeared.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_02"); //No one knows more than that, or rather, nobody admits more.
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_03"); //How long has he been missing?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_04"); //He was last seen a few days ago. He was still at work, and then he took off.
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_05"); //You mean he ran away?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_06"); //Well, I guess. Juliana is pretty bitchy, I wouldn't last forever either.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_07"); //But I don't have a guarantee that it was like this.

	Mod_Penner_HeardAboutJuliana = TRUE;

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_D()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_D_15_00"); //Who is mainly responsible for the water supply?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_D_27_01"); //Wendel, of course. He doesn't do anything but check the wires all day long.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_C()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_C_15_00"); //How many stalls does the market place of Khorata have?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_C_27_01"); //What kind of question is that? Can't you count? I see six booths here.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_B()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_B_15_00"); //What was the keeper's name of the three rats?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_B_27_01"); //Haha, that was fun with the rats. They were called Fievel, Pinky and Oleg.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_A()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_A_15_00"); //Where can I find an abortion?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_A_27_01"); //As far as I know, only the fire magicians have a proper outhouse.

	Info_Mod_Penner_Infos_Choices();
};

INSTANCE Info_Mod_Penner_Kimon (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon_Condition;
	information	= Info_Mod_Penner_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! I need some information.";
};

FUNC INT Info_Mod_Penner_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kimon_REL_Freudenspender))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_00"); //Hello! I need some information.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon_27_01"); //That's what I'm here for. What do you want to know?
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_02"); //I'm looking for someone who can give you joy. You, by any chance?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon_27_03"); //What are you thinking about? I had nothing to do with that.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_04"); //I'll check with the dealers.
};

INSTANCE Info_Mod_Penner_Kimon2 (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon2_Condition;
	information	= Info_Mod_Penner_Kimon2_Info;
	permanent	= 0;
	important	= 0;
	description	= "It's me again. Found nothing.";
};

FUNC INT Info_Mod_Penner_Kimon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kimon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon2_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_00"); //It's me again. Found nothing. But the Morpheus says you know something.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_01"); //So he says? Hmm, I don't know...
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_02"); //Come on, get out of here. It's not supposed to be your damage.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_03"); //Hmm... One, it's gonna cost you. Two, you don't say a word about it to anyone else, or I'll rat you out in court.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_04"); //Deal. I'll hold tight. What do you want?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_05"); //First, 300 gold for the info.
};

INSTANCE Info_Mod_Penner_Kimon3 (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon3_Condition;
	information	= Info_Mod_Penner_Kimon3_Info;
	permanent	= 0;
	important	= 0;
	description	= "What can you tell me about it? (300 Gold given)";
};

FUNC INT Info_Mod_Penner_Kimon3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon3_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_00"); //What can you tell me about it?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_01"); //My old man lives here in Relendel, too. But he's out of his head. Has retreated to a cave.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_02"); //I can't understand him today. He's just talking in riddles. Maybe you'll figure it out.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_03"); //Yes, it is. Sounds interesting. I'll go see him. Where is this cave?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_04"); //You know the circuit when you get in the valley?
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_05"); //I think so, yes.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_06"); //So, you go around to the left, always along the cliff face. There you go to the cave where my old man lives.

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "The bum talks about his father, who doesn't understand. It lives in a cave in the rock face to the left of the valley entrance, when you come through the cave of Khorinis. Let's see....");
};

INSTANCE Info_Mod_Penner_Hi (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Hi_Condition;
	information	= Info_Mod_Penner_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_00"); //Eh! You got a coin?
	AI_Output(hero, self, "Info_Mod_Penner_Hi_15_01"); //We've been through this before! I thought you had enough money.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_02"); //Since Anselm left, my, uh, services have not been so popular.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_03"); //I have to take the carriage to Khorinis because my old lady is dying.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_04"); //Now I don't have any mice. There's nothing more to get from the people here.
	AI_Output(hero, self, "Info_Mod_Penner_Hi_15_05"); //All right, all right. Here's five gold. But don't lose them.

	B_GiveInvItems	(hero, self, ItMi_Gold, 5);

	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_06"); //Oh, thanks, man. Let Adanos protect you.

	Log_CreateTopic	(TOPIC_MOD_JG_PENNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_PENNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_PENNER, "Gave a beggar something. Maybe I need it again.");

	Npc_SetRefuseTalk (self, 30);
};

INSTANCE Info_Mod_Penner_NochDa (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_NochDa_Condition;
	information	= Info_Mod_Penner_NochDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_NochDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_August_Penner2))
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_NochDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_00"); //Hey!
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_01"); //Well, well. You're still here.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_02"); //I'd be long gone by now, but the carriage won't run.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_03"); //And why not?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_04"); //Because we don't have horses here...
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_05"); //Then I want the coachman to hook Snapper. Or better yet, tame Razor. They run faster.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_06"); //Taming Razor? Are you kidding me? But what else: I see you've got a rune with you.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_07"); //This broken thing here?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_08"); //Jo. That's the one. If you gave it to me, I'd have a hot tip for you.

	B_SetTopicStatus	(TOPIC_MOD_JG_PENNER, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7542_OUT_Raritaetenhaendler_REL, "REL_CITY_045");

	Info_ClearChoices	(Info_Mod_Penner_NochDa);

	Info_AddChoice	(Info_Mod_Penner_NochDa, "No, I don't think so. And maybe I still need the rune.", Info_Mod_Penner_NochDa_B);
	Info_AddChoice	(Info_Mod_Penner_NochDa, "What do you want with it?", Info_Mod_Penner_NochDa_A);
};

FUNC VOID Info_Mod_Penner_NochDa_B()
{
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_00"); //No, I don't think so. And maybe I still need the rune.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_01"); //Oh, dear, until the coachman gets a hold of the Razor, my old lady's gone.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_02"); //What the hell. At least have a bottle of booze for me? Gotta numb my pain.

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_03"); //All right, here's a juniper.
		AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_04"); //Thanks, man. At least you'll save my life.

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_05"); //No, I'm afraid not.
		AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_06"); //Oh, dear, if the pain doesn't kill me.
	};

	Info_ClearChoices	(Info_Mod_Penner_NochDa);
};

FUNC VOID Info_Mod_Penner_NochDa_A()
{
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_00"); //What do you want with it?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_01"); //Maybe she'll take me to Khorinis.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_02"); //If you say so. Here. And what did you want to tell me?

	B_GiveInvItems	(hero, self, ItMi_BrokenRune01, 1);

	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_03"); //All right, look out. My old man used to be a pirate.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_04"); //Brought a lot of stuff to the side and buried all the gravel.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_05"); //I don't know where, and I can't understand the old guy anymore.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_06"); //He's just talking in riddles. Maybe you'll figure it out.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_07"); //Yeah, sounds interesting. I'll go see him. Where is this cave?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_08"); //You know the circuit when you get in the valley?
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_09"); //I think so, yes.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_10"); //So you're lapping.... uhm... What's the name of that again, where the thumb is on the right?
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_11"); //Left, you whistle!
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_12"); //Turn left, along the path.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_13"); //Someday you'll see a dead tree on the right side of the wall. Looks like a hand.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_14"); //There it is again... turn left to the rock face. Behind a big boulder is the cave.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_15"); //That should be findable. Take care, now.

	Info_ClearChoices	(Info_Mod_Penner_NochDa);

	Log_CreateTopic	(TOPIC_MOD_JG_PENNERSVATER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_PENNERSVATER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "The bum talks about an old pirate who doesn't understand. He lives in a cave in the rock wall to the left of the valley entrance. I'm supposed to go that way. A dead tree that looks like a hand, to the left up to the rock face. Let's have a look.");
};

INSTANCE Info_Mod_Penner_RuneBack (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_RuneBack_Condition;
	information	= Info_Mod_Penner_RuneBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, sport. Have you traveled yet?";
};

FUNC INT Info_Mod_Penner_RuneBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_NochDa))
	&& (Npc_HasItems(self, ItMi_BrokenRune01) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune02) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_RuneBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_00"); //Hi, sport. Have you traveled yet?
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_01"); //Nah. This thing's not working. Tried it, I got dizzy, sort of saw blue haze.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_02"); //The way I open my eyes, I'm still sitting here.
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_03"); //I'm sorry about that. You know something?
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_04"); //Nope.
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_05"); //You give me back that thing and I'll give you 200 gold for it.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_06"); //200 bucks! That's ten pulls, nonsense, between pulls. Nah...
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_07"); //Come back down. Don't forget the food. The innkeeper has salted lamb.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_08"); //Cured lamb. With Adanos! I ate it last Christmas. Two years or so ago. yo-yo
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_09"); //Here, take it, and goodbye!

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(self, ItMi_BrokenRune01, 1);
	CreateInvItems	(hero, ItMi_BrokenRune01, 1);

	B_ShowGivenThings	("200 gold given and rune half preserved");

	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_10"); //Thanks a million, man!

	B_LogEntry	(TOPIC_MOD_JG_PENNER, "We did it! I have both parts. Maybe the rune can be repaired. Ask an expert. I wonder if there's a magician here. Let's ask. Maybe Daniel, he's dealing in magic.");
};

INSTANCE Info_Mod_Penner_EXIT (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_EXIT_Condition;
	information	= Info_Mod_Penner_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Penner_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_EXIT_Info()
{
	if (Mod_LeavePennerFirstTime == FALSE)
	{
		Mod_LeavePennerFirstTime = TRUE;

		AI_Output(self, hero, "Info_Mod_Penner_EXIT_27_00"); //You don't have to give me any gold, by the way. I've had enough already.
		AI_Output(hero, self, "Info_Mod_Penner_EXIT_15_01"); //Then why did you ask me to do it?
		AI_Output(self, hero, "Info_Mod_Penner_EXIT_27_02"); //That's part of the job. You just expect bums to ask for coins.
	};

	AI_StopProcessInfos	(self);
};
