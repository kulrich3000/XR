INSTANCE Info_Mod_Assassine_Nagur_Hi (C_INFO)
{
	npc		= Mod_7782_ASS_Assassine_NW;
	nr		= 1;
	condition	= Info_Mod_Assassine_Nagur_Hi_Condition;
	information	= Info_Mod_Assassine_Nagur_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Assassine_Nagur_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_00"); //Co? Ty!

	AI_TurnToNpc	(self, Mod_7783_OUT_Schmuggler_NW);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_01"); //(Dla innych) To jest ten facet, który byl nowicjuszem Nagura.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_02"); //Czy poszedles za nami? Co tu robisz?

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Nagur dal mi zadanie, zebys zrobil ci facetów.", Info_Mod_Assassine_Nagur_Hi_B);
	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Oczysc martwe cialo wokól konrabanda.", Info_Mod_Assassine_Nagur_Hi_A);
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_B_15_00"); //Nagur dal mi zadanie, zebys zrobil ci facetów.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_01"); //Co? Ten syn suki! I powinienes uwaznie zastanowic sie, co zamierzasz zrobic..... za kogo bierzesz po bokach!
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_B_15_02"); //Co masz do zaoferowania?
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_03"); //.... Mozesz przyjsc bez walki i zadrapan na niektórych zlotych monetach.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_04"); //Wystarczy tylko odwrócic sie i powiedziec Nagurom, ze wykonales swoja prace.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_05"); //On stanie sie beztroski i to jest moment, w który uderzymy.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_06"); //Jak tylko sie skonczy, dowiesz sie w pubie i dostaniesz worek zlota.

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Dobrze mi brzmi.", Info_Mod_Assassine_Nagur_Hi_D);
	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Nie, wolalbym odciazyc wasze umarle ciala wokól konrabanda.", Info_Mod_Assassine_Nagur_Hi_C);
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_E_03_00"); //Przyjrzyjmy sie!

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7781_SNOV_Novize_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7781_SNOV_Novize_NW, GIL_STRF);

	Mod_7783_OUT_Schmuggler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7783_OUT_Schmuggler_NW, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	Mod_Nagur_Geschaeft = 5;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_A_15_00"); //Oczysc martwe cialo wokól konrabanda.

	Info_Mod_Assassine_Nagur_Hi_E();
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_D_15_00"); //Dobrze mi brzmi.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_D_03_01"); //Bardzo dobry.... jestes rozsadny. No cóz, wiesz co robic.

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "Moge teraz poinformowac Nagura, ze jego konkurenci zostali wyeliminowani.");

	AI_StopProcessInfos	(self);

	Mod_Nagur_Geschaeft = 4;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_C_15_00"); //Nie, wolalbym odciazyc wasze umarle ciala wokól konrabanda.

	Info_Mod_Assassine_Nagur_Hi_E();
};

INSTANCE Info_Mod_Assassine_Nagur_EXIT (C_INFO)
{
	npc		= Mod_7782_ASS_Assassine_NW;
	nr		= 1;
	condition	= Info_Mod_Assassine_Nagur_EXIT_Condition;
	information	= Info_Mod_Assassine_Nagur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Assassine_Nagur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Assassine_Nagur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
