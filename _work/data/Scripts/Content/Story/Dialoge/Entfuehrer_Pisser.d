INSTANCE Info_Mod_Entfuehrer_Pisser_Hi (C_INFO)
{
	npc		= Mod_7030_OUT_Entfuehrer_NW;
	nr		= 1;
	condition	= Info_Mod_Entfuehrer_Pisser_Hi_Condition;
	information	= Info_Mod_Entfuehrer_Pisser_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Entfuehrer_Pisser_Hi_Condition()
{
	if (Npc_GetDistToWP(self, "WP_PINKELPAUSE") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_05_00"); //Zatrzymaj sie! Czego od mnie oczekujesz?

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "Próbowalem po prostu pana zabic.", Info_Mod_Entfuehrer_Pisser_Hi_B);
	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "Zastanawialem sie, czy mozesz mi pomóc wybrac kwiaty.", Info_Mod_Entfuehrer_Pisser_Hi_A);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_00"); //Jestes tym, którego szukamy. Móglbym panstwa teraz wezwac na glos i zaatakowac. Nie mielibysmy zadnych szans.
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_C_15_01"); //I dlaczego tego nie zrobisz?
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_02"); //Mam troje dzieci do wyzywienia, a z mieczem w klatce piersiowej ciezko zarabiac pieniadze.
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_03"); //Sugeruje, zebyscie pozwolili mi odejsc i nie bede apelowal o pomoc.

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "Nie, nie moge ci pozwolic zyc.", Info_Mod_Entfuehrer_Pisser_Hi_E);
	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "Uzgodnione. Wyjsc stad!", Info_Mod_Entfuehrer_Pisser_Hi_D);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_B_15_00"); //Próbowalem po prostu pana zabic.

	Info_Mod_Entfuehrer_Pisser_Hi_C();
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_A_15_00"); //Zastanawialem sie, czy mozesz mi pomóc wybrac kwiaty.
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_A_05_01"); //(niedotkniete) Ha-ha. (pauza)

	Info_Mod_Entfuehrer_Pisser_Hi_C();
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_E_15_00"); //Nie, nie moge ci pozwolic zyc.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_D_15_00"); //Uzgodnione. Wyjsc stad!
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	B_GivePlayerXP	(100);

	Mod_ValentineKill03 = 2;
};
