INSTANCE Info_Mod_Dexter_NW_Hi (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Hi_Condition;
	information	= Info_Mod_Dexter_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_Hi_15_00"); //Tekst? Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_09_01"); //Cóz, w Minentalu bylo po prostu za goraco dla mnie i chlopców.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_09_02"); //Ostatnio orki po prostu nas przeciazyly i po wszystkich przezytych wydarzeniach nie chcialem próbowac szczescia.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_09_03"); //Dlatego wolimy opuscic te straszliwa doline i poczuc sie komfortowo w tej opuszczonej twierdzy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SESSEL");
};

INSTANCE Info_Mod_Dexter_NW_AllesRoger (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_AllesRoger_Condition;
	information	= Info_Mod_Dexter_NW_AllesRoger_Info;
	permanent	= 0;
	important	= 0;
	description	= "A wiec, czy podoba sie Pani tutaj?";
};

FUNC INT Info_Mod_Dexter_NW_AllesRoger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Hi))
	&& (Npc_GetDistToWP(hero, "NW_CASTLEMINE_HUT_10") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_AllesRoger_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_AllesRoger_15_00"); //A wiec, czy podoba sie Pani tutaj?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_AllesRoger_09_01"); //Cóz, czego jeszcze chcesz? Mamy dach nad glowa, dzieki temu, ze z latwoscia mozemy sie bronic, zawsze masz wszystko w zasiegu wzroku.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_AllesRoger_09_02"); //Teraz byloby to wykonalne tylko wtedy, gdybysmy mieli dostep do kopalni. Moze byloby cos do zdobycia..... po prostu nie moze sie dostac.
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang_Info;
	permanent	= 0;
	important	= 0;
	description	= "Za grillem znajduje sie plyta kamienna (...... )";
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_AllesRoger))
	&& (Mod_Mineneingang_Castle)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_Minenzugang_15_00"); //Za kratka znajduje sie kamienna plyta, która reaguje na strzalki i sruby wystawiajace dostep do kopalni.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang_09_01"); //Naprawde? Musimy to wypróbowac przy najblizszej okazji.....
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang2 (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang2_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Minenzugang))
	&& (Mod_Banditen_Mine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang2_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang2_09_00"); //Kopalnia ta wydaje sie byc prawdziwa kopalnia zlota. Jesli wydobycie bedzie kontynuowane tak dobrze, wkrótce bedziemy tak samo bogaci jak ugruntowana szopa w ratuszach.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang2_09_01"); //Zadne wykroczenie, to byla dobra robota. Oto Twój udzial w zyskach.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_GivePlayerXP	(200);

	Mod_Banditen_Mine_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang3 (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang3_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Minenzugang2))
	&& (Mod_Banditen_Mine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang3_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang3_09_00"); //(smiech) No cóz, tam patrzysz, huh? Teraz naprawde osiagnelismy szczyt..... prawdziwymi baronami rudy! Ktos musi podtrzymywac te tradycje, prawda?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang3_09_01"); //Tutaj tez masz akordeon, jesli chcesz zrobic akordeon na szlachetnym dzentelmenie.... Oczywiscie nie powinno zabraknac zlota i rudy. Zabawa z tym.

	CreateInvItems	(hero, ItMi_Gold, 700);
	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ITAR_Governor, 1);

	B_ShowGivenThings	("Suknia, 700 zlota i 20 konserwowana ruda");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Dexter_NW_EXIT (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_EXIT_Condition;
	information	= Info_Mod_Dexter_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dexter_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
