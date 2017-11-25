INSTANCE Info_Mod_Serra_Hi (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_Hi_Condition;
	information	= Info_Mod_Serra_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_Hi_Condition()
{
	if (Wld_IsTime(08,00,19,00))
	&& (Kapitel >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Alfans_Aufgabe))
	&& (Wld_GetDay()-2 >= Mod_AlfansQuest_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_Hi_17_00"); //Hello stranger. You must have come a long way, I've never seen you around here before.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_01"); //Yes, my place of origin is actually a long way off.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_17_02"); //You must have done many adventures and killed countless monsters.... you know, that kind of thing looks like you to a handsome guy.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_03"); //Yeah, that's a good point.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_17_04"); //Hmm, you know, I've got a heavy package on me right now.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_17_05"); //If you wear it for me and accompany me to my house, I would also reward you for this good deed.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_06"); //Okay, let's see what we can do.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_17_07"); //Here. It's not far away, either.

	B_GiveInvItems	(self, hero, ItMi_SeraPaket, 1);

	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_08"); //(to itself) Hmm, the package isn't that heavy.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TOHOME");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "TOHOME");

	Log_CreateTopic	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Serra asked me to carry her package home. I just have to follow her.");
};

INSTANCE Info_Mod_Serra_AtHome (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AtHome_Condition;
	information	= Info_Mod_Serra_AtHome_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AtHome_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_Hi))
	&& (Npc_HasItems(hero, ItMi_SeraPaket) == 1)
	&& (Npc_GetDistToWP(hero, "EIS_DORF_003") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AtHome_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_00"); //We're already there. Thank you for your selfless act of carrying the package.

	B_GiveInvItems	(hero, self, ItMi_SeraPaket, 1);

	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_01"); //You're a great man. Here's some gold coins for your reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Serra_AtHome_15_02"); //Thanks.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_03"); //Oh, if only all men were as good and generous as you.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome_15_04"); //Why?
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_05"); //Oh, there's this man, his name is Alvar. An impossible man, a bully and a brute.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_06"); //He just won't leave me in peace... He even harassed me several times.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_07"); //I don't dare to go to the village shaman to accuse his behaviour.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_17_08"); //Alvar would take terrible revenge on me.

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Serra_AtHome2 (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AtHome2_Condition;
	information	= Info_Mod_Serra_AtHome2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AtHome2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malfama_AtHome))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AtHome2_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_00"); //Thank you very much. Then we could finally feel safe again.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome2_15_01"); //What can I do? Strain him?
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_02"); //No, that wouldn't do any good. Then he could get worse for revenge.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_03"); //It should be something that embarrasses him in court and prevents him from ever harming a woman in the village again.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_04"); //Yeah, if you could bring us his diary.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_05"); //Maybe he kept something there about his misdeeds. Then he could be convicted.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome2_15_06"); //His diary.... that could be arranged.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_07"); //Thank you so much. You don't know how much you're helping us with this.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_08"); //You should find it on his desk somewhere.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_17_09"); //Good luck to you. We are deeply indebted to you.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Serra and Malfama are obviously threatened and harassed by a man named Alvar. I'm supposed to get you his diary. Maybe he kept his misdeeds in it.");

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "START");

	Wld_InsertItem	(ItWr_AlvarTagebuch, "FP_ITEM_ALVAR_TAGEBUCH");
};

INSTANCE Info_Mod_Serra_AlvarTagebuch (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AlvarTagebuch_Condition;
	information	= Info_Mod_Serra_AlvarTagebuch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AlvarTagebuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_AtHome2))
	&& (Mod_AlvarTagebuch == 2)
	&& (Npc_HasItems(hero, ItWr_AlvarTagebuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AlvarTagebuch_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_17_00"); //You're back! Do you have the diary, my hero?
	AI_Output(hero, self, "Info_Mod_Serra_AlvarTagebuch_15_01"); //Yes, here it is. At first glance, I couldn't find any crimes he had arrested.

	B_GiveInvItems	(hero, self, ItWr_AlvarTagebuch, 1);

	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_17_02"); //Great, you're the biggest. Let me see that.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_17_03"); //There must be something to find. You just have to read it carefully.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarTagebuch_15_04"); //All right, all right. Good luck to you.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_17_05"); //Yes, your selfless actions should be an example to all others.

	Mod_SeraHatBuch = Wld_GetDay();
};

INSTANCE Info_Mod_Serra_AlvarDead (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AlvarDead_Condition;
	information	= Info_Mod_Serra_AlvarDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AlvarDead_Condition()
{
	if (Mod_AlvarDead == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AlvarDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_17_00"); //Ahh, there's my hero.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_15_01"); //What's the deal with Alvar?
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_17_02"); //Hypocritical. What? Oh, you mean the terrible incident. Yes, the poor thing. He doesn't deserve it.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_15_03"); //What are you playing, what do you have to do with it?
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_17_04"); //(innocent) Nothing, nothing at all. It was the snow ghosts.... he was just too careless.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	Info_AddChoice	(Info_Mod_Serra_AlvarDead, "You know exactly what happened.", Info_Mod_Serra_AlvarDead_B);
	Info_AddChoice	(Info_Mod_Serra_AlvarDead, "I see.", Info_Mod_Serra_AlvarDead_A);
};

FUNC VOID Info_Mod_Serra_AlvarDead_B()
{
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_B_15_00"); //You know exactly what happened. And it will not go unpunished.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_17_01"); //I don't know what you mean.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_17_02"); //It was you who stole his diary. There are witnesses.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_17_03"); //So you better be careful who you blame. If you don't do that, you may cause discontent in the village.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	Mod_AlvarDead = 2;
};

FUNC VOID Info_Mod_Serra_AlvarDead_A()
{
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_A_15_00"); //I see.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Serra_Traenenkristall (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_Traenenkristall_Condition;
	information	= Info_Mod_Serra_Traenenkristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_Traenenkristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvar_Unbekannt))
	&& (Npc_HasItems(hero, ItMi_Traenenkristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_Traenenkristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_17_00"); //What, you here? Knatus, stop him!
	AI_Output(hero, self, "Info_Mod_Serra_Traenenkristall_15_01"); //Now, wait a minute. Now let the crystal show its power. What are you gonna do with Thys?
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_17_02"); //Me and Malfama cast a damage spell on Thys to pretend he was sick.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_17_03"); //And now we're going to poison him to finally get power over this miserable village.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_17_04"); //The inhabitants have fallen for all our intrigues and eat us out of our hands like stupid asses.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_17_05"); //Knatus, the idiot, we've even dressed him to such an extent that he's ready to kill you....

	AI_TurnToNpc	(hero, Mod_7564_OUT_Knatus_EIS);

	AI_Output(hero, self, "Info_Mod_Serra_Traenenkristall_15_06"); //Do you hear what Knatus has to say about you?

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Serra_EXIT (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_EXIT_Condition;
	information	= Info_Mod_Serra_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Serra_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serra_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
