INSTANCE Info_Mod_August_Hi (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Hi_Condition;
	information	= Info_Mod_August_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_August_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Hi_04_00"); //Stop! I don't know your face.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_01"); //Das bedeutet, ich hab dir die Regeln der Stadt noch nicht vorgelesen - oder du hast dich von 'nem Schattenläufer "rearrange" lassen. (lacht merkwürdig)
	AI_Output(self, hero, "Info_Mod_August_Hi_04_02"); //I still can't memorize the stupid text, so I have to look at the paper in between, if you don't mind.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_03"); //The four commandments for outsiders.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_04"); //Firstly, the use of donors of joy within the city walls is prohibited.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_05"); //Haha, at least applies only to you strangers.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_06"); //Secondly, the three domesticated rats of the town keeper are to be paid homage.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_07"); //That's done, by the way, they died.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_08"); //Thirdly, any use of force is prohibited.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_09"); //Fourth: Beliar's homage and the practice of atrocities in his name can be punished with death by fire.

	if (Mod_Gottstatus == 1)
	|| (Mod_Gottstatus == 2)
	|| (Mod_Gottstatus == 3)
	|| (Mod_Gottstatus == 4)
	{
		AI_Output(self, hero, "Info_Mod_August_Hi_04_10"); //Oh, yeah, this could be especially interesting for you.
	};

	AI_Output(self, hero, "Info_Mod_August_Hi_04_11"); //That's all. Any more questions?

	AI_PlayAni	(self, "T_HUNGER");

	AI_Output(self, hero, "Info_Mod_August_Hi_04_12"); //(mumbles) I could use another bite...

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Essenholen (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Essenholen_Condition;
	information	= Info_Mod_August_Essenholen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I get you something to eat?";
};

FUNC INT Info_Mod_August_Essenholen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Essenholen_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Essenholen_15_00"); //Can I get you something to eat?
	AI_Output(self, hero, "Info_Mod_August_Essenholen_04_01"); //Oh, yeah! I'd be really hungry for a speciality of the inn, the salted lamb.
	AI_Output(self, hero, "Info_Mod_August_Essenholen_04_02"); //Two rations, and I'll give you the money back, of course.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, "The gatekeeper August wants two portions of salted lamb from the Khoratas inn.");
};

INSTANCE Info_Mod_August_EssenGeholt (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_EssenGeholt_Condition;
	information	= Info_Mod_August_EssenGeholt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your food.";
};

FUNC INT Info_Mod_August_EssenGeholt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Essenholen))
	&& (Npc_HasItems(hero, ItFo_LammPoekelfleisch) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_EssenGeholt_Info()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_15_00"); //Here's your food.

	B_GiveInvItems	(hero, self, ItFo_LammPoekelfleisch, 2);

	AI_Output(self, hero, "Info_Mod_August_EssenGeholt_04_01"); //Thanks to you! Take this!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, "I was able to complete the assignment to August's satisfaction.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);

	Info_AddChoice	(Info_Mod_August_EssenGeholt, "See you soon.", Info_Mod_August_EssenGeholt_B);
	Info_AddChoice	(Info_Mod_August_EssenGeholt, "A little bit less... (haggling)", Info_Mod_August_EssenGeholt_A);
};

FUNC VOID Info_Mod_August_EssenGeholt_B()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_B_15_00"); //See you soon.

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_August_EssenGeholt_A()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_A_15_00"); //A little bit less...

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_August_EssenGeholt_A_04_01"); //You're right, you deserve more.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_EssenGeholt_A_04_02"); //You're kidding!
	};

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);
};

INSTANCE Info_Mod_August_Plagenquest (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Plagenquest_Condition;
	information	= Info_Mod_August_Plagenquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Plagenquest_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	&& (Mod_REL_Stadthalter > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Plagenquest_Info()
{
	if (Mod_REL_Stadthalter == 1)
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_00"); //Damn it, hopefully Theodorus will find out something soon.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata seems to have a problem with insects. Hopefully Theodorus will be able to say more about this.");
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_01"); //Damn it, I hope Wendel finds out soon.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata seems to have a problem with insects. Hopefully Wendel will be able to say more about this.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_02"); //Damn it, hopefully lucas will find out something soon.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata seems to have a problem with insects. Lukas will hopefully be able to say more about this.");
	};

	AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_03"); //All the fucking creatures.... reminds me of the worst trip I've ever had.
};

INSTANCE Info_Mod_August_Zurechtfinden (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Zurechtfinden_Condition;
	information	= Info_Mod_August_Zurechtfinden_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I find my way around here?";
};

FUNC INT Info_Mod_August_Zurechtfinden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Zurechtfinden_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Zurechtfinden_15_00"); //How do I find my way around here?
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_01"); //It's not that difficult. Just follow the main road straight ahead and you'll come to the market place.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_02"); //To the left of it, there's a road leading you straight to the courthouse.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_03"); //And then turn left again and you'll end up at the inn. That should be enough for now.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_04"); //If you want to be led, ask Hubert, he often lurks around the gate.
};

INSTANCE Info_Mod_August_KhorataOrganisation (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_KhorataOrganisation_Condition;
	information	= Info_Mod_August_KhorataOrganisation_Info;
	permanent	= 0;
	important	= 0;
	description	= "How is Khorata organised?";
};

FUNC INT Info_Mod_August_KhorataOrganisation_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_KhorataOrganisation_Info()
{
	AI_Output(hero, self, "Info_Mod_August_KhorataOrganisation_15_00"); //How is Khorata organised?
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_01"); //I can't exactly explain it to you.
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_02"); //Our governor Anselm takes care of all the regulations and new laws, the judge and his two sons run the court, and we guards ensure that everything stays calm.
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_03"); //Khorata makes a good profit from trading in delights, and what the merchants buy!
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_04"); //Drag a lot of stuff into town, I can see it here.
};

INSTANCE Info_Mod_August_Buerger (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Buerger_Condition;
	information	= Info_Mod_August_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description	= "You once mentioned Anselm's three rats...";
};

FUNC INT Info_Mod_August_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Kapitel < 3)
	&& (Mod_REL_Buerger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_00"); //You once mentioned Anselm's three rats...
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_01"); //Dead bastards, that's right. What about them?
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_02"); //Do you know their names?
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_03"); //Of course. Back then, when they were alive, we had to pay homage to them every day by the guard.
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_04"); //Oleg, Pinky and Fievel. Haha, really sick names for rats, huh?
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_05"); //That's right. Thank you for the information.
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_06"); //Nothing to thank.
};

INSTANCE Info_Mod_August_Buerger2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Buerger2_Condition;
	information	= Info_Mod_August_Buerger2_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_August_Buerger2_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Buerger2_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Buerger2_04_00"); //Well, you got the citizenship? Congratulations, you're a good man.
};

INSTANCE Info_Mod_August_Unruhen (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen_Condition;
	information	= Info_Mod_August_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Unruhen_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_00"); //Not a good time to get here, I'm afraid.
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_02"); //All this shit. It began with the Buddler in our mine demanding more wages and better working conditions.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_03"); //But Anselm didn't let anyone talk to him.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_04"); //As a result, the miners refused to continue working and they overpowered and tied up their supervisor Frazer.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_05"); //Anselm has sent Tyrus and Dalton to get the diggers back to work.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_06"); //Shit! Just Tyrus and Dalton, the two hotheads.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_07"); //Of course the argument has escalated, and then the pickaxes came into play.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_08"); //We haven't dared to pick up the two bodies in front of the mine yet.
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_09"); //Sounds like a huge problem.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_10"); //If only that was all! Anselm has left, and we don't have a governor anymore!
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_11"); //And without a fucking leader, no one wants to worry about negotiating with the Buddhists.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_12"); //You wouldn't be in the mood for office, would you?
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_13"); //I'm sorry, but that's not my idea of the future.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_14"); //(desperate) Could you at least take care of a successor for Anselm?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Unruhen2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen2_Condition;
	information	= Info_Mod_August_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, I'm gonna go look for it.";
};

FUNC INT Info_Mod_August_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen2_15_00"); //All right, I'm gonna go look for it.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_01"); //In my opinion there are three suitable candidates: Luke, Wendel and Theodorus.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_02"); //Talk to them and try to convince them.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_03"); //When you've heard them all, make up your mind and report to me.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_04"); //We trust in you.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "In Khorata it's a frenzy: the people of Khorata are rehearsing an uprising, and the townspeople have lost their heads and are sinking into chaos. August thinks that Luke, Wendel and Theodorus would be suitable as succeeding governors. I should talk to each of them.");
};

INSTANCE Info_Mod_August_Unruhen3 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen3_Condition;
	information	= Info_Mod_August_Unruhen3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I've made up my mind.";
};

FUNC INT Info_Mod_August_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	&& (Mod_REL_Kandidat == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_15_00"); //I've made up my mind.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_04_01"); //Spit it out.

	Info_ClearChoices	(Info_Mod_August_Unruhen3);

	Info_AddChoice	(Info_Mod_August_Unruhen3, "I need some more time...", Info_Mod_August_Unruhen3_BACK);

	Info_AddChoice	(Info_Mod_August_Unruhen3, "Luke is to become the new governor.", Info_Mod_August_Unruhen3_C);
	Info_AddChoice	(Info_Mod_August_Unruhen3, "Wendel is to become the new governor.", Info_Mod_August_Unruhen3_B);
	Info_AddChoice	(Info_Mod_August_Unruhen3, "Theodorus shall become the new governor.", Info_Mod_August_Unruhen3_A);
};

FUNC VOID Info_Mod_August_Unruhen3_BACK()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_BACK_15_00"); //I need some more time...

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_C()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_C_15_00"); //Luke is to become the new governor.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_C_04_01"); //Yeah, good lucas will fix it.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_C_04_02"); //Go to him and tell him the good news, I'll make sure that the whole town knows about it.

	Mod_REL_Kandidat = 4;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "My job is to inform lucas that he's the new governor.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_B()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_B_15_00"); //Wendel is to become the new governor.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_B_04_01"); //Then let's hope Wendel has enough bite.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_B_04_02"); //Tell him the news, I'll make her known in town.

	Mod_REL_Kandidat = 3;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "I want Wendel to find out from me that he's the new governor.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_A()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_A_15_00"); //Theodorus shall become the new governor.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_01"); //A... an unusual choice. All right, you'll know what you're saying.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_02"); //I will communicate it to the rest of the population.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_03"); //You should lead Theodorus into town and show him his new dwelling.

	Mod_REL_Kandidat = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "I'm to lead Theodorus to his new office building next.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

INSTANCE Info_Mod_August_Freudenspender (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Freudenspender_Condition;
	information	= Info_Mod_August_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'm happy to have you here...";
};                       

FUNC INT Info_Mod_August_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Freudenspender_15_00"); //I'm happy to have you here...
	AI_Output(self, hero, "Info_Mod_August_Freudenspender_04_01"); //... you're not supposed to be consuming in town, exactly. Stick to it.
};

INSTANCE Info_Mod_August_Penner (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Penner_Condition;
	information	= Info_Mod_August_Penner_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_August_Penner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Sweetwater2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Penner_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Penner_04_00"); //Look, look! A new face... No. I've seen you before.
	AI_Output(hero, self, "Info_Mod_August_Penner_15_01"); //True enough.

	if (Npc_KnowsInfo(hero, Info_Mod_August_EssenGeholt))
	{
		AI_Output(hero, self, "Info_Mod_August_Penner_15_02"); //I brought you breakfast.
		AI_Output(self, hero, "Info_Mod_August_Penner_04_03"); //Right! Exactly! The cured lamb. For the big appetite. Would you--
		AI_Output(hero, self, "Info_Mod_August_Penner_15_04"); //I understand. One more serving...
		AI_Output(self, hero, "Info_Mod_August_Penner_04_05"); //Exactly! And a pita bread from the baker, if you like, and a dark beer from the brewery.
		AI_Output(self, hero, "Info_Mod_August_Penner_04_06"); //The butcher's lamb is almost better than Peter's. Three clubs, that's all.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_Penner_04_07"); //Could you do me a favor?
		AI_Output(hero, self, "Info_Mod_August_Penner_15_08"); //Sure, what's up?
		AI_Output(self, hero, "Info_Mod_August_Penner_04_09"); //Could you get me a portion of salted lamb from Peter or the butcher, a flatbread from the baker and a dark beer from the brewer?
	};

	AI_Output(hero, self, "Info_Mod_August_Penner_15_10"); //Alcohol on duty? If I tell this to the governor....
	AI_Output(self, hero, "Info_Mod_August_Penner_04_11"); //You don't tell me. Because then you'd get what I have to give...
	AI_Output(hero, self, "Info_Mod_August_Penner_15_12"); //Like this? What do you mean?
	AI_Output(self, hero, "Info_Mod_August_Penner_04_13"); //Get the bite first.

	Log_CreateTopic	(TOPIC_MOD_JG_AUGUST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_AUGUST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_AUGUST, "I'm supposed to get food for August. Salted lamb from Peter or the butcher, flatbread from the baker and dark beer from the brewer.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Penner2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Penner2_Condition;
	information	= Info_Mod_August_Penner2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your feast.";
};                       

FUNC INT Info_Mod_August_Penner2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	&& (Npc_HasItems(hero, ItFo_LammPoekelfleisch) >= 3)
	&& (Npc_HasItems(hero, ItFo_Fladenbrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Dunkelbier) >= 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Penner2_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_00"); //Here's your feast.

	Npc_RemoveInvItems	(hero, ItFo_LammPoekelfleisch, 3);
	Npc_RemoveInvItems	(hero, ItFo_Fladenbrot, 1);
	Npc_RemoveInvItems	(hero, ItFo_Dunkelbier, 1);

	B_ShowGivenThings	("3 salted lamb, flatbread and dark beer served");

	AI_Output(self, hero, "Info_Mod_August_Penner2_04_01"); //Give it to me. In the meantime, I'm getting really hungry.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_02"); //What is it that you wanted to give me?
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_03"); //Well, the other day I was on duty at the watchtower at the pass.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_04"); //As I run up the slope, I stumble over this thing here. Is guaranteed to be valuable, the part.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_05"); //Let me see that.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_06"); //Here.

	B_GiveInvItems	(self, hero, ItMi_Brokenrune01, 1);

	AI_Output(hero, self, "Info_Mod_August_Penner2_15_07"); //Uh-huh. A broken rune. Do you have the other half?
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_08"); //Nah. I've searched a long time, but found nothing.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_09"); //All right, all right. Maybe she can still be used.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_10"); //You smeared me a lot. I still get 50 gold for dinner.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_11"); //Of course, here. And I'm sure you'll find the other piece.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_SetTopicStatus	(TOPIC_MOD_JG_AUGUST, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_August_Pickpocket (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Pickpocket_Condition;
	information	= Info_Mod_August_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_August_Pickpocket_Condition()
{
	C_Beklauen	(62, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_August_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_August_Pickpocket);

	Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_BACK, Info_Mod_August_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_August_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_August_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_August_Pickpocket);
};

FUNC VOID Info_Mod_August_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_August_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_August_Pickpocket);

		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_August_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_August_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_August_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_August_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_August_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_August_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_August_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_August_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_August_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_August_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_August_EXIT (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_EXIT_Condition;
	information	= Info_Mod_August_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_August_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_August_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
