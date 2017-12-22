INSTANCE Info_Mod_Anselm_Hi (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Hi_Condition;
	information	= Info_Mod_Anselm_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Anselm_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Anselm_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_00"); //I am the governor of Khorata!
	AI_Output(hero, self, "Info_Mod_Anselm_Hi_15_01"); //The governor? Who's your supervisor?
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_02"); //No, you misunderstand. I'm the governor. I'll keep the city in good shape, but I'm not serving anyone.
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_03"); //But what a fortunate coincidence that fate has given me you!
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_04"); //I just had the idea to have Khorata and the surrounding area surveyed, so that I finally know how big my empire is.
};

INSTANCE Info_Mod_Anselm_Landvermessung (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Landvermessung_Condition;
	information	= Info_Mod_Anselm_Landvermessung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You need my help?";
};

FUNC INT Info_Mod_Anselm_Landvermessung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Landvermessung_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Landvermessung_15_00"); //You need my help?
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_01"); //Exactly right! I seem to have caught a real thinker!
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_02"); //So the first thing you do is go to Vincent, that's the hunter outside of town.
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_03"); //He hunts everywhere, so he'll know how big the Khorata countryside is.
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_04"); //Once you've done that, all we need to do is find out the area of Khorata. Brilliant!

	Log_CreateTopic	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Anselm, who wants to be explicitly named the governor of Khorata, wants to have Khorata and the surrounding area surveyed. I'm supposed to go to Vincent, a hunter out of town, and ask him for an estimate.");
};

INSTANCE Info_Mod_Anselm_LandvermessungVincent (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungVincent_Condition;
	information	= Info_Mod_Anselm_LandvermessungVincent_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got news.";
};

FUNC INT Info_Mod_Anselm_LandvermessungVincent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vincent_Landvermessung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungVincent_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVincent_15_00"); //I've got news. The surrounding area of Khorata has an area of five square miles. Says Vincent.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_01"); //Perfect! Even more than I had hoped for.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_02"); //Now we still lack the area of the city. You'd better ask Hubert.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_03"); //He runs around Khorata a lot due to his job and knows his way around like no other.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Now I have to ask a certain Hubert for the area of Khorata...");

	B_StartOtherRoutine	(Mod_7380_OUT_Hubert_REL, "STREUNER");
};

INSTANCE Info_Mod_Anselm_LandvermessungHubert (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungHubert_Condition;
	information	= Info_Mod_Anselm_LandvermessungHubert_Info;
	permanent	= 0;
	important	= 0;
	description	= "I spoke to Hubert.";
};

FUNC INT Info_Mod_Anselm_LandvermessungHubert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_LandvermessungAlk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungHubert_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungHubert_15_00"); //I spoke to Hubert.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_01"); //What's he saying?
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungHubert_15_02"); //Khorata is as big as seven stubble fields.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_03"); //Yes? Really? I would have appreciated that, too.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_04"); //You did a great job. I'm deeply indebted to you. All of Khorata will be eternally grateful to you.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "So now I've finished this weird job. Thank the gods!");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Anselm_LandvermessungVerarsche (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungVerarsche_Condition;
	information	= Info_Mod_Anselm_LandvermessungVerarsche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Say...";
};

FUNC INT Info_Mod_Anselm_LandvermessungVerarsche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_00"); //Say...
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_01"); //What else is there?
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_02"); //Could it be that you're kidding me?
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_03"); //Me?!
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_04"); //Exactly.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_05"); //Nothing becomes me further!
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_06"); //The hunter laughs at me, I'm supposed to question an alcoholic and you're happy with every bullshit answer.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_07"); //Hey! Don't look at it that way!

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);

	Info_AddChoice	(Info_Mod_Anselm_LandvermessungVerarsche, "All right...", Info_Mod_Anselm_LandvermessungVerarsche_B);
	Info_AddChoice	(Info_Mod_Anselm_LandvermessungVerarsche, "I think it's time for a beating (...) )", Info_Mod_Anselm_LandvermessungVerarsche_A);
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_B_15_00"); //All right...

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_A_15_00"); //I think it's time for a beating, don't you think?
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);

	AI_StopProcessInfos	(hero);

	AI_Wait	(self, 3);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 2);
};

INSTANCE Info_Mod_Anselm_Ornament (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Ornament_Condition;
	information	= Info_Mod_Anselm_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about an ornamental piece?";
};

FUNC INT Info_Mod_Anselm_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_00"); //Do you know anything about an ornamental piece?
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_01"); //About what? You mean something old?
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_02"); //It is a fragment of a ring that the founder of the city must have had with him.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_03"); //Ah, now I know what you mean: The saga of the origin of khorata. Don't be so puffy with me!
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_04"); //Can I have the fragment? It's important.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_05"); //What do you need it for?
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_06"); //The water magicians have found a portal to the founder's homeworld.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_07"); //However, it can only be opened with a portal ring and a part of it should be found in Relendel.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_08"); //Sounds important, my boy. Unfortunately, I don't have this fragment myself, but I could tell you where to find it according to legend.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_09"); //Where? Where?
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_10"); //If you were a citizen of khorata, I'd tell you right away, otherwise the information would cost 2,000 gold coins.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Anselm only tells me something about the whereabouts of the ornament when I am a citizen of Khoratas or when I have paid 2000 gold coins.");
};

INSTANCE Info_Mod_Anselm_Ornament2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Ornament2_Condition;
	information	= Info_Mod_Anselm_Ornament2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Talking about the ornament....";
};

FUNC INT Info_Mod_Anselm_Ornament2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Ornament))
	&& (Mod_Anselm_Ornament == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Ornament2_Info()
{
	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);

	Info_AddChoice	(Info_Mod_Anselm_Ornament2, DIALOG_BACK, Info_Mod_Anselm_Ornament2_BACK);

	if (Mod_REL_Buerger == 1)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "I'm a citizen of khorata.", Info_Mod_Anselm_Ornament2_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "2000 gold... here.", Info_Mod_Anselm_Ornament2_B);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "A thousand gold should be enough.", Info_Mod_Anselm_Ornament2_A);
	};
};

FUNC VOID Info_Mod_Anselm_Ornament2_D()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_00"); //Very good... According to tradition, a refugee from Jharkendar was a co-founder of our dynasty.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_01"); //He lived in a camp west of Khorata, which grew into a settlement but was destroyed by fire.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_02"); //From the pass you have to follow the road to the left, then you can't miss the ruins.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_03"); //If the fugitive was carrying part of the portal ring, you'll find him there.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_D_15_04"); //I'll be on my way right away.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Anselm told me that the ornament could be found in the ruins west of Khorata. From the pass I would have to follow the path to the left...");

	Wld_InsertItem	(ItMi_Ornament_Priester, "FP_ITEM_ORNAMENT_PRIESTER");

	Mod_Anselm_Ornament = 1;

	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);
};

FUNC VOID Info_Mod_Anselm_Ornament2_BACK()
{
	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);
};

FUNC VOID Info_Mod_Anselm_Ornament2_C()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_C_15_00"); //I'm a citizen of khorata.

	Info_Mod_Anselm_Ornament2_D();
};

FUNC VOID Info_Mod_Anselm_Ornament2_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_B_15_00"); //2000 gold... here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	Info_Mod_Anselm_Ornament2_D();
};

FUNC VOID Info_Mod_Anselm_Ornament2_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_A_15_00"); //A thousand gold should be enough.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_A_16_01"); //Of course, of course. Actually, I could also give you the information, but I also have my expenses, which want to be covered.

		B_GiveInvItems	(hero, self, ItMi_Gold, 1000);
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);

		Info_Mod_Anselm_Ornament2_D();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_A_16_02"); //Hmm, you shouldn't be trying to take advantage of my goodwill today. Be glad I'm offering to sell you the information at all.
	};
};

INSTANCE Info_Mod_Anselm_AnnaBefreit (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_AnnaBefreit_Condition;
	information	= Info_Mod_Anselm_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_00"); //I've heard that you're partly responsible for the death of my judges.
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_01"); //I was really hoping for a little more tact from you. (sighs)
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_02"); //I'll leave it at a small fine. 500 gold coins, now.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_03"); //And next time, you better watch your business, will you? It's an adult business.
};

INSTANCE Info_Mod_Anselm_UlrichKO (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_UlrichKO_Condition;
	information	= Info_Mod_Anselm_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_00"); //Oh, there you are. The judge told me everything. You fought bravely.
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_01"); //Khorata can be proud to own a hero like you.
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_02"); //Oh, your reward. Here, take this.

	CreateInvItems	(hero, ItMi_Gold, 800);
	CreateInvItems	(hero, ItMI_Freudenspender, 5);

	B_ShowGivenThings	("800 gold and 5 bottles of joyful gift-giver received");

	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_03"); //Sweeten up the day, sweetie.
};

INSTANCE Info_Mod_Anselm_Unfrieden (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Unfrieden_Condition;
	information	= Info_Mod_Anselm_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a shady matter to report.";
};

FUNC INT Info_Mod_Anselm_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_LeonhardRichter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Unfrieden_15_00"); //I have a shady matter to report.
	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_01"); //Oho! You're a good man! What is it about?
	AI_Output(hero, self, "Info_Mod_Anselm_Unfrieden_15_02"); //I'm supposed to deliver this letter to the judge in Leonhard's name.

	B_GiveInvItems	(hero, self, ItWr_LeonhardRichter, 1);

	B_UseFakeScroll ();

	B_GiveInvItems	(self, hero, ItWr_LeonhardRichter, 1);

	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_03"); //You're being funny! Scribble random letters on a piece of paper and then make me believe there's a purpose behind it.
	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_04"); //I'm out of my old age, son.
};

INSTANCE Info_Mod_Anselm_RuprechtRing (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_RuprechtRing_Condition;
	information	= Info_Mod_Anselm_RuprechtRing_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_RuprechtRing_Condition()
{
	if (Mod_LeonhardRuprecht == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_RuprechtRing_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_00"); //How I heard you tryin' to rob a respected stranger.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_01"); //I can't leave that unpunished, understand?
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_02"); //So your task will be to serve the common good.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_03"); //And by coincidence, I have just written a circular to the citizens of Khorata.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_04"); //30 letters I have already copied, you'll get them.

	B_GiveInvItems	(self, hero, ItWr_AnselmRundschreiben, 30);

	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_05"); //You will quickly distribute them to Khorata's honorable inhabitants.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_06"); //Someone else will take care of the rest.
};

INSTANCE Info_Mod_Anselm_FrazerPakete (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_FrazerPakete_Condition;
	information	= Info_Mod_Anselm_FrazerPakete_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have some ore packages here.";
};

FUNC INT Info_Mod_Anselm_FrazerPakete_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Hi))
	&& (Npc_HasItems(hero, ItMi_ErzPaketFrazer) == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_FrazerPakete_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_FrazerPakete_15_00"); //I have some ore packages here.

	B_GiveInvItems	(hero, self, ItMi_ErzPaketFrazer, 10);

	AI_Output(self, hero, "Info_Mod_Anselm_FrazerPakete_16_01"); //You wore it all by yourself? Respect! For this you shall be rewarded princely!

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_ERZPAKETE, "I have delivered the ore and have been remunerated' princely'.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Anselm_Endres (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Endres_Condition;
	information	= Info_Mod_Anselm_Endres_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want you to let Frazer know I can be trusted.";
};

FUNC INT Info_Mod_Anselm_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres02))
	&& (Npc_HasItems(hero, ItWr_AnselmForFrazer) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_00"); //I want you to let Frazer know I can be trusted.
	AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_01"); //Aha! That's a quick fix, such a letter. But have you ever helped me in return?

	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_02"); //Ja, ich war dir bei der "surveying" Khoratas behilflich.
		AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_03"); //You're right, I owe you a favor for that too! Take it and go!

		B_GiveInvItems	(self, hero, ItWr_AnselmForFrazer, 1);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I should now return to Frazer by letter.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_04"); //Probably....
		AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_05"); //Come back, if you remember concretely!

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I will not receive Anselms insurance until I have helped him.");
	};
};

INSTANCE Info_Mod_Anselm_Endres02 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Endres02_Condition;
	information	= Info_Mod_Anselm_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	&& (Mod_EndresIndizien == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Endres02_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Endres02_16_00"); //Respect. I'd have been the last to suspect a cold-blooded killer behind the healer.
	AI_Output(self, hero, "Info_Mod_Anselm_Endres02_16_01"); //Thanks for taking the boys' and me's work.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Anselm_Dorn (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn_Condition;
	information	= Info_Mod_Anselm_Dorn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 2)
	&& (Npc_IsDead(Mod_7499_KDF_Elvira_REL))
	&& (Npc_IsDead(Mod_7425_KDF_Fuego_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_00"); //I understand you were involved in a murder case. What do you think of that?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn_15_01"); //It happened by Adanos' will!
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_02"); //(laughs) You little joker.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_03"); //But between you and me, nobody cries a tear for the fire magicians. With a little luck, they'll stay away.
};

INSTANCE Info_Mod_Anselm_Dorn2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn2_Condition;
	information	= Info_Mod_Anselm_Dorn2_Info;
	permanent	= 1;
	important	= 0;
	description	= "I need your help.";
};

FUNC INT Info_Mod_Anselm_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_15_00"); //I need your help.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_16_01"); //I'm glad you did! Where's the shoe?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_15_02"); //Idrico tries to drive the fire magicians out of town.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_16_03"); //And what exactly is the problem now?

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);

	Info_AddChoice	(Info_Mod_Anselm_Dorn2, "Don't you see that, man?!", Info_Mod_Anselm_Dorn2_B);
	Info_AddChoice	(Info_Mod_Anselm_Dorn2, "I'm afraid Idrico's mind is clouded.", Info_Mod_Anselm_Dorn2_A);
};

FUNC VOID Info_Mod_Anselm_Dorn2_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_B_15_00"); //Don't you see that, man?!
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_B_16_01"); //Not in that tone, buddy.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_B_16_02"); //Be glad I'm in a good mood, or I'll teach you a lesson.

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);
};

FUNC VOID Info_Mod_Anselm_Dorn2_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_00"); //I'm afraid Idrico's mind is clouded.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_01"); //I admit, he's a bit odd. But what can I do about it?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_02"); //You'll have your little helpers there.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_03"); //And what good is it to me if I flunk it with an influential gossip spreader?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_04"); //Take your pick.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_05"); //Hmm, yes, a tribal payment from the Fire Magicians would certainly put me in a more gracious mood.
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_06"); //I'll take care of it.

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);

	Mod_REL_IdricoDorn = 4;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Anselm will only help me if he receives a tribal payment from the Fire Magicians.");
};

INSTANCE Info_Mod_Anselm_Dorn3 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn3_Condition;
	information	= Info_Mod_Anselm_Dorn3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are 50 gold coins from the Fire Magicians.";
};

FUNC INT Info_Mod_Anselm_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn3_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn3_15_00"); //Here are 50 gold coins from the Fire Magicians.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_01"); //The matter does not seem to be very urgent.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_02"); //50 gold for my help is slightly offensive.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_03"); //I don't think that's how we do business.

	Mod_REL_IdricoDorn = 5;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_FAILED);
};

INSTANCE Info_Mod_Anselm_Dorn4 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn4_Condition;
	information	= Info_Mod_Anselm_Dorn4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the 500 gold of fire magicians.";
};

FUNC INT Info_Mod_Anselm_Dorn4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn4_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn4_15_00"); //Here's the 500 gold of fire magicians.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Anselm_Dorn4_16_01"); //A handsome sum! All right, Idrico will have his lesson.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn4_16_02"); //And then shut up.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Anselm wants to keep Idrico quiet.");

	Mod_REL_IdricoDorn = 6;
};

INSTANCE Info_Mod_Anselm_Wettstreit (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Wettstreit_Condition;
	information	= Info_Mod_Anselm_Wettstreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Wettstreit_Condition()
{
	if (Mod_REL_Wettstreit == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Wettstreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Wettstreit_16_00"); //You're the big hero of this year's rat hunt.
	AI_Output(self, hero, "Info_Mod_Anselm_Wettstreit_16_01"); //I'd like to give you a medal for your merits. Wear it with pride.

	B_GiveInvItems	(self, hero, ItAm_HalskettederEhre, 1);
};

INSTANCE Info_Mod_Anselm_Buerger (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger_Condition;
	information	= Info_Mod_Anselm_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I also become a citizen of Khorata?";
};

FUNC INT Info_Mod_Anselm_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger_15_00"); //Can I also become a citizen of Khorata?
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_01"); //Hmm, huh? You want to wreck some privileges? Ripped-off boy.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_02"); //But... yes, it should be possible that you're granted citizenship.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_03"); //However, since you are the first one to ask for it, I have to think up a procedure to make sure that you fit in with us.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_04"); //You can settle in in the meantime.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_05"); //When I'm done with the work and see that you get involved, I'll talk to you.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_06"); //So, what are you waiting for?

	Log_CreateTopic	(TOPIC_MOD_KHORATA_BUERGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_BUERGER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "I applied to Anselm for citizenship of Khorata. He still needs time to find a suitable procedure for me. That's how long I'm supposed to be useful.");
};

INSTANCE Info_Mod_Anselm_Buerger2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger2_Condition;
	information	= Info_Mod_Anselm_Buerger2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Buerger2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger))
	&& (Mod_REL_QuestCounter >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger2_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_00"); //There you are! I saw that you weren't idle and made some friends.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_01"); //That's why I'm giving you this questionnaire. You must be able to answer these questions the next time we meet.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_02"); //You will find all the solutions within the city walls of Khorata. Or nearby.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_03"); //(pathetic) Question and research, and you'll find it.

	B_GiveInvItems	(self, hero, ItWr_Fragebogen, 1);

	B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "Anselm has now handed me a questionnaire. He wants to know the answers to the questions from me in a personal conversation. So I should remember what I find out.");
};

INSTANCE Info_Mod_Anselm_Buerger3 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger3_Condition;
	information	= Info_Mod_Anselm_Buerger3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I feel ready for the test.";
};

FUNC INT Info_Mod_Anselm_Buerger3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Mod_REL_Buerger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger3_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_15_00"); //I feel ready for the test.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_16_01"); //Very good! Let's start right away. One question has been answered incorrectly and the exam is not passed.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_16_02"); //First question: In which building is the only one of Khorata's miscarriages?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Margaret's house.", Info_Mod_Anselm_Buerger3_A5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Friedel's house.", Info_Mod_Anselm_Buerger3_A4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "In the Fire Magicians' House.", Info_Mod_Anselm_Buerger3_A3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Healer's house.", Info_Mod_Anselm_Buerger3_A2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "In the inn.", Info_Mod_Anselm_Buerger3_A1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_A()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_A_16_00"); //Second question: What were my three rats called?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Oleg, Pinky and Fievel.", Info_Mod_Anselm_Buerger3_B5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Rémy, Fievel and Oleg.", Info_Mod_Anselm_Buerger3_B4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Fievel, Pinky and Rémy.", Info_Mod_Anselm_Buerger3_B3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Rémy, Feivel and Pinky.", Info_Mod_Anselm_Buerger3_B2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Oleg, Rémy and Pinky.", Info_Mod_Anselm_Buerger3_B1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_A5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A5_15_00"); //Margaret's house.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A4_15_00"); //Friedel's house.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A3_15_00"); //In the Fire Magicians' House.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A2_15_00"); //Healer's house.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A1_15_00"); //In the inn.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_B_16_00"); //The third question: Why did the Court Governments separate from the rest of the Community at that time?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "A fanatic seduced her to come with him.", Info_Mod_Anselm_Buerger3_C5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "They were the only ones who wanted to grow delights.", Info_Mod_Anselm_Buerger3_C4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "They were unable to cope in the Community.", Info_Mod_Anselm_Buerger3_C3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "They wanted to escape Beliar's observation.", Info_Mod_Anselm_Buerger3_C2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "They were separated in a natural disaster.", Info_Mod_Anselm_Buerger3_C1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_B5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B5_15_00"); //Oleg, Pinky and Fievel.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B4_15_00"); //Rémy, Fievel and Oleg.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B3_15_00"); //Fievel, Pinky and Rémy.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B2_15_00"); //Rémy, Feivel and Pinky.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B1_15_00"); //Oleg, Rémy and Pinky.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_C_16_00"); //Fourth question: How many dealers have their stand in the marketplace of Khorata?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Seven.", Info_Mod_Anselm_Buerger3_D5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Six.", Info_Mod_Anselm_Buerger3_D4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Five.", Info_Mod_Anselm_Buerger3_D3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Four.", Info_Mod_Anselm_Buerger3_D2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Three.", Info_Mod_Anselm_Buerger3_D1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_C5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C5_15_00"); //A fanatic seduced her to come with him.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C4_15_00"); //They were the only ones who wanted to grow delights.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C3_15_00"); //They were unable to cope in the Community.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C2_15_00"); //They wanted to escape Beliar's observation.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C1_15_00"); //They were separated in a natural disaster.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_D_16_00"); //Fifth question: Who has to ensure that the water supply runs smoothly?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Idrico.", Info_Mod_Anselm_Buerger3_E5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Hubert.", Info_Mod_Anselm_Buerger3_E4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Friedel.", Info_Mod_Anselm_Buerger3_E3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Luke.", Info_Mod_Anselm_Buerger3_E2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Spiral.", Info_Mod_Anselm_Buerger3_E1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_D5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D5_15_00"); //Seven.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D4_15_00"); //Six.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D3_15_00"); //Five.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D2_15_00"); //Four.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D1_15_00"); //Three.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E()
{
	if (Mod_REL_BuergerFragen == 5)
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_00"); //Yeah, you did good. You answered all the questions correctly.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_01"); //Well, all right. You may now call yourself a citizen of khoratas and do everything with joyfulness, whatever you want.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_02"); //That's something, isn't it?
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_03"); //You should stop by Friedel's, too. I'll let him know to give you some seed money.

		Mod_REL_Buerger = 1;

		B_GivePlayerXP	(200);

		B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "I am now a citizen of khorata.");
		B_SetTopicStatus	(TOPIC_MOD_KHORATA_BUERGER, LOG_SUCCESS);
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_21);

		CurrentNQ += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_04"); //Too bad, at least one of the answers wasn't right.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_05"); //But in my infinite kindness, I want to give you another chance.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_06"); //Come back if you think you're up to the task.
	};

	Mod_REL_BuergerFragen = 0;

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);
};

FUNC VOID Info_Mod_Anselm_Buerger3_E5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E5_15_00"); //Idrico.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E4_15_00"); //Hubert.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E3_15_00"); //Friedel.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E2_15_00"); //Luke.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E1_15_00"); //Spiral.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_E();
};

INSTANCE Info_Mod_Anselm_Bierhexen (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Bierhexen_Condition;
	information	= Info_Mod_Anselm_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to report a crime.";
};

FUNC INT Info_Mod_Anselm_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_Bierhexen6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_15_00"); //I want to report a crime.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_16_01"); //Well, give it to me! My day so far has been boring enough.
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_15_02"); //Leonhard admits that at night he drank the brewmaster's beer and urinated it into his barley.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_16_03"); //Hmm, is that it? What a stupid little prank?

	Info_ClearChoices	(Info_Mod_Anselm_Bierhexen);

	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Such a thing must be punished!", Info_Mod_Anselm_Bierhexen_C);
	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Because of Leonhard, we haven't had fresh beer for weeks!", Info_Mod_Anselm_Bierhexen_B);
	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Since this incident, the brewmaster has suffered psychological damage.", Info_Mod_Anselm_Bierhexen_A);
};

FUNC VOID Info_Mod_Anselm_Bierhexen_C()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_C_15_00"); //Such a thing must be punished!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_C_16_01"); //Good thing you don't have to supervise the laws of khorata.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_C_16_02"); //Some people need a little more space than others, I cannot deny them that.
};

FUNC VOID Info_Mod_Anselm_Bierhexen_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_00"); //Because of Leonhard, we haven't had fresh beer for weeks!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_01"); //I haven't thought about that at all.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_02"); //A not inconsiderable damage to the domestic economy.
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_03"); //Supplies are already in short supply.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_04"); //(Shocked) This can't be true! What's that bum thinking of?
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_05"); //New barley must be provided for as soon as possible.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_06"); //Absolutely right! And I also know who will pick the barley by hand and carry it to town!
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_07"); //Good idea. That's all I wanted.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_08"); //But from now on, stay away from me with horror messages like that!

	Info_ClearChoices	(Info_Mod_Anselm_Bierhexen);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_BIERHEXEN, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7419_OUT_Leonhard_REL, "STRAFE");
	B_StartOtherRoutine	(Mod_7420_OUT_Michael_REL, "STRAFE");
	B_StartOtherRoutine	(Mod_7421_OUT_Philipp_REL, "STRAFE");
};

FUNC VOID Info_Mod_Anselm_Bierhexen_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_A_15_00"); //Since this incident, the brewmaster has suffered psychological damage.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_A_16_01"); //(ironic) How dramatic! Mental damage!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_A_16_02"); //We can take him to the healer, who then drills his brain and re-establishes order.
};

INSTANCE Info_Mod_Anselm_DickeLuft (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_DickeLuft_Condition;
	information	= Info_Mod_Anselm_DickeLuft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_DickeLuft_Condition()
{
	if (Mod_IstSchaf == 1)
	&& (Mod_Kneipe_Ditmar == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_DickeLuft_Info()
{
	var c_npc Anselm; Anselm = Hlp_GetNpc(Mod_7241_OUT_Anselm_REL);
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);

	TRIA_Invite(Hedwig);

	TRIA_Start();

	TRIA_Next(Anselm);

	AI_TurnToNpc	(Anselm, Hedwig);
	AI_TurnToNpc	(Hedwig, Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_00"); //Well, well! Why are you interrupting my important business? Didn't you want to hang out with Ditmar until...? uh, what was that again?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_01"); //Until you're finally starting to help me with the housework.

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_02"); //I'm not gonna reach out to you again.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_03"); //So, what's the situation? You're starting to change your mind?

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_04"); //Innos forbid it! Just go back to the inn and make a strike.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_05"); //You don't mind if I bother everyone there?

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_06"); //(feels like he's thinking) I can handle it.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_07"); //Fine. Then I'll have to come up with some new leverage.
	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_08"); //How about this: I'll sit right here.

	AI_UseMob	(self, "THRONE", 1);

	AI_TurnToNpc	(Anselm, self);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_09"); //And no one's gonna get me out of here unless you lift a finger at home!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_10"); //If you enjoy it.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_11"); //Oh, yeah!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_12"); //What's the sheep doing in here? Shouldn't that be better for the butcher?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_13"); //I'm warning you!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_14"); //(shouting) Jim! Why don't you come over here?

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Anselm_DickeLuft2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_DickeLuft2_Condition;
	information	= Info_Mod_Anselm_DickeLuft2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_DickeLuft2_Condition()
{
	if (Mod_IstSchaf == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_DickeLuft2_Info()
{
	var c_npc Anselm; Anselm = Hlp_GetNpc(Mod_7241_OUT_Anselm_REL);
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);

	TRIA_Invite(Hedwig);

	TRIA_Start();

	TRIA_Next(Anselm);

	AI_TurnToNpc	(Anselm, Hedwig);
	AI_TurnToNpc	(Hedwig, Anselm);

	AI_Output(hero, self, "Info_Mod_Anselm_DickeLuft2_15_00"); //Don't worry about me at all.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_01"); //But...!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_16_02"); //You've been tricked, dearest, dearest. But now you're with me, and I'm going to protect you.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_03"); //You could use it! I'll go now and lock myself in, yes!
	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_04"); //I don't want to see any of you again!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_16_05"); //Thank you for your help. Now I can finally go out for another drink in the evening.

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "I lured Hedwig to Anselm and there was a debate. Well, sort of. Anyway, she shouldn't be returning to the inn now. Irmgard and Ditmar will be happy to know that.");
};

INSTANCE Info_Mod_Anselm_WoHubert (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_WoHubert_Condition;
	information	= Info_Mod_Anselm_WoHubert_Info;
	permanent	= 1;
	important	= 0;
	description 	= "Where can I find Hubert?";
};                       

FUNC INT Info_Mod_Anselm_WoHubert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungVincent))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Anselm_WoHubert_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_WoHubert_15_00"); //Where can I find Hubert?
	AI_Output(self, hero, "Info_Mod_Anselm_WoHubert_16_01"); //Different, but never far from his life elixir. Sometimes he lurks at the gate, but most of the time he can be found near the inn or the brewery.
};

INSTANCE Info_Mod_Anselm_Freudenspender (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Freudenspender_Condition;
	information	= Info_Mod_Anselm_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Pleasure giver for the great governor?";
};                       

FUNC INT Info_Mod_Anselm_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Anselm_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Freudenspender_15_00"); //Pleasure giver for the great governor?
	AI_Output(self, hero, "Info_Mod_Anselm_Freudenspender_16_01"); //Oh, an excellent offer I can't refuse.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Anselm_Pickpocket (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Pickpocket_Condition;
	information	= Info_Mod_Anselm_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Anselm_Pickpocket_Condition()
{
	C_Beklauen	(102, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

	Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_BACK, Info_Mod_Anselm_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Anselm_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Anselm_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Anselm_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Anselm_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Anselm_EXIT (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_EXIT_Condition;
	information	= Info_Mod_Anselm_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Anselm_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Anselm_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
