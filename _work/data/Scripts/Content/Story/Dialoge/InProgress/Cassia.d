INSTANCE Info_Mod_Cassia_Hi (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Hi_Condition;
	information	= Info_Mod_Cassia_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Hi_17_00"); //What are you doing here?
};

INSTANCE Info_Mod_Cassia_Irdorath (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath_Condition;
	information	= Info_Mod_Cassia_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I plan a voyage with the Paladin's ship to an island of the evil magician Xeres.";
};

FUNC INT Info_Mod_Cassia_Irdorath_Condition()
{
	if (Diebe_Dabei)
	&& (Mod_Irdorath == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_00"); //I plan a voyage with the Paladin's ship to an island of the evil magician Xeres.
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_01"); //On this occasion I'm looking for capable people for my team and wanted to ask if you'd be willing to come along?
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_02"); //You open to me to go on the ship of the Paladins, to sail across the wide sea and to visit the exclave of a sinister magician?
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_03"); //Well, it was just a woman...
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_04"); //(interrupts) And you shall be under the protection of the local magicians and thus also your mission with all involved...
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_05"); //Hmm, it wouldn't be a bad opportunity to leave the dark sewer, in fact.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_06"); //If you wish, I will go with you to the island of this dangerous magician.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_07"); //(half-loud) Because danger also promises profit in this case.
};

INSTANCE Info_Mod_Cassia_Irdorath2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath2_Condition;
	information	= Info_Mod_Cassia_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then become a member of my crew and join me on this journey.";
};

FUNC INT Info_Mod_Cassia_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath2_15_00"); //Then become a member of my crew and join me on this journey.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath2_17_01"); //Nothing better than that. I'll wait by the ship for the departure of our excursion.

	Mod_CrewCount += 1;

	Mod_CassiaDabei = 1;

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "With Cassia, I have a capable and skillful master of dagger on board, who knows how to resist more than just her skin.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Irdorath3 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath3_Condition;
	information	= Info_Mod_Cassia_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Cassia_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath3_17_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_CassiaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cassia_Irdorath4 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath4_Condition;
	information	= Info_Mod_Cassia_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Cassia_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath4_17_01"); //Very well, I'll be back at the harbour.

	Mod_CassiaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Aufnahme (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Aufnahme_Condition;
	information	= Info_Mod_Cassia_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, who are you?";
};

FUNC INT Info_Mod_Cassia_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_00"); //Na, wer bist du denn?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_01"); //Ich? Ich bin die Chefin der Diebe. 
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_02"); //Hier bin ich also gelandet.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_03"); //Wieso bist du hier? Hanna würde niemals einem Fremden Zutritt gewähren.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_04"); //Sumpfkrautmeldor schickt mich, er meinte, ich sei ein anständiger Kerl und aus mir könnte noch was werden.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_05"); //Hmm... Was hast du gemacht, um sein Vertrauen zu gewinnen? Normalerweise traut er niemandem über den Weg.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_06"); //Ich hab ihm den Knast erspart, indem ich sein Krautpäckchen versteckt habe, bevor sich die Miliz ihn vorgeknöpft hat.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_07"); //Das wird immer schlimmer. Sehr schwer heutzutage als Dieb über die Runden zu kommen.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_08"); //Jeder schaut dem anderen auf die Finger und dann rennen sie wegen den kleinsten Verdächten direkt zu Lord Andre.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_09"); //Was ist hier eigentlich los?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_10"); //Bevor ich dir das erzähle muss ich wissen, ob ich dir vertrauen kann.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_11"); //Willst du in meine Diebesgilde beitreten? Entscheide zwischen Reichtum und Tod.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_12"); //Was? Du willst mich töten, wenn ich euch nicht beitrete?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_13"); //Ja, mir wird keine andere Möglichkeit bleiben.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
	
	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (hero.guild != GIL_PAL)
	{
		Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Well, I've always wanted to be a nimble thief.", Info_Mod_Cassia_Aufnahme_Ja);
	};
	Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Then try it!", Info_Mod_Cassia_Aufnahme_Nein);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Ja()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Ja_15_00"); //All right, I've always wanted to be a nimble thief.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_01"); //I accept you cordially into our ranks.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_02"); //You're still a long way from a nimble and good thief. First you have to prove yourself by bringing me 2,000 gold coins.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_03"); //I'll teach you pickpocketing. Then I'll familiarize you with the other thieves.

	Mod_AnzahlNebengilden += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_63);

	Diebe_Dabei = TRUE;

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 2);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_DIEB_GOLD, LOG_MISSION);
	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_DIEB_GOLD, "I am now one of the thieves.", "Cassia wants me to bring 2,000 gold coins. She's trying to teach me the pickpocketing.");

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Nein_15_00"); //Then try it!
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Nein_17_01"); //Meldor made a mistake and I'm going to fix it now.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_FAILED);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Cassia_Goldmuenzen (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Goldmuenzen_Condition;
	information	= Info_Mod_Cassia_Goldmuenzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your gold.";
};

FUNC INT Info_Mod_Cassia_Goldmuenzen_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_HasItems(hero, ItMi_Gold) > 1999)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Goldmuenzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Goldmuenzen_15_00"); //Here's your gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Cassia_Goldmuenzen_17_01"); //Truly, you're better than I expected. You now have the right to know everything. Just ask me.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Cassia_WasNun (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Condition;
	information	= Info_Mod_Cassia_WasNun_Info;
	permanent	= 0;
	important	= 0;
	description	= "What now?";
};

FUNC INT Info_Mod_Cassia_WasNun_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_00"); //Was nun?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_01"); //Da du grad fragst, Attila wurde das letzte Mal von der Miliz geschnappt als er seinen Job machen wollte.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_02"); //Wir müssen ihn da rausholen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_03"); //Und wie hast du dir das vorgestellt?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_04"); //Wir schleusen dich in die Miliz ein. Du wirst Attila zur Flucht verhelfen und noch versuchen herauszufinden, wer die Miliz auf Meldor hetzt.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_05"); //Was? Das soll ich machen? Wenn die mich ertappen werden sie mich töten.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_06"); //Ich weiß. Du hast diesen Weg gewählt, aber du hast eine Chance, da rauszukommen, und ohne Attila wird die Situation immer unerträglicher.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_07"); //Ich sehe ich hab schon wieder keine Wahl.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_08"); //Du hattest die Wahl und hast dich für diesen Weg entschieden.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_09"); //Und wie soll ich in die Miliz reinkommen?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_10"); //Mach dir darüber keine Sorgen, wir haben schon Vorgeplant. Ramirez ist ein gesuchter Dieb. Wenn du ihnen Ramirez bringst, werden sie dich sofort aufnehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_11"); //Bloß das Problem wäre, dass du schnell handeln musst. Sie werden ihn bestimmt nicht lange leben lassen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_12"); //Wenn ich es nicht schaffe?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_13"); //Dann wirst du schuldig gesprochen für Attila's und Ramirez' Tod.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_14"); //Bevor wir noch mehr Zeit verschwenden mach dich bereit und komm später nochmal her.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_15"); //Dann wirst du mit Ramirez in die Kaserne gehen.	

	Log_CreateTopic	(TOPIC_MOD_DIEB_ATTILA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ATTILA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Cassia wants me to free Attila from prison. I'm to join the militia by handing over Ramirez to them.");
};

INSTANCE Info_Mod_Cassia_WasNun_Ramirez (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Ramirez_Condition;
	information	= Info_Mod_Cassia_WasNun_Ramirez_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready to accept the task.";
};

FUNC INT Info_Mod_Cassia_WasNun_Ramirez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_WasNun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Ramirez_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_Ramirez_15_00"); //I'm ready to accept the task.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_01"); //You surprise me again, but unfortunately we have problems.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_02"); //Ramirez doesn't trust you. He doesn't think you're good enough to do this job.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_03"); //Maybe you should talk to him.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "I wanted to start Cassia's assignment, but she told me that Ramirez did not trust me. I guess I'll have to convince him first.");
};

INSTANCE Info_Mod_Cassia_RamirezDabei (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_RamirezDabei_Condition;
	information	= Info_Mod_Cassia_RamirezDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was able to convince Ramirez....";
};

FUNC INT Info_Mod_Cassia_RamirezDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Bandenchef))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_RamirezDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_00"); //I convinced Ramirez by taking over Attila's job and taking out a gang in the docks.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_17_01"); //If you were able to run Attila's job successfully, you will have no problem with it.
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_02"); //I wanted to let you know we were leaving.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_17_03"); //Well, good luck!

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "I told Cassia. Then let's get going. Ramirez will now go with me to Lord Andre.");
};

INSTANCE Info_Mod_Cassia_Elvira (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira_Condition;
	information	= Info_Mod_Cassia_Elvira_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Elvira_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	&& (Wld_GetDay()-1 > Mod_Diebe_Andre_Day)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fuego_Unruhen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_00"); //Ahh, there you are again... just right for a job.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_01"); //What's this about? Clearing out another chest in khorinis?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_02"); //No, after the big coup of last time we have to be more careful here for a while, because the guards are much more attentive now.... at least for the next few years.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_03"); //What's the plan, then?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_04"); //Well, we put out our feelers a little bit.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_05"); //Jesper made a little trip to Khorata and asked around a bit.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_06"); //The city seems to be quite broke... but people are very superstitious.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_07"); //And there's always a lot of money to make with that.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_08"); //You want me to scare them with scary stories and take their gold?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_09"); //No, you don't need to... that's what the magicians of fire have done for us.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_10"); //The gold is nicely stored in a chest.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_11"); //Unfortunately, this is secured by a good lock.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_12"); //As Jesper found out, the fire magician Elvira carries the key with her.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_13"); //Okay, and I get to take it off her now.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_14"); //Well, that's what you've been thinking.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_15"); //Whether it's pickpocketing or some other way.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_16"); //It is never a disadvantage to ask the right people for information. This virtue should also always be nurtured by a thief.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_17"); //In any case, there are an estimated 1,000 gold coins and a valuable statue of the Inno in the chest, which we can certainly get rid of at a good price.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_18"); //As soon as you have everything, contact me.

	Log_CreateTopic	(TOPIC_MOD_DIEB_ELVIRA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "This time, after Khorata and the fire magician Elvira, I am allowed to take the key for the gold chest of the chosen Innos'. Cassia said it couldn't hurt to ask the right people.");
};

INSTANCE Info_Mod_Cassia_Elvira2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira2_Condition;
	information	= Info_Mod_Cassia_Elvira2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the contents of the chest.";
};

FUNC INT Info_Mod_Cassia_Elvira2_Condition()
{
	if (Npc_HasItems(hero, ItMi_InnosStatue_REL) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_15_01"); //I have the contents of the chest. Here's the statue...

	B_GiveInvItems	(hero, self, ItMi_InnosStatue_REL, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_17_02"); //Very nice. And the gold?

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Unfortunately, there were only 200 pieces of gold inside.", Info_Mod_Cassia_Elvira2_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "I found 500 pieces of gold in it.", Info_Mod_Cassia_Elvira2_B);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Here are the 1,000 gold pieces.", Info_Mod_Cassia_Elvira2_A);
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_C()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_C_15_00"); //Unfortunately, there were only 200 pieces of gold inside.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_01"); //Are you trying to fool me? Let's have a look at that, sonny boy...

	if (Npc_HasItems(hero, ItMi_Gold) >= 800)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_02"); //Uh-huh. I thought so, but... bags of gold.
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_03"); //I'll take the remaining coins out of the trunk myself.

		B_GiveInvItems	(hero, self, ItMi_Gold, 800);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_04"); //Well, here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_05"); //For your miserable attempt to deceive me, you really deserve nothing more.

		B_GivePlayerXP	(400);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_06"); //What, hardly a gold coin in your pockets?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_07"); //Poor sausage... when was the last time you successfully robbed someone?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_08"); //Well, here's some gold pieces for you to buy a piece of bad bread at the market.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_B_15_00"); //I found 500 pieces of gold in it.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_17_01"); //Only 500 pieces of gold? Hmm, all right.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_17_02"); //Here's 200 gold pieces for your trouble.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_A_15_00"); //Here are the 1,000 gold pieces.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_A_17_01"); //Very nice. You will get 600 pieces of gold back for your good work, because the statue will bring us some coins with the right buyer....

	B_GiveInvItems	(self, hero, ItMi_Gold, 600);

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

INSTANCE Info_Mod_Cassia_Meldor (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Meldor_Condition;
	information	= Info_Mod_Cassia_Meldor_Info;
	permanent	= 0;
	important	= 0;
	description	= "What does Meldor do?";
};

FUNC INT Info_Mod_Cassia_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Meldor_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Meldor_15_00"); //What does Meldor do?
	AI_Output(self, hero, "Info_Mod_Cassia_Meldor_17_01"); //Meldor is the swamp herb merchant. At the moment, however, he cannot pursue his activities because the militia often ambushes him.
};

INSTANCE Info_Mod_Cassia_Mitglieder (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Mitglieder_Condition;
	information	= Info_Mod_Cassia_Mitglieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who belongs to the guild of thieves?";
};

FUNC INT Info_Mod_Cassia_Mitglieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Mitglieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Mitglieder_15_00"); //Who belongs to the guild of thieves?
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_01"); //Ramirez and I are the leaders of the guild.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_02"); //Cardif, Nagur, Meldor and Halvor occupy the harbour area.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_03"); //Halvor can buy your stolen goods at a much better price than the other merchants would ever buy it.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_04"); //Rengaru is currently in the marketplace to steal from the rich, and Joe is in the temple square.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_05"); //Our spy, disguised as a gardener, sits in the upper quarter spying on the paladins.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_06"); //Hanna is just our door guard, not a real thief.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_07"); //And last but not least, Attila, our man who fixes our problem.
};

INSTANCE Info_Mod_Cassia_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_AndreVermaechtnis_Condition;
	information	= Info_Mod_Cassia_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bilgot_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_00"); //Hey, look who just walks in here.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_01"); //I was expecting Jesper.... and not with unwelcome guests.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_02"); //So I have to expel you from this place with my sword.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Cassia_AndreVermaechtnis_15_03"); //More like my whole crew....
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_04"); //What are you talking about? (interrupted)

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_755_MIL_Wambo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "DIEB");

	AI_Teleport	(Mod_744_MIL_Pablo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "DIEB");

	AI_Teleport	(Mod_564_MIL_Boltan_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "DIEB");

	AI_Teleport	(Mod_596_MIL_Martin_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "DIEB");
};

INSTANCE Info_Mod_Cassia_Lehrer (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lehrer_Condition;
	information	= Info_Mod_Cassia_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who can teach me anything else?";
};

FUNC INT Info_Mod_Cassia_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lehrer_15_00"); //Who can teach me anything else?

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_01"); //Well, I could help you get smarter.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_02"); //Ramirez is the best lock boy. No chest is safe from its lockers.
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_03"); //But Diego can also show you how to pick a lock.
	};

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_04"); //Attila can teach you a one-handed fight.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_05"); //Jesper is the master of sneaking.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_06"); //Rengaru is the master of acrobatics.
	};
};

INSTANCE Info_Mod_Cassia_Lernen   (C_INFO)
{
	npc         	= Mod_568_NONE_Cassia_NW;
	nr          	= 1;
	condition   	= Info_Mod_Cassia_Lernen_Condition;
	information 	= Info_Mod_Cassia_Lernen_Info;
	permanent   	= 1;
	important	= 0;
	description 	= "Show me the pickpocketing. (10 LP)";
};

FUNC INT Info_Mod_Cassia_Lernen_Condition()
{	
	Info_Mod_Cassia_Lernen.description = B_BuildLearnString("Show me the pickpocketing.", B_GetLearnCostTalent(hero, NPC_TALENT_PICKPOCKET, 1));

	if (Diebe_Dabei == TRUE)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Cassia_Lernen_Info()
{
	AI_Output (hero, self, "Info_Mod_Cassia_Lernen_15_00");//Zeig mir den Taschendiebstahl.
	
	if (B_TeachThiefTalent (self, hero, NPC_TALENT_PICKPOCKET))
	{
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_01");//Wenn du jemandem die Taschen ausleeren willst, lenke ihn ab. Quatsch ihn einfach an, sprich mit ihm.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_02");//Beim Gespräch guckst du dir ihn an. Achte auf ausgebeulte Taschen, Schmuck oder Lederschnüre am Hals. Und achte vor allem darauf, wie aufmerksam der Kerl ist.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_03");//Einen betrunkenen Tagelöhner auszurauben, ist was anderes, als einen wachsamen Händler, klar?
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_04");//Wenn du dich natürlich ungeschickt anstellst, kriegt er's mit. Also immer ruhig bleiben.
	};
};

INSTANCE Info_Mod_Cassia_Lernen_DEX (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lernen_DEX_Condition;
	information	= Info_Mod_Cassia_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Cassia_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lernen_DEX_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Cassia_Lernen_DEX_17_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Cassia_Lernen_DEX);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Cassia_Pickpocket (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Pickpocket_Condition;
	information	= Info_Mod_Cassia_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180_Female;
};

FUNC INT Info_Mod_Cassia_Pickpocket_Condition()
{
	C_Beklauen	(170, ItMi_Gold, 110);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_BACK, Info_Mod_Cassia_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cassia_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cassia_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cassia_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cassia_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cassia_EXIT (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_EXIT_Condition;
	information	= Info_Mod_Cassia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
