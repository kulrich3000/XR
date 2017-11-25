INSTANCE Info_Mod_Amir_Hi (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Hi_Condition;
	information	= Info_Mod_Amir_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Hi_Condition()
{
	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (Mod_Gilde > 3)
	&& (Mod_DidCrime)
	&& (hero.guild != GIL_PAL)
	&& (Wld_IsTime(22,00,08,00))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Hi_13_00"); //What kind of guy are you? Are you interested in helping me out with something, kid?

	Info_ClearChoices	(Info_Mod_Amir_Hi);

	Info_AddChoice	(Info_Mod_Amir_Hi, "No, not interested!", Info_Mod_Amir_Hi_B);
	Info_AddChoice	(Info_Mod_Amir_Hi, "Yes, but always! What's this about?", Info_Mod_Amir_Hi_A);
};

FUNC VOID Info_Mod_Amir_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Amir_Hi_B_15_00"); //No, not interested!
	AI_Output(self, hero, "Info_Mod_Amir_Hi_B_13_01"); //Well, then I was wrong about you. Get out of my sight and never come back!

	Info_ClearChoices	(Info_Mod_Amir_Hi);
};

FUNC VOID Info_Mod_Amir_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_00"); //Yes, but always! What's this about?
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_01"); //(smiling) Well, I knew I could count on a man like you. This assignment is urgent, so you need to listen to me carefully and work hard.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_02"); //The pay's high and you could make it to something big.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_03"); //Don't beat around the bush, just tell me what to do. I hope my reward will be fair.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_04"); //Don't worry about your reward, don't worry about what you'll get. I warn you, it's not going to be an easy task.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_05"); //Shoot it already!
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_06"); //(whispers) In the city there is a very rich citizen in the harbour district who has something I would like to have.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_07"); //One of the three so-called blood goblets which are said to have mysterious powers. Unfortunately, he doesn't turn this treasure out and that bothers me a bit.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_08"); //I want you to get rid of that clay and bring the cup to you tonight. But be warned: Lehmar hired two cutthroaters to patrol at night because of me.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_09"); //So be careful with it. I'll be waiting for you at the east gate of the city when the assignment's over.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_10"); //All right, I'm moving out. I'll meet you there.

	Log_CreateTopic	(TOPIC_MOD_ASS_LEHMAR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_LEHMAR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_LEHMAR, "I met a strange figure in the temple district of the city of Khorinis. The man, who didn't give me any information about himself, cared for me with an important task. I'm supposed to take a so-called blood cup off the money lender Lehmar at night and kill him. But the man warned me that Lehmar would be surrounded by some guards. I have to think of something.");

	Mod_ASS_AmirLehmar = 1;

	Info_ClearChoices	(Info_Mod_Amir_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LEHMAR");
};

INSTANCE Info_Mod_Amir_Lehmar (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Lehmar_Condition;
	information	= Info_Mod_Amir_Lehmar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Lehmar_Condition()
{
	if (Npc_IsDead(Mod_537_NONE_Lehmar_NW))
	&& (Npc_HasItems(hero, ItMi_BloodCup_MIS) == 1)
	&& (Npc_HasItems(hero, ItWr_BookLehmar) == 1)
	&& (Npc_HasItems(hero, ItMi_GoldPlate) >= 6)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Mod_ASS_AmirLehmar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Lehmar_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_00"); //(laughs) I didn't expect to see you again. I thought you got scared and you're not gonna show up.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_01"); //Respect, little one, good work!
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_02"); //It wasn't an easy task either, but I have what you asked for.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_03"); //Did you bring the cup?
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_04"); //Yes, and there were other things in Lehmar's chest. A book and six golden plates with a fine runic writing and 500 pieces of gold.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_05"); //I want you to keep the gold, but you can give me the rest.

	Npc_RemoveInvItems	(hero, ItMi_BloodCup_MIS, 1);
	Npc_RemoveInvItems	(hero, ItWr_BookLehmar, 1);
	Npc_RemoveInvItems	(hero, ItMi_GoldPlate, 6);

	B_ShowGivenThings	("Blood cup, book and six golden plates given");

	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_06"); //And what about my reward?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_07"); //I forgot all about that. Here's 100 gold pieces for your trouble, and I have an interesting offer for you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_08"); //What's your offer about?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_09"); //Tell me first, do you want to deal with it at all?

	B_GivePlayerXP	(250);

	B_SetTopicStatus	(TOPIC_MOD_ASS_LEHMAR, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	B_RemoveNpc	(Mod_7363_VLK_LehmarWache_NW);
	B_RemoveNpc	(Mod_7364_VLK_LehmarWache_NW);

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);

	Info_AddChoice	(Info_Mod_Amir_Lehmar, "No, I'd rather not. See you around!", Info_Mod_Amir_Lehmar_B);

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		Info_AddChoice	(Info_Mod_Amir_Lehmar, "Sure!", Info_Mod_Amir_Lehmar_A);
	};
};

FUNC VOID Info_Mod_Amir_Lehmar_B()
{
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_B_15_01"); //No, I'd rather not. See you around!
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_B_13_00"); //What a pity, there's nothing you can do about it. I guess we'll never see each other again.

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);
};

FUNC VOID Info_Mod_Amir_Lehmar_A()
{
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_00"); //Sure!
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_01"); //I knew you were the right man, so I want to explain everything to you.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_02"); //So what offer do you have for me?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_03"); //As you can see, I'm not one of those people who legally earns their gold. I'm one of the Assassins from Varant who settled here on Khorinis.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_04"); //We're always on the lookout for new people and you seem to be the man you could well imagine as an assassin.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_05"); //Assassins? How did you get to the island?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_06"); //Our mighty leaders telepont us all here on the island, because we didn't want to stay on the mainland anymore.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_07"); //That's why we came to the island and have been hiding in a cave near the city ever since. There is our camp and from there we act secretly.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_08"); //I am honoured to have received this offer and would like to join you.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_09"); //(grins) Very good. So follow me, I'll lead you to the hideout of our people. Hurry up!

	Log_CreateTopic	(TOPIC_MOD_ASS_VERSTECK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERSTECK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_VERSTECK, "Amir will now lead me to the hiding place of the Assassins. This is said to be in a cave near the city.");

	Mod_ASS_AmirLehmar = 2;

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VERSTECK");
};

INSTANCE Info_Mod_Amir_AtVersteck (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_AtVersteck_Condition;
	information	= Info_Mod_Amir_AtVersteck_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_AtVersteck_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Lehmar))
	&& (Mod_ASS_AmirLehmar == 2)
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_13") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_AtVersteck_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_AtVersteck_13_00"); //Well, there we are. Behind this door are the halls we call our home. I'll give you the key to the door so you can pass.

	B_GiveInvItems	(self, hero, ItKe_XR_NW_HOEHLE_01, 1);

	AI_Output(self, hero, "Info_Mod_Amir_AtVersteck_13_01"); //We'll see you again, but I have to go. See you around!
	AI_Output(hero, self, "Info_Mod_Amir_AtVersteck_15_02"); //Okay. See you around Amir, take care!
	
	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_ASS_VERSTECK, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Amir_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Amir.";
};

FUNC INT Info_Mod_Amir_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Later))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_00"); //Hello, Amir. You were talking about a ceremonial dagger in the camp. Can you tell me more about it?
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_01"); //Not really. But that water guy out there at the temple told me about a dagger.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_02"); //All right, I'll ask him. And don't drink so much, you're supposed to be watching.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_03"); //In this pub I get to know more than outside on the square.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_04"); //And I can't hear the drivel from that senile blue coat any more. Always tell the same story.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_05"); //Whatever you say. I'll talk to Vatras.
	
	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Amir sent me to Vatras. Surely he knows more.");
};

INSTANCE Info_Mod_Amir_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch2_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_PosWechsel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch2_13_00"); //Hey! Did you rat me out? Suddenly, I have to guard it.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch2_15_01"); //No more sitting around the pub all day, huh? But no, I didn't say anything.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch2_13_02"); //If I find out... By the way, the council's waiting for you.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch2_15_03"); //I know.
};

INSTANCE Info_Mod_Amir_Zeremoniendolch3 (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch3_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Zeremoniendolch3_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch3_13_00"); //You're doing good, always on the move. And I'm standing here with my legs in my stomach.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch3_15_01"); //The efficient man owns the world.
};

INSTANCE Info_Mod_Amir_Blutkelch (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Blutkelch_Condition;
	information	= Info_Mod_Amir_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_00"); //On the road again?
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_01"); //As you can see. Say, did you notice anything here?
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_02"); //Actually, I don't. But I haven't been standing here for a long time.
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_03"); //However, the warrior over there thinks there's been a lot of traffic lately.
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_04"); //Uh-huh. Then who goes here?
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_05"); //During the day some warriors and at night, around midnight, magician.
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_06"); //(even) Hm... the warriors are probably training on the plateau. But the magicians... Hm...
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_07"); //This Erol has said something about the green light in the cave at the small lake.... Let's see now.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Will visit the Goblin cave near Erol. Around midnight...");

	Wld_SendTrigger	("EVT_ASSASSINENREPERTOIRE");

	B_StartOtherRoutine	(Mod_7156_ASS_Mirza_NW,	"VERRAT");
	B_StartOtherRoutine	(Mod_7149_ASS_Mufid_NW,	"VERRAT");
};

INSTANCE Info_Mod_Amir_Pickpocket (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Pickpocket_Condition;
	information	= Info_Mod_Amir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Amir_Pickpocket_Condition()
{
	C_Beklauen	(111, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Amir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

	Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_BACK, Info_Mod_Amir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Amir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Amir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
};

FUNC VOID Info_Mod_Amir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Amir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Amir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Amir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Amir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Amir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Amir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Amir_EXIT (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_EXIT_Condition;
	information	= Info_Mod_Amir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Amir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Amir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
