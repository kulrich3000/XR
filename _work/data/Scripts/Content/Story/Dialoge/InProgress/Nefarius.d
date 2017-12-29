INSTANCE Info_Mod_Nefarius_Hi (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Hi_Condition;
	information	= Info_Mod_Nefarius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Satan sent me.";
};

FUNC INT Info_Mod_Nefarius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_Hi_15_00"); //Satan sent me. Is there progress in translating the inscriptions?
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_01"); //Progress has been made, but we are still a long way from understanding something.
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_02"); //None of us knows this language. I'm trying to understand the meaning of the signs. However, this only works with many comparisons and assumptions.
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_03"); //So it may still take some time before we can show the first results.
};

INSTANCE Info_Mod_Nefarius_Saturas (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Saturas_Condition;
	information	= Info_Mod_Nefarius_Saturas_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nefarius_Saturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Argez4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_Saturas_Info()
{
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_00"); //I found out something new. There seems to be a ring that fits into a small opening in the wall next to the portal.
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_01"); //According to the inscriptions, for safety's sake, this ring was divided into four equal parts and hidden in all four directions.
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_02"); //Before you go on a search, you should talk to Merdarion.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius tells something about a ring that could open the portal. However, this ring was apparently divided and hidden in all four directions. I'm supposed to speak to Merdarion first.");
};

INSTANCE Info_Mod_Nefarius_PortalDicht (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_PortalDicht_Condition;
	information	= Info_Mod_Nefarius_PortalDicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "But these are not very precise details.";
};

FUNC INT Info_Mod_Nefarius_PortalDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_PortalDicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_PortalDicht_15_00"); //But these are not very precise details.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_01"); //Well, there's a story written here. Accordingly, a god named Radano ruled in the old valley, called Jharkendar, a long time ago.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_02"); //He was benevolent and wise, and seemed to be much closer spiritually connected with the inhabitants than we know it from the three deities today.
	AI_Output(hero, self, "Info_Mod_Nefarius_PortalDicht_15_03"); //Another god? Go on...
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_04"); //Well, there seemed to be some kind of disaster or conflict. I couldn't get any further information.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_05"); //In any case, the presence of this God suddenly seems to end... and with this catastrophe almost all life in Jharkendar was wiped out.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_06"); //Apparently, only four of the builders escaped and closed the portal. They wanted to learn from their past mistakes.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_07"); //They have broken the key and vowed never to meet again to bury the past forever.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_08"); //Then they are broken in different directions so that the pieces of the key are separated from each other.

	B_LogEntry	(TOPIC_MOD_PORTAL, "After a catastrophe in Jharkendar, only four of the builders escaped. They broke the key and each of them went in a different direction with one part.");
};

INSTANCE Info_Mod_Nefarius_VierErbauer (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_VierErbauer_Condition;
	information	= Info_Mod_Nefarius_VierErbauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there anything else in the writings (...) )";
};

FUNC INT Info_Mod_Nefarius_VierErbauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_PortalDicht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_VierErbauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_00"); //Is there anything else in the writings about the exact places the builders went to?
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_01"); //Nothing specific. You must also bear in mind that the area here may have changed over the last few centuries.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_02"); //However, I want to tell you as much as I can.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_03"); //One of the builders, a priest, wanted to go to the West to create a residence and preach the wisdom of the ancient Adanos.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_04"); //Unfortunately, it doesn't say what has become of him. Maybe you should ask around in khorinis. Maybe the governor can find out something about it in his old books.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_05"); //Someone else went south. He went there to look for his fortune in the mines.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_06"); //According to the scriptures, however, he was only a member of the caste of healers.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_07"); //What does that mean?
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_08"); //Well, at that time there was no trade and transport route between the Minental and Khorinis.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_09"); //So there must have been a lot of dangerous monsters out there. I don't think a healer has gotten very far.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_10"); //Sounds reasonable.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_11"); //Another builder, a warrior, wanted to settle in Khorinis, establish a family and live in peace.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_12"); //His name was Onar. Maybe there is a connection to the big builder....
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_13"); //I'm gonna take a look at this.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_14"); //The last of the survivors was a deadly guard who must have been found somewhere in the north of Khorinis.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_15"); //At least what's left of him....
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_16"); //Of course, it would be amazing if he himself were still alive. (laughs)
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_17"); //Take a look around north of Khorinis, maybe you'll find a place worthy of a deadly guard.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_18"); //All right, I'll be on my way.

	B_LogEntry	(TOPIC_MOD_PORTAL, "One of the builders went to the West to create a residence there. I was to inquire in Khorinis about the ancestor's history. The governor of Khorinis could help me with that.");
	B_LogEntry	(TOPIC_MOD_PORTAL, "A healer has left for the south. Nefarius thinks, however, that he didn't get too far, because at that time the mountain pass into the Minental was surely populated by dangerous monsters.");
	B_LogEntry	(TOPIC_MOD_PORTAL, "Onar, a member of the Warrior Caste, has settled in Khorinis and founded a family. The name resembles that of today's big farmer. Maybe there's a connection?");
	B_LogEntry	(TOPIC_MOD_PORTAL, "The last survivor, a Dead Guard, headed north. I'm supposed to take a look around.");

	Wld_InsertItem	(ItMi_Ornament_Totenwaechter,	"FP_ITEM_ORNAMENT_TOTENWAECHTER");

	Mob_CreateItems	("ONARSAHNENTRUHE", ItMi_Ornament_Krieger, 1);

	B_StartOtherRoutine	(Mod_763_NONE_Gaan_NW, "ORNAMENT");
};

INSTANCE Info_Mod_Nefarius_PriesterOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_PriesterOrnament_Condition;
	information	= Info_Mod_Nefarius_PriesterOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a fragment of the priest.";
};

FUNC INT Info_Mod_Nefarius_PriesterOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Priester) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_PriesterOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_PriesterOrnament_15_00"); //I have a fragment of the priest. It was in Relendel in the town of Khorata.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Priester, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_PriesterOrnament_16_01"); //In Khorata? Well, now we've got it. Here's your reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "I gave Nefarius the priest's play.");
};

INSTANCE Info_Mod_Nefarius_HeilerOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_HeilerOrnament_Condition;
	information	= Info_Mod_Nefarius_HeilerOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the healer's ornamental piece.";
};

FUNC INT Info_Mod_Nefarius_HeilerOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Heiler) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_HeilerOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_HeilerOrnament_15_00"); //I have the healer's ornamental piece.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Heiler, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_HeilerOrnament_16_01"); //Very good. Very good. Here's a reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "I gave Nefarius the piece of the healer.");
};

INSTANCE Info_Mod_Nefarius_KriegerOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_KriegerOrnament_Condition;
	information	= Info_Mod_Nefarius_KriegerOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the warrior's piece.";
};

FUNC INT Info_Mod_Nefarius_KriegerOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Krieger) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_KriegerOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_KriegerOrnament_15_00"); //Here's the warrior's piece.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Krieger, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_01"); //Well, where did you find it?
	AI_Output(hero, self, "Info_Mod_Nefarius_KriegerOrnament_15_02"); //It was in a chest of Onar the big farmer.
	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_03"); //Ah yes, so the two were actually related.
	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_04"); //Here's your reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "I gave Nefarius the piece of the warrior.");
};

INSTANCE Info_Mod_Nefarius_TotenwaechterOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_TotenwaechterOrnament_Condition;
	information	= Info_Mod_Nefarius_TotenwaechterOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the bodyguard's ornament.";
};

FUNC INT Info_Mod_Nefarius_TotenwaechterOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Totenwaechter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_TotenwaechterOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_TotenwaechterOrnament_15_00"); //I found the bodyguard's ornament.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Totenwaechter, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_01"); //And which place was worthy of the bodyguard?
	AI_Output(hero, self, "Info_Mod_Nefarius_TotenwaechterOrnament_15_02"); //The stone circle near the black troll.
	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_03"); //So the solar circle, interesting.
	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_04"); //Very good. Very good. Here's a little reward for you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "I gave Nefarius the play of the bodyguard.");
};

INSTANCE Info_Mod_Nefarius_Komplett (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Komplett_Condition;
	information	= Info_Mod_Nefarius_Komplett_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happens now?";
};

FUNC INT Info_Mod_Nefarius_Komplett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_PriesterOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_HeilerOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_KriegerOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_TotenwaechterOrnament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_Komplett_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_Komplett_15_00"); //What happens now?
	AI_Output(self, hero, "Info_Mod_Nefarius_Komplett_16_01"); //Well, I'm gonna put the pieces together now. It's going to take a while, though.
	AI_Output(self, hero, "Info_Mod_Nefarius_Komplett_16_02"); //I think he wanted to show you something.

	Mod_OrnamentNefarius = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius will now assemble the parts. They want me to come back when I've been with Riordian.");
};

INSTANCE Info_Mod_Nefarius_NTag (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_NTag_Condition;
	information	= Info_Mod_Nefarius_NTag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you finished?";
};

FUNC INT Info_Mod_Nefarius_NTag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_PortalOeffnen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_NTag_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_NTag_15_00"); //Are you finished?
	AI_Output(self, hero, "Info_Mod_Nefarius_NTag_16_01"); //Yeah, here's the ring.

	B_GiveInvItems	(self, hero, ItMi_PortalRing_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_NTag_16_02"); //Place it in the provided opening and then pass through the portal. We'll follow you then. You can look around a little while.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius gave me the ring. I'm supposed to insert the ring and then walk through the portal. The others will follow me.");
	B_SetTopicStatus	(TOPIC_MOD_PORTAL, LOG_SUCCESS);
}; 

instance Info_Mod_Nefarius_Runen	(C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Runen_Condition;
	information	= Info_Mod_Nefarius_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Instruct me (create runes)";
};

func int Info_Mod_Nefarius_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	{
		return 1;
	};
};

func void Info_Mod_Nefarius_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Nefarius_Runen_15_00"); //Teach me.
	
	Info_ClearChoices 	(Info_Mod_Nefarius_Runen);
	Info_AddChoice		(Info_Mod_Nefarius_Runen, DIALOG_BACK, Info_Mod_Nefarius_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Nefarius_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Icerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Icerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Icerain)) ,Info_Mod_Nefarius_Runen_Icerain);
			abletolearn = (abletolearn +1);
		};	
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_IceWave] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_IceWave, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceWave)), Info_Mod_Nefarius_Runen_IceWave);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Nefarius_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_LightningFlash] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_LightningFlash, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightningFlash)), Info_Mod_Nefarius_Runen_LightningFlash);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Waterfist] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Waterfist, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Waterfist)), Info_Mod_Nefarius_Runen_Waterfist);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Nefarius_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_IceCube] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_IceCube, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceCube)), Info_Mod_Nefarius_Runen_IceCube);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ChargeZap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_ChargeZap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeZap)), Info_Mod_Nefarius_Runen_Thunderball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Thunderstorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Thunderstorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Thunderstorm)), Info_Mod_Nefarius_Runen_Thunderstorm);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Geyser] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Geyser, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Geyser)), Info_Mod_Nefarius_Runen_Geyser);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_Icelance] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Icelance, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Icelance)), Info_Mod_Nefarius_Runen_Icelance);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_InstantIceball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_InstantIceball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantIceball)), Info_Mod_Nefarius_Runen_InstantIceball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Nefarius_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Nefarius_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Zap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Zap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Zap)), Info_Mod_Nefarius_Runen_Zap);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Nefarius_Runen_14_01"); //There's nothing more I can teach you.
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Nefarius_Runen);
};

FUNC VOID Info_Mod_Nefarius_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icerain);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icerain) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icerain, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonIceGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonIceGolem);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonEisgoblin()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonEisgoblin);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icebolt);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Zap()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Zap) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Zap, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icelance()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icelance);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icelance) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icelance, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_InstantIceball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantIceball);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Waterfist()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Waterfist);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_IceCube()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceCube);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceCube) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceCube, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Thunderball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeZap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Thunderstorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Thunderstorm);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Geyser()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Geyser);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Geyser) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Geyser, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_LightningFlash()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightningFlash);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_IceWave()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceWave);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceWave) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceWave, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal, 1);
	};
};

INSTANCE Info_Mod_Nefarius_EXIT (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_EXIT_Condition;
	information	= Info_Mod_Nefarius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nefarius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
