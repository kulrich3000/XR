INSTANCE Info_Mod_Malcom_AW_Hi (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Hi_Condition;
	information	= Info_Mod_Malcom_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_00"); //Hey, man. How did you get here?
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_01"); //I could ask you the same thing.

	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_02"); //I was lucky that Skip came by on his trading tour, otherwise I would have rotted on this beach.
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_03"); //And I haven't forgotten my promise. This is what I owe you for your help.

		B_GiveInvItems	(self, hero, ItMi_Gold, 100);

		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_04"); //Someone say pirates have no honor in my favorite one-armed whore!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_05"); //I was here first. See anyone who comes by here. And you're definitely coming from the wrong direction.
		AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_06"); //Why? I'm from the temple over there.
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_07"); //Nonsense. There's only the hermit and those scaly monsters in the swamp.
	};

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_08"); //If you say so. What are you doing here?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_09"); //Can't you see? Firewood for our warehouse.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_10"); //There's a camp here?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_11"); //But yes, yes. The camp of the most feared pirates of the seas.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_12"); //And where do I find this?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_13"); //Follow the path and turn right before the ruins. Can't miss it. Oh, and another thing.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_14"); //Yes?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_15"); //If Henry lets you into the camp, talk to Skip.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_16"); //Tell him I'm hungry, tell him to send me something to eat.

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_MALCOM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_MALCOM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_MALCOM, "I'm supposed to tell Skip at camp that Malcom's hungry and needs something to eat.");
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Greg wants to leave. We're supposed to make preparations.";
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_00"); //Greg wants to leave. We're supposed to make preparations.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_01"); //That's what I like to hear. Do you know where to go?
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_02"); //No. Definitely a treasure island.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_03"); //I'd rather hear that. Hmm... I'd have to do something else....
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_04"); //Do you need me to do that?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_05"); //Absolutely. Listen:
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_06"); //A long time ago, shortly after we landed here, I scouted the canyon with my boarding party.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_07"); //There was a bunch of cattle, but we handled them.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_08"); //At some point we came into a huge cave with plenty of giant crabs in it.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_09"); //We could kill a lot of them, but that killed two of my people.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_10"); //I had no choice but to retreat in a hurry.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_11"); //I haven't been to the canyon since.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_12"); //Those must have been minecrawlers. They're all over the island.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_13"); //What's that got to do with us?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_14"); //I have to go back. On the run, I lost our talisman.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_15"); //Greg would never leave without it.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_16"); //Man, they're superstitious.

	AI_TurnToNpc	(hero, self);

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_17"); //And now we're supposed to have two...
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_18"); //We're taking Jack with us. He's part of my posse.

	Log_CreateTopic	(TOPIC_MOD_PIR_TALISMAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIR_TALISMAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIR_TALISMAN, "Malcom lost the team's talisman. I'm supposed to help you get him back.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOJACK");
	B_StartOtherRoutine	(self, "MALCOM");
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche2 (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche2_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Schatzsuche))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_WAY_07") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche2_Info()
{
	var c_npc Malcom; Malcom = Hlp_GetNpc(Mod_935_PIR_Malcom_AW);
	var c_npc Jack; Jack = Hlp_GetNpc(Mod_928_PIR_AlligatorJack_AW);

	TRIA_Invite(Jack);
	TRIA_Start();

	TRIA_Next(Malcom);

	AI_GotoNpc (Malcom, Jack);

	AI_TurnToNpc	(Malcom, Jack);
	AI_TurnToNpc	(Jack, Malcom);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_30_00"); //Hello, Jack. We have to go to the canyon. You're coming with me.

	TRIA_Next(Jack);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_12_01"); //Gladly. Ask me why I'm standing here all the time anyway.

	TRIA_Next(Malcom);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_30_02"); //All mine.

	TRIA_Finish();
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche3 (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche3_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Schatzsuche2))
	&& (Npc_HasItems(hero, ItMi_Talisman_Piraten) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche3_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche3_15_00"); //I found this character here.

	B_GiveInvItems	(hero, self, ItMi_Talisman_Piraten, 1);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche3_30_01"); //It went well again. Now let's get out of here.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "START");

	B_LogEntry_More	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, TOPIC_MOD_PIR_TALISMAN, "We salvaged the pirate's talisman.", "The talisman is back in our possession.");
	B_SetTopicStatus	(TOPIC_MOD_PIR_TALISMAN, LOG_SUCCESS);

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(150);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Malcom_AW_EXIT (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_EXIT_Condition;
	information	= Info_Mod_Malcom_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malcom_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
