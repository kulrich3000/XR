INSTANCE Info_Mod_Lukas_Hi (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Hi_Condition;
	information	= Info_Mod_Lukas_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your profession?";
};

FUNC INT Info_Mod_Lukas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukas_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Hi_15_00"); //What's your profession?
	AI_Output(self, hero, "Info_Mod_Lukas_Hi_06_01"); //Locksmiths, carpenters, barmaids.... I do everything I'm needed for.
	AI_Output(self, hero, "Info_Mod_Lukas_Hi_06_02"); //But I prefer the trade.
};

INSTANCE Info_Mod_Lukas_Lernen (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Lernen_Condition;
	information	= Info_Mod_Lukas_Lernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me?";
};

FUNC INT Info_Mod_Lukas_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_15_00"); //Can I learn from you?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_06_01"); //Certainly. (laughs) Do you want to work for me or what?

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);

	Info_AddChoice	(Info_Mod_Lukas_Lernen, "No.", Info_Mod_Lukas_Lernen_B);
	Info_AddChoice	(Info_Mod_Lukas_Lernen, "Yeah. You got something?", Info_Mod_Lukas_Lernen_A);
};

FUNC VOID Info_Mod_Lukas_Lernen_B()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_B_15_00"); //No.

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);
};

FUNC VOID Info_Mod_Lukas_Lernen_A()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_A_15_00"); //Yeah. You got something?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_01"); //Ha, I like you. Coming straight to the point.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_02"); //Only before I give you a job, I want to make sure you're a man.
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_A_15_03"); //How can I give you my...? to prove masculinity?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_04"); //I hear the annual rat hunt in Khorata is about to begin. There, men compete against each other in competition.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_05"); //If you take part and do reasonably well, we'll talk on.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_06"); //Talk to Friedel, he'll brief the participants. You'll find him in one of the houses on the lakeshore.

	Mod_REL_Wettstreit = 1;

	Mod_REL_Wettstreit_Tag = Wld_GetDay()-1;

	Log_CreateTopic	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "The craftsman Lukas in Khorata offered me work, if I prove my courage during the rat hunt. I'm supposed to visit Friedel on the lakeshore.");

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);
};

INSTANCE Info_Mod_Lukas_Wettstreit (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Wettstreit_Condition;
	information	= Info_Mod_Lukas_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "I won the rat hunt.";
};

FUNC INT Info_Mod_Lukas_Wettstreit_Condition()
{
	if (Mod_REL_Wettstreit == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_00"); //I won the rat hunt.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_01"); //Word has got around! I'd be honored if you could give me a hand.
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_02"); //What is there to do?
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_03"); //I'm in the middle of my work, and I'm running out of nails.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_04"); //You can bring me three packs of nails from the marketplace, that would help me.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_05"); //Just ask the dealers around to find out who's selling those things.
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_06"); //It's done.

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Log_CreateTopic	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "I'm supposed to get lucas three packs of nails from the marketplace in khorata.");
};

INSTANCE Info_Mod_Lukas_Nagelnachschub (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Nagelnachschub_Condition;
	information	= Info_Mod_Lukas_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description	= "Three packs filled with nails, as ordered.";
};

FUNC INT Info_Mod_Lukas_Nagelnachschub_Condition()
{
	if (Npc_HasItems(hero, ItMi_Nagelpaket) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Nagelnachschub_15_00"); //Three packs filled with nails, as ordered.

	B_GiveInvItems	(hero, self, ItMi_Nagelpaket, 3);

	AI_Output(self, hero, "Info_Mod_Lukas_Nagelnachschub_06_01"); //Very well done! That's why I let things jump for.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Lukas_NochWasZuTun (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_NochWasZuTun_Condition;
	information	= Info_Mod_Lukas_NochWasZuTun_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you got anything else for me to do?";
};

FUNC INT Info_Mod_Lukas_NochWasZuTun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Nagelnachschub))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_NochWasZuTun_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_NochWasZuTun_15_00"); //Do you have anything else to do for me?
	AI_Output(self, hero, "Info_Mod_Lukas_NochWasZuTun_06_01"); //No, I'm fine. I'm really grateful for your help.
	AI_Output(self, hero, "Info_Mod_Lukas_NochWasZuTun_06_02"); //Why don't you ask my apprentice if he's got problems if you haven't done it yet?
};

INSTANCE Info_Mod_Lukas_Unruhen (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen_Condition;
	information	= Info_Mod_Lukas_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Would you want to inherit Anselm?";
};

FUNC INT Info_Mod_Lukas_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen_15_00"); //Would you want to inherit Anselm?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen_06_01"); //Hmm, sure. I would iron out some of the mistakes Anselm made.
};

INSTANCE Info_Mod_Lukas_Unruhen2 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen2_Condition;
	information	= Info_Mod_Lukas_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What mistakes?";
};

FUNC INT Info_Mod_Lukas_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen2_15_00"); //What mistakes?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_01"); //Well, loosening up the laws of pleasure-giving for city dwellers, for example. There's hardly anyone left who works properly.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_02"); //Anselm let the reins slide. Once a month he arbitrarily imprisoned someone and gave him freedom.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_03"); //The thieves' pack is running around on the open road.
};

INSTANCE Info_Mod_Lukas_Unruhen3 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen3_Condition;
	information	= Info_Mod_Lukas_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you feel about the Buddler conflict?";
};

FUNC INT Info_Mod_Lukas_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen3_15_00"); //How do you feel about the Buddler conflict?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_01"); //There's only one position! The Buddhists must pay for their treason.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen3_15_02"); //How do you figure that?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_03"); //We'll put together a proper squad and take action against them. If they resist, they get killed.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_04"); //The rest of them spend the rest of their lives with a big stone ball on their feet.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_05"); //Anyway, I can't trust such troublemakers in my day.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Luke believes that the miners should be brought to rest by force.");
};

INSTANCE Info_Mod_Lukas_Unruhen4 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen4_Condition;
	information	= Info_Mod_Lukas_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the honourable task...";
};

FUNC INT Info_Mod_Lukas_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_00"); //I have the honourable task...
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_01"); //Yeah, all right. Let's light the fucking insurgents on fire under their ass, shall we?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_02"); //Well, here's the plan: I'll buy you a small squad of good men, and you'll smoke out the vermin nest to the last man.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_03"); //If any arise.... Arrest them. But don't be too squeamish.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_04"); //Who should I take with me?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_05"); //Three tough guys: Friedel, Von and the executioner. They've got a piece of tinder up their ass; all you have to do is set them on fire.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_06"); //I'm on my way.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "I'm supposed to pick up Friedel and the executioner and then forcefully drive the miners out of their bulwark.");

	B_StartOtherRoutine	(self, "STADTHALTER");

	Mod_7618_OUT_Norman_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7618_OUT_Norman_REL, GIL_STRF);

	Mod_7613_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7613_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7614_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7614_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7615_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7615_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7616_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7616_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7617_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7617_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7492_OUT_Roman_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7492_OUT_Roman_REL, GIL_STRF);
};

INSTANCE Info_Mod_Lukas_Unruhen5 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen5_Condition;
	information	= Info_Mod_Lukas_Unruhen5_Info;
	permanent	= 0;
	important	= 0;
	description	= "The miners are all dead.";
};

FUNC INT Info_Mod_Lukas_Unruhen5_Condition()
{
	if (Mod_REL_LukasS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen5_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen5_15_00"); //The miners are all dead.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen5_06_01"); //That's right, they deserve it. I'm happy with you.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen5_06_02"); //From now on, Khorata's going to be a little harder, I'll make sure of it. This town won't end up like the court!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "The victims of the miners were probably necessary to solve the conflict. From now on, I should be able to stay out of politics.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	Mod_REL_Stadthalter = 3;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lukas_Theodorus (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Theodorus_Condition;
	information	= Info_Mod_Lukas_Theodorus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Theodorus_Condition()
{
	if (Mod_REL_TheodorusS == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Theodorus_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Theodorus_06_00"); //Such a lying bush thief should be our new governor, with a foreign lackey who doesn't even know us?
	AI_Output(self, hero, "Info_Mod_Lukas_Theodorus_06_01"); //I'd rather die than take such a disgrace!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Lukas_Plagenquest (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_Condition;
	information	= Info_Mod_Lukas_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Seems to me you need an exterminator.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_01"); //Yeah, we've already sent a bunch of hammer-hunters through town.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_02"); //But even with their hammers they could not stop the vermin.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_03"); //No matter how often you hit them, they come back and in the company of many of their kind.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_05"); //In fact, I'm currently researching the chronicles of the city and I've actually come across something....
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_06"); //However, it will take me a while until I have fully explored the text.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_08"); //Yes, you can try your luck as a hammerfighter in the courthouse, where there are a lot of filthy creatures at the moment.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_09"); //Maybe you'll be more successful.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Lukas seems to have found clues in the chronicles of the city. Till he's completely fathomed them, I'm supposed to try me out in the courthouse for insect hunting.");

	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
};

INSTANCE Info_Mod_Lukas_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_02_Condition;
	information	= Info_Mod_Lukas_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_00"); //Ahh, good to see you, I've discovered something important.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_01"); //The plague that is currently afflicting the city had already existed many centuries ago - not long after the city was founded.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_02"); //In order to secure the blessing of the gods for the city and its surroundings, animal sacrifices were made in homage to the gods at that time.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_03"); //Everyone had the duty to sacrifice a certain number of animals.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_04"); //However, one of their founding fathers was so stingy that he sacrificed insects instead of sheep or molate.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_05"); //The gods were so angry that they transferred the human desire for a rich animal population to the insects of the environment.
	B_Say	(hero, self, "$PLAGENQUEST04");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_07"); //Well, with the chemical club.
	B_Say	(hero, self, "$PLAGENQUEST05");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_09"); //Yes, for a long time one was completely helpless and it seemed as if one had to give up the city.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_10"); //But then a righteous and respectable citizen named Chemos was sent a dream.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_11"); //He received instructions on how to build a weapon that could banish the plague.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_12"); //That's why our custom with the town hammers must come to the fight against the insects.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_13"); //At that time hammers and clubs did not differ fundamentally.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_14"); //Our law for this purpose dates back to a little later, when the hammers were given their characteristic shape and the clubs were replaced for practical reasons.
	B_Say	(hero, self, "$PLAGENQUEST06");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_16"); //No, I'm afraid not anymore. And the production of such a weapon is not uncomplicated. I found the manual....
	B_Say	(hero, self, "$PLAGENQUEST07");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_18"); //Here's a copy of it.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_21"); //(joyous) Really? You would be doing us all a great service.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_22"); //As soon as you have everything together, get back here and hand the materials to our blacksmith.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_23"); //And we'll find a club somewhere in the city. Thank you, thank you.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, the plague of insects is thus based on a punishment of the gods for an outrage committed.", "Ok, I'm now allowed to search for the chemical club material that can banish the cattle. They should be able to find a club themselves in Khorata...");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Lukas_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_03_Condition;
	information	= Info_Mod_Lukas_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_03_06_00"); //I hear you got the club. Now it's time to drive the pests out of town.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_03_06_01"); //Many of the animals have gathered in the marketplace. Take the chemical club and destroy it.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Now it's time to check if the chemical club is working. I'm supposed to deal with all the scumbags that have gathered at the marketplace.");

	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
};

INSTANCE Info_Mod_Lukas_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_04_Condition;
	information	= Info_Mod_Lukas_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "The club was able to stop the insects. I defeated them all.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_01"); //That's great and the first step to finally banish the evil.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_03"); //Yes, unfortunately we found out that new parasites continue to come from the surrounding forests.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_04"); //Somewhere there must be the root of the evil.... the ominous giant bug the springs were talking about.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_06"); //There's something, or rather someone who could help you with that.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_08"); //A citizen of our town. His name is axon and he carries the chemical blood, as I found out a few hours ago.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_10"); //Well, on the one hand the pedigrees give clear hints and then.... well...
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_12"); //... we found the chemical club with him. She was hanging in the living room of his house all the time.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_14"); //Anyway, he should be able to help you sense the beetle animal, discover and destroy the giant bug. He's already waiting for you outside the city.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpf, this is getting better and better. All this time the chemical club was hanging around Axon, a descendant of chemo.... Well then, now I'm allowed to shoot the big bug in the woods with him. Axon's waiting for me outside the city.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Lukas_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_05_Condition;
	information	= Info_Mod_Lukas_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "It is done. The giant bow is defeated.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_05_06_01"); //That's terrific. You have done our city a service of inestimable value and you have dispelled the evil.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_05_06_02"); //Take this gold and the town hammer as a thank you. May the blessing of the gods accompany you.

	B_ShowGivenThings	("1000 Gold and town hammer received");

	CreateInvItems	(hero, ItMw_Stadthammer, 1);
	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	if (!Npc_IsDead(Mod_7415_OUT_Axon_REL))
	{
		B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "START");
	};

	B_Göttergefallen (2, 1);
};

INSTANCE Info_Mod_Lukas_Andre (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Andre_Condition;
	information	= Info_Mod_Lukas_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_00"); //Good morning, soldier. Or should I call you captain?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_02"); //Lord Andres plan worked, but there was no way to get out of the blast furnace, so he overpowered you, put on the costume and lured the robot into the blast furnace.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_03"); //We found a sealed envelope next to you. In it Andre explained the whole matter and appointed you as his successor.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_04"); //But here... you can read the details for yourself.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_05"); //And I'm supposed to give you this key. Probably to his box in the master's room.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_06"); //Exactly. You missed the memorial service, you slept through 32 hours of beaten-up sleep. The old warhorse seems to have been in very good shape.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_07"); //If you want to say goodbye, Andre is now at the cemetery. At least his ashes. But rest first, he won't run away from you.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_08"); //Oh yes, before I forget: The operator of the blast furnace asked for you, check in on him.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The robot is defeated, but Lord Andre had to sacrifice himself to achieve this. Now he has appointed me as his successor.", "Andre actually sacrificed himself to destroy the robot. In a letter he named me as his successor and gave me a key, which probably leads me to his chest in the barracks.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The operator of the blast furnace Robert wants to see me. I should stop by there and ask what it's about.");
};

INSTANCE Info_Mod_Lukas_Judith (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Judith_Condition;
	information	= Info_Mod_Lukas_Judith_Info;
	permanent	= 0;
	important	= 0;
	description 	= "How are you and your wife?";
};                       

FUNC INT Info_Mod_Lukas_Judith_Condition()
{
	if (Mod_JudithNacht == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lukas_Judith_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Judith_15_00"); //How are you and your wife?
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_01"); //I'm all right. Funny you should be asking that right now.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_02"); //Judith only recently confessed to me that she cheated for a while.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_03"); //But she says it won't happen again.
	AI_Output(hero, self, "Info_Mod_Lukas_Judith_15_04"); //And you forgave her?
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_05"); //Well, I can't get a new old lady at my age.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_06"); //I'd rather keep the ones I already have.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lukas_Freudenspender (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Freudenspender_Condition;
	information	= Info_Mod_Lukas_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Feel like giving joy?";
};                       

FUNC INT Info_Mod_Lukas_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lukas_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Freudenspender_15_00"); //Feel like giving joy?
	AI_Output(self, hero, "Info_Mod_Lukas_Freudenspender_06_01"); //Devil's stuff! Get out of here!
};

INSTANCE Info_Mod_Lukas_Pickpocket (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Pickpocket_Condition;
	information	= Info_Mod_Lukas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Lukas_Pickpocket_Condition()
{
	C_Beklauen	(66, ItMi_Hammer, 1);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

	Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_BACK, Info_Mod_Lukas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lukas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lukas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lukas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lukas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lukas_EXIT (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_EXIT_Condition;
	information	= Info_Mod_Lukas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lukas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
