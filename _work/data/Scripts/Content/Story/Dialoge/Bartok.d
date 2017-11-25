var int MerkLebenspunkteBartok;
var int MerkLebenspunkteHeldBartok;

INSTANCE Info_Mod_Bartok_Bromor (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Bromor_Condition;
	information	= Info_Mod_Bartok_Bromor_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you don't want to pay.";
};

FUNC INT Info_Mod_Bartok_Bromor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Bilgot))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Bromor_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Bromor_15_00"); //I hear you don't want to pay.

	Mod_BartokZufallZahlen = r_max(99);

	if (Mod_BartokZufallZahlen >= 80)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_01"); //Why would you do that? Here's the money.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		Mod_BilgotBromorBartok = 1;

		B_Göttergefallen(2, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_02"); //Yeah, why should I pay?
		AI_Output(hero, self, "Info_Mod_Bartok_Bromor_15_03"); //Because if you don't, I'll beat your face off.
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_04"); //Well, wait.

		AI_StopProcessInfos	(self);

		B_Attack	(self, hero, AR_NONE, 1);
	};
};

INSTANCE Info_Mod_Bartok_Umgehauen (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Umgehauen_Condition;
	information	= Info_Mod_Bartok_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartok_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Bromor))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Umgehauen_04_00"); //Jesus Christ! You got a hell of a punch on you. Here's the gold.

			Mod_BilgotBromorBartok = 1;

			Mod_BartokUeberzeugt = 1;

			B_GiveInvItems	(self, hero, ItMi_Gold, 500);

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Umgehauen_04_01"); //Well, that was nothing.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

INSTANCE Info_Mod_Bartok_Arbeite (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Arbeite_Condition;
	information	= Info_Mod_Bartok_Arbeite_Info;
	permanent	= 0;
	important	= 0;
	description	= "Scar sent me.";
};

FUNC INT Info_Mod_Bartok_Arbeite_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scar_Jagdtrophaeen_SollIch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_15_00"); //Scar sent me. I want you to go hunting again.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_04_01"); //Why would I do that?
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_15_02"); //Because l--

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... or I'll kick your face in.", Info_Mod_Bartok_Arbeite_AufsMaul);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... I'll give you money for it.", Info_Mod_Bartok_Arbeite_Geld);
};

FUNC VOID Info_Mod_Bartok_Arbeite_AufsMaul()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_AufsMaul_15_00"); //... or I'll kick your face in.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_04_01"); //I want to see that.

	var int MerkLebenspunkteBartok;
	var int MerkLebenspunkteHeldBartok;

	MerkLebenspunkteBartok	=	self.attribute[ATR_HITPOINTS];
	MerkLebenspunkteHeldBartok	=	hero.attribute[ATR_HITPOINTS];

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_15_00"); //... I'll give you money for it.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_04_01"); //How much money are you gonna give me?

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "Nothing at all.", Info_Mod_Bartok_Arbeite_Geld_Nichts);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "1,000 gold.", Info_Mod_Bartok_Arbeite_Geld_1000);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "500 gold.", Info_Mod_Bartok_Arbeite_Geld_500);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "200 gold.", Info_Mod_Bartok_Arbeite_Geld_200);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "100 gold.", Info_Mod_Bartok_Arbeite_Geld_100);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "50 gold.", Info_Mod_Bartok_Arbeite_Geld_50);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_Nichts()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_Nichts_15_00"); //Nothing at all.

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... or I'll kick your face in.", Info_Mod_Bartok_Arbeite_AufsMaul);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... I'll give you money for it.", Info_Mod_Bartok_Arbeite_Geld);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_1000()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_1000_15_00"); //1,000 gold coins.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_1000_04_01"); //All right, all right. Give me the gold.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_1000_15_02"); //Here it is here.

		B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_1000_04_03"); //Du willst mich wohl verarschen. Du hast gar keine 1,000 gold coins. Na warte.

		MerkLebenspunkteBartok	=	self.attribute[ATR_HITPOINTS];
		MerkLebenspunkteHeldBartok	=	hero.attribute[ATR_HITPOINTS];

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_500()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_500_15_00"); //500 gold coins.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_500_04_01"); //All right, all right. Give me the gold.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_500_15_02"); //Here it is here.

		B_GiveInvItems	(hero, self, ItMi_Gold, 500);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_500_04_03"); //Du willst mich wohl verarschen. Du hast gar keine 500 gold coins. Na warte.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_200()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_200_15_00"); //200 gold coins.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_200_04_01"); //All right, all right. But that is also the minimum. Give me the gold.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_200_15_02"); //Here it is here.

		B_GiveInvItems	(hero, self, ItMi_Gold, 200);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_200_04_03"); //Du willst mich wohl verarschen. Du hast gar keine 200 gold coins. Na warte.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_100()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_00"); //100 gold coins.

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_01"); //Give me the gold first.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_02"); //Here it is here.

		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_03"); //I changed my mind. I'm not going back to work.
		
		if (Npc_HasItems(hero, ItMi_Gold) >= 1)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_04"); //I'm going to get the rest of your gold.

			AI_StopProcessInfos	(self);
			B_Attack	(self, hero, AR_NONE, 1);
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_05"); //You lousy cheat. Wait, I'll show you.

			AI_StopProcessInfos	(self);
			B_Attack	(self, hero, AR_NONE, 1);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_06"); //Du willst mich wohl verarschen. Du hast keine 100 gold coins. Na warte.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_50()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_50_15_00"); //50 gold coins.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_50_04_01"); //Are you kidding me? I'm not gonna lift my fingers for 50 gold coins.

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "Nothing at all.", Info_Mod_Bartok_Arbeite_Geld_Nichts);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "1,000 gold.", Info_Mod_Bartok_Arbeite_Geld_1000);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "500 gold.", Info_Mod_Bartok_Arbeite_Geld_500);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "200 gold.", Info_Mod_Bartok_Arbeite_Geld_200);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "100 gold.", Info_Mod_Bartok_Arbeite_Geld_100);
};

INSTANCE Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Condition;
	information	= Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Arbeite))
	{	
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_04_00"); //Jesus Christ! You got a hell of a punch on you.

			Mod_BartokUeberzeugt = 1;

			B_Göttergefallen(3, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_04_01"); //Well, that was nothing.

			Mod_KampfGegenBartokVerloren = 1;
		};		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

INSTANCE Info_Mod_Bartok_ArbeiteWieder (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_ArbeiteWieder_Condition;
	information	= Info_Mod_Bartok_ArbeiteWieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you working again?";
};

FUNC INT Info_Mod_Bartok_ArbeiteWieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Arbeite))
	&& ((Mod_BartokUeberzeugt == 1)
	|| ((Wld_GetDay() > Mod_SonjaHilftGegenBartok)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_ArbeiteWieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_ArbeiteWieder_15_00"); //Are you working again?
	AI_Output(self, hero, "Info_Mod_Bartok_ArbeiteWieder_04_01"); //Yeah. I'll be on my way right away.

	B_StartOtherRoutine	(self,"ERWISCHT");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "DOWN");

	Mod_BilgotBromorBartok = 1;

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(50);

	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))
	{
		B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "START");
	};

	self.flags = 2;

	B_LogEntry	(TOPIC_MOD_FAULERJÄGER, "I managed to convince Bartok to work again.");
};

INSTANCE Info_Mod_Bartok_Stimme (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Stimme_Condition;
	information	= Info_Mod_Bartok_Stimme_Info;
	permanent	= 0;
	important	= 0;
	description	= "So after the women, the beer now.";
};

FUNC INT Info_Mod_Bartok_Stimme_Condition()
{
	if (Mod_BartokUeberzeugt == 1)
	&& (Npc_GetDistToWP(self, "NW_CITY_BEER_04") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Stimme_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_00"); //So after the women, the beer now.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_01"); //Worked hard today, you know. I'm going to get a bump now.
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_02"); //What did you take?
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_03"); //Hihi. Knew what would be cool? A suit of bogweed!
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_04"); //Needless to say, it doesn't burn easily and so on.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_05"); //But if you're on the road and you don't have anything to do, you can just twist a stem out of your sleeve.
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_06"); //Soon there will be nothing left of your armour.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_07"); //I'll have a new one made. Hihi.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_08"); //I'm serious, brother - get me some armor, and you're a rich man.

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);

	Info_AddChoice	(Info_Mod_Bartok_Stimme, "I might actually make it.", Info_Mod_Bartok_Stimme_B);
	Info_AddChoice	(Info_Mod_Bartok_Stimme, "You're out of your mind.", Info_Mod_Bartok_Stimme_A);
};

FUNC VOID Info_Mod_Bartok_Stimme_B()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_B_15_00"); //I might actually make it.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_B_04_01"); //Just tell Harad to take care of it.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_B_04_02"); //Here's my savings. I want him to think of something decent.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	Log_CreateTopic	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Bartok has promised me wealth when I go to Harad and put his savings into a bog weed armor.");

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);

	Mod_Bartok_Ruestung_Day = 1;
};

FUNC VOID Info_Mod_Bartok_Stimme_A()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_A_15_00"); //You're out of your mind.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_A_04_01"); //I call that philosophy. (laughs)

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);
};

INSTANCE Info_Mod_Bartok_Ruestung (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Ruestung_Condition;
	information	= Info_Mod_Bartok_Ruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your armour will be ready soon.";
};

FUNC INT Info_Mod_Bartok_Ruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Sumpfkrautruestung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Ruestung_15_00"); //Your armour will be ready soon.
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_01"); //What kind of armor?
	AI_Output(hero, self, "Info_Mod_Bartok_Ruestung_15_02"); //Don't you remember? The weed armor?
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_03"); //Have you been smoking or something? I've never heard of swamp herb gear. And I don't want to hear about it.
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_04"); //My fucking head is buzzing and all my gold is gone. That's enough for now.

	Mod_Bartok_Ruestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Bartok_ImPuff (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_ImPuff_Condition;
	information	= Info_Mod_Bartok_ImPuff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, what are you doing here?";
};

FUNC INT Info_Mod_Bartok_ImPuff_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bartok_ArbeiteWieder))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_ImPuff_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_ImPuff_15_00"); //Well, what are you doing here?
	AI_Output(self, hero, "Info_Mod_Bartok_ImPuff_04_01"); //What do you think you're doing in a whorehouse? One more question and I'll smash your face in!
};

INSTANCE Info_Mod_Bartok_Lehrer (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Lehrer_Condition;
	information	= Info_Mod_Bartok_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Bartok_Lehrer_Condition()
{
	if (Mod_BartokUeberzeugt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Bartok_Lehrer_04_01"); //I can show you how to skin animals.
};

INSTANCE Info_Mod_Bartok_HautAbziehen (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_HautAbziehen_Condition;
	information	= Info_Mod_Bartok_HautAbziehen_Info;
	permanent	= 1;
	important	= 0;
	description	= "What do I have to pay attention to when skinning reptiles? (4 LP)";
};

FUNC INT Info_Mod_Bartok_HautAbziehen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		 Info_Mod_Bartok_HautAbziehen.description = "What do I have to pay attention to when skinning reptiles? (400 Gold)";
	}
	else
	{
		 Info_Mod_Bartok_HautAbziehen.description = "What do I have to pay attention to when skinning reptiles? (4 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Lehrer))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_HautAbziehen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_HautAbziehen_15_00"); //What do I have to pay attention to when skinning reptiles?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Bartok_HautAbziehen_04_01"); //When you cut the skin on the sides, it will detach itself. You shouldn't have a problem skinning lizards from now on.
	};
};

INSTANCE Info_Mod_Bartok_Pickpocket (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Pickpocket_Condition;
	information	= Info_Mod_Bartok_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bartok_Pickpocket_Condition()
{
	C_Beklauen	(50, ItAt_Teeth, 3);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

	Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_BACK, Info_Mod_Bartok_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bartok_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bartok_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bartok_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bartok_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bartok_EXIT (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_EXIT_Condition;
	information	= Info_Mod_Bartok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bartok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
