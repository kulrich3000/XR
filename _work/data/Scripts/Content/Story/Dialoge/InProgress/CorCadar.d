INSTANCE Info_Mod_Cadar_Hi (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Hi_Condition;
	information	= Info_Mod_Cadar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_16_00"); //Ah, a new face in our swamp. You're welcome.
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_16_01"); //I am Cor Cadar, spiritual leader of our community.
};

INSTANCE Info_Mod_Cadar_Eroberung_02 (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Eroberung_16_Condition;
	information	= Info_Mod_Cadar_Eroberung_16_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Eroberung_16_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Eroberung_16_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Eroberung_16_02_00"); //I'll provide you with some novice skirts. You pretend to deliver Bartholo's bogweed and go to the camp.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cadar_Asylanten (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Asylanten_Condition;
	information	= Info_Mod_Cadar_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are the Brotherhood's plans for the future?";
};

FUNC INT Info_Mod_Cadar_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_00"); //What are the Brotherhood's plans for the future?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_01"); //(used) plans? The future itself will show us what it holds in store for us.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_02"); //As long as we continue to live a normal life: cultivating swampweed, smoking once in a while and sharing our spiritual experiences.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_03"); //So you're not planning to leave the Minental?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_04"); //No.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_05"); //And how do you feel about the other groups in the Minental?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_06"); //All those who want to do business with us are welcome guests.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_07"); //However, I have heard that the old camp has lost much of its former status, and relations with the new camp have never been as strong as we would have liked.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_08"); //Thanks for the information.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_16_09"); //May the sleep... May the stars be good for you.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "There is hardly any danger from the Brotherhood. The Knights Templars and Novices are happy with their present life and do not hold a grudge against another group.");
};

INSTANCE Info_Mod_Cadar_Woher (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Woher_Condition;
	information	= Info_Mod_Cadar_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "How did you become the spiritual leader of the Brotherhood?";
};

FUNC INT Info_Mod_Cadar_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Woher_15_00"); //How did you become the spiritual leader of the Brotherhood?
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_16_01"); //Before I was thrown into the barrier, I was a fire magician to the king.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_16_02"); //However, I was also interested in other mage directions. I was particularly fond of orkmagic, but in return I had to support it.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_16_03"); //Eventually they found out that I supported the orcs and threw me into the barrier.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_16_04"); //I then went to the Brotherhood to learn this kind of magic and soon afterwards became Cor Kalom's deputy.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_16_05"); //After his and Y' Berion's death, I was the highest guru in the camp and therefore became the spiritual leader of the Brotherhood.
};

INSTANCE Info_Mod_Cadar_Lehrer (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Lehrer_Condition;
	information	= Info_Mod_Cadar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Cadar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& ((Templer_Dabei == 1)
	|| (Guru_Dabei == 1))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cadar_Lehrer_16_01"); //I can show you how to learn more from your experience, which one you can use to learn more skills.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Cor Cadar can help me draw more knowledge from my experience.");
};

INSTANCE Info_Mod_Cadar_SchnellesLernen_Perk (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_SchnellesLernen_Perk_Condition;
	information	= Info_Mod_Cadar_SchnellesLernen_Perk_Info;
	permanent	= 1;
	important	= 0;
	description	= "Perc: Fast learning (5 LP)";
};

FUNC INT Info_Mod_Cadar_SchnellesLernen_Perk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Lehrer))
	&& (SchnellesLernen_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_SchnellesLernen_Perk_Info()
{
	if (hero.lp > 4)
	{
		AI_Output(self, hero, "Info_Mod_Cadar_SchnellesLernen_Perk_16_00"); //Now you will be able to draw more knowledge from your experience. Use this knowledge wisely.

		SchnellesLernen_Perk = TRUE;

		hero.lp -= 5;
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
};

INSTANCE Info_Mod_Cadar_Pickpocket (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Pickpocket_Condition;
	information	= Info_Mod_Cadar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Cadar_Pickpocket_Condition()
{
	C_Beklauen	(176, ItPo_Mana_Addon_04, 3);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_BACK, Info_Mod_Cadar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cadar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cadar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cadar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cadar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cadar_EXIT (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_EXIT_Condition;
	information	= Info_Mod_Cadar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cadar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
