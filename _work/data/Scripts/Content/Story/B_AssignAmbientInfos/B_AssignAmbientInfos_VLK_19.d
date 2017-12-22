// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_VLK_19_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_VLK_19_EXIT_Condition;
	information	= DIA_VLK_19_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_VLK_19_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_19_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_VLK_19_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_19_JOIN_Condition;
	information	= DIA_VLK_19_JOIN_Info;
	permanent	= TRUE;
	description = "Jak moge zostac obywatelem tego miasta?";
};                       

FUNC INT DIA_VLK_19_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	&& (Mod_IstLehrling == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_19_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_VLK_19_JOIN_15_00"); //Jak moge zostac obywatelem tego miasta?
	AI_Output (self, hero, "DIA_VLK_19_JOIN_19_01"); //Uzyskaj sobie przyzwoita prace! Kazdy, kto ma stala prace w Khorinis jest obywatelem miasta.
};

INSTANCE DIA_VLK_19_Skinner(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_19_Skinner_Condition;
	information	= DIA_VLK_19_Skinner_Info;
	permanent	= TRUE;
	description = "Mam tu cos do podzwigniecia.";
};                       

FUNC INT DIA_VLK_19_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) > 0)
	&& (Mod_SkinnerQuest == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_19_Skinner_Info()
{	
	AI_Output (hero, self, "DIA_VLK_19_Skinner_15_00"); //Mam tu cos do podzwigniecia.
	AI_Output (self, hero, "DIA_VLK_19_Skinner_06_01"); //Ahh, ten piekny zapach. Bardziej intensywne niz to, co zwykle docierasz do portu. Ile kosztuje to radosci?

	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(DIA_VLK_19_Skinner);

	Info_AddChoice	(DIA_VLK_19_Skinner, "40 zlota.", DIA_VLK_19_Skinner_C);
	Info_AddChoice	(DIA_VLK_19_Skinner, "Trzydziesci zlota.", DIA_VLK_19_Skinner_B);
	Info_AddChoice	(DIA_VLK_19_Skinner, "20 zlota.", DIA_VLK_19_Skinner_A);
};

FUNC VOID DIA_VLK_19_Skinner_D()
{	
	AI_Output (self, hero, "DIA_VLK_19_Skinner_D_06_00"); //Bez wzgledu na to, jak tanie. Zabiore wszystko, co dostales.

	Info_ClearChoices	(DIA_VLK_19_Skinner);
};

FUNC VOID DIA_VLK_19_Skinner_C()
{	
	AI_Output (hero, self, "DIA_VLK_19_Skinner_C_15_00"); //40 zlota.

	DIA_VLK_19_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_19_Skinner);
};

FUNC VOID DIA_VLK_19_Skinner_B()
{	
	AI_Output (hero, self, "DIA_VLK_19_Skinner_B_15_00"); //Trzydziesci zlota.

	DIA_VLK_19_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_19_Skinner);
};

FUNC VOID DIA_VLK_19_Skinner_A()
{	
	AI_Output (hero, self, "DIA_VLK_19_Skinner_A_15_00"); //20 zlota.

	DIA_VLK_19_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");

	Info_ClearChoices	(DIA_VLK_19_Skinner);
};

INSTANCE Info_VLK_19_Flugblaetter (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_VLK_19_Flugblaetter_Condition;
	information	= Info_VLK_19_Flugblaetter_Info;
	permanent	= 1;
	description = "Mam dla Ciebie ulotke.";
};                       

FUNC INT Info_VLK_19_Flugblaetter_Condition()
{
	if (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_19_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_VLK_19_Flugblaetter_19_01"); //Pozwólcie mi widziec....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_VLK_19_Flugblaetter_19_02"); //Ahhh Matteo. Kupuje u niego codziennie.

	self.aivar[AIV_FLUGBLATTVERTEILT] = 1;

	Mod_Flugblaetter += 1;
};

INSTANCE Info_VLK_19_Rangar (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_VLK_19_Rangar_Condition;
	information	= Info_VLK_19_Rangar_Info;
	permanent	= 0;
	description = "Czy wiedziales juz, ze....";
};                       

FUNC INT Info_VLK_19_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_VLK_16_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_6_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_8_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_21_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_19_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_VLK_19_Rangar_15_00"); //Czy wiedziales, ze Rangar ma romans?
	AI_Output(self, hero, "Info_Mod_VLK_19_Rangar_19_01"); //Naprawde? Z kim?
	AI_Output(hero, self, "Info_Mod_VLK_19_Rangar_15_02"); //Z jedna z dziewczyn Bromora!
	AI_Output(self, hero, "Info_Mod_VLK_19_Rangar_19_03"); //Czy jestes pewien tego? Bede musial od razu isc dalej.

	Mod_DensGeruechtVerbreitet = TRUE;

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Wokól krazy plotka, wiec Den bedzie zadowolony.");
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_VLK_19_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_VLK_19_PEOPLE_Condition;
	information	= DIA_VLK_19_PEOPLE_Info;
	permanent	= TRUE;
	description = "Kim sa tutaj wazne osobowosci?";
};                       

FUNC INT DIA_VLK_19_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_19_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_VLK_19_PEOPLE_15_00"); //Kim sa tutaj wazne osobowosci?
	AI_Output (self, hero, "DIA_VLK_19_PEOPLE_19_01"); //Lord Hagen ma kontrole nad miastem. Gubernatorem jest jednak Larius.
	AI_Output (self, hero, "DIA_VLK_19_PEOPLE_19_02"); //Jest jeszcze inny sedzia. Oczywiscie Lord Hagen ma równiez prawa tych dwóch osób.
	AI_Output (self, hero, "DIA_VLK_19_PEOPLE_19_03"); //Pan Andre jest prawa reka Pana Hagena.
	AI_Output (self, hero, "DIA_VLK_19_PEOPLE_19_04"); //Kazdy, kto jest winny czegokolwiek w miescie, musi mu odpowiedziec.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_VLK_19_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_VLK_19_LOCATION_Condition;
	information	= DIA_VLK_19_LOCATION_Info;
	permanent	= TRUE;
	description = "Co jest interesujace w tym miescie?";
};                       

FUNC INT DIA_VLK_19_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_19_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_VLK_19_LOCATION_15_00"); //Co jest interesujace w tym miescie?
	AI_Output (self, hero, "DIA_VLK_19_LOCATION_19_01"); //Tutaj mozna kupic prawie wszystko, co mozna sobie wyobrazic. Zarówno od kupców na rynku, jak i w dolnym miescie.
	AI_Output (self, hero, "DIA_VLK_19_LOCATION_19_02"); //Ale prawie wszystko co mozna tu kupic kosztuje troche.
	AI_Output (self, hero, "DIA_VLK_19_LOCATION_19_03"); //Jesli nie masz duzo pieniedzy, byc moze Lehmar, pozyczkodawca moze Ci pomóc. Jego dom jest na poczatku dzielnicy portowej, kiedy pochodzi sie z dolnego miasta.
};

INSTANCE Info_Mod_VLK_19_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_VLK_19_Pickpocket_Condition;
	information	= Info_Mod_VLK_19_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_VLK_19_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);

	Info_AddChoice	(Info_Mod_VLK_19_Pickpocket, DIALOG_BACK, Info_Mod_VLK_19_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_VLK_19_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_VLK_19_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);

		Info_AddChoice	(Info_Mod_VLK_19_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_VLK_19_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_VLK_19_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_VLK_19_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_VLK_19_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_VLK_19_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_VLK_19_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_VLK_19_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_VLK_19 (var c_NPC slf)
{
	DIA_VLK_19_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_19_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_19_Skinner.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_19_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_VLK_19_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_19_Flugblaetter.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_19_Rangar.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_VLK_19_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
