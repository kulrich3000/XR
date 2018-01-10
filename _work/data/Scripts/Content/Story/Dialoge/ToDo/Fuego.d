INSTANCE Info_Mod_Fuego_Lehrer (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Lehrer_Condition;
	information	= Info_Mod_Fuego_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me?";
};

FUNC INT Info_Mod_Fuego_Lehrer_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Lehrer_15_00"); //Can you teach me?

	if ((Mod_Gottstatus == 9)
	|| (Mod_Gottstatus == 10)
	|| (Mod_Gottstatus == 11)
	|| (Mod_Gottstatus == 12))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_01"); //Oh, yeah. I can show you how to expand your magical power.

		Mod_FuegoLehrer = 1;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Fuego can help me increase my MANA.");
	}
	else if ((Mod_Gottstatus == 1)
	|| (Mod_Gottstatus == 2)
	|| (Mod_Gottstatus == 3)
	|| (Mod_Gottstatus == 4))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_02"); //I teach only honorable students. You're on the wrong track.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_03"); //For a donation to my order, I will teach you to increase your magical power.

		Mod_FuegoLehrer = 2;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Fuego can help me increase my MANA.");
	};
};

INSTANCE Info_Mod_Fuego_AdanosLernen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_AdanosLernen_Condition;
	information	= Info_Mod_Fuego_AdanosLernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Teach me! Pay (100 Gold)";
};

FUNC INT Info_Mod_Fuego_AdanosLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_Lehrer))
	&& (Mod_FuegoLehrer == 2)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_AdanosLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_AdanosLernen_15_00"); //Teach me!

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Mod_FuegoLehrer = 1;
};

INSTANCE Info_Mod_Fuego_BrokenRune (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_BrokenRune_Condition;
	information	= Info_Mod_Fuego_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Innos, keeper of the fire.";
};                       

FUNC INT Info_Mod_Fuego_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Idrico_BrokenRune))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_00"); //Innos, keeper of the fire.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_01"); //The light is with you. What brings you to me?
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_02"); //I have a broken rune here. Can your magic fix them?
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_03"); //Let me see that. Hm... clean break. Would say a teleport spell.
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_04"); //And? Can you help me?
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_05"); //No. It's not our magic. A water magician should be able to do better.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_06"); //A water magician lives in the slum. According to his age, he should have all consecrations.
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_07"); //I've heard of him. I'll ask him.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_08"); //Do that. And Innos be with you.
};

INSTANCE Info_Mod_Fuego_Unruhen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Unruhen_Condition;
	information	= Info_Mod_Fuego_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Fuego_Unruhen_Condition()
{
	if (Mod_REL_Stadthalter == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_00"); //Yes, thank you very much for giving us Luke.
	AI_Output(hero, self, "Info_Mod_Fuego_Unruhen_15_01"); //Is there a problem with that?
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_02"); //Yes, indeed. He gave Elvira and I the choice to leave Khorata or change faith.
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_03"); //What a decision! We'll pack up and leave today.
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_04"); //Don't you ever come back to us again!

	Mod_REL_FuegoDay = Wld_GetDay();
};

INSTANCE Info_Mod_Fuego_Blutkelch (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Blutkelch_Condition;
	information	= Info_Mod_Fuego_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a cup. A cup of blood.";
};                       

FUNC INT Info_Mod_Fuego_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Blutkelch))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Blutkelch_15_00"); //I'm looking for a cup. A cup of blood.
	AI_Output(self, hero, "Info_Mod_Fuego_Blutkelch_32_01"); //Never seen, never heard of it.
	AI_Output(self, hero, "Info_Mod_Fuego_Blutkelch_32_02"); //But I could ask Innos for an inspiration. For a small donation....
	AI_Output(hero, self, "Info_Mod_Fuego_Blutkelch_15_03"); //All right, all right. See you around.
};

var int Mod_Fuego_ElviraGoodInfo;

INSTANCE Info_Mod_Fuego_ElviraKey (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_ElviraKey_Condition;
	information	= Info_Mod_Fuego_ElviraKey_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can you tell me something about Elvira?";
};                       

FUNC INT Info_Mod_Fuego_ElviraKey_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (!Mod_Fuego_ElviraGoodInfo)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_ElviraKey_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_00"); //Can you tell me something about Elvira?

	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_ElviraKey2))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_01"); //Of course, it seems unusual to a believer Innos to see a woman in this role.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_02"); //But I can assure you that she is carrying out her duties as an Elect Inno with the utmost conscientiousness.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_03"); //Only... well...
		AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_04"); //Yes?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_05"); //She always drinks the monastery wine alcohol-free. Extra bottle of it in her trunk.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_06"); //Of course, this is not really reprehensible, but rather a habit that makes people smile.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_07"); //But I've already talked too much. Innos accompany you on your way.
		
		B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "Hm, Fuego says that Elvira only drinks non-alcoholic monastery wine, which she keeps in her chest. Whether a little mix-up might help....");
		
		Mod_Fuego_ElviraGoodInfo = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_08"); //She is a true Chosen Inno, righteous and always faithful to her duty.
		AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_09"); //Can you tell me anything more about her?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_10"); //What do you mean? What's your point?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_11"); //Whatever it is, I'd advise you not to get disrespectful.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_12"); //Now go away! I've got work to do.
	};
};

INSTANCE Info_Mod_Fuego_ElviraKey2 (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_ElviraKey2_Condition;
	information	= Info_Mod_Fuego_ElviraKey2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to donate Innos. (100 Gold)";
};                       

FUNC INT Info_Mod_Fuego_ElviraKey2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fuego_ElviraKey))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_ElviraKey2_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey2_15_00"); //I want to donate Innos.
	AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey2_32_01"); //I gratefully accept your generous gift for Innos and his church.

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Fuego_DickeLuft (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_DickeLuft_Condition;
	information	= Info_Mod_Fuego_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have conversion rolls?";
};                       

FUNC INT Info_Mod_Fuego_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_00"); //Do you have conversion rolls?
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_01"); //I still have a few left. What can I get you?
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_02"); //Into a sheep.
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_03"); //Into a sheep? Why would you turn into something like that?
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_04"); //It's almost as stupid as a metamorphosis into a meat bug!
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_05"); //I suppose so.
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_06"); //I really can't help you there. I only have useful spells.
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_07"); //All clear.
};

INSTANCE Info_Mod_Fuego_Freudenspender (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Freudenspender_Condition;
	information	= Info_Mod_Fuego_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you need joy dispensers?";
};                       

FUNC INT Info_Mod_Fuego_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Freudenspender_15_00"); //Do you need joy dispensers?
	AI_Output(self, hero, "Info_Mod_Fuego_Freudenspender_32_01"); //Well, I'm actually forbidden to, but if you keep it to yourself...
	AI_Output(hero, self, "Info_Mod_Fuego_Freudenspender_15_02"); //Of course, of course.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Fuego_FireMage (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_FireMage_Condition;
	information	= Info_Mod_Fuego_FireMage_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Fuego_FireMage_Condition()
{
	if (hero.guild == GIL_VLK)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_FireMage_Info()
{
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_00"); //It's nice to meet like-minded people. Are you from Khorinis?
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_15_01"); //Not exactly. But let's pretend. You guys have a tough time in Khorata?
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_02"); //You could say that. Innos forgive me, but this is a godless place. The people here believe in their possessions and wealth, nothing else.
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_15_03"); //Sounds like a lot of work....
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_04"); //Wherever you see the possibility of teaching the right faith or at least some decency, I ask you to take action. You'd make our hard test of Innos a little easier.
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
	
	Info_AddChoice(Info_Mod_Fuego_FireMage, "Let's have a look. Actually, I like the way it is.", Info_Mod_Fuego_FireMage_B);
	Info_AddChoice(Info_Mod_Fuego_FireMage, "I'm trying hard. I promise.", Info_Mod_Fuego_FireMage_A);
};

FUNC VOID Info_Mod_Fuego_FireMage_B()
{
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_B_15_00"); //Let's have a look. Actually, I like the way it is.
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
};

FUNC VOID Info_Mod_Fuego_FireMage_A()
{
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_A_15_00"); //I'm trying hard. I promise.
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_A_32_01"); //Then take this with you on your travels, in Innos' name!
	
	B_GiveInvItems(self, hero, ItPo_Mana_02, 1);
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
};

INSTANCE Info_Mod_Fuego_Lernen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Lernen_Condition;
	information	= Info_Mod_Fuego_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to expand my magical power.";
};

FUNC INT Info_Mod_Fuego_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_Lehrer))
	&& (Mod_RealMana < 200)
	&& (Mod_FuegoLehrer == 1)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Lernen_15_00"); //I want to expand my magical power.

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

FUNC VOID Info_Mod_Fuego_Lernen_BACK()
{
	if (Mod_RealMana	>=	200)
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lernen_BACK_05_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Fuego_Lernen);
};

FUNC VOID Info_Mod_Fuego_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 200);

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

FUNC VOID Info_Mod_Fuego_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 200);

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

INSTANCE Info_Mod_Fuego_Pickpocket (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Pickpocket_Condition;
	information	= Info_Mod_Fuego_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Fuego_Pickpocket_Condition()
{
	C_Beklauen	(157, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

	Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_BACK, Info_Mod_Fuego_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fuego_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fuego_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fuego_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fuego_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fuego_EXIT (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_EXIT_Condition;
	information	= Info_Mod_Fuego_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fuego_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fuego_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
