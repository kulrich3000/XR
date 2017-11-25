// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_grd_7_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_grd_7 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_grd_7_EXIT_Condition;
	information	= Info_grd_7_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_grd_7_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_grd_7_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_grd_7_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_grd_7_EinerVonEuchWerden_Condition;
	information	= Info_grd_7_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Co musze zrobic, aby pomóc straznikom Thorusa (....)? )";
};                       

FUNC INT Info_grd_7_EinerVonEuchWerden_Condition()
{
	if	(Schatten_Dabei == FALSE)
	&&	(Gardist_Dabei == FALSE)
	&&  (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_grd_7_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_grd_7_EinerVonEuchWerden_15_00"); //Co musze zrobic, aby dolaczyc do strazników Thorusa?
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_01"); //Ty! Jestes mi dla mnie przyjemnoscia. Wchodzac tu i chcac isc prosto na szczyt, huh?
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_02"); //Thorus tylko sprawia, ze jego najlepsi mezczyzni sa straznikami.
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_03"); //Musisz zaczac jak kazdy inny i udowodnic swoja lojalnosc jako cien.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_grd_7_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_7_WichtigePersonen_Condition;
	information	= Info_grd_7_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_grd_7_WichtigePersonen_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_grd_7_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,hero,"Info_grd_7_WichtigePersonen_07_01"); //Thorus kontroluje wszystko w magazynie.
	AI_Output(self,hero,"Info_grd_7_WichtigePersonen_07_02"); //Jesli chcesz zostac tutaj przyjety, to on jest czlowiekiem, z którym musisz porozmawiac.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_grd_7_DasLager(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_7_DasLager_Condition;
	information	= Info_grd_7_DasLager_Info;
	permanent	= 1;
	description = "Czy wszyscy ludzie pracuja tutaj dla baronów rudy?";
};                       

FUNC INT Info_grd_7_DasLager_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_DasLager_Info()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_15_00"); //Czy wszyscy ludzie pracuja dla Thorusa?
	AI_Output(self,hero,"Info_grd_7_DasLager_07_01"); //Nie. Wiekszosc z nich to proste koparki.
	AI_Output(self,hero,"Info_grd_7_DasLager_07_02"); //Tylko my pilnujemy, a cienie sa ludzmi Thorusa.
	Info_ClearChoices(Info_grd_7_DasLager);
	Info_AddChoice(Info_grd_7_DasLager, "ZURÜCK", Info_grd_7_DasLager_Zurueck);
	Info_AddChoice(Info_grd_7_DasLager, "Co robia straznicy?", Info_grd_7_DasLager_Gardisten);
	Info_AddChoice(Info_grd_7_DasLager, "Jakie jest zadanie cieni?", Info_grd_7_DasLager_Schatten);
	Info_AddChoice(Info_grd_7_DasLager, "Po co Buddlerzy?", Info_grd_7_DasLager_Buddler);
};

FUNC VOID Info_grd_7_DasLager_ZURUECK()
{
	Info_ClearChoices(Info_grd_7_DasLager);
};

FUNC VOID Info_grd_7_DasLager_Gardisten()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_WasIstAerger_15_00"); //Co robia straznicy?
	AI_Output(self,hero,"Info_grd_7_DasLager_WasIstAerger_07_01"); //Strzegamy obozu i chronimy koparki.
	AI_Output(self,hero,"Info_grd_7_DasLager_WasIstAerger_07_02"); //Z placa Thorus placi nam, a pieniadze na ochrone otrzymujemy od buddystów, mozesz miec czas dosc dobrze.
};

FUNC VOID Info_grd_7_DasLager_Schatten()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_Schatten_15_00"); //Jakie jest zadanie cieni?
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_01"); //Cienie zapewniaja realizacje zlecen Thorusa.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_02"); //Wiekszosc z nich to pochlebcy, którzy chca isc do góry, ale jesli chcesz byc tutaj czyms, to jest to jedyny sposób.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_03"); //Jesli wykonales swoja prace wystarczajaco dlugo bez porazki, mozesz zostac jednym z nas.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_04"); //Kiedy staniesz sie jednym z mezczyzn Thorusa, nikt w kolonii nie bedzie mógl ci zaszkodzic, dzieciak!
};

FUNC VOID Info_grd_7_DasLager_Buddler()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_Buddler_15_00"); //Po co Buddlerzy?
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_01"); //Dobre pytanie! Hantle mialy znajdowac sie w dawnej kopalni.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_02"); //Przybyli, kiedy przez jakis czas byli w mojej kopalni, by spedzic swój udzial.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_03"); //Kiedy wszystko zmarnowano, wrócilismy do kopalni. Wiekszosc z nich tak zyla.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_04"); //Ale teraz, gdy koparki pozostaja tu przez caly czas. Jesli jeszcze tego nie zrobiles, powinienes porozmawiac z Thorusem.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_grd_7_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_grd_7_DieLage_Condition;
	information	= Info_grd_7_DieLage_Info;
	permanent	= 1;
	description = "Jaki jest wynik?";
};                       

FUNC INT Info_grd_7_DieLage_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_DieLage_Info()
{
	AI_Output(hero,self,"Info_grd_7_DieLage_15_00"); //Jaki jest wynik?
	AI_Output(self,hero,"Info_grd_7_DieLage_07_01"); //Dla Ciebie? Tak dlugo, jak nie jestes w naszym obozie, nikt Cie nie traktuje powaznie!
};

INSTANCE Info_Mod_GRD_7_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_GRD_7_Pickpocket_Condition;
	information	= Info_Mod_GRD_7_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_GRD_7_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

	Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_BACK, Info_Mod_GRD_7_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GRD_7_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GRD_7_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GRD_7_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GRD_7_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_grd_7(var c_NPC slf)
{
	Info_grd_7_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_grd_7_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_grd_7_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_grd_7_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_grd_7_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_GRD_7_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
