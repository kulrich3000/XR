INSTANCE Info_Mod_Idrico_Hi (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Hi_Condition;
	information	= Info_Mod_Idrico_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Idrico_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Idrico_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Idrico_Hi_08_00"); //A servant of Adano's servant, our holy lord. Speak, what do you want?
};

INSTANCE Info_Mod_Idrico_WasMachstDu (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_WasMachstDu_Condition;
	information	= Info_Mod_Idrico_WasMachstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing all day?";
};

FUNC INT Info_Mod_Idrico_WasMachstDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_WasMachstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_WasMachstDu_15_00"); //What are you doing all day?
	AI_Output(self, hero, "Info_Mod_Idrico_WasMachstDu_08_01"); //I am there for the people, strengthen their faith and their souls.
	AI_Output(self, hero, "Info_Mod_Idrico_WasMachstDu_08_02"); //In return, they give me small dishes or some gold coins.
};

INSTANCE Info_Mod_Idrico_Ungepflegt (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Ungepflegt_Condition;
	information	= Info_Mod_Idrico_Ungepflegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you walking around so neglected?";
};

FUNC INT Info_Mod_Idrico_Ungepflegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Ungepflegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Ungepflegt_15_00"); //Why are you walking around so neglected?
	AI_Output(self, hero, "Info_Mod_Idrico_Ungepflegt_08_01"); //Adanos does not want me to become fat and lazy through wealth like the other city dwellers.
	AI_Output(self, hero, "Info_Mod_Idrico_Ungepflegt_08_02"); //It is his will that I should always be receptive to his grace.
};

INSTANCE Info_Mod_Idrico_Dorn (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn_Condition;
	information	= Info_Mod_Idrico_Dorn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I serve Adanos?";
};

FUNC INT Info_Mod_Idrico_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_15_00"); //Can I serve Adanos?
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_01"); //Oh, yeah! There is someone who is a thorn in the Lord's side.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_02"); //Elvira has not only devoted herself to the teachings of the hypocritical Inno, she dares to step into the position of a fire magician as a woman!
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_03"); //This outrage in a city dedicated to Adanos must not go unpunished.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_04"); //If you believe in the teachings of our Creator, help to drive them away from this place.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);

	Info_AddChoice	(Info_Mod_Idrico_Dorn, "Get someone else for the job.", Info_Mod_Idrico_Dorn_B);
	Info_AddChoice	(Info_Mod_Idrico_Dorn, "I'll see what I can do.", Info_Mod_Idrico_Dorn_A);
};

FUNC VOID Info_Mod_Idrico_Dorn_B()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_B_15_00"); //Get someone else for the job.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);
};

FUNC VOID Info_Mod_Idrico_Dorn_A()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_A_15_00"); //I'll see what I can do.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_DORN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Idrico, the rag preacher of Khoratas, wants Elvira, the fire magician, to disappear from the city. I should talk to her about it.");

	Mod_REL_IdricoDorn = 1;
};

INSTANCE Info_Mod_Idrico_Dorn2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn2_Condition;
	information	= Info_Mod_Idrico_Dorn2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Elvira doesn't need to worry you any more.";
};

FUNC INT Info_Mod_Idrico_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 2)
	&& (Npc_IsDead(Mod_7499_KDF_Elvira_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn2_15_00"); //Elvira doesn't need to worry you any more.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn2_08_01"); //You're a promising student. Take this and learn!

	B_GiveInvItems	(self, hero, ItSc_Geyser, 1);

	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Idrico_Dorn3 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn3_Condition;
	information	= Info_Mod_Idrico_Dorn3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Idrico_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn4))
	&& (Mod_REL_IdricoDorn == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn3_Info()
{
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn3_08_00"); //Get out of here, unworthy. Adanos will punish you for your transgression!
};

INSTANCE Info_Mod_Idrico_BrokenRune (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune_Condition;
	information	= Info_Mod_Idrico_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, greeting.";
};

FUNC INT Info_Mod_Idrico_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_00"); //Adanos, greeting.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_01"); //To balance.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_02"); //What brings you to this shed?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_03"); //It's a long story. Back when the barrier fell....
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_04"); //You were in the Minental?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_05"); //Of course... When the barrier fell and the whole ore became useless, Satan and the other brothers moved to Khorinis.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_06"); //However, I thought it would be better to go to Relendel and bring our doctrine of salvation to this new region.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_07"); //I turned away from Saturnas and moved here alone.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_08"); //But you're not very successful with your teaching, I see...
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_09"); //Was well! People here don't have a thing about magicians.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_10"); //Fuego, a fire magician who lives here can confirm that.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_11"); //But tell me, what brings you to me?
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_12"); //I've got a broken rune here, and I want to ask you if you can put it back together.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_13"); //I have received all the consecrations of our estate. If I had a rune table, it wouldn't be a problem for me. But so...
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_14"); //And another magic?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_15"); //Hmm. I used to have an adano figure. Very strong magic was in her.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_16"); //But I had to sell them to pay for my meals.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_17"); //Who did you sell it to? I'll get her back. Got enough gold.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_18"); //There's a trader in the marketplace selling all kinds of magic. I gave him the figure.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_19"); //I'll run right out and see if he still has it.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_20"); //Do it, brother. The man's name is Daniel. I wish you success.

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "The magician Idrico thinks that an Adanos figure would be helpful to repair the rune. Trader Daniel from the marketplace could have one.");
};

INSTANCE Info_Mod_Idrico_BrokenRune2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune2_Condition;
	information	= Info_Mod_Idrico_BrokenRune2_Info;
	permanent	= 0;
	important	= 0;
	description	= "There, I got the character.";
};

FUNC INT Info_Mod_Idrico_BrokenRune2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_HasItems(hero, ItMi_AdanosStatue) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_00"); //There, I got the character.

	B_GiveInvItems	(hero, self, ItMi_AdanosStatue, 1);

	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_01"); //Show me! Yes, she is, my figure. Hope she doesn't get hurt at the trial.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_02"); //What are you gonna do?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_03"); //First of all, I strike the broken parts with a healing ointment and put the rune together. Then I put the figure on top.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_04"); //Then the power of the figure and the magic of the two pieces of runes should merge and heal the fracture.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_05"); //And how long will that take?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_06"); //I don't know about that. Maybe one night, maybe two days. I don't know about that.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_07"); //I'm sure you still have work to do. Come back tomorrow...

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Here we have to wait again, when and if the rune can be repaired. Let's get back to the Water Magician tomorrow.");

	Mod_JG_Idrico = Wld_GetDay();

	Npc_RemoveInvItems	(hero, ItMi_Brokenrune01, 1);
	Npc_RemoveInvItems	(hero, ItMi_Brokenrune02, 1);
};

INSTANCE Info_Mod_Idrico_BrokenRune3 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune3_Condition;
	information	= Info_Mod_Idrico_BrokenRune3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos to greet you!";
};

FUNC INT Info_Mod_Idrico_BrokenRune3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_BrokenRune2))
	&& (Wld_GetDay() > Mod_JG_Idrico)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune3_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_00"); //Adanos to greet you!
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_01"); //To balance. Strange things have happened.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_02"); //Tell me about it. Is the rune whole?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_03"); //That, I suppose. But the whole time there was a slight silver shimmer over the parts.

	B_GiveInvItems	(self, hero, ItRu_BrokenRune, 1);

	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_04"); //And now she seems to be made of silver, I see.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_05"); //Exactly. And I very much doubt that you have a teleportation to Khorinis.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_06"); //Hmm... but I have to find out somehow.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_07"); //And no one will be able to take it off your hands.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_08"); //Freshly ventured, half won. Someone once said that.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_09"); //Adanos on all your ways!

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "The rune is intact, but has become silvery. And no one knows what's inside her. It's all about studying. Step aside a little bit.");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Idrico_Blutkelch (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Blutkelch_Condition;
	information	= Info_Mod_Idrico_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey.";
};

FUNC INT Info_Mod_Idrico_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_15_00"); //Hey.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_01"); //Get out of here, unworthy. Adanos will punish you for your outrage.
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_15_02"); //Stay cool, man. I hardly ever commit an outrage and I only have one question.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_03"); //The sinners will be punished. A huge wave will...
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_04"); //What do you want to know? For a little donation to the servant Adanos?

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);

	Info_AddChoice	(Info_Mod_Idrico_Blutkelch, "Is 10 gold enough?", Info_Mod_Idrico_Blutkelch_B);
	Info_AddChoice	(Info_Mod_Idrico_Blutkelch, "No donation.", Info_Mod_Idrico_Blutkelch_A);
};

FUNC VOID Info_Mod_Idrico_Blutkelch_B()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_B_15_00"); //Is 10 gold enough?
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_B_08_01"); //20 would be better. And a piece of salted meat from the butcher. Because asceticism clouds the memory...

	Mod_ASS_IdricoSpende = 1;

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);
};

FUNC VOID Info_Mod_Idrico_Blutkelch_A()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_A_15_00"); //No donation.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_A_08_01"); //Then get out of here!

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);
};

INSTANCE Info_Mod_Idrico_Blutkelch2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Blutkelch2_Condition;
	information	= Info_Mod_Idrico_Blutkelch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, a leg of lamb.";
};

FUNC INT Info_Mod_Idrico_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Blutkelch))
	&& (Mod_ASS_IdricoSpende == 1)
	&& (Npc_HasItems(hero, ItFo_LammPoekelFleisch) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Blutkelch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_00"); //Here, a leg of lamb.

	Npc_RemoveInvItems	(hero, ItFo_LammPoekelFleisch, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 20);

	B_ShowGivenThings	("20 gold and salted lamb added");

	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_01"); //Thank Adanos and you! What did you want to know again?
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_02"); //Do you know anything about a blood calyx?
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_03"); //Uh-huh, something sacred. But no. I don't know anything. Sorry about that.
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_04"); //And me, my club, you old crook.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_05"); //Adanos will bless you for it.
};

INSTANCE Info_Mod_Idrico_Pickpocket (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Pickpocket_Condition;
	information	= Info_Mod_Idrico_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Idrico_Pickpocket_Condition()
{
	C_Beklauen	(97, ItSc_Geyser, 2);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

	Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_BACK, Info_Mod_Idrico_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Idrico_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Idrico_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Idrico_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Idrico_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Idrico_EXIT (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_EXIT_Condition;
	information	= Info_Mod_Idrico_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Idrico_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Idrico_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
