INSTANCE Info_Mod_Merdarion_AW_Hi (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Hi_Condition;
	information	= Info_Mod_Merdarion_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_AW_Hi_Condition()
{
	if (Wld_IsTime(00,00,06,05))
	&& (LEAVE_PORTALTEMPEL_FIRSTTIME_ONETIME == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_00"); //Thank Adanos, you finally woke up.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_01"); //(confused) But.... woke up? What has happened?
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_02"); //We found you unconscious on the other side of the portal. You must have fallen victim to a protective spell.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_03"); //Protection spell?!
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_04"); //Yes, probably the builders wanted to use it to stun possible intruders.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_05"); //The mechanism may have been lethal in the past, but it has lost much of its magic over the centuries.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_06"); //Very reassuring....
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_07"); //Oh, well, you better start talking to Saturas. He found out something new.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Merdarion_AW_Nefarius (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Nefarius_Condition;
	information	= Info_Mod_Merdarion_AW_Nefarius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Saturas sent me.";
};

FUNC INT Info_Mod_Merdarion_AW_Nefarius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Nefarius_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Nefarius_15_00"); //Satan sent me. He told me to clean the floors in khorinis.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_01"); //Ahh, very good. This will hopefully prevent the demon magicians from further stupidity.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_02"); //Here you have six magic water pearls and a map showing the affected areas.

	CreateInvItems	(hero, ItMi_Wasserperle, 6);
	CreateInvItems	(hero, ItWr_Map_Perlenkram, 1);

	B_ShowGivenThings	("6 water pearls and card received");

	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_03"); //May Adanos protect you.

	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Now I just have to follow the markings on the map and drop the water pearls at the appropriate places.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Merdarion_AW_Perlen_02 (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Perlen_02_Condition;
	information	= Info_Mod_Merdarion_AW_Perlen_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_AW_Perlen_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_06))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Perlen_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Perlen_02_06_00"); //Ahh, I've already been informed and have everything necessary for you.
	
	CreateInvItems	(hero, ItMi_Wasserperle, 3);
	CreateInvItems	(hero, ItWr_Map_Perlenkram_02, 1);

	B_ShowGivenThings	("3 water pearls and card received");

	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Perlen_02_15_01"); //Yes, it seems to be getting more and more routine...

	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Now follow the markings on the map again.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Merdarion_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Merdarion_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, greeting. I want to know about a ceremonial dagger.";
};

FUNC INT Info_Mod_Merdarion_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Zeremoniendolch_15_00"); //Adanos, greeting. I want to know about a ceremonial dagger.
	AI_Output(self, hero, "Info_Mod_Merdarion_Zeremoniendolch_06_01"); //Then go to Riordian's. He was able to decipher new inscriptions.
	AI_Output(self, hero, "Info_Mod_Merdarion_Zeremoniendolch_06_02"); //Thank you, master.
};

INSTANCE Info_Mod_Merdarion_AW_CavalornZuVatras (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_CavalornZuVatras_Condition;
	information	= Info_Mod_Merdarion_AW_CavalornZuVatras_Info;
	permanent	= 0;
	important	= 0;
	description	= "I sent Cavalon into town. Vatras needs him.";
};

FUNC INT Info_Mod_Merdarion_AW_CavalornZuVatras_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_CavalornZuVatras_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_CavalornZuVatras_15_00"); //I sent Cavalon into town. Vatras needs him.
	AI_Output(self, hero, "Info_Mod_Merdarion_CavalornZuVatras_06_01"); //It's all right, sir.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Merdarion_AW_NefariusKey (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_NefariusKey_Condition;
	information	= Info_Mod_Merdarion_AW_NefariusKey_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius sent me.";
};

FUNC INT Info_Mod_Merdarion_AW_NefariusKey_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Merdarion_Nefarius))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_NefariusKey_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Nefarius_15_00"); //Nefarius sent me. I'm supposed to stop by your place.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_01"); //I'm glad you came. There's a teleporter in the ruins of Khorinis. With this key you can get through the door.

	B_GiveInvItems	(self, hero, ItKe_PORTALTEMPELWALKTHROUGH_ADDON, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_02"); //Dann gibt es noch einen weiteren Teleporter in der Nähe der Taverne "The Dead Harpy". Auch dieser Teleporter ist durch eine Tür geschützt.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_03"); //With this key, you can open the door.

	B_GiveInvItems	(self, hero, ITKE_ORLAN_TELEPORTSTATION, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_04"); //Now hurry up.
};

INSTANCE Info_Mod_Merdarion_AW_Gast (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Gast_Condition;
	information	= Info_Mod_Merdarion_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come along anyway?";
};

FUNC INT Info_Mod_Merdarion_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Merdarion_AW_Gast.description = "Can you help me find the thief?";
	}
	else
	{
		Info_Mod_Merdarion_AW_Gast.description = "Did you see anything unusual tonight?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_00"); //Can you help me find the thief?
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_01"); //Maybe. Maybe he didn't.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_02"); //When I let my gaze wander a few hours ago, I watched from the corners of my eyes a movement over there at the ruins.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_03"); //It was probably some kind of animal.

		B_LogEntry	(TOPIC_MOD_SATURAS_TAGGAST, "Merdarion saw a movement between the ruins. So I might find a lead there.");

		Mod_Saturas_Gast_Fortschritt = 1;

		Wld_InsertNpc	(Mod_115_NONE_Eremit_AW, "WP_TEMPEL_START_EREMIT_07");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_04"); //Did you see anything unusual tonight?
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_05"); //Yes, indeed! I was dreaming about a lot of beautiful women before you woke me up!
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_06"); //Somebody stole from you.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_07"); //That doesn't interest me very much at the moment. Good night!
	};
};

INSTANCE Info_Mod_Merdarion_AW_EXIT (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_EXIT_Condition;
	information	= Info_Mod_Merdarion_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Merdarion_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_AW_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_EXIT_06_00"); //May the equilibrium be given forever!

	AI_StopProcessInfos	(self);
};
