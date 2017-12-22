INSTANCE Info_Mod_Urnol_XW_Hi (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_Hi_Condition;
	information	= Info_Mod_Urnol_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_00"); //(hemizm) I - huk! Zamkniety.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_01"); //Móglbym cie sam zabic, ale wtedy mój pan bylby nieszczesliwy - przeciez jestes jego zabawka.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_02"); //Dlatego bede zadowolony, ze na razie zobacze cie za kratkami.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_03"); //Chodzcie dalej, odejdzmy!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Urnol_XW_Gefangen (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_Gefangen_Condition;
	information	= Info_Mod_Urnol_XW_Gefangen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_XW_Gefangen_Condition()
{
	if (Mod_XW_Startscene == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_XW_Gefangen_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_00"); //Teraz zakonczyla sie irytujaca gra w chowanego. Powinienem byl pania zabrac ze mna na pierwsze spotkanie.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_01"); //Zbyt zle plany nie zostaly wówczas zrealizowane.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_02"); //Ale nikt nie wiedzial, ze mozesz usunac Signum Magicum.
	AI_Output(hero, self, "Info_Mod_Urnol_XW_Gefangen_15_03"); //Dlaczego porwales Argeza?
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_04"); //Cóz, szukalismy cie, ale to on niósl ten znak.
	AI_Output(hero, self, "Info_Mod_Urnol_XW_Gefangen_15_05"); //Co?
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_06"); //(smiech) Jeszcze lepiej, jesli nie bylo zamierzone.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_07"); //Kiedy jednak wczesniej bylismy tam, pomyslelismy, ze mozemy go wykorzystac jako dzwignie.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_08"); //Cóz, mam nadzieje, ze nie bedzie za dlugo zanim Xeres powróci. Wiesz, ze ma pilny interes na górze.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_09"); //Sprawy musial odkladac na tysiace lat.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_10"); //Ale nie martw sie, nie bedziesz musial tak dlugo czekac na swoja bolesna egzekucje. (smiertelnicy)

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Urnol_XW_EXIT (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_EXIT_Condition;
	information	= Info_Mod_Urnol_XW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urnol_XW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_XW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
