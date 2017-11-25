INSTANCE Info_Mod_Novize_JG_Pass_Hi (C_INFO)
{
	npc		= Mod_7435_NOV_Novize_MT;
	nr		= 1;
	condition	= Info_Mod_Novize_JG_Pass_Hi_Condition;
	information	= Info_Mod_Novize_JG_Pass_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Novize_JG_Pass_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_03_00"); //Milosierdzie mam na mnie, nie jestem gonna nic zrobic, szczerze mówiac.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Dlaczego mnie zaatakowales?", Info_Mod_Novize_JG_Pass_Hi_B);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Zapomnij, umrzec.", Info_Mod_Novize_JG_Pass_Hi_A);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_B_15_00"); //Dlaczego mnie zaatakowales?
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_B_03_01"); //l-- Nie moglem sobie pomóc. Zmusil mnie do tego.
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_B_15_02"); //Kto Cie zmusil?
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_B_03_03"); //Mistrz mój. Prosze pozwolic mi zyc.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Przed smiercia bedziesz mial przynajmniej swoje sumienie (....). )", Info_Mod_Novize_JG_Pass_Hi_D);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Dobrze, nie zaszkodze juz dluzej. Powiedz mi teraz (....). )", Info_Mod_Novize_JG_Pass_Hi_C);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_D_15_00"); //Zanim umrzesz, przynajmniej mógles uwolnic swoje sumienie. Die.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_D_03_01"); //majster

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_C_15_00"); //Dobrze, nie zaszkodze juz dluzej. Teraz powiedz mi, kim jest twój pan.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_C_03_01"); //Nie moge, on mnie za to zabija. Prosze pozwolic mi odejsc.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Nie. Sirb.", Info_Mod_Novize_JG_Pass_Hi_F);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Wejdz stad i nie wracaj, tchórz.", Info_Mod_Novize_JG_Pass_Hi_E);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_F_15_00"); //Nie. Sirb.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_E_15_00"); //Wejdz stad i nie wracaj, tchórz.

	AI_TurnAway	(hero, self);

	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_E_03_01"); //Glupicie umieracie. Nigdy nie bylbym w stanie stac pod oczami mojego mistrza tak jak teraz.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_A_15_00"); //Zapomnij, umrzec.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_A_03_01"); //Nope!

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
