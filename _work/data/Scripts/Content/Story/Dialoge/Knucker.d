INSTANCE Info_Mod_Knucker_Hi (C_INFO)
{
	npc		= Knucker_11001_NW;
	nr		= 1;
	condition	= Info_Mod_Knucker_Hi_Condition;
	information	= Info_Mod_Knucker_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knucker_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Knucker_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_21_00"); //Hej, niemowle, co ty tu robisz?

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	Info_AddChoice	(Info_Mod_Knucker_Hi, "Jestem waszym najgorszym koszmarem.", Info_Mod_Knucker_Hi_C);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "Zbieralem rzepe.", Info_Mod_Knucker_Hi_B);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "Tak sie sklada, ze jestem tutaj.", Info_Mod_Knucker_Hi_A);
};

FUNC VOID Info_Mod_Knucker_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_D_21_00"); //(niezainteresowany) Tak Tak Tak....... Mozesz cos dla mnie zrobic. Mam strzalke na lapie. Chce, zeby pan ja pan wyciagnal.

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	Info_AddChoice	(Info_Mod_Knucker_Hi, "Nie, przykrec.", Info_Mod_Knucker_Hi_F);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "Z pewnoscia chetnie pomoze.", Info_Mod_Knucker_Hi_E);
};

FUNC VOID Info_Mod_Knucker_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_C_15_00"); //Jestem waszym najgorszym koszmarem.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_B_15_00"); //Zbieralem rzepe.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_A_15_00"); //Tak sie sklada, ze jestem tutaj.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_F_15_00"); //Nah, przykrec.
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_F_21_01"); //Wtedy bede cie pieczyl i zjesc.

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
	B_Attack	(Feuerdrache_11002_NW, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Knucker_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_E_15_00"); //Z pewnoscia chetnie pomoze.

	AI_PlayAni	(hero, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Knucker_Hi_E_21_01"); //Ahh, tak samo lepiej. Wykonales dobra robote, ty duzy czlowiek. Mozesz przejsc teraz.

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	AI_StopProcessInfos	(self);
};
