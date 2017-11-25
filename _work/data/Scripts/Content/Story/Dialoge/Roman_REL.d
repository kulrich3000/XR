INSTANCE Info_Mod_Roman_REL_Hi (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Hi_Condition;
	information	= Info_Mod_Roman_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Hi_Condition()
{
	if (Mod_EndresIndizien >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_00"); //Wait a minute!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_01"); //What is it?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_02"); //I just heard the murder weapon was a pickaxe!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_03"); //That's the truth.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_04"); //I can't help but think of a little encounter on the way home a few days ago.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_05"); //It was already dark, there a voice speaks to me from the side of an alley whether I can lend her my hoe.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_06"); //I brought this because I wanted to grind it. Actually, I'm saying, what do you want with it?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_07"); //Just passing the time, the voice says. You'll have it back in the morning.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_08"); //And then a hand came out of the dark and put gold in my hand.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_09"); //So I lent him the hoe.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_10"); //The next morning she leaned against my house, shining shiny polished and polished.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_11"); //I didn't have to worry about that.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_12"); //And now I hear that son of a bitch was trying to make us miners suspicious with the hoe!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_13"); //Guy?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_14"); //Yeah, a guy. Probably disguised his voice, but there's no woman that deep.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_15"); //Besides, he had a hairy paw.
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_16"); //Thanks, that helps me out.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_17"); //Hang him!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Roman lent the killer his pickaxe. He's sure we're dealing with a man.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Roman_REL_Unruhen (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen_Condition;
	information	= Info_Mod_Roman_REL_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_00"); //What do you want?

	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen))
	{
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_01"); //I shall see to it that Khorata gets a new governor to continue the peace negotiations with you.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_02"); //What, Anselm ran away? (laughs filthy) That looks like an asshole.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_03"); //And you're to appoint a successor? You sausage?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_04"); //But if you want to know, Theodorus is the only one we would accept as governor.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_05"); //What the hell is going on?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_06"); //Nothing that needs to interest you. (coughs) We Buddler demand only our right.
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_07"); //And that's why you go over corpses?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_08"); //Listen, you have no idea what this is about, but you still want to get involved?
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_09"); //Somebody's gotta make sure there aren't more dead.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_10"); //It never should have happened. (coughs)
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_11"); //All right, the office hours are over. Be peaceful and hiss.
	};
};

INSTANCE Info_Mod_Roman_REL_Unruhen2 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen2_Condition;
	information	= Info_Mod_Roman_REL_Unruhen2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen4))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Mod_REL_WendelS == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_08_00"); //Look, somebody doesn't want to understand that he has no business here.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_08_01"); //What the hell are you doing here?

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	Info_AddChoice	(Info_Mod_Roman_REL_Unruhen2, "I want to move on.", Info_Mod_Roman_REL_Unruhen2_B);
	Info_AddChoice	(Info_Mod_Roman_REL_Unruhen2, "Would you represent the miners in peace talks?", Info_Mod_Roman_REL_Unruhen2_A);
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_B()
{
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_B_15_00"); //I want to move on.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	Npc_SetRefuseTalk	(self, 30);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_A()
{
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_00"); //Would you represent the miners in peace talks?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_01"); //Peace talks, like this. You're descending into something.
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_02"); //Khorata has a new governor, Wendel. He wants to meet you.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_03"); //(agitated) Spiral?! He's in trouble!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_04"); //So you're coming with me?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_05"); //And if it's only good for polishing his face! Get moving!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Roman seems to be looking for violence. I have to make sure in his conversation with Anselm that it doesn't escalate.");

	Mod_REL_WendelS = 1;

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOWENDEL");
};

INSTANCE Info_Mod_Roman_REL_Unruhen3 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen3_Condition;
	information	= Info_Mod_Roman_REL_Unruhen3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen3_Condition()
{
	if (Mod_REL_WendelS == 17)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen3_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen3_08_00"); //Great! What did I come here for, anyway?

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "The negotiations have not reached a satisfactory conclusion.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	Mod_REL_Stadthalter = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATMINE");
	B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "STADTHALTER");
};

INSTANCE Info_Mod_Roman_REL_Unruhen4 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen4_Condition;
	information	= Info_Mod_Roman_REL_Unruhen4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen4_Condition()
{
	if (Mod_REL_WendelS == 18)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen4_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen4_08_00"); //Fine, fine. All right, I'll go tell the others what happened here. Let's forget about the arguments.

	Mod_REL_WendelS = 19;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	B_RemoveNpc	(Mod_7619_OUT_Frazer_REL);
	B_RemoveNpc	(Mod_7613_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7614_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7615_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7616_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7617_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7618_OUT_Norman_REL);
};

INSTANCE Info_Mod_Roman_REL_Unruhen5 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen5_Condition;
	information	= Info_Mod_Roman_REL_Unruhen5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen5_Condition()
{
	if (Mod_REL_WendelS == 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen5_Info()
{
	if (Mod_REL_WendelS_Choice == 3)
	{
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_00"); //And you want to be impartial?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_01"); //I realize what a game this is, you two have happily agreed!
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_02"); //You're pretending to be fair, but in reality you don't give a damn about us! And you're too cowardly to duel!
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_03"); //I should have known before!

		Mod_REL_WendelS = 19;

		B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "The negotiations have not reached a satisfactory conclusion.");
		B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

		Mod_REL_Stadthalter = 2;

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "ATMINE");
		B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "STADTHALTER");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_04"); //Well, I still do not think it is really fair, but we can accept it as a compromise.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_05"); //I'll tell the boys the news, and Frazer gets to go back to town.

		Mod_REL_WendelS = 19;

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "TOT");

		B_RemoveNpc	(Mod_7619_OUT_Frazer_REL);
		B_RemoveNpc	(Mod_7613_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7614_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7615_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7616_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7617_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7618_OUT_Norman_REL);
	};
};

INSTANCE Info_Mod_Roman_REL_EXIT (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_EXIT_Condition;
	information	= Info_Mod_Roman_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Roman_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
