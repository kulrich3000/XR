INSTANCE Info_Mod_Karras_GDG_Kreis1	(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis1_Condition;
	information	= Info_Mod_Karras_GDG_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie pierwszego kola magii.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Hallo))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis1_15_00"); //Naucz mnie pierwszego kola magii.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis1_36_01"); //Pierwsze kolo pozwala na uzycie utworzonych przez Ciebie run.
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis1_36_02"); //Mozesz teraz nauczyc sie formul zaklec, aby tworzyc wlasne runy.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_GDG_Kreis2		(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis2_Condition;
	information	= Info_Mod_Karras_GDG_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie drugiego kola magii.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis2_15_00"); //Naucz mnie drugiego kola magii.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis2_36_01"); //Wejdz do drugiego kola i naucz sie rzucac jeszcze mocniejsze czary.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis2_36_02"); //Nadszedl jeszcze czas.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_GDG_Kreis3		(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis3_Condition;
	information	= Info_Mod_Karras_GDG_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie trzeciego kola magii.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis3_15_00"); //Naucz mnie trzeciego kola magii.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis3_36_01"); //Tak, nadszedl czas. Wprowadz trzecie kolo magii. Czekaja na Ciebie nowe zaklecia.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis3_36_02"); //Nie nadszedl jeszcze czas, aby nauczyc sie trzeciego kola.
	};
};		

INSTANCE Info_Mod_Karras_GDG_Kreis4 (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis4_Condition;
	information	= Info_Mod_Karras_GDG_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac czwarte kolo magii.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis4_15_00"); //Chce poznac czwarte kolo magii.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis4_36_01"); //Dobre. Wszystkie znaki sa wypelnione. Teraz wejdz w czwarte kolo, abys mial moc nowych zaklec.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis4_36_02"); //Jeszcze nie.
	};
};

INSTANCE Info_Mod_Karras_GDG_Kreis5 (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis5_Condition;
	information	= Info_Mod_Karras_GDG_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac piate kolo magii.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_GDG_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis5_15_00"); //Chce poznac piate kolo magii.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis5_36_01"); //Nastepnie dolacz do piatego kola magii. Teraz opanujesz mocniejsze czary niz kiedykolwiek wczesniej.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis5_36_02"); //Nadszedl jeszcze czas.
	};
};

INSTANCE Info_Mod_Karras_GDG_Kreis6	(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis6_Condition;
	information	= Info_Mod_Karras_GDG_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie ostatniego kola magii.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_GDG_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis6_15_00"); //Naucz mnie ostatniego kola magii.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_01"); //Minelo wiele czasu od zawarcia przymierza z Beliarem. Wiele sie wydarzylo i nie znajdujemy pokoju.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_02"); //Jestes wybranym Beliarem. W ten sposób bedziesz potrzebowal calej sily, aby przetrwac swoje walki.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_03"); //Poswiecam pana teraz, prosze pania wybrac. Wprowadzasz szóste kolo.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_04"); //Mozesz teraz nauczyc sie zaklec ostatniego kola z Andokai, jesli chcesz.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_05"); //To jeszcze nie czas. Jesli poszedles troche dalej po drodze Beliar cie pokaze, a ja cie poucze.
	};
};

INSTANCE Info_Mod_Karras_GDG_EXIT (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_EXIT_Condition;
	information	= Info_Mod_Karras_GDG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karras_GDG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_GDG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
