INSTANCE Info_Mod_Albert_Hi (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Hi_Condition;
	information	= Info_Mod_Albert_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Hi))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Hi_32_00"); //I've already been informed. I guess you're the guy who's trying to get a shot at us.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_32_01"); //The Teleporter works like this: I'll give you a stone that you have to place on the platform to activate the Teleporter. Do you understand that much?
	
	Info_ClearChoices	(Info_Mod_Albert_Hi);

	Info_AddChoice	(Info_Mod_Albert_Hi, "No, please repeat that.", Info_Mod_Albert_Hi_B);
	Info_AddChoice	(Info_Mod_Albert_Hi, "Yeah, go on.", Info_Mod_Albert_Hi_A);
};

FUNC VOID Info_Mod_Albert_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hi_B_15_00"); //No, please repeat that.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_B_32_01"); //I'll give you a stone to put on the platform there to activate the teleporter. Do you understand that much?
	
	Info_ClearChoices	(Info_Mod_Albert_Hi);

	Info_AddChoice	(Info_Mod_Albert_Hi, "No, please repeat that.", Info_Mod_Albert_Hi_B);
	Info_AddChoice	(Info_Mod_Albert_Hi, "Yeah, go on.", Info_Mod_Albert_Hi_A);
};

FUNC VOID Info_Mod_Albert_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hi_A_15_00"); //Yeah, go on.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_A_32_01"); //If you are in our hometown, you should talk to Genn immediately, he will tell you all about the goblin plague.
	AI_Output(hero, self, "Info_Mod_Albert_Hi_A_15_02"); //Okay. Give me the stone.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_A_32_03"); //Here you have it.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Now I can activate the teleporter using the charging stone.");

	Info_ClearChoices	(Info_Mod_Albert_Hi);
};

INSTANCE Info_Mod_Albert_Matronen (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Matronen_Condition;
	information	= Info_Mod_Albert_Matronen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Matronen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Matronen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Matronen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Matronen_32_00"); //And? How did it go?
	AI_Output(hero, self, "Info_Mod_Albert_Matronen_15_01"); //It went well. I stopped the goblins' offspring. They can get the rest there on their own.
	AI_Output(self, hero, "Info_Mod_Albert_Matronen_32_02"); //I'm glad you did. You better go to Turendil and tell him the good news.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_Faice (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Faice_Condition;
	information	= Info_Mod_Albert_Faice_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_FaiceGifty))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_VMG_FaiceGifty_Gift == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Faice_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Faice_32_00"); //Hurry, we don't have much time.
	
	Info_ClearChoices	(Info_Mod_Albert_Faice);

	Info_AddChoice	(Info_Mod_Albert_Faice, "There's something I have to do first.", Info_Mod_Albert_Faice_B);
	Info_AddChoice	(Info_Mod_Albert_Faice, "Give me the stone and I'll be on my way right away.", Info_Mod_Albert_Faice_A);
};

FUNC VOID Info_Mod_Albert_Faice_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Faice_B_15_00"); //There's something I have to do first.
	AI_Output(self, hero, "Info_Mod_Albert_Faice_B_32_01"); //Then hurry up.
	
	Info_ClearChoices	(Info_Mod_Albert_Faice);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Albert_Faice_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Faice_A_15_00"); //Give me the stone and I'll be on my way right away.
	AI_Output(self, hero, "Info_Mod_Albert_Faice_A_32_01"); //Here you have it. Take care of yourself.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I should now go to Tugettso and talk to Genn there, maybe he knows more about the medicinal plant I'm looking for.");

	Info_ClearChoices	(Info_Mod_Albert_Faice);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 2;
};

INSTANCE Info_Mod_Albert_Mendulus (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Mendulus_Condition;
	information	= Info_Mod_Albert_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Soeren))
	&& (Mod_VMG_FaiceGifty_Gift == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Mendulus_32_00"); //Hurry, you must hurry. Faice's not feeling well. Talk to Turendil, he's with Faice.
	AI_Output(hero, self, "Info_Mod_Albert_Mendulus_15_01"); //I'll be on my way right away.
	AI_Output(self, hero, "Info_Mod_Albert_Mendulus_32_02"); //Please hurry up.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_Gift (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Gift_Condition;
	information	= Info_Mod_Albert_Gift_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Gift_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_FurtNextDay))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_Turendil_Faice_Day == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Gift_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Gift_32_00"); //Back to Tugettso again, my friend?
	
	Info_ClearChoices	(Info_Mod_Albert_Gift);

	Info_AddChoice	(Info_Mod_Albert_Gift, "I'll come back later.", Info_Mod_Albert_Gift_B);
	Info_AddChoice	(Info_Mod_Albert_Gift, "That's what it looks like. Can I have a recharge stone?", Info_Mod_Albert_Gift_A);
};

FUNC VOID Info_Mod_Albert_Gift_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Gift_B_15_00"); //I'll come back later.
	AI_Output(self, hero, "Info_Mod_Albert_Gift_B_32_01"); //I'll see you around.
	
	Info_ClearChoices	(Info_Mod_Albert_Gift);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Albert_Gift_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Gift_A_15_00"); //That's what it looks like. Can I have a recharge stone?
	AI_Output(self, hero, "Info_Mod_Albert_Gift_A_32_01"); //Here you have it. Take care of yourself.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "To Tugettso. I might find out more from Genn there.");

	Info_ClearChoices	(Info_Mod_Albert_Gift);

	AI_StopProcessInfos	(self);

	Mod_Turendil_Faice_Day = 1;
};

INSTANCE Info_Mod_Albert_Trador (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Trador_Condition;
	information	= Info_Mod_Albert_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Dean))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Trador_32_00"); //Come on, Turendil's waiting for you.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_TeleporterFurt (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_TeleporterFurt_Condition;
	information	= Info_Mod_Albert_TeleporterFurt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need a new recharge stone.";
};

FUNC INT Info_Mod_Albert_TeleporterFurt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorBesprochen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_15_00"); //I need a new recharge stone.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_01"); //Um...
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_15_02"); //Is there a problem?
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_03"); //Yeah, I'm sorry, though.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_04"); //Because of the disruptions that have been frequent lately, I cannot reconcile my conscience with sending you to possibly certain death.
	
	Info_ClearChoices	(Info_Mod_Albert_TeleporterFurt);

	Info_AddChoice	(Info_Mod_Albert_TeleporterFurt, "All clear. When will I probably be able to use the portal?", Info_Mod_Albert_TeleporterFurt_B);
	Info_AddChoice	(Info_Mod_Albert_TeleporterFurt, "But Turendil has....", Info_Mod_Albert_TeleporterFurt_A);
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_B_15_00"); //All clear. When will I probably be able to use the portal?
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_01"); //I don't know yet. But in the meantime, you can see if you can find Furt.

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_02"); //I saw him running off to Old Camp.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_03"); //I heard he was seen near the old camp. Check it out there.
	};

	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_B_15_04"); //I'll be on my way right away.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_05"); //I'll let you know when the portal is secure.

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "The teleporter is too unsafe. I'm supposed to look for Furt near the old camp. I was supposed to check the perimeter.");
	
	Info_ClearChoices	(Info_Mod_Albert_TeleporterFurt);

	AI_StopProcessInfos	(self);

	B_KillNpc	(Mod_1626_VMG_Furt_MT);

	CreateInvItems	(Mod_1626_VMG_Furt_MT, ItMw_FurtsSchwert, 1); 
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_A_15_00"); //But Turendil has....
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_A_32_01"); //(interrupts) I don't care. This is about human lives.
	
	Info_Mod_Albert_TeleporterFurt_B();
};

INSTANCE Info_Mod_Albert_FurtTot (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_FurtTot_Condition;
	information	= Info_Mod_Albert_FurtTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Furt.";
};

FUNC INT Info_Mod_Albert_FurtTot_Condition()
{
	if (Mod_VMG_FurtTot == 1)
	&& (Npc_HasItems(hero, ItMw_FurtsSchwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_FurtTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_00"); //I found Furt.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_01"); //Where is he, then?
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_02"); //He's dead. I found him on an island near the Old Camp.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_03"); //Here's his gun as proof.

	B_GiveInvItems	(hero, self, ItMw_FurtsSchwert, 1);

	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_04"); //I honestly don't know whether to be happy or sad.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_05"); //After all, I thought I knew him for a while. I'll tell Turendil about it.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_06"); //Thank you for coming to me.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_07"); //What about the recharge stone?
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_08"); //Better come back tomorrow, then I might be able to teleport you.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_09"); //All clear.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_10"); //I'll see you around.

	Mod_VMG_AlbertFurtTot = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I told Albert about Furt's death. He told me to rest a day, then I could go to the teleporter.");
};

INSTANCE Info_Mod_Albert_TeleportWaldschluchtAktiv (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_TeleportWaldschluchtAktiv_Condition;
	information	= Info_Mod_Albert_TeleportWaldschluchtAktiv_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's it look like?";
};

FUNC INT Info_Mod_Albert_TeleportWaldschluchtAktiv_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_FurtTot))
	&& (Wld_GetDay() > Mod_VMG_AlbertFurtTot)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_TeleportWaldschluchtAktiv_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleportWaldschluchtAktiv_15_00"); //What's it look like?
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_01"); //I think we can give it a shot. Are you ready?
	AI_Output(hero, self, "Info_Mod_Albert_TeleportWaldschluchtAktiv_15_02"); //Yeah. Give me the stone.
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_03"); //I have already activated the portal. All you have to do is walk through it.
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_04"); //You still have a recharge stone here, though.

	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I'll try the teleporter. I hope I get out of Tugettso, too.");

	Wld_SendTrigger	("STAENDER_VMG_PFX");
	Wld_SendTrigger	("PLATTFORM_VMG_PFX");
	Wld_SendTrigger	("WRONGTELEPORTTOWALDSCHLUCHT");
};

INSTANCE Info_Mod_Albert_WaldschluchtBack (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_WaldschluchtBack_Condition;
	information	= Info_Mod_Albert_WaldschluchtBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_WaldschluchtBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_TradorTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_WaldschluchtBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_WaldschluchtBack_32_00"); //Ah, it seems to have worked.

	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
	Wld_SendTrigger	("WRONGTELEPORTTOWALDSCHLUCHT");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_4019_VMG_Faice_MT, "START");
};

INSTANCE Info_Mod_Albert_Pruefung (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Pruefung_Condition;
	information	= Info_Mod_Albert_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi. I need a new recharge stone.";
};

FUNC INT Info_Mod_Albert_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Pruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Pruefung_15_00"); //Hi. I need a new recharge stone.
	AI_Output(self, hero, "Info_Mod_Albert_Pruefung_32_01"); //I've heard you're finally learning our techniques to become a respected member. Very commendable. Here's the stone.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	AI_Output(hero, self, "Info_Mod_Albert_Pruefung_15_02"); //All right, I'll be on my way.
	AI_Output(self, hero, "Info_Mod_Albert_Pruefung_32_03"); //Good luck!
};

INSTANCE Info_Mod_Albert_Skinner (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Skinner_Condition;
	information	= Info_Mod_Albert_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm bringing you the roles you wanted to play (.... )";
};

FUNC INT Info_Mod_Albert_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_KnowsInfo(hero, Info_Mod_Myxir_Skinner))
	&& (Npc_HasItems(hero, ItSc_SumWolf) >= 1)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 1)
	&& (Npc_HasItems(hero, ItSc_SumDemon) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Skinner_15_00"); //I'll bring the rulers you asked for, shape-shifting magus.

	Npc_RemoveInvItems	(hero, ItSc_SumWolf, 1);
	Npc_RemoveInvItems	(hero, ItSc_SumGol, 1);
	Npc_RemoveInvItems	(hero, ItSc_SumDemon, 1);

	B_ShowGivenThings	("Written roles given");

	AI_Output(self, hero, "Info_Mod_Albert_Skinner_32_01"); //(joyful) Ahh, fabulous, then we can finally begin our studies. Here is the agreed payment, with a spell role additionally for the reliable messenger.

	CreateInvItems	(hero, ItMi_Gold, 800);
	CreateInvItems	(hero, ItSc_TrfRabbit, 2);

	B_ShowGivenThings	("Receiving gold and slogan rolls");

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "I was with Albert, who gave me an extra part of the saying. Now all I have to do is work out the rest with Skinner.");
};

INSTANCE Info_Mod_Albert_Amulett (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Amulett_Condition;
	information	= Info_Mod_Albert_Amulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, esteemed magician. I apologize for the incident.";
};

FUNC INT Info_Mod_Albert_Amulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Amulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Amulett_15_00"); //Hello, esteemed magician. I apologize for the incident. I have found the right amulet and carry it with me.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_01"); //(impatiently) Show me.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);

	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_02"); //Hmm... with Adanos, actually, that's it. My brothers will be very happy about it.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_03"); //As it will be of great benefit to our fellowship, I will give you the rest of the payment despite the incident.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_04"); //I hope, however, that this will not happen again in the future.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_TrfSheep, 1);
	CreateInvItems	(hero, ItSc_TrfKeiler, 1);

	B_ShowGivenThings	("300 gold and 2 reels preserved");

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I have given the amulet to Albert and should inform Dexter about it.");
};

INSTANCE Info_Mod_Albert_Oschust (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Oschust_Condition;
	information	= Info_Mod_Albert_Oschust_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've come to request your support.";
};

FUNC INT Info_Mod_Albert_Oschust_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_BanditenKidnapped))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	|| (Npc_KnowsInfo(hero, Info_Mod_UrShak_Oschust)))
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hexen))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Albert_HexenBack))
		{
		}
		else
		{
			return 1;
		};
	};
};

FUNC VOID Info_Mod_Albert_Oschust_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_00"); //I've come to request your support. Our two communities are in great danger.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_01"); //How so? So tell me what happened.
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_02"); //A traitor from our camp, the same one who forged the amulet, is responsible for everything.
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_03"); //He has created an ambush for us, through which many of our men have been captured by the orcs, with whom he makes common cause.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_04"); //What?! What baseness to get involved with these evil creatures.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_05"); //But how far away is this all about us? Do the orcs want to snatch the amulet from us now?
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_06"); //Your astuteness honors you, magician. That's exactly what the ogres have in mind.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_07"); //Then there's no time to lose. Wait here, I'll let my brothers know.

	if (!Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	{
		Wld_SendTrigger	("EVT_FOKUSTOR");
	};

	AI_GotoWP	(self, "WP_MT_ALBERT_ZU_VMGS");
	AI_GotoWP	(self, "OW_PATH_176_TEMPELFOCUS4");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_KommeMit (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_KommeMit_Condition;
	information	= Info_Mod_Albert_KommeMit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_KommeMit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Oschust))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_KommeMit_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_32_00"); //Well, I have consulted with my brothers and we have decided that I will accompany you to save your friends.

	if (!Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	{
		Wld_SendTrigger	("EVT_FOKUSTOR");
	};

	Info_ClearChoices	(Info_Mod_Albert_KommeMit);

	Info_AddChoice	(Info_Mod_Albert_KommeMit, "What, just the two of us?", Info_Mod_Albert_KommeMit_B);
	Info_AddChoice	(Info_Mod_Albert_KommeMit, "All right, all right.", Info_Mod_Albert_KommeMit_A);
};

FUNC VOID Info_Mod_Albert_KommeMit_C()
{
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_00"); //The extension's amulet is now used for this purpose.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_01"); //It has the following trait: Every spell cast by the wearer is experienced by all his combat companions, making it an extremely powerful tool.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_02"); //Without further ado, I will turn us into blood flies. Just follow me, I'll take us to the Orc City on the fastest way.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_03"); //After all I know from my previous excursions as a blood fly, there is an underground cave system where your friends should be... if they're still alive, it should be Adano's will.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_04"); //Now let's leave without delay.
	
	Info_ClearChoices	(Info_Mod_Albert_KommeMit);

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "So that's what the amulet is all about. Each spell cast by the carrier is cast on all his combat comrades-in-arms.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORMTOBLOODFLY");

	Mod_AlbertTransforms = 1;
};

FUNC VOID Info_Mod_Albert_KommeMit_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_KommeMit_B_15_00"); //What, just the two of us?
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_B_32_01"); //Here it is not brute force that can help us to succeed, but the skillful use of magic.
	
	Info_Mod_Albert_KommeMit_C();
};

FUNC VOID Info_Mod_Albert_KommeMit_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_KommeMit_A_15_00"); //All right, all right.
	
	Info_Mod_Albert_KommeMit_C();
};

INSTANCE Info_Mod_Albert_OrkCity (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_OrkCity_Condition;
	information	= Info_Mod_Albert_OrkCity_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OrkCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_KommeMit))
	&& (Mod_AlbertTransforms == 1)
	&& (Npc_GetDistToWP(self, "WP_MINENTAL_START_ORCCITY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OrkCity_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OrkCity_32_00"); //Well, this should be the entrance to the underground cave system.
	AI_Output(self, hero, "Info_Mod_Albert_OrkCity_32_01"); //Go ahead, you're the stronger fighter. I'll follow you.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Thanks to Albert's magical arts and the extension's amulet, we now enter the Orcs' underground cave system to find the prisoners.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_FluchtHappy (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_FluchtHappy_Condition;
	information	= Info_Mod_Albert_FluchtHappy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_FluchtHappy_Condition()
{
	if (Mod_AlbertTransforms == 6)
	&& (Npc_GetDistToWP(self, "WP_MINENTAL_START_ORCCITY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_FluchtHappy_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_FluchtHappy_32_00"); //So, from here I can teleport us all out of the orc city with this teleport saying scroll and the amulet.

	if (Npc_HasItems(hero, ItAm_MegaAmulett2) > 0)
	{
		B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);
		Mod_Extension_Angelegt = FALSE;
	};
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SURVIVOR");

	AI_Teleport (self, "OW_PATH_1_5_B");
	AI_Teleport (hero, "OW_PATH_1_5_B");
};

INSTANCE Info_Mod_Albert_Safety (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Safety_Condition;
	information	= Info_Mod_Albert_Safety_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Safety_Condition()
{
	if (Mod_AlbertTransforms == 6)
	&& (Npc_GetDistToWP(self, "OW_PATH_1_5_B") < 1000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Albert_FluchtHappy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Safety_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Safety_32_00"); //Well, that's a wrap. I will now return quickly to my brothers, tell them about what has happened and prepare for a possible attack.
	AI_Output(self, hero, "Info_Mod_Albert_Safety_32_01"); //You, on the other hand, would do well to hurry to your camp as the enemy can strike at any time.
	AI_Output(hero, self, "Info_Mod_Albert_Safety_15_02"); //Thank you for your support. But now is not the time for leisure. So let us leave without delay.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	if (Mod_OC_Esteban == 0)
	{
		B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "SURVIVOR");
		AI_Teleport	(Mod_948_BDT_Esteban_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Miguel == 0)
	{
		B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "SURVIVOR");
		AI_Teleport	(Mod_958_BDT_Miguel_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Juan == 0)
	{
		B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "SURVIVOR");
		AI_Teleport	(Mod_955_BDT_Juan_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Logan == 0)
	{
		B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "SURVIVOR");
		AI_Teleport	(Mod_957_BDT_Logan_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Skinner == 0)
	{
		B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "SURVIVOR");
		AI_Teleport	(Mod_964_BDT_Skinner_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Morgahard == 0)
	{
		B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "SURVIVOR");
		AI_Teleport	(Mod_790_BDT_Morgahard_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Bandit_01 == 0)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "SURVIVOR");
		AI_Teleport	(Mod_4074_BDT_Bandit_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Bandit_02 == 0)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "SURVIVOR");
		AI_Teleport	(Mod_4075_BDT_Bandit_MT, "OW_PATH_1_5_3");
	};
};

INSTANCE Info_Mod_Albert_Hexen (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Hexen_Condition;
	information	= Info_Mod_Albert_Hexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "We, the community of water, are in great distress and could well need the power of the amulet.";
};

FUNC INT Info_Mod_Albert_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Amulett))
	&& (Mod_WM_ArtefaktSammler == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Hexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hexen_15_00"); //We, the community of water, are in great distress and could well need the power of the amulet.
	AI_Output(self, hero, "Info_Mod_Albert_Hexen_32_01"); //I am happy to help our nature-loving brothers.
	AI_Output(self, hero, "Info_Mod_Albert_Hexen_32_02"); //However, I would like to ask you to bring the amulet back to us when you have overcome your problem.

	B_GiveInvItems	(self, hero, ItAm_MegaAmulett2, 1);
};

INSTANCE Info_Mod_Albert_HexenBack (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_HexenBack_Condition;
	information	= Info_Mod_Albert_HexenBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'll bring the amulet back to you.";
};

FUNC INT Info_Mod_Albert_HexenBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hexen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cronos_Angriff_02))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_HexenBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_HexenBack_15_00"); //I'll bring the amulet back to you.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);

	AI_Output(self, hero, "Info_Mod_Albert_HexenBack_32_01"); //Thank you, thank you. It seems to have helped you very much.
};

INSTANCE Info_Mod_Albert_Asylanten (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Asylanten_Condition;
	information	= Info_Mod_Albert_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come to the Minental?";
};

FUNC INT Info_Mod_Albert_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_15_00"); //Why did you come to the Minental?
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_32_01"); //In our homeland dimension, we were afflicted by a veritable army of goblins.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_32_02"); //Due to an old teleporter, most of us were able to stand out from here and are now looking for help.

	Info_ClearChoices	(Info_Mod_Albert_Asylanten);

	Info_AddChoice	(Info_Mod_Albert_Asylanten, "You don't look like you're looking for help.", Info_Mod_Albert_Asylanten_B);
	Info_AddChoice	(Info_Mod_Albert_Asylanten, "What do the retarded do?", Info_Mod_Albert_Asylanten_A);
};

FUNC VOID Info_Mod_Albert_Asylanten_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_B_15_00"); //You don't look like you're looking for help.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_01"); //It's hopeless. We're in an area with a strange human race.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_02"); //The first group we came across hides downstream behind a high palisade.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_03"); //The guard who asked us why we came here laughed out loudly and wished Beliar to us.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_04"); //Another group welcomed us heartily and listened to our lamentation, then withdrew smoking back to a meeting and sent us home with a grave expression.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_05"); //Apart from individual hunters or outlaws, we couldn't find anyone else to ask.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_06"); //Since then, we've had no choice but to hope.
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_B_15_07"); //That doesn't sound enviable.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "The ruins by the sea are home to magicians of change who are waiting for help for their homeworld. They seem to be disappointed with the Old Camp and the Brotherhood, but show no aggressive potential.");

	Info_ClearChoices	(Info_Mod_Albert_Asylanten);
};

FUNC VOID Info_Mod_Albert_Asylanten_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_A_15_00"); //What do the retarded do?
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_A_32_01"); //They'll defend our village if they have to. We're not gonna give it up without a fight!

	Info_Mod_Albert_Asylanten_B();
};

INSTANCE Info_Mod_Albert_Fokus (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Fokus_Condition;
	information	= Info_Mod_Albert_Fokus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Fokus_Condition()
{
	if (Mod_Fokus_Kloster == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Fokus_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_00"); //What are you doing up here?
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_01"); //I'm looking for a magical focus. The Water Magicians had placed it on the pedestal next to the platform, but I can't see it.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_02"); //Oh, yeah, I remember him well. He's caused us some trouble.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_03"); //There's a protective spell on him. Otherwise it is completely harmless.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_04"); //Good to know. Several of us have tried to lift it from the pedestal and have bruised and even broken bones.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_05"); //Where's the focus now?
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_06"); //We threw it down the rock into the sea.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_07"); //Anyway, we would have done it if it had gone after me.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_08"); //So we just put a box over it and closed it tightly afterwards. It's one of those chests over there.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_09"); //Can I take the focus with me?
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_10"); //Hold on a second. That wasn't the only problem we had.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_11"); //Yesterday an eerie figure of the path suddenly came and asked us about the part.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_12"); //I got all dizzy when the guy showed up. I would never have told him we still have the focus!
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_13"); //That's why I lied to him about actually throwing him into the sea. That's where he left.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_14"); //Third problem: We wanted to get rid of the focus ourselves as soon as possible.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_15"); //Two of us grabbed the chest just to remember that the protection spell has now jumped over to them!
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_16"); //They've flown by the meter.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_17"); //So if you manage to break the spell, please, please, please, take the focus with you.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "With the focus in the ruins of the monastery, I almost had a creepy figure in front of me. The focus rests in one of Albert's chests. To get to it, however, I must first break the protection spell that jumped to the chest.");
};

INSTANCE Info_Mod_Albert_WerBistDu (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_WerBistDu_Condition;
	information	= Info_Mod_Albert_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Albert_WerBistDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albert_WerBistDu_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_00"); //My name is Albert. I'm guarding this rig.
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_15_01"); //What kind of platform is this?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_02"); //It used to be a frame for the focus stones, I heard.
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_03"); //We use it as a teleporter to Tugettso and back.

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	Info_AddChoice	(Info_Mod_Albert_WerBistDu, "How does the Teleporter work?", Info_Mod_Albert_WerBistDu_B);
	Info_AddChoice	(Info_Mod_Albert_WerBistDu, "What is Tugettso?", Info_Mod_Albert_WerBistDu_A);
};

FUNC VOID Info_Mod_Albert_WerBistDu_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_B_15_00"); //How does the Teleporter work?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_B_32_01"); //I'll show you when you're ready.

	Mod_Albert_WBD += 1;

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	if (Mod_Albert_WBD == 1)
	{
		Info_AddChoice	(Info_Mod_Albert_WerBistDu, "What is Tugettso?", Info_Mod_Albert_WerBistDu_A);
	};
};

FUNC VOID Info_Mod_Albert_WerBistDu_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_A_15_00"); //What is Tugettso?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_A_32_01"); //Our home village. If you want to know more, ask Turendil.

	Mod_Albert_WBD += 1;

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	if (Mod_Albert_WBD == 1)
	{
		Info_AddChoice	(Info_Mod_Albert_WerBistDu, "How does the Teleporter work?", Info_Mod_Albert_WerBistDu_B);
	};
};

var int Mod_Knows_AlbertTeacher;

INSTANCE Info_Mod_Albert_Lernen_MANA (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Lernen_MANA_Condition;
	information	= Info_Mod_Albert_Lernen_MANA_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magical powers.";
};

FUNC INT Info_Mod_Albert_Lernen_MANA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hi))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_Info()
{
	if (Mod_Knows_AlbertTeacher == FALSE)
	{
		Mod_Knows_AlbertTeacher = TRUE;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_VM, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Albert can help me increase my magical power.");
	};

	AI_Output(hero, self, "Info_Mod_Albert_Lernen_MANA_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Albert_Lernen_MANA_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

INSTANCE Info_Mod_Albert_Pickpocket (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Pickpocket_Condition;
	information	= Info_Mod_Albert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Albert_Pickpocket_Condition()
{
	C_Beklauen	(145, ItSc_TrfShadowbeast, 1);
};

FUNC VOID Info_Mod_Albert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

	Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_BACK, Info_Mod_Albert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Albert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Albert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
};

FUNC VOID Info_Mod_Albert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Albert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Albert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Albert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Albert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Albert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Albert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Albert_EXIT (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_EXIT_Condition;
	information	= Info_Mod_Albert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Albert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
