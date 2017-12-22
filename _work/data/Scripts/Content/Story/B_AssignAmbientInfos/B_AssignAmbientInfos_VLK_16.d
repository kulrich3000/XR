// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_VLK_16_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_VLK_16_EXIT_Condition;
	information	= DIA_VLK_16_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_VLK_16_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_16_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_VLK_16_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_16_JOIN_Condition;
	information	= DIA_VLK_16_JOIN_Info;
	permanent	= TRUE;
	description = "Chce byc mieszkancem tego miasta!";
};                       

FUNC INT DIA_VLK_16_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	&& (Mod_IstLehrling == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_16_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_VLK_43_JOIN_15_00"); //Chce byc mieszkancem tego miasta!
	AI_Output (self, hero, "DIA_VLK_43_JOIN_43_01"); //Chcesz pomóc nam obronic miasto przed orkami?
	AI_Output (self, hero, "DIA_VLK_43_JOIN_43_02"); //Jesli jestes obywatelem Khorinis, mozesz dolaczyc do milicji - powinienes porozmawiac z jednym z strazników miasta.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_VLK_16_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_VLK_16_PEOPLE_Condition;
	information	= DIA_VLK_16_PEOPLE_Info;
	permanent	= TRUE;
	description = "Kim sa wazne osobowosci tego miasta?";
};                       

FUNC INT DIA_VLK_16_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_16_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_VLK_43_PEOPLE_15_00"); //Kim sa wazne osobowosci tego miasta?
	AI_Output (self, hero, "DIA_VLK_43_PEOPLE_43_01"); //Paladyny w górnej cwiartce.
};

INSTANCE Info_VLK_16_Flugblaetter (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_VLK_16_Flugblaetter_Condition;
	information	= Info_VLK_16_Flugblaetter_Info;
	permanent	= 1;
	description = "Mam dla Ciebie ulotke.";
};                       

FUNC INT Info_VLK_16_Flugblaetter_Condition()
{
	if (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_16_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_VLK_43_Flugblaetter_43_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_VLK_43_Flugblaetter_43_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	self.aivar[AIV_FLUGBLATTVERTEILT] = 1;

	Mod_Flugblaetter += 1;
};

INSTANCE Info_VLK_16_Rangar (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_VLK_16_Rangar_Condition;
	information	= Info_VLK_16_Rangar_Info;
	permanent	= 0;
	description = "Czy wiedziales juz, ze....";
};                       

FUNC INT Info_VLK_16_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_VLK_19_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_6_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_8_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_21_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_16_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_VLK_43_Rangar_15_00"); //Czy wiedziales, ze Rangar ma romans?
	AI_Output(self, hero, "Info_Mod_VLK_43_Rangar_43_01"); //Naprawde? Z kim?
	AI_Output(hero, self, "Info_Mod_VLK_43_Rangar_15_02"); //Z jedna z dziewczyn Bromora!
	AI_Output(self, hero, "Info_Mod_VLK_43_Rangar_43_03"); //Czy jestes pewien tego? Bede musial od razu isc dalej.

	Mod_DensGeruechtVerbreitet = TRUE;

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Wokól krazy plotka, wiec Den bedzie zadowolony.");
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_VLK_16_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_VLK_16_LOCATION_Condition;
	information	= DIA_VLK_16_LOCATION_Info;
	permanent	= TRUE;
	description = "Co tu widzimy?";
};                       

FUNC INT DIA_VLK_16_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_16_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_VLK_43_LOCATION_15_00"); //Co tu widzimy?
	AI_Output (self, hero, "DIA_VLK_43_LOCATION_43_01"); //Na rynku mozna zobaczyc wszystkie rodzaje towarów.
};

INSTANCE Info_Mod_VLK_16_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_VLK_16_Pickpocket_Condition;
	information	= Info_Mod_VLK_16_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_VLK_16_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);

	Info_AddChoice	(Info_Mod_VLK_16_Pickpocket, DIALOG_BACK, Info_Mod_VLK_16_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_VLK_16_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_VLK_16_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);

		Info_AddChoice	(Info_Mod_VLK_16_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_VLK_16_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_VLK_16_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_VLK_16_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_VLK_16_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_VLK_16_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_VLK_16_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_VLK_16_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_VLK_16 (var c_NPC slf)
{
	DIA_VLK_16_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_16_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_16_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_VLK_16_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_16_Flugblaetter.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_16_Rangar.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_VLK_16_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
