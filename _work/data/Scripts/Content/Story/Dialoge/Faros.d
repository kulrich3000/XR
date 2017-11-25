INSTANCE Info_Mod_Faros_Hi (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_Hi_Condition;
	information	= Info_Mod_Faros_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Faros_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faros_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Faros_Hi_09_01"); //Jestem Faros, ogrodnik.
	AI_Output(self, hero, "Info_Mod_Faros_Hi_09_02"); //Jestem glowa ogrodu ziolowego.
};

INSTANCE Info_Mod_Faros_MangelQuest (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_MangelQuest_Condition;
	information	= Info_Mod_Faros_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada ogrodnictwo?";
};

FUNC INT Info_Mod_Faros_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest_15_00"); //Jak wyglada ogrodnictwo?
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_01"); //Miserable. Nie pomaga to, ze Turgas zawsze chce porozmawiac.
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest_15_02"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_03"); //Zapraszamy do obejrzenia! Wsród roslin wystepuje infekcja grzybicza i nie mam srodka grzybobójczego.
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_04"); //Na zewnatrz pierscienia oblezenia kazdy alchemik lub ziolowe utzi ma takie rzeczy. To zbyt frustrujace.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Faros skarzyl sie, ze w jego ogrodzie ziolowym wystepuje infekcja grzybicza. Powiedzial, ze kazdy alchemik i zielarz na zewnatrz ma antidotum.");
};

INSTANCE Info_Mod_Faros_MangelQuest2 (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_MangelQuest2_Condition;
	information	= Info_Mod_Faros_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam cos przeciwko infekcji grzybiczej.....";
};

FUNC INT Info_Mod_Faros_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_MangelQuest))
	&& (Npc_HasItems(hero, ItMi_Fungizid) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest2_15_00"); //Mam cos przeciwko infekcji grzybiczej.....

	B_GiveInvItems	(hero, self, ItMi_Fungizid, 1);

	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_01"); //Co? Pokaz mi.... Wydaje sie, ze tak wlasnie jest. Musze to teraz wypróbowac.

	AI_PlayAni	(hero, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_02"); //Tak, to dziala. Oznacza to, ze za kilka dni ta grzybowa historia bedzie juz przeszloscia. Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_03"); //Oto kilka z moich najlepszych ziól jako nagrode. Innos jest z toba.

	B_ShowGivenThings	("Kronstöckl, 4 wezel chwast i 5 korzeni przeciwpozarowych zakonserwowanych");

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPl_Temp_Herb, 4);
	CreateInvItems	(hero, ItPl_Mana_Herb_03, 5);

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Rozwiazano problem grzybów Faro.");

	B_StopMangel();
};

INSTANCE Info_Mod_Faros_Fake (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_Fake_Condition;
	information	= Info_Mod_Faros_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy byl tu jakis dziwny mag?";
};

FUNC INT Info_Mod_Faros_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Paladin01_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_Fake_15_00"); //Czy byl tu jakis dziwny mag?
	AI_Output(self, hero, "Info_Mod_Faros_Fake_09_01"); //Tak, rzeczywiscie. Tam byl ten facet, który sie spieszyl. Rozejrzal sie dookola, a potem mumblowal sie po bibliotece. Potem zniknal.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Faros powiedzial mi, ze magik okaleczyl cos z biblioteki. Moze powinienem sie rozejrzec.");
};

INSTANCE Info_Mod_Faros_EXIT (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_EXIT_Condition;
	information	= Info_Mod_Faros_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Faros_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faros_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
