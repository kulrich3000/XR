INSTANCE Info_Mod_Soeren_Hi (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_Hi_Condition;
	information	= Info_Mod_Soeren_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Soeren_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Faice))
	&& (Mod_VMG_FaiceGifty_Gift == 4)
	&& (!Npc_IsInState(Mod_1959_VMG_Genn_TUG, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Soeren_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Hi_08_00"); //Slyszalem o Tobie. Byloby jednak niezwykle przyjaznie, gdybysmy mogli kontynuowac rozmowy w pokoju.
	AI_Output(hero, self, "Info_Mod_Soeren_Hi_15_01"); //Chce porozmawiac z Gennem na minute, a potem pójde.
	AI_Output(self, hero, "Info_Mod_Soeren_Hi_08_02"); //Wszystkie sluszne, wszystkie sluszne.

	Mod_VMG_FaiceGifty_Gift = 5;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Soeren_Mendulus (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_Mendulus_Condition;
	information	= Info_Mod_Soeren_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Soeren_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Soeren_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_08_00"); //Potrzebujesz rzadkiej rosliny leczniczej, czy zauwazylem?

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Mylisz sie z tym.", Info_Mod_Soeren_Mendulus_B);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Co by bylo, gdyby?", Info_Mod_Soeren_Mendulus_A);
};

FUNC VOID Info_Mod_Soeren_Mendulus_E()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_E_08_00"); //Wtedy prosilbym pana teraz o przekazanie mi go, aby uniknac rozlewu krwi.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Co by bylo, gdybym Ci tego nie dal?", Info_Mod_Soeren_Mendulus_I);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Nie chcesz pomagac w odbudowie.", Info_Mod_Soeren_Mendulus_H);
};

FUNC VOID Info_Mod_Soeren_Mendulus_J()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_J_08_00"); //Gdybym ci to powiedzial, musialabym cie potem zabic.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_J_15_01"); //Daj mu strzal.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Najwyrazniej Sören nie jest czlowiekiem pomocnym, którego reprezentuje. Próbowal zabrac moje rosliny.");

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Soeren_Mendulus_B()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_B_15_00"); //Mylisz sie z tym.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_B_08_01"); //Nie pieprzcie sie ze mna!

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Dobrze, mam zaklad, a teraz?", Info_Mod_Soeren_Mendulus_D);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Nigdy bym tego nie zrobil.", Info_Mod_Soeren_Mendulus_C);
};

FUNC VOID Info_Mod_Soeren_Mendulus_A()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_A_15_00"); //Co by bylo, gdyby?
	
	Info_Mod_Soeren_Mendulus_E();
};

FUNC VOID Info_Mod_Soeren_Mendulus_D()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_D_15_00"); //Dobrze, mam zaklad, a teraz?
	
	Info_Mod_Soeren_Mendulus_E();
};

FUNC VOID Info_Mod_Soeren_Mendulus_C()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_C_15_00"); //Nigdy bym tego nie zrobil.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_C_08_01"); //Czy masz na to ochote?

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Mozemy pracowac nad czyms innym.", Info_Mod_Soeren_Mendulus_G);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Odwiedz to miejsce.", Info_Mod_Soeren_Mendulus_F);
};

FUNC VOID Info_Mod_Soeren_Mendulus_G()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_G_15_00"); //Mozemy pracowac nad czyms innym.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_G_08_01"); //Wtedy daj mi rosline, wiem, ze cie przyniósl.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_02"); //Potem powiedz mi, co z tym robisz.
	
	Info_Mod_Soeren_Mendulus_J();
};

FUNC VOID Info_Mod_Soeren_Mendulus_F()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_F_15_00"); //Odwiedz to miejsce.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_F_08_01"); //Dopasuj sie do siebie.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Soeren_Mendulus_I()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_00"); //Co by bylo, gdybym Ci tego nie dal?
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_I_08_01"); //Wtedy musialabym sie wybic, ale nie moglabym tego zrobic.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_02"); //Potem powiedz mi, co z tym robisz.
	
	Info_Mod_Soeren_Mendulus_J();
};

FUNC VOID Info_Mod_Soeren_Mendulus_H()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_H_15_00"); //Nie chcesz pomagac w odbudowie.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_H_08_01"); //Jestes inteligentnym facetem. Oczywiscie nie chce pomagac.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_H_15_02"); //Czego chcesz?
	
	Info_Mod_Soeren_Mendulus_J();
};

INSTANCE Info_Mod_Soeren_EXIT (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_EXIT_Condition;
	information	= Info_Mod_Soeren_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Soeren_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Soeren_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
