INSTANCE Info_Mod_Ratford_Hi (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Hi_Condition;
	information	= Info_Mod_Ratford_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Waidmannsheil.";
};

FUNC INT Info_Mod_Ratford_Hi_Condition()
{
	if (Npc_GetDistToWP(hero, "OW_PATH_1_5_A") < 1000) {
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Hi_Info()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_00"); //Waidmannsheil.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_01"); //Nie wygladajcie na niewinnego dla mnie. Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_02"); //Przechodze obok.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_03"); //Przypadkowo nikt nie mija.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_04"); //Wszystko w porzadku - pochodze z twojego szefa i powinienem kopnac twojego tylka. Czy to brzmi rozsadniej?

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_30_05"); //Nie mozesz byc powazny!

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_06"); //(smiech) Po prostu jest dzieckiem, Drax. Ten facet wydaje sie, ze ma racje.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_07"); //Co robicie tutaj?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_08"); //Uwielbiam rozmawiac, ale mam teraz suche gardlo. Bez smarowania zawsze tak trudno mi mówic.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_30_09"); //Ja równiez ja. Zróbmy kilka piwa.

	TRIA_Next(Ratford);

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ratford_Hi_Extend (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Hi_Extend_Condition;
	information	= Info_Mod_Ratford_Hi_Extend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ratford_Hi_Extend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ratford_Hi))
	&& (Npc_GetDistToWP(hero, "OW_PATH_1_5_A") < 1000) {
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Hi_Extend_Info()
{
	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	Info_AddChoice	(Info_Mod_Ratford_Hi_Extend, "Mozna o tym zapomniec.", Info_Mod_Ratford_Hi_B);

	if (Npc_HasItems(hero, ItFo_Beer) >= 2) {
		Info_AddChoice	(Info_Mod_Ratford_Hi_Extend, "Odwiedzcie mnie!", Info_Mod_Ratford_Hi_A);
	};
};

FUNC VOID Info_Mod_Ratford_Hi_B()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_B_15_00"); //Mozna o tym zapomniec.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_36_01"); //Nie jest to zaden sposób, aby wejsc w czatowy nastrój. Lepiej wróce do pracy.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_30_02"); //Tak, pieklo!

	TRIA_Next(Ratford);

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Ratford_Hi_A()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_00"); //Odwiedzcie mnie!

	B_ShowGivenThings	("Dwa piwa serwowane");

	Npc_RemoveInvItems	(hero, ItFo_Beer, 2);

	CreateInvItems	(Ratford, ItFo_Beer, 1);
	CreateInvItems	(Drax, ItFo_Beer, 1);

	B_UseItem	(Ratford, ItFo_Beer);
	B_UseItem	(Drax, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_01"); //W prawo, obejrzyjmy okolice na obóz bandytów.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_02"); //Bandit camp?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_03"); //Tak, to dobry gang.... Nie bylo nas dlugo, ale nadal wiemy, co oznacza spójnosc. Mamy pod tym wzgledem zupelnie inne doswiadczenia.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_06_04"); //Dopóki pozwalaja nam zrobic to, co robimy w pokoju.

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_05"); //I oni to robia. Dbamy o to, aby zadna armia inwazyjna nie przecinala przeleczy, a jesli zwierze wpadnie w nasza kokarde, zabijamy je.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_06"); //Reszta dnia, tak naprawde sie zwlekamy.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_07"); //Czy mozesz mi cos powiedziec o Minentalu? Co sie tu ostatnio wydarzylo?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_08"); //Nie wiem, ale bardzo wiele. W duzych obozach gniew jest mniej lub bardziej lagodny.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_09"); //W starym obozie wydawalo sie, ze juz niedlugo po upadku szlabanu to sie skonczylo, przynajmniej slyszelismy tu krzyki i halas.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_10"); //Potem przechodzila tu wieksza grupa spadajacych znaków.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_11"); //Potem obóz stal sie podejrzanie spokojny. Malo kto inny sie pojawil. Kto wie, czy ktos juz jest.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_12"); //Dzwieki takie jak ja musze sie temu przyjrzec.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_13"); //Nie pozwólcie, ze zatrzymam sie. Móglby to byc przyklad dla grabiezy, którzy wiedza.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_14"); //Milego dnia.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_15"); //Tak, na pewno tak.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_16"); //O tak, jesli chcesz nas odwiedzic: Wystarczy przejsc sie po skalnej scianie, najpierw w kierunku lasu, potem pod góre.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_17"); //Zawsze mozemy uzyc kogos takiego jak Ty.

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ratford_Fokus (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Fokus_Condition;
	information	= Info_Mod_Ratford_Fokus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ratford_Fokus_Condition()
{
	if (Kapitel == 2)
	&& (Mod_RatfordDrax_Weg)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Fokus_Info()
{
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_00"); //Szalec, wiem, ze wiesz, czlowiek! Czy mozesz mi powiedziec, o co w tym wszystkim chodzi?
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_01"); //Czy tak wygladam? Co sie stalo z pieklem?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_02"); //Dobre pytanie! Drax i ja wlasnie polowalismy tutaj, a ta horda Warge pojawila sie za nami i zmierza prosto za nas.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_03"); //Natychmiast wyciagnelismy wiec strzaly i oddalismy bestie w ich usta, ale bylo ich o wiele za duzo.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_04"); //Ale zamiast nas spadac, biegna za nami do tego dziwnego kólka, chwytaja lezaca na nas mala kwadratowa rzecz i uciekaja.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_05"); //Nigdy nie widzialem niczego tak zwariowanego. (smiertelnie niepewne zycie)
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_06"); //Gdzie zanikla wojna wojenna?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_07"); //Prosto do piekla, jesli mnie zapytacie.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_08"); //Drax poszedl za nimi, znikneli w glab lasu.
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_09"); //I tu trzymasz sie linii.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_10"); //Cóz, cios juz nie dziala. Mam tylko nadzieje, ze Drax nie zostal zreszta okaleczony.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Kiedy skupialem sie na skalach, wyprzedzila mnie grota wojenna. Pod ostrzalem Ratforda i Draxu pod ostrzalem, uchwycila ognisko i zniknela w glebi lasu. Drax biegal za nim.");

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "FOKUS");

	Wld_InsertNpc	(Warg_RatfordDrax_09, "FP_WARGLEICHE_FOKUS_09");
	Wld_InsertNpc	(Warg_RatfordDrax_10, "FP_WARGLEICHE_FOKUS_10");
	Wld_InsertNpc	(Warg_RatfordDrax_11, "FP_WARGLEICHE_FOKUS_11");
	Wld_InsertNpc	(Warg_RatfordDrax_12, "FP_WARGLEICHE_FOKUS_12");
	Wld_InsertNpc	(Warg_RatfordDrax_13, "FP_WARGLEICHE_FOKUS_13");
	Wld_InsertNpc	(Warg_RatfordDrax_14, "FP_WARGLEICHE_FOKUS_14");
	Wld_InsertNpc	(Warg_RatfordDrax_15, "FP_WARGLEICHE_FOKUS_15");
	Wld_InsertNpc	(Warg_RatfordDrax_16, "FP_WARGLEICHE_FOKUS_16");
	Wld_InsertNpc	(Warg_RatfordDrax_17, "FP_WARGLEICHE_FOKUS_17");
	Wld_InsertNpc	(Warg_RatfordDrax_18, "FP_WARGLEICHE_FOKUS_18");
	Wld_InsertNpc	(Warg_RatfordDrax_19, "FP_WARGLEICHE_FOKUS_19");
	Wld_InsertNpc	(Warg_RatfordDrax_20, "FP_WARGLEICHE_FOKUS_20");
	Wld_InsertNpc	(Warg_RatfordDrax_21, "FP_WARGLEICHE_FOKUS_21");
	Wld_InsertNpc	(Warg_RatfordDrax_22, "FP_WARGLEICHE_FOKUS_22");

	B_KillNpc	(Warg_RatfordDrax_09);
	B_KillNpc	(Warg_RatfordDrax_10);
	B_KillNpc	(Warg_RatfordDrax_11);
	B_KillNpc	(Warg_RatfordDrax_12);
	B_KillNpc	(Warg_RatfordDrax_13);
	B_KillNpc	(Warg_RatfordDrax_14);
	B_KillNpc	(Warg_RatfordDrax_15);
	B_KillNpc	(Warg_RatfordDrax_16);
	B_KillNpc	(Warg_RatfordDrax_17);
	B_KillNpc	(Warg_RatfordDrax_18);
	B_KillNpc	(Warg_RatfordDrax_19);
	B_KillNpc	(Warg_RatfordDrax_20);
	B_KillNpc	(Warg_RatfordDrax_21);
	B_KillNpc	(Warg_RatfordDrax_22);
};

INSTANCE Info_Mod_Ratford_Pickpocket (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Pickpocket_Condition;
	information	= Info_Mod_Ratford_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ratford_Pickpocket_Condition()
{
	C_Beklauen	(85, ItFo_MuttonRaw, 11);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_BACK, Info_Mod_Ratford_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ratford_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ratford_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ratford_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ratford_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ratford_EXIT (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_EXIT_Condition;
	information	= Info_Mod_Ratford_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ratford_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ratford_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
