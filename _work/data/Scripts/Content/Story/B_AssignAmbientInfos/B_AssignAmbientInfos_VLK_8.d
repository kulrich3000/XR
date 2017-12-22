// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_VLK_8_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_VLK_8_EXIT_Condition;
	information	= DIA_VLK_8_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_VLK_8_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_VLK_8_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_8_JOIN_Condition;
	information	= DIA_VLK_8_JOIN_Info;
	permanent	= TRUE;
	description = "Chce byc mieszkancem tego miasta!";
};                       

FUNC INT DIA_VLK_8_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	&& (Mod_IstLehrling == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_8_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_JOIN_15_00"); //Chce byc mieszkancem tego miasta!
	AI_Output (self, hero, "DIA_VLK_8_JOIN_08_01"); //A dlaczego mi o tym m�wisz? Udaj sie do jednego z mistrz�w rzemieslnik�w w dolnym miescie. Byc moze masz szczescie i oni szukaja praktykanta.
};

INSTANCE DIA_VLK_8_Skinner(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_8_Skinner_Condition;
	information	= DIA_VLK_8_Skinner_Info;
	permanent	= TRUE;
	description = "Mam tu cos do podzwigniecia.";
};                       

FUNC INT DIA_VLK_8_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 5)
	&& (Mod_SkinnerQuest == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_8_Skinner_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_15_00"); //Mam tu cos do podzwigniecia.
	AI_Output (self, hero, "DIA_VLK_8_Skinner_06_01"); //Ahh, ten piekny zapach. Bardziej intensywne niz to, co zwykle docierasz do portu. Ile kosztuje to radosci?

	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(DIA_VLK_8_Skinner);

	Info_AddChoice	(DIA_VLK_8_Skinner, "40 zlota.", DIA_VLK_8_Skinner_C);
	Info_AddChoice	(DIA_VLK_8_Skinner, "Trzydziesci zlota.", DIA_VLK_8_Skinner_B);
	Info_AddChoice	(DIA_VLK_8_Skinner, "20 zlota.", DIA_VLK_8_Skinner_A);
};

FUNC VOID DIA_VLK_8_Skinner_D()
{	
	AI_Output (self, hero, "DIA_VLK_8_Skinner_D_06_00"); //Bez wzgledu na to, jak tanie. Zabiore wszystko, co dostales.

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_C()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_C_15_00"); //40 zlota.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_B()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_B_15_00"); //Trzydziesci zlota.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_A()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_A_15_00"); //20 zlota.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

INSTANCE Info_VLK_08_Flugblaetter (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_VLK_08_Flugblaetter_Condition;
	information	= Info_VLK_08_Flugblaetter_Info;
	permanent	= 1;
	description = "Mam dla Ciebie ulotke.";
};                       

FUNC INT Info_VLK_08_Flugblaetter_Condition()
{
	if (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_08_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_VLK_08_Flugblaetter_08_01"); //(nieodsetkowe) Aha.

	self.aivar[AIV_FLUGBLATTVERTEILT] = 1;

	Mod_Flugblaetter += 1;
};

INSTANCE Info_VLK_8_Rangar (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_VLK_8_Rangar_Condition;
	information	= Info_VLK_8_Rangar_Info;
	permanent	= 0;
	description = "Czy wiedziales juz, ze....";
};                       

FUNC INT Info_VLK_8_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_VLK_19_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_6_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_16_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_21_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_8_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_VLK_8_Rangar_15_00"); //Czy wiedziales, ze Rangar ma romans?
	AI_Output(self, hero, "Info_Mod_VLK_8_Rangar_08_01"); //Naprawde? Z kim?
	AI_Output(hero, self, "Info_Mod_VLK_8_Rangar_15_02"); //Z jedna z dziewczyn Bromora!
	AI_Output(self, hero, "Info_Mod_VLK_8_Rangar_08_03"); //Czy jestes pewien tego? Bede musial od razu isc dalej.

	Mod_DensGeruechtVerbreitet = TRUE;

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Wok�l krazy plotka, wiec Den bedzie zadowolony.");
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_VLK_8_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_VLK_8_PEOPLE_Condition;
	information	= DIA_VLK_8_PEOPLE_Info;
	permanent	= TRUE;
	description = "Kim sa najwazniejsi mieszkancy tego miasta?";
};                       

FUNC INT DIA_VLK_8_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_PEOPLE_15_00"); //Kim sa najwazniejsi mieszkancy tego miasta?
	AI_Output (self, hero, "DIA_VLK_8_PEOPLE_08_01"); //Z wyjatkiem paladyn.... mistrzowie rzemieslnicy z dolnego miasta. Wszystkie sa wysoko cenione.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_VLK_8_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_VLK_8_LOCATION_Condition;
	information	= DIA_VLK_8_LOCATION_Info;
	permanent	= TRUE;
	description = "Co tu widzimy?";
};                       

FUNC INT DIA_VLK_8_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_LOCATION_15_00"); //Co tu widzimy?
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_01"); //Duzy statek, kt�rym do portu przybyli paladynki. To olbrzymia barka! Trzeba przyjrzec sie tej sprawie.
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_02"); //Nie moge sobie jednak wyobrazic, ze zostawia cie na nim. Paladyny strzega statku jak jablko ich oczu.
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_03"); //Nic dziwnego. Jest to jedyna nadajaca sie do zeglugi barka, kt�ra zakotwiczona jest tutaj daleko i szeroko.
};

INSTANCE Info_Mod_VLK_8_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_VLK_8_Pickpocket_Condition;
	information	= Info_Mod_VLK_8_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_VLK_8_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

	Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_BACK, Info_Mod_VLK_8_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_VLK_8_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_VLK_8_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_VLK_8_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_VLK_8_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_VLK_8 (var c_NPC slf)
{
	DIA_VLK_8_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_Skinner.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_VLK_8_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_08_Flugblaetter.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_8_Rangar.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_VLK_8_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
