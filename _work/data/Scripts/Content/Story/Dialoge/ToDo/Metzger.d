INSTANCE Info_Mod_Metzger_Metzgerei (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Metzgerei_Condition;
	information	= Info_Mod_Metzger_Metzgerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "This is the butcher's shop, right?";
};

FUNC INT Info_Mod_Metzger_Metzgerei_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_Metzgerei_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Metzgerei_15_00"); //This is the butcher's shop, right?
	AI_Output(self, hero, "Info_Mod_Metzger_Metzgerei_08_01"); //Yes, sir. Run by my family for five generations. Tradition you can taste.
	AI_Output(hero, self, "Info_Mod_Metzger_Metzgerei_15_02"); //So your meat tastes old and dusty?
	AI_Output(self, hero, "Info_Mod_Metzger_Metzgerei_08_03"); //(confused) Excuse me?
};

INSTANCE Info_Mod_Metzger_Schaf (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf_Condition;
	information	= Info_Mod_Metzger_Schaf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I help you with something?";
};

FUNC INT Info_Mod_Metzger_Schaf_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_Schaf_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_15_00"); //Can I help you with something?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_01"); //It's about time someone picked up another sheep from the farmer Erhard. We're running out of lamb.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_02"); //If you know a little about animals, I can leave the job to you.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_03"); //I'd reward you with 30 gold coins.

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Metzger_Schaf, "Give me 70 gold and I'll be in.", Info_Mod_Metzger_Schaf_C);
	};
	Info_AddChoice	(Info_Mod_Metzger_Schaf, "I'd rather not get involved in this business.", Info_Mod_Metzger_Schaf_B);
	Info_AddChoice	(Info_Mod_Metzger_Schaf, "I'll take care of it.", Info_Mod_Metzger_Schaf_A);
};

FUNC VOID Info_Mod_Metzger_Schaf_D()
{
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_D_08_00"); //You will find Erhard's farm in the east of Relendel, if you haven't stumbled upon it by now.
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_D_15_01"); //What about the payment for Erhard?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_D_08_02"); //I'd rather take care of it myself. We always settle up when he comes to town.

	Log_CreateTopic	(TOPIC_MOD_METZGER_SCHAF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_METZGER_SCHAF, "The butcher in Khorata needs fresh sheep meat. The farmer Erhard in the east of Relendel shall leave one of his lambs to me.");

	Wld_InsertNpc	(Monster_11069_Emma_REL,	"REL_SURFACE_106");

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);
};

FUNC VOID Info_Mod_Metzger_Schaf_C()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_C_15_00"); //Give me 70 gold and I'll be there.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Metzger_Schaf_C_08_01"); //I can barely live with that. So it's a deal.

		Info_Mod_Metzger_Schaf_D();

		Mod_Metzger_Schaf = 1;
		Mod_Metzger_Schaf_Wert = 70;
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Metzger_Schaf_C_08_02"); //It would be cheaper if I sent a professional messenger!
	};
};

FUNC VOID Info_Mod_Metzger_Schaf_B()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_B_15_00"); //I'd rather not get involved in this business.

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);
};

FUNC VOID Info_Mod_Metzger_Schaf_A()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_A_15_00"); //I'll take care of it.

	Mod_Metzger_Schaf = 1;
	Mod_Metzger_Schaf_Wert = 30;

	Info_Mod_Metzger_Schaf_D();
};

INSTANCE Info_Mod_Metzger_Schaf2 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf2_Condition;
	information	= Info_Mod_Metzger_Schaf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the sheep.";
};

FUNC INT Info_Mod_Metzger_Schaf2_Condition()
{
	if (Mod_Metzger_Schaf == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf2_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf2_15_00"); //Here's the sheep.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf2_08_01"); //They seem to be able to rely on you. Here's your payment.

	B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Metzger_Schaf_Wert);

	AI_Output(hero, self, "Info_Mod_Metzger_Schaf2_15_02"); //Is there anything else to do?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf2_08_03"); //Not at the moment. First of all, the lamb is processed into sausage.

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_SUCCESS);

	B_StartOtherRoutine	(Monster_11069_Emma_REL,	"METZGER");

	B_GivePlayerXP	(100);

	Mod_Metzger_Schaf = 4;
};

INSTANCE Info_Mod_Metzger_Schaf3 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf3_Condition;
	information	= Info_Mod_Metzger_Schaf3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I lost the sheep.";
};

FUNC INT Info_Mod_Metzger_Schaf3_Condition()
{
	if (Mod_Metzger_Schaf == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf3_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf3_15_00"); //I lost the sheep.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf3_08_01"); //I should have gone to someone reasonable.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf3_08_02"); //Where am I supposed to get sheepmeat from?

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_FAILED);

	if (Npc_IsDead(Monster_11069_Emma_REL))
	{
		Mod_Metzger_Schaf = 5;
	}
	else
	{
		Mod_Metzger_Schaf = 6;
	};
};

INSTANCE Info_Mod_Metzger_Schaf4 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf4_Condition;
	information	= Info_Mod_Metzger_Schaf4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've already slaughtered the sheep.";
};

FUNC INT Info_Mod_Metzger_Schaf4_Condition()
{
	if (Mod_Metzger_Schaf == 3)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf4_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf4_15_00"); //I've already slaughtered the sheep.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 10);

	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_01"); //This isn't fresh meat. Where'd you get it?
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf4_15_02"); //Uh...
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_03"); //I don't really care. It's still useful for minced meat.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_04"); //What's worse, you tried to rip me off.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_05"); //But because I need the meat, I still want to pay you half the promised salary.

	B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Metzger_Schaf_Wert/2);

	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_06"); //Just don't try to get me stupid again.

	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_SUCCESS);

	if (Npc_IsDead(Monster_11069_Emma_REL))
	{
		Mod_Metzger_Schaf = 5;
	}
	else
	{
		Mod_Metzger_Schaf = 6;
	};
};

INSTANCE Info_Mod_Metzger_August (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_August_Condition;
	information	= Info_Mod_Metzger_August_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need cured lamb. Three servings.";
};

FUNC INT Info_Mod_Metzger_August_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	&& (!Npc_KnowsInfo(hero, Info_Mod_August_Penner2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_August_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_August_15_00"); //I need cured lamb. Three servings.
	AI_Output(self, hero, "Info_Mod_Metzger_August_08_01"); //Gladly. But the meat's still in the lake. I got two hours to go.
	AI_Output(self, hero, "Info_Mod_Metzger_August_08_02"); //If you want to come back later....
	AI_Output(hero, self, "Info_Mod_Metzger_August_15_03"); //I'd be happy to. See you later.

	B_LogEntry	(TOPIC_MOD_JG_AUGUST, "The butcher's salted artichoke takes about two hours to pick it up.");

	Npc_SetRefuseTalk	(self, 3600);
};

INSTANCE Info_Mod_Metzger_August02 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_August02_Condition;
	information	= Info_Mod_Metzger_August02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the meat ready?";
};

FUNC INT Info_Mod_Metzger_August02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_August))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 30)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_August02_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_August02_15_00"); //Is the meat ready?
	AI_Output(self, hero, "Info_Mod_Metzger_August02_08_01"); //I've already packed you three clubs. Here. That's 30 gold.

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Metzger_August02_15_02"); //Say 15 gold...

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Metzger_August02_08_03"); //20, that's all I can give you.

			B_RaiseHandelsgeschick (1);

			B_GiveInvItems	(hero, self, ItMi_Gold, 20);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Metzger_August02_08_04"); //Thirty gold, I said, that's all.

			B_GiveInvItems	(hero, self, ItMi_Gold, 30);
		};
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 30);
	};

	AI_Output(hero, self, "Info_Mod_Metzger_August02_15_05"); //Here's the gold.
	AI_Output(self, hero, "Info_Mod_Metzger_August02_08_06"); //And you the meat.

	B_GiveInvItems	(self, hero, ItFo_LammPoekelfleisch, 3);
};

INSTANCE Info_Mod_Metzger_Kissen (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Kissen_Condition;
	information	= Info_Mod_Metzger_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a bag full of feathers.";
};

FUNC INT Info_Mod_Metzger_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Kissen_15_00"); //I'm looking for a bag full of feathers.
	AI_Output(self, hero, "Info_Mod_Metzger_Kissen_08_01"); //You're in luck. I slaughtered yesterday because Peter Venger ordered.
	AI_Output(hero, self, "Info_Mod_Metzger_Kissen_15_02"); //I could take the....
	AI_Output(self, hero, "Info_Mod_Metzger_Kissen_08_03"); //... you're right. I can't do anything with that anyway.

	B_GiveInvItems	(self, hero, ItMi_Federbeutel, 1);

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "I got the bag of feathers from the butcher. I should stop by Morpheus again, the bag seems to be quite scratchy.");
};

INSTANCE Info_Mod_Metzger_Blutkelch (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch_Condition;
	information	= Info_Mod_Metzger_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have molar fat?";
};

FUNC INT Info_Mod_Metzger_Blutkelch_Condition()
{
	if (Mod_ASS_Blutkelch3 == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_00"); //Do you have molar fat?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_01"); //Certainly. In my profession, there's always some fat dropping.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_02"); //I think you're going into the sausage.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_03"); //So what? A sausage without fat? You can eat jerky there.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_04"); //All right, all right. I need 50 servings of molar fat.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_05"); //I don't have that much. The sausage...
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_06"); //And how do we get there?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_07"); //You'd better do it yourself.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_08"); //Uh-huh. And how?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_09"); //I can teach you how to take the fat off animals.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_10"); //Let's hear it.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_11"); //It is actually only worthwhile with Molerats. With fur animals or animals with tanks you can only get a little fat.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_12"); //Maybe the giant rats. But they have become rare, thanks to Adanos.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_13"); //So far, so good. And then what?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_14"); //You take your knife or whatever else you take for evisceration, make a deep cut and then sabre around the skin with the upper layer of fat.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_15"); //You're gonna use the meat anyway, I guess.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_16"); //Of course it is.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_17"); //Let me finish. So you take this cover, cut it into strips and throw the whole thing into a kettle on a small fire.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_18"); //It's been simmering for a while. When it starts to foam, take the kettle from the fire, fish out the rind and add a handful of salt.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_19"); //Then stir vigorously. Once the fat's solidified, you can scoop it out. That'll be all.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_20"); //Great! I haven't seen salt since I landed on khorinis. And that was a long time ago.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_21"); //Proposal. You chase the Molerats, take them out and bring the strips to me. I'll do the rest.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_22"); //And how many animals do I have to kill?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_23"); //I guess about eight beautiful stripes. The forest behind the lake is swarming with them.

	B_LogEntry	(TOPIC_MOD_ASS_FETT, "I'm supposed to bring the butcher eight strips of molerats. From this it will extract with the fat.");
};

INSTANCE Info_Mod_Metzger_Blutkelch2 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch2_Condition;
	information	= Info_Mod_Metzger_Blutkelch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the stripes.";
};

FUNC INT Info_Mod_Metzger_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Blutkelch))
	&& (Npc_HasItems(hero, ItMi_Moleratstreifen) >= 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch2_15_00"); //Here are the stripes.

	B_GiveInvItems	(hero, self, ItMi_Moleratstreifen, 8);

	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch2_08_01"); //That's swell. I have to take care of the fat. It should be ready and chilled in three hours.

	Npc_SetRefuseTalk (self, 500);
};

INSTANCE Info_Mod_Metzger_Blutkelch3 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch3_Condition;
	information	= Info_Mod_Metzger_Blutkelch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Metzger_Blutkelch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Blutkelch2))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch3_08_00"); //You're just in time. Fat's ready. Here, your portions. I'll take the rest for my work.

	B_GiveInvItems	(self, hero, ItMi_Moleratlubric_MIS, 50);

	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch3_15_01"); //Whatever you say. Thanks anyway.

	B_LogEntry	(TOPIC_MOD_ASS_FETT, "Finally got the fat for Bennet. The steel hoe should be finished....");
	B_SetTopicStatus	(TOPIC_MOD_ASS_FETT, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Metzger_Blutkelch4 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch4_Condition;
	information	= Info_Mod_Metzger_Blutkelch4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need a piece of salted meat.";
};

FUNC INT Info_Mod_Metzger_Blutkelch4_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Idrico_Blutkelch2))
	&& (Mod_ASS_IdricoSpende == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch4_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_00"); //I need a piece of salted meat.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch4_08_01"); //Always at your service. Would you like that leg of lamb? It's a little older. But brine lasts a long time.

	B_GiveInvItems	(self, hero, ItFo_LammPoekelfleisch, 1);

	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_02"); //Just good enough for the water geezer. How much?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch4_08_03"); //Two gold, if you like.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_04"); //Gladly. Here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2);
};

INSTANCE Info_Mod_Metzger_Pickpocket (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Pickpocket_Condition;
	information	= Info_Mod_Metzger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Metzger_Pickpocket_Condition()
{
	C_Beklauen	(77, ItFo_LammPoekelfleisch, 3);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

	Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_BACK, Info_Mod_Metzger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Metzger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Metzger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Metzger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Metzger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Metzger_EXIT (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_EXIT_Condition;
	information	= Info_Mod_Metzger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Metzger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
