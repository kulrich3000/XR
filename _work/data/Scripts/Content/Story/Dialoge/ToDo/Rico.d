INSTANCE Info_Mod_Rico_Hi (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_Hi_Condition;
	information	= Info_Mod_Rico_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rico_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rico_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_04_00"); //Przyjedz blizej, przyjdz blizej, obcy.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Co to jest sprawa?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Co jesli nie?", Info_Mod_Rico_Hi_A);
};

FUNC VOID Info_Mod_Rico_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_B_15_00"); //Co to jest sprawa?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_B_04_01"); //Z pewnoscia interesuje Cie dobry biznes, czy nie?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Co o tym chodzi?", Info_Mod_Rico_Hi_D);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Oczywiscie tak jest.", Info_Mod_Rico_Hi_C);
};

FUNC VOID Info_Mod_Rico_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_A_15_00"); //Co jesli nie?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_A_04_01"); //Kazdy jest kowalem wlasnego szczescia.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Co to jest sprawa?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Lepiej by bylo, gdybym mógl jechac.", Info_Mod_Rico_Hi_H);
};

FUNC VOID Info_Mod_Rico_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_H_15_00"); //Lepiej by bylo, gdybym mógl jechac.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_H_04_01"); //To stracona szansa!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Co to jest sprawa?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "ENDE", Info_Mod_Rico_Hi_I);
};

FUNC VOID Info_Mod_Rico_Hi_I()
{
	Info_ClearChoices	(Info_Mod_Rico_Hi);
};

FUNC VOID Info_Mod_Rico_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_D_15_00"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_D_04_01"); //Wiec jestes?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "To nie jest dla mnie.", Info_Mod_Rico_Hi_E);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Oczywiscie tak jest.", Info_Mod_Rico_Hi_C);
};

FUNC VOID Info_Mod_Rico_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_E_15_00"); //To nie jest dla mnie.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_E_04_01"); //To stracona szansa!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Co o tym chodzi?", Info_Mod_Rico_Hi_G);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Wole nie.", Info_Mod_Rico_Hi_F);
};

FUNC VOID Info_Mod_Rico_Hi_J()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_J_04_00"); //Bardzo dobry. Znam kogos, kto ma pas wartosciowy. Jest tak bogaty, niemal czai sie.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_J_04_01"); //Czy nie zamierzamy uwolnic go od ciezkiego ciezaru?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "To nie jest dla mnie.", Info_Mod_Rico_Hi_L);
	Info_AddChoice	(Info_Mod_Rico_Hi, "To dobry pomysl.", Info_Mod_Rico_Hi_K);
};

FUNC VOID Info_Mod_Rico_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_L_15_00"); //To nie jest dla mnie.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_L_04_01"); //To stracona szansa!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Dobrze, zrobie to.", Info_Mod_Rico_Hi_N);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Nie angazuje sie w tego typu sprawy.", Info_Mod_Rico_Hi_M);
};

FUNC VOID Info_Mod_Rico_Hi_P()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_P_04_00"); //Lubie Cie. Podazaj za mna, idz za mna.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");
};

FUNC VOID Info_Mod_Rico_Hi_O()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_O_04_00"); //Dopasuj sie do siebie.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Rico_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_N_15_00"); //Dobrze, zrobie to.

	Info_Mod_Rico_Hi_P();
};

FUNC VOID Info_Mod_Rico_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_C_15_00"); //Oczywiscie tak jest.

	Info_Mod_Rico_Hi_J();
};

FUNC VOID Info_Mod_Rico_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_G_15_00"); //Co o tym chodzi?

	Info_Mod_Rico_Hi_J();
};

FUNC VOID Info_Mod_Rico_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_F_15_00"); //Wole nie.

	Info_Mod_Rico_Hi_O();
};

FUNC VOID Info_Mod_Rico_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_K_15_00"); //To dobry pomysl.

	Info_Mod_Rico_Hi_P();
};

FUNC VOID Info_Mod_Rico_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_M_15_00"); //Nie angazuje sie w tego typu sprawy.

	Info_Mod_Rico_Hi_O();
};

INSTANCE Info_Mod_Rico_AtDungeon (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_AtDungeon_Condition;
	information	= Info_Mod_Rico_AtDungeon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rico_AtDungeon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rico_Hi))
	&& (Npc_GetDistToWP(self, "EIS_132") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rico_AtDungeon_Info()
{
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_04_00"); //Idiotuj, zabijemy cie teraz.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Chodzcie wiec dalej!", Info_Mod_Rico_AtDungeon_B);
	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Hej, jest pokojowe rozwiazanie.", Info_Mod_Rico_AtDungeon_A);
};

FUNC VOID Info_Mod_Rico_AtDungeon_B()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_B_15_00"); //Chodzcie wiec dalej!

	AI_TurnToNpc	(self, Mod_4018_EIS_Buck_EIS);

	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_B_04_01"); //Wkrecic! Chodzcie dalej, odejdzmy!

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);
	B_Attack	(Mod_4018_EIS_Buck_EIS, hero, AR_KILL, 3);
};

FUNC VOID Info_Mod_Rico_AtDungeon_A()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_A_15_00"); //Hej, jest pokojowe rozwiazanie.
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_A_04_01"); //Pózniej daj nam cale zloto lub dostaniemy je.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Oto moje zloto, pozwól mi odejsc.", Info_Mod_Rico_AtDungeon_D);
	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Czy jest jeszcze inne rozwiazanie?", Info_Mod_Rico_AtDungeon_C);
};

FUNC VOID Info_Mod_Rico_AtDungeon_D()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_D_15_00"); //Oto moje zloto, pozwól mi odejsc.

	B_GiveInvItems	(hero, self, ItMi_Gold, Npc_HasItems(hero, ItMi_Gold));

	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_D_04_01"); //Teraz wyjdz z tego miejsca.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Rico_AtDungeon_C()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_C_15_00"); //Czy jest jeszcze inne rozwiazanie?
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_C_04_01"); //Nie.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Oto moje zloto, pozwól mi odejsc.", Info_Mod_Rico_AtDungeon_D);
};

INSTANCE Info_Mod_Rico_EXIT (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_EXIT_Condition;
	information	= Info_Mod_Rico_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rico_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rico_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
