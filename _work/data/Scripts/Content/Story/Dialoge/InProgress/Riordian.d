INSTANCE Info_Mod_Riordian_Hi (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_Hi_Condition;
	information	= Info_Mod_Riordian_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_23_00"); //You got a lot of guts.
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_23_01"); //I didn't think I'd see you again.
};

INSTANCE Info_Mod_Riordian_IrrlichtBekommen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_IrrlichtBekommen_Condition;
	information	= Info_Mod_Riordian_IrrlichtBekommen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_IrrlichtBekommen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_IrrlichtBekommen_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_00"); //I found this in the temple.

	B_GiveInvItems	(self, hero, ItAm_Addon_WispDetector, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_01"); //It seems like you can call a will-o' -the-wisp that is looking for an item.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_02"); //I'm sure it's more useful to you than it is to me.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_03"); //I'll try to find out a little more about it, maybe the wispy wisp can be expanded so that it can find more items or even fight for you.
};

INSTANCE Info_Mod_Riordian_PortalOeffnen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_PortalOeffnen_Condition;
	information	= Info_Mod_Riordian_PortalOeffnen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius thinks you have something for me?";
};

FUNC INT Info_Mod_Riordian_PortalOeffnen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Komplett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_PortalOeffnen_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_PortalOeffnen_15_00"); //Nefarius thinks you have something for me?
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_01"); //Yeah. I learned the language of the builders through the writings and signs on the walls.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_02"); //Since you will be the first to walk through the portal as soon as it is open, you should at least have a basic knowledge of this language.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_03"); //So listen carefully.

	hero.lp += 5;

	B_TeachPlayerTalentForeignLanguage (self, hero, LANGUAGE_1);

	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_04"); //Well, it's very simple. A G is an O, a T is an H is an I is a C.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_05"); //Once you've figured that out, the rest is actually logical...

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht_Condition;
	information	= Info_Mod_Riordian_TempelDicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Argibast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht_23_00"); //Thank Adanos. If you hadn't come, we'd all have been lost.

	B_LogEntry	(TOPIC_MOD_BEL_ADANOS, "The undead are defeated and the water warriors are safe for now.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_ADANOS, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht2 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht2_Condition;
	information	= Info_Mod_Riordian_TempelDicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happened?";
};

FUNC INT Info_Mod_Riordian_TempelDicht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_00"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_01"); //It was a day like any other. We all followed our day's work until suddenly sounds of fighting from the outside came in.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_02"); //We wanted to see what was going on, but then five extremely powerful guards telepostered themselves into the portal space and swept everything down and captured the other water magicians.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_03"); //I escaped outside at the last moment and then the entrance was sealed. Then you came to us and helped us defeat our enemies.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_04"); //Is there a way to open the entrance? It's very urgent. Khorini's existence is at stake.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_05"); //The entrance is magically locked. you can't get it open easily.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_06"); //What do I have to do to get into the temple?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_07"); //Well, if I recall correctly, there's some sort of magic key to open the door. However, I have no idea where it is.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_08"); //You really don't know where the key is?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_09"); //Hmmm. Only Vatras and Saturas know the location. Go to vatras in town and ask him for advice.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_10"); //But hurry, time is short!
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_11"); //I'll leave immediately.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_12"); //Good luck to you!

	Log_CreateTopic	(TOPIC_MOD_BEL_TEMPEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_TEMPEL, "To get into the portal temple, I have to find a magic key. However, only Vatras and Saturas know the location. I should go see Vatras in town for information.");
};

INSTANCE Info_Mod_Riordian_TempelDicht3 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht3_Condition;
	information	= Info_Mod_Riordian_TempelDicht3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the key.";
};

FUNC INT Info_Mod_Riordian_TempelDicht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_TempelDicht))
	&& (Npc_HasItems(hero, ItKe_MagicTempelKey) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht3_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_00"); //I have the key. We can open the entrance.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_23_01"); //(pleased) Very good. Give me the key so I can open the entrance.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_02"); //Here you have it.

	B_GiveInvItems	(hero, self, ItKe_MagicTempelKey, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_23_03"); //Now step aside so I can open the entrance.
	
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTEMPEL");
};

INSTANCE Info_Mod_Riordian_TempelDicht4 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht4_Condition;
	information	= Info_Mod_Riordian_TempelDicht4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht3))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PORTALTEMPEL_03") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht4_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_23_00"); //The gate opens. We must save the others.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht4_15_01"); //I'll go ahead. Make sure no one surprises us from behind.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_23_02"); //All right, go ahead.
	
	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	Wld_InsertNpc	(GardeInnos_4098_Danae,	"PORTAL");
};

INSTANCE Info_Mod_Riordian_EXIT (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_EXIT_Condition;
	information	= Info_Mod_Riordian_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riordian_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
