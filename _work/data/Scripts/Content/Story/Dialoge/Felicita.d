INSTANCE Info_Mod_Felicita_Hi (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Hi_Condition;
	information	= Info_Mod_Felicita_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Felicita_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Gritta))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Felicita_Hi_16_00"); //Slowo, nieznajomy. Wygladasz tak schludnie. Czy chcialbys mnie laski?
};

INSTANCE Info_Mod_Felicita_AufgabeJa (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_AufgabeJa_Condition;
	information	= Info_Mod_Felicita_AufgabeJa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chetnie pomoze tak pieknej kobiecie.";
};

FUNC INT Info_Mod_Felicita_AufgabeJa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeNein))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_AufgabeJa_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_00"); //Chetnie pomoze tak pieknej kobiecie. Poza tym mam troche czasu.
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_01"); //Co moge dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_16_02"); //Jestem Felicita, zona Augusta, strazniczka.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_16_03"); //Teraz kobiety w mojej okolicy szepcza, on nie tylko pilnuje bramy, gdy wieczorem robi sie ciemno.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_16_04"); //Chcialbym wiedziec, czy cos jest prawda.
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_05"); //Moge to zrobic. Dlaczego jednak nie sprawdzasz sie sam?
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_16_06"); //Boje sie ciemnosci. Kiedy bylem dzieckiem, mialem - mialem
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_07"); //Widze. Zajme sie tym.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_16_08"); //Dziekuje bardzo. Znajdziesz mnie w starej dzielnicy z prawej strony.

	Log_CreateTopic	(TOPIC_MOD_ASS_FELICITA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_FELICITA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_FELICITA, "Felicita zapytala mnie, czy jej maz August ja oszukuje. Znajde go przy bramie miasta.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "FREMDGANG");
	B_StartOtherRoutine	(Mod_7343_OUT_Buergerin_REL, "FREMDGANG");
};

INSTANCE Info_Mod_Felicita_AufgabeNein (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_AufgabeNein_Condition;
	information	= Info_Mod_Felicita_AufgabeNein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kocham. Przepraszam, nie mam teraz czasu. Moze pózniej.";
};

FUNC INT Info_Mod_Felicita_AufgabeNein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeJa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_AufgabeNein_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeNein_15_00"); //Kocham. Przepraszam, nie mam teraz czasu. Moze pózniej.
};

INSTANCE Info_Mod_Felicita_Belauscht (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Belauscht_Condition;
	information	= Info_Mod_Felicita_Belauscht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Obawiam sie, ze nie moge powiedziec dobrego wieczoru.";
};

FUNC INT Info_Mod_Felicita_Belauscht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeJa))
	&& (Mod_ASS_Felicita == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_Belauscht_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_00"); //Obawiam sie, ze nie moge powiedziec dobrego wieczoru.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_16_01"); //Wiec zlapales mojego meza?
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_02"); //Nie w jaskrawy sposób. Slyszalem, jak rozmawial z kobieta. Pod duza brzoza na zewnatrz.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_16_03"); //To jest dla mnie wystarczajaco dobre. Ten szal! Odkad polknal wszystkie te zle rzeczy, byl jak zupelny zastepca.
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_04"); //Masz na mysli tego dawce radosci?
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_16_05"); //Dokladnie. Juz wystarczy. Bede sie rozwiesc i wyrzuce go z domu.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_16_06"); //Tutaj dam ci ten zloty pierscien.

	B_GiveInvItems	(self, hero, ItMi_Hochzeitsring, 1);

	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_07"); //Twoja pierscien slubny?
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_16_08"); //Dawniej byl. Wez to pod uwage!

	B_LogEntry	(TOPIC_MOD_ASS_FELICITA, "Poszedl do stróza sierpnia z inna kobieta i powiedzial Felicita. Dala mi za to pierscionek weselny.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_FELICITA, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "FREMDGANG");
	B_StartOtherRoutine	(Mod_7343_OUT_Buergerin_REL, "FREMDGANG");
};

INSTANCE Info_Mod_Felicita_Pickpocket (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Pickpocket_Condition;
	information	= Info_Mod_Felicita_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Felicita_Pickpocket_Condition()
{
	C_Beklauen	(42, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

	Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_BACK, Info_Mod_Felicita_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Felicita_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Felicita_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Felicita_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Felicita_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Felicita_EXIT (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_EXIT_Condition;
	information	= Info_Mod_Felicita_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Felicita_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Felicita_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
