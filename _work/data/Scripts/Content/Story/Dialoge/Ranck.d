INSTANCE Info_Mod_Ranck_FreudenspenderMachtBlind (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_FreudenspenderMachtBlind_Condition;
	information	= Info_Mod_Ranck_FreudenspenderMachtBlind_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranck_FreudenspenderMachtBlind_Condition()
{
	if (Mod_SL_PartBlind == 1)
	&& (Mod_SL_PartBlind_Counter >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranck_FreudenspenderMachtBlind_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_00"); //To ladne z tego, co tu robisz, ale nigdy nie skonczysz.

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_01"); //Dokladnie to, co mówie. Zloze Ci oferte.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_02"); //Daj mi, powiedzmy 1000 kawalków zlota, a dam ci reke.

	Mod_SL_PartBlind = 2;

	B_LogEntry	(TOPIC_MOD_SL_BLIND, "Chlopak o imieniu Ranck zaoferowal mi swoja pomoc z powodu poglosek o darczyncach lubiacych przyjemnosc. Ale mam mu wreczyc tysiac zlotych monet.");
};

INSTANCE Info_Mod_Ranck_FreudenspenderHelper (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_FreudenspenderHelper_Condition;
	information	= Info_Mod_Ranck_FreudenspenderHelper_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko w porzadku, tutaj.";
};

FUNC INT Info_Mod_Ranck_FreudenspenderHelper_Condition()
{
	if (Mod_SL_PartBlind == 2)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranck_FreudenspenderHelper_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranck_FreudenspenderHelper_15_00"); //Wszystko w porzadku, tutaj.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_01"); //Dobrze, prosze pozwolic mi to zrobic.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_02"); //(glosno) Witaj? Witaj! Jaki jest czas na to?
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_03"); //To wszystko jest tak ciemne, ale czuje slonce na skórze!
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_04"); //Ktos tu? Nie widze niczego (ciagle coraz bardziej paniki) I.... l-- I AM BLIND!
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_05"); //Goddamn dawca radosci, nie pozwolilbym na to. Ostrzezono mnie, ze bedzie pan slepy.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_06"); //Och, biedny glupiec! Pozegnanie z okrutnym swiatem, nie moge tak zyc!

	Mod_SL_PartBlind = 3;

	B_LogEntry	(TOPIC_MOD_SL_BLIND, "Ranck wystawil calkiem sporo spektaklu. To powinno przekonac mieszkanców Khoraty.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLEE");
};

INSTANCE Info_Mod_Ranck_Pickpocket (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_Pickpocket_Condition;
	information	= Info_Mod_Ranck_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ranck_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

	Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_BACK, Info_Mod_Ranck_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ranck_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ranck_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ranck_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ranck_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ranck_EXIT (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_EXIT_Condition;
	information	= Info_Mod_Ranck_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ranck_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranck_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
