INSTANCE Info_Mod_Froppi_Hi (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_Hi_Condition;
	information	= Info_Mod_Froppi_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Froppi_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Froppi_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_05_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Froppi_Hi_Info()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Ork, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_00"); //Cóz, spójrz, kto jest tutaj.

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_01"); //Nie wiem, szef. Moze supremo?

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_02"); //Nie, jest grubsza. To ktos, kto chce rzucic uczciwych lowców skarbów do pracy.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_03"); //A co z nim robimy?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_04"); //Zastanówcie sie co?

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_05"); //Ahhhhhhhhh, widze. Umiescimy go na lodzie.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_06"); //Jest zimno, zrozumiales?

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_07"); //Matka zawsze mówila, ze go schladza.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_08"); //Nie mówila tez o zabijaniu!

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_09"); //Masz oczywiscie racje jak zwykle, szef. Co znowu robimy?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_10"); //Zbadamy krzyzowo sprawce usterki.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_11"); //Jesli da nam jakis powód, by nie podobac sie mu, zabijemy go.

	AI_TurnToNpc	(Froppi, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_12"); //Slyszysz to, bohater?
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_15_13"); //Tak.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_14"); //Lubisz sernik?

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	Info_AddChoice	(Info_Mod_Froppi_Hi, "Nie.", Info_Mod_Froppi_Hi_B);
	Info_AddChoice	(Info_Mod_Froppi_Hi, "Tak.", Info_Mod_Froppi_Hi_A);
};

FUNC VOID Info_Mod_Froppi_Hi_B()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, hero);
	AI_TurnToNpc	(Froppi, hero);

	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_01"); //Nie. Nikt nie lubi serników.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_02"); //Jakie to bylo glupie pytanie?
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_03"); //Czy moge cos powiedziec?
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_04"); //Nie ma mowy, ze jestem tu rzecznikiem.

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_05"); //I ja.

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_06"); //Nie, jestes tylko liderem glupców.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_07"); //Tak, szef.
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_08"); //Dlaczego zniesc postawe tego pachnacego malego karla?
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_09"); //Czy nie raczej go pobilbys?

	AI_TurnToNpc	(Ork, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_10"); //To prawda, ale to mój ojciec.

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_11"); //Wystarczajaca ilosc belkotek. Teraz ponownie mnie sluchasz!

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_12"); //Nie, szef, to naprawde wystarczy.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_13"); //Mysle, ze ta osoba jest mila i moge z nia porozmawiac.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_14"); //Dlaczego nie odnajdziesz swoich glupich skarbów?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_15"); //Co? Stajesz sie zbuntowany? To jest dobre!

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_16"); //Nie sadze, zebys mial odwage to zrobic.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_17"); //Potrzebujesz mnie jako ochroniarza, poniewaz jestes zbyt slaby.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_18"); //Myslales, ze nie zauwazylem, huh?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_19"); //Niegrzeczny chlopiec! Po prostu czekasz!

	Froppi.guild = GIL_STRF;
	Npc_SetTrueGuild (Froppi, GIL_STRF);

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Froppi_Hi_A()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, hero);

	AI_Output(hero, self, "Info_Mod_Froppi_Hi_A_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_01"); //Jakie to bylo glupie pytanie? Kto lubi sernik?
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_02"); //Zabije tego faceta!
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_03"); //Szalwia!

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	AI_StopProcessInfos	(self);

	B_SetAttitude (Froppi, ATT_HOSTILE);
	B_SetAttitude (Ork, ATT_HOSTILE);
};

INSTANCE Info_Mod_Froppi_Pickpocket (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_Pickpocket_Condition;
	information	= Info_Mod_Froppi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Froppi_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

	Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_BACK, Info_Mod_Froppi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Froppi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Froppi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Froppi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Froppi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Froppi_EXIT (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_EXIT_Condition;
	information	= Info_Mod_Froppi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Froppi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Froppi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
