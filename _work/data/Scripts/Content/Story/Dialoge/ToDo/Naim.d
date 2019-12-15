INSTANCE Info_Mod_Naim_Hi (C_INFO)
{
	npc		= Mod_7147_ASS_Naim_NW;
	nr		= 1;
	condition	= Info_Mod_Naim_Hi_Condition;
	information	= Info_Mod_Naim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got one of the blood cups.";
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
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_00"); //I got one of the blood cups.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Naim_Hi_13_01"); //Nice work, lad. We heard you've already brought the first cup.
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_02"); //That's how it is.
	AI_Output(self, hero, "Info_Mod_Naim_Hi_13_03"); //You'll go a long way if you keep doing this. I hereby declare you the first. Candidate. Here's your armour.
	AI_Output(hero, self, "Info_Mod_Naim_Hi_15_04"); //Thank you very much, good advice.

	if (Mod_ASS_Krieger == 1)
	{
		CreateInvItems	(hero, ItAr_Assassine_01, 1);

		B_ShowGivenThings	("Assassin armor received");

		AI_Output(self, hero, "Info_Mod_Naim_Hi_13_05"); //Now report to Azhar. I think he's in trouble.

		B_SetTopicStatus	(TOPIC_MOD_ASS_KRIEGER, LOG_SUCCESS);
	}
	else
	{
		CreateInvItems	(hero, ItAr_Assassine_02, 1);

		B_ShowGivenThings	("Assassin robe received");

		AI_Output(self, hero, "Info_Mod_Naim_Hi_13_06"); //Now report to Kais. I think he's in trouble.

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
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_00"); //I hear you've done amazing things for the community.
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_01"); //If we can get back to the mainland, will you come with us? I'd put you on the council.
	AI_Output(hero, self, "Info_Mod_Naim_Comeback_15_02"); //A tempting offer. Surely I will return to my homeland at some point.
	AI_Output(hero, self, "Info_Mod_Naim_Comeback_15_03"); //But for the time being, I still have work to do on khorinis. Thank you, good advice.
	AI_Output(self, hero, "Info_Mod_Naim_Comeback_13_04"); //Your call, magician. Then I hereby dismiss you from the service of the Assassins. Go your own way.

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
	AI_Output(self, hero, "Info_Mod_Naim_GotoAzhar_13_00"); //Didn't I tell you to report to Azhar?
	AI_Output(hero, self, "Info_Mod_Naim_GotoAzhar_15_01"); //It is. I was with him too, but he didn't want anything from me.
	AI_Output(self, hero, "Info_Mod_Naim_GotoAzhar_13_02"); //I do now. Seems important.
	AI_Output(hero, self, "Info_Mod_Naim_GotoAzhar_15_03"); //I'm hurrying...
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
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht_13_00"); //Hurry, I need the chalices. Otherwise, I won't survive.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht_15_01"); //Hang in there. I'll hurry up.

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
	description	= "I'm back.";
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
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht2_15_00"); //I'm back.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht2_13_01"); //Finally. Give me a cup. Quickly.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht2_13_02"); //And one for Mustafa. Come on, hurry up.

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
	description	= "You're all right?";
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
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_00"); //You're all right?
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_01"); //As you can see. The cups of blood are our salvation. They contain the life of the killed previous owner.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_02"); //I see Mustafa's back on his feet, too.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_03"); //Give me the three. Chalice. I have to figure out who else to bring back to life.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_MIS, 1);

	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_04"); //And what can I do?
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_05"); //What about our crooks, anyway?
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_06"); //They all stand in front of the camp and don't know what to do.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_07"); //Then send the leader to me.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_08"); //One more thing. You are indeed a very good warrior. One of the best I know.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_09"); //But I'm under the impression that you don't really fit in with us.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_10"); //If you mean...
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_11"); //Then I'll set you free to leave our guild. Which I assume you're not going to give us away, too.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_12"); //Understand. I'll send Shakir to you. And I have other things to do.
	AI_Output(self, hero, "Info_Mod_Naim_NachSchlacht3_13_13"); //Hold on, hold on. Here, a reward for your help.
	AI_Output(hero, self, "Info_Mod_Naim_NachSchlacht3_15_14"); //Thank you, good advice.

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
