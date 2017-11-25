INSTANCE Info_Mod_Theodorus_Hi (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Hi_Condition;
	information	= Info_Mod_Theodorus_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_00"); //Hold on!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_15_01"); //What do you want?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_02"); //I want to warn you. There are dangers lurking behind this passage.

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	Info_AddChoice	(Info_Mod_Theodorus_Hi, "I'll see for myself.", Info_Mod_Theodorus_Hi_B);
	Info_AddChoice	(Info_Mod_Theodorus_Hi, "Dangers of what kind?", Info_Mod_Theodorus_Hi_A);
};

FUNC VOID Info_Mod_Theodorus_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_B_15_00"); //I'll see for myself.
	
	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Theodorus_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_00"); //Dangers of what kind?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_01"); //You'll know that for sure! Or why do you want to go there? Of course you know about giver of joy!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_02"); //What's so dangerous about that?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_03"); //(nachäffend) What's so dangerous about that? Es macht aus starken Männern sabbernde Spirituelle. DAS ist daran gefährlich.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_04"); //I have heard of a monotheistic religion based solely on the use of this drug.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_05"); //Do you also want to insult the gods in this way? (Pause) I could tell you a lot about what decent men have done under the influence of joyful donors...
	
	Mod_Theodorus_FreudenspenderWarnung = 1;

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me about the men of pleasure-giving influence.";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung_15_00"); //Tell me about the men of pleasure-giving influence.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_01"); //Our last governor, Valens - he was the one who invented the bogus rank of governor - had the craziest hallucinations in his late stages.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_02"); //He suffered from persecution mania. Once he dreamt that other power holders had used magic to find out who would succeed him.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_03"); //He then roamed the alleys of Khorata and had every conspicuous person executed on the spot, even if he had only read his horoscope.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_04"); //On the other hand, he spared his followers even in the most serious crimes; they could murder and plunder, that didn't even go to him.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_05"); //He then died when he jumped into a water catchment basin in Khorata in intoxication to bathe there - the basins have no ladders that lead out, and so he drowned like a fly in a bucket of water.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_06"); //Vincent the Hunter is also one of the tricky candidates.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_07"); //We recently had to stop him from hunting his grandmother with bow and arrow because he thought she was a molerato.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_08"); //THESE are just two examples of the devastating state of the people here.
	
	Mod_Theodorus_FreudenspenderWarnung = 2;
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung2_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you ban gourmets?";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung2_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung2_15_00"); //Why don't you ban gourmets?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_01"); //I'd like that, but the dealers refuse to take that step.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_02"); //You can't imagine how much money some people make with this stuff.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_03"); //What's more, it keeps people stupid - what more do you want?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_04"); //Someday it's time for a little revolution...
};

INSTANCE Info_Mod_Theodorus_Unruhen (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen_Condition;
	information	= Info_Mod_Theodorus_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you know about the latest events in Khorata?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen_15_00"); //Do you know about the latest events in Khorata?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen_09_01"); //Of course, and you know what? I find it absolutely understandable and welcome!
};

INSTANCE Info_Mod_Theodorus_Unruhen2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen2_Condition;
	information	= Info_Mod_Theodorus_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Would you want to be governor of Khorata?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_00"); //Would you want to be governor of Khorata?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_01"); //Haha, I hope you're not serious.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_02"); //Yes, I do, yes.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_03"); //It might even be worth considering. Then there would finally be a way to change Khorata.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_04"); //So, if you want to see me as governor - I am your husband!
};

INSTANCE Info_Mod_Theodorus_Unruhen3 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen3_Condition;
	information	= Info_Mod_Theodorus_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "How do you think the conflict with the miners should be resolved?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen3_15_00"); //How do you think the conflict with the miners should be resolved?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_01"); //What the Buddhists demand is their right. Why would we talk them out of it?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_02"); //City dwellers must be put in their place.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus is in favour of supporting the Buddhists.");
};

INSTANCE Info_Mod_Theodorus_Unruhen4 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen4_Condition;
	information	= Info_Mod_Theodorus_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You are now the governor of Khorata.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_00"); //You are now the governor of Khorata.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_01"); //It's not true! You're kidding me, right?
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_02"); //Come with me, I'll show you your new place of work.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_03"); //Honestly, you surprise me. I didn't think you'd make such a risky decision. I'm even almost a little touched.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_04"); //You can cry later.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_05"); //All right, all right. Let's go!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWINCITY");
};

INSTANCE Info_Mod_Theodorus_Unruhen5 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen5_Condition;
	information	= Info_Mod_Theodorus_Unruhen5_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen4))
	&& (Npc_GetDistToWP(hero, "RATHAUSUNTEN_01") < 500)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen5_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen5_15_00"); //Here we are.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen5_09_01"); //Thanks. I'll take a look around. Come back tomorrow and we'll take care of the serious business.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus needs a day to settle in. Then we will deal with the open questions.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");

	Mod_REL_Stadthalter = 1;

	Mod_REL_Stadthalter_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Theodorus_Unruhen6 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen6_Condition;
	information	= Info_Mod_Theodorus_Unruhen6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen5))
	&& (Mod_REL_Stadthalter_Day < Wld_GetDay())
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen6_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_00"); //Let's get going.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_01"); //Top of my list is the miners' problem.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_02"); //The townspeople must reduce their claims.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_03"); //What do you intend to do?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_04"); //I'll give you this message.

	B_GiveInvItems	(self, hero, ItWr_TheodorusBotschaft, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_05"); //On the marketplace stands this peculiar scaffolding. From there you read it to everyone.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_06"); //In that time I pick up the Buddlers and take them back to town.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_07"); //For the time being, mining will be shelved until the city's inhabitants come to their senses.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_08"); //Don't you think that's too provocative?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_09"); //You have to learn to take things. See you around.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus instructed me to read a message from the scaffolding on the marketplace to the people of Khorata.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATMINE");
};

INSTANCE Info_Mod_Theodorus_Unruhen7 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen7_Condition;
	information	= Info_Mod_Theodorus_Unruhen7_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen7_Condition()
{
	if (Mod_REL_TheodorusS == 4)
	&& (Npc_IsDead(Mod_7620_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7621_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
	&& (Npc_IsDead(Mod_7375_OUT_Gerichtswache_02))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen7_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_00"); //It was to be expected that my appointment would cause displeasure. But I wouldn't have imagined this level of violence.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_01"); //Nevertheless, I thank you for your help. You helped save Khorata from one of his worst crises.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_02"); //I owe much to you myself.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "The situation appears to have been temporarily rectified. The inhabitants of Khoratas have to arrange themselves with their new governor.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");
	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "START");
	B_StartOtherRoutine	(Mod_7618_OUT_Norman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7617_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7614_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7616_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7613_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7615_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7492_OUT_Roman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7619_OUT_Frazer_REL, "INCITY");
};

INSTANCE Info_Mod_Theodorus_Plagenquest (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Seems to me you need an exterminator.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_01"); //Yeah, we've already sent a bunch of hammer-hunters through town.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_02"); //But even with their hammers they could not stop the vermin.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_03"); //No matter how often you hit them, they come back and in the company of many of their kind.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_05"); //In fact, I'm currently researching the chronicles of the city and I've actually come across something....
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_06"); //However, it will take me a while until I have fully explored the text.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_08"); //Yes, you can try your luck as a hammerfighter in the courthouse, where there are a lot of filthy creatures at the moment.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_09"); //Maybe you'll be more successful.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Theodorus seems to have found clues in the city's chronicles. Till he's completely fathomed them, I'm supposed to try me out in the courthouse for insect hunting.");

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

INSTANCE Info_Mod_Theodorus_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_02_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_00"); //Ahh, good to see you, I've discovered something important.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_01"); //The plague that is currently afflicting the city had already existed many centuries ago - not long after the city was founded.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_02"); //In order to secure the blessing of the gods for the city and its surroundings, animal sacrifices were made in homage to the gods at that time.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_03"); //Everyone had the duty to sacrifice a certain number of animals.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_04"); //However, one of their founding fathers was so stingy that he sacrificed insects instead of sheep or molate.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_05"); //The gods were so angry that they transferred the human desire for a rich animal population to the insects of the environment.
	B_Say	(hero, self, "$PLAGENQUEST04");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_07"); //Well, with the chemical club.
	B_Say	(hero, self, "$PLAGENQUEST05");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_09"); //Yes, for a long time one was completely helpless and it seemed as if one had to give up the city.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_10"); //But then a righteous and respectable citizen named Chemos was sent a dream.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_11"); //He received instructions on how to build a weapon that could banish the plague.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_12"); //That's why our custom with the town hammers must come to the fight against the insects.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_13"); //At that time hammers and clubs did not differ fundamentally.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_14"); //Our law for this purpose dates back to a little later, when the hammers were given their characteristic shape and the clubs were replaced for practical reasons.
	B_Say	(hero, self, "$PLAGENQUEST06");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_16"); //No, I'm afraid not anymore. And the production of such a weapon is not uncomplicated. I found the manual....
	B_Say	(hero, self, "$PLAGENQUEST07");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_18"); //Here's a copy of it.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_21"); //(joyous) Really? You would be doing us all a great service.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_22"); //As soon as you have everything together, get back here and hand the materials to our blacksmith.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_23"); //And we'll find a club somewhere in the city. Thank you, thank you.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, the plague of insects is thus based on a punishment of the gods for an outrage committed.", "Ok, I'm now allowed to search for the chemical club material that can banish the cattle. They should be able to find a club themselves in Khorata...");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Theodorus_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_03_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_00"); //I hear you got the club. Now it's time to drive the pests out of town.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_01"); //Many of the animals have gathered in the marketplace. Take the chemical club and destroy it.

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

INSTANCE Info_Mod_Theodorus_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_04_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "The club was able to stop the insects. I defeated them all.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_01"); //That's great and the first step to finally banish the evil.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_03"); //Yes, unfortunately we found out that new parasites continue to come from the surrounding forests.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_04"); //Somewhere there must be the root of the evil.... the ominous giant bug the springs were talking about.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_06"); //There's something, or rather someone who could help you with that.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_08"); //A citizen of our town. His name is axon and he carries the chemical blood, as I found out a few hours ago.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_10"); //Well, on the one hand the pedigrees give clear hints and then.... well...
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_12"); //... we found the chemical club with him. She was hanging in the living room of his house all the time.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_14"); //Anyway, he should be able to help you sense the beetle animal, discover and destroy the giant bug. He's already waiting for you outside the city.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpf, this is getting better and better. All this time the chemical club was hanging around Axon, a descendant of chemo.... Well then, now I'm allowed to shoot the big bug in the woods with him. Axon's waiting for me outside the city.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Theodorus_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_05_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "It is done. The giant bow is defeated.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_01"); //That's terrific. You have done our city a service of inestimable value and you have dispelled the evil.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_02"); //Take this gold and the town hammer as a thank you. May the blessing of the gods accompany you.

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

INSTANCE Info_Mod_Theodorus_Andre (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Andre_Condition;
	information	= Info_Mod_Theodorus_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_00"); //Good morning, soldier. Or should I call you captain?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_02"); //Lord Andre's plan worked, but there was no way to implement an exit into the blast furnace, so he overpowered you, put on the costume and lured the robot into the blast furnace.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_03"); //We found a sealed envelope next to you. In it Andre explained the whole matter and appointed you as his successor.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_04"); //But here... you can read the details for yourself.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_05"); //And I'm supposed to give you this key. Probably to his box in the master's room.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_06"); //Exactly. You missed the memorial service, you slept through 32 hours of beaten-up sleep. The old warhorse seems to have been in very good shape.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_07"); //If you want to say goodbye, Andre is now at the cemetery. At least his ashes. But rest first, he won't run away from you.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_08"); //Oh yes, before I forget: The operator of the blast furnace asked for you, check in on him.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The robot is defeated, but Lord Andre had to sacrifice himself to achieve this. Now he has appointed me as his successor.", "Andre actually sacrificed himself to destroy the robot. In a letter he named me as his successor and gave me a key, which probably leads me to his chest in the barracks.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The operator of the blast furnace Robert wants to see me. I should stop by there and ask what it's about.");
};

INSTANCE Info_Mod_Theodorus_Freudenspender (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Freudenspender_Condition;
	information	= Info_Mod_Theodorus_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You look like you want to be a giver of joy.";
};                       

FUNC INT Info_Mod_Theodorus_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_00"); //You look like you want to be a giver of joy.
	AI_Output(self, hero, "Info_Mod_Theodorus_Freudenspender_09_01"); //"What?"
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_02"); //I'm just kidding....
};

INSTANCE Info_Mod_Theodorus_Pickpocket (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Pickpocket_Condition;
	information	= Info_Mod_Theodorus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Theodorus_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_BACK, Info_Mod_Theodorus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Theodorus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Theodorus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Theodorus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Theodorus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Theodorus_EXIT (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_EXIT_Condition;
	information	= Info_Mod_Theodorus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Theodorus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
