INSTANCE Info_Mod_Grim_NW_Hi (C_INFO)
{
	npc		= Mod_7686_BUD_Grim_NW;
	nr		= 1;
	condition	= Info_Mod_Grim_NW_Hi_Condition;
	information	= Info_Mod_Grim_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grim_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grim_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_00"); //No cóz, no cóz....
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_01"); //Przypadac? Wiec tak naprawde zrobiles to na starym obozie.... a z wami cala grupa innych widze.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_02"); //Jestem zaskoczony.....
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_03"); //Cóz, jesli masz dobrych przyjaciól, którzy trzymaja sie razem i sa dla siebie nawzajem, mozna przetrwac wszystko.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_04"); //Tak..... nie widzisz nawet tych szczepów.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_05"); //W kazdym razie wiesz, co sie stalo?
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_06"); //Jak orki mogly burzyc obóz?
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_07"); //(tajemniczo) Tak..... Widzialem to..... Ktos zamordowal strazników i otworzyl brame.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_08"); //Co? Kto to zrobil?
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_09"); //.... byla ciemna i trudna do zobaczenia.... ale wierze, ze....
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_10"); //(mad) to ja, wuahahahahahahaha. Nie zostawiasz dobrych przyjaciól na zewnatrz....
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_11"); //(smiech) Ahhhhhh.

	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Cóz, ten z grupa w Dragomiru zostal wtedy zrobiony w nieprzyjemny sposób. Grim zawsze dazy do zlych wzorców.");

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_7687_GRD_Gardist_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7687_GRD_Gardist_NW, GIL_STRF);

	Mod_7688_STT_Schatten_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7688_STT_Schatten_NW, GIL_STRF);

	Mod_7689_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7689_BUD_Buddler_NW, GIL_STRF);

	Mod_7690_STT_Schatten_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7690_STT_Schatten_NW, GIL_STRF);

	Mod_7691_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7691_BUD_Buddler_NW, GIL_STRF);
};
