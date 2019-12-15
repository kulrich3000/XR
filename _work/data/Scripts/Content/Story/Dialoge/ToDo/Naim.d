INSTANCE Info_Mod_Naim_Hi (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_Hi_Condition;
	information	= Info_Mod_Naim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem jeden z kubków na krew.";
};

FUNC INT Info_Mod_Naim_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_00"); //Dostalem jeden z kubków na krew.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Naim_Hi_13_01"); //Lagodna praca, chlopak. Slyszelismy, ze juz przyniósles pierwszy puchar.
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_02"); //Tak wlasnie jest.
	AI_Output(self, hero, "Info_Mod_Naim_Hi_13_03"); //Jesli nadal bedziesz to robic, pójdziesz daleko. Niniejszym oswiadczam, ze jest pan pierwszy. Kandydat. Oto Twoja zbroja.
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_04"); //Dziekuje bardzo, bardzo dobrej radzie.

	if (Mod_ASS_Krieger == 1)
	{
		CreateInvItems	(hero, ItAr_Assassine_01, 1);

		B_ShowGivenThings	("Zbroja zabójcza otrzymana");

		AI_Output(self, hero, "Info_Mod_Naim_Hi_13_05"); //Teraz zglos sie do Azhara. Mysle, ze ma klopoty.

		B_SetTopicStatus	(TOPIC_MOD_ASS_KRIEGER, LOG_SUCCESS);
	}
	else
	{
		CreateInvItems	(hero, ItAr_Assassine_02, 1);

		B_ShowGivenThings	("Otrzymana szata zabójcy");

		AI_Output(self, hero, "Info_Mod_Naim_Hi_13_06"); //Teraz zglos sie do Kais. Mysle, ze ma klopoty.

		B_SetTopicStatus	(TOPIC_MOD_ASS_MAGIER, LOG_SUCCESS);
	};

	B_SetTopicStatus	(TOPIC_MOD_ASS_BLUTKELCH, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Naim_Comeback (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_Comeback_Condition;
	information	= Info_Mod_Naim_Comeback_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Naim_Comeback_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Comeback))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_Comeback_Info()
{
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_00"); //Slysze, ze zrobiles dla spolecznosci niesamowite rzeczy.
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_01"); //Jesli uda nam sie wrócic na kontynent, czy przyjedziecie z nami? Wsadzilem cie do rady.
	AI_Output(hero, self, "Info_Mod_Naim_Comeback_15_02"); //Atrakcyjna oferta. Z pewnoscia wróce kiedys do ojczyzny.
	AI_Output(hero, self, "Info_Mod_Naim_Comeback_15_03"); //Ale na razie mam jeszcze prace do wykonania nad khorynami. Dziekuje, dobra rada.
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_04"); //Twój telefon, magik. Nastepnie niniejszym zwalniam Pana/Pania ze sluzby zabójców. Idz wlasna droga.

	B_GivePlayerXP	(2000);

	Mod_ASS_Comeback = Wld_GetDay();
};

INSTANCE Info_Mod_Naim_GotoAzhar (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_GotoAzhar_Condition;
	information	= Info_Mod_Naim_GotoAzhar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Naim_GotoAzhar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Azhar_Later))
	&& (Mod_ASS_Krieger == 1)
	&& (Kapitel >= 5)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_GotoAzhar_Info()
{
	AI_Output(self, hero, "Info_Mod_Naim_GotoAzhar_13_00"); //Czy nie powiedzialem wam, zebyscie zglosili sie do Azhara?
	AI_Output(hero, self, "Info_Mod_Naim_GotoAzhar_15_01"); //Tak jest. Ja tez bylem z nim, ale on nie chcial ode mnie niczego.
	AI_Output(self, hero, "Info_Mod_Naim_GotoAzhar_13_02"); //Teraz to robie. Sprawy wazne.
	AI_Output(hero, self, "Info_Mod_Naim_GotoAzhar_15_03"); //Spiesze sie....
};

INSTANCE Info_Mod_Naim_NachSchlacht (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_NachSchlacht_Condition;
	information	= Info_Mod_Naim_NachSchlacht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Naim_NachSchlacht_Condition()
{
	if (Mod_ASS_Schlacht == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_NachSchlacht_Info()
{
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht_13_00"); //Pospiesznie, potrzebuje kielichów. W przeciwnym razie nie przezyje.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht_15_01"); //Zawiesic sie tam. Spiesze sie.

	Mod_7146_ASS_Mustafa_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7147_ASS_Naim_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7145_ASS_Aadel_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7142_ASS_Elite_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7141_ASS_Elite_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7140_ASS_Elite_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7134_ASS_Anwaerter_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7138_ASS_Azhar_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7125_ASS_Karim_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7124_ASS_Anwaerter_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7133_ASS_Sinbad_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7131_ASS_Krieger_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7122_ASS_Maysara_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7123_ASS_Malik_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7126_ASS_Krieger_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7127_ASS_Krieger_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7118_ASS_Anwaerter_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7119_ASS_Masut_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7117_ASS_Krieger_NW.aivar[AIV_Partymember] = FALSE;
	Mod_7116_ASS_Krieger_NW.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_7134_ASS_Anwaerter_NW,	"START");
	B_StartOtherRoutine	(Mod_7138_ASS_Azhar_NW,	"START");
	B_StartOtherRoutine	(Mod_7125_ASS_Karim_NW,	"START");
	B_StartOtherRoutine	(Mod_7124_ASS_Anwaerter_NW,	"START");
	B_StartOtherRoutine	(Mod_7133_ASS_Sinbad_NW,	"START");
	B_StartOtherRoutine	(Mod_7131_ASS_Krieger_NW,	"START");
	B_StartOtherRoutine	(Mod_7122_ASS_Maysara_NW,	"START");
	B_StartOtherRoutine	(Mod_7123_ASS_Malik_NW,	"START");
	B_StartOtherRoutine	(Mod_7126_ASS_Krieger_NW,	"START");
	B_StartOtherRoutine	(Mod_7127_ASS_Krieger_NW,	"START");
	B_StartOtherRoutine	(Mod_7118_ASS_Anwaerter_NW,	"START");
	B_StartOtherRoutine	(Mod_7119_ASS_Masut_NW,	"START");
	B_StartOtherRoutine	(Mod_7117_ASS_Krieger_NW,	"START");
	B_StartOtherRoutine	(Mod_7116_ASS_Krieger_NW,	"START");
	B_StartOtherRoutine	(Mod_7142_ASS_Elite_NW,	"START");
	B_StartOtherRoutine	(Mod_7141_ASS_Elite_NW,	"START");
	B_StartOtherRoutine	(Mod_7140_ASS_Elite_NW,	"START");
	B_StartOtherRoutine	(Mod_7163_ASS_Kamal_NW,	"START");
};

INSTANCE Info_Mod_Naim_NachSchlacht2 (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_NachSchlacht2_Condition;
	information	= Info_Mod_Naim_NachSchlacht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wracam.";
};

FUNC INT Info_Mod_Naim_NachSchlacht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht))
	&& (Npc_HasItems(hero, ItMi_Bloodcup_Richter) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_NachSchlacht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht2_15_00"); //Wracam.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht2_13_01"); //Wreszcie. Daj mi filizanke. Szybko.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht2_13_02"); //Jeden dla Mustafy. Chodz, spiesz sie.

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Naim_NachSchlacht3 (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_NachSchlacht3_Condition;
	information	= Info_Mod_Naim_NachSchlacht3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz racje?";
};

FUNC INT Info_Mod_Naim_NachSchlacht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_NachSchlacht))
	&& (Npc_HasItems(hero, ItMi_Bloodcup_MIS) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Naim_NachSchlacht3_Info()
{
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_00"); //Masz racje?
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_01"); //Jak widac. Kubki krwi sa naszym zbawieniem. Zawieraja one zycie zabitego poprzedniego wlasciciela.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_02"); //Widze, jak na nogach Mustafy widze plecy Mustafy.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_03"); //Daj mi trzy. kielich. Musze sie zorientowac, kto jeszcze wróci do zycia.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_MIS, 1);

	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_04"); //A co moge zrobic?
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_05"); //A co z naszymi oszustami, i tak?
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_06"); //Wszyscy stoja przed obozem i nie wiedza, co robic.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_07"); //Nastepnie przeslij do mnie przywódce.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_08"); //Jeszcze jedna rzecz. Jest pan naprawde bardzo dobrym wojownikiem. Jeden z najlepszych.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_09"); //Ale mam wrazenie, ze nie pasuje pan do nas.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_10"); //Jesli masz na mysli....
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_11"); //Wtedy uwolnie cie, zebys wyszedl z naszej gildii. Które zakladam, ze nie dadza nam Panstwo.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_12"); //Zrozumienie. Wyslemy Ci Shakir. I mam jeszcze inne rzeczy do zrobienia.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_13"); //Trzymac wlaczony, trzymac wcisniety. Tutaj nagroda za pomoc.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_14"); //Dziekuje, dobra rada.

	B_GiveInvItems	(self, hero, ItMi_Gold, 2000);

	B_SetTopicStatus	(TOPIC_MOD_ASS_VERSCHWOERUNG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Naim_Pickpocket (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_Pickpocket_Condition;
	information	= Info_Mod_Naim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Naim_Pickpocket_Condition()
{
	C_Beklauen	(168, ItMi_Gold, 90);
};

FUNC VOID Info_Mod_Naim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Naim_Pickpocket);

	Info_AddChoice	(Info_Mod_Naim_Pickpocket, DIALOG_BACK, Info_Mod_Naim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Naim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Naim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Naim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Naim_Pickpocket);
};

FUNC VOID Info_Mod_Naim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Naim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Naim_Pickpocket);

		Info_AddChoice	(Info_Mod_Naim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Naim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Naim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Naim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Naim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Naim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Naim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Naim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Naim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Naim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Naim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Naim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Naim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Naim_EXIT (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_EXIT_Condition;
	information	= Info_Mod_Naim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Naim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Naim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
