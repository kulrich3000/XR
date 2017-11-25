INSTANCE Info_Mod_Emerin_Stollen (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_Stollen_Condition;
	information	= Info_Mod_Emerin_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Emerin_Stollen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grubuz_Stollen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_00"); //Co? Skad pochodziles?
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_15_01"); //Chyba powinienem pana o to zapytac.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_02"); //Mieszkam tutaj. Orki tu kilka dni temu przebily sie przez te orki i musialem je jakos scigac.
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_15_03"); //Jestes nekromancerka?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_04"); //Tak, mozna to powiedziec.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Wtedy bede musial cie zabic.", Info_Mod_Emerin_Stollen_B);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Czy rozumiesz magie transformacji?", Info_Mod_Emerin_Stollen_A);
};

FUNC VOID Info_Mod_Emerin_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_B_15_00"); //Wtedy bede musial cie zabic.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_B_12_01"); //Co zrobilem dla Ciebie?

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Zrobilem to w mojej firmie, aby zabijac czarnoksiezników.", Info_Mod_Emerin_Stollen_C);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "To byl tylko zart.", Info_Mod_Emerin_Stollen_D);
};

FUNC VOID Info_Mod_Emerin_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_A_15_00"); //Czy rozumiesz magie transformacji?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_A_12_01"); //Oczywiscie tak jest. Bylem kiedys szanowanym czlonkiem Kola Metamagic w Tugettso.
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_A_15_02"); //Dlaczego nikogo juz nie masz?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_A_12_03"); //To dluga historia.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Krótka wersja, prosze.", Info_Mod_Emerin_Stollen_F);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Mam czas.", Info_Mod_Emerin_Stollen_E);
};

FUNC VOID Info_Mod_Emerin_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_D_15_00"); //To byl tylko zart.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Czy zdarzylo Ci sie znalezc tunel?", Info_Mod_Emerin_Stollen_A);
};

FUNC VOID Info_Mod_Emerin_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_C_15_00"); //Zrobilem to w mojej firmie, aby zabijac czarnoksiezników.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_C_12_01"); //Cóz, w takim przypadku.....

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Emerin_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_G_15_00"); //Wiec czy nadal jestes w stanie przeksztalcic sie lub przynajmniej stworzyc role transformacji?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_01"); //Oczywiscie oczywiscie. Magia nie jest latwa do zapomnienia. Co moge dla Ciebie zrobic?
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_G_15_02"); //Szukam zaklecia metamorfozy do harpie.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_03"); //Och, nie mam juz tego zadnego. Ale mozesz mnie dostac skladniki, które sa mi potrzebne do ich wyprodukowania.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_04"); //Interesuje Cie?

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "W tunelach spotkalem bylego maga transformacji, który zdaje sie bardzo dokladnie radzic sobie z nekromancja, nekromancja.");

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Jest cos, co chce zrobic najpierw.", Info_Mod_Emerin_Stollen_I);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Pewne. Co powinienem zrobic?", Info_Mod_Emerin_Stollen_H);
};

FUNC VOID Info_Mod_Emerin_Stollen_I()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_I_15_00"); //Jest cos, co chce zrobic najpierw.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_I_12_01"); //Jesli jestes zainteresowany, wróc.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);
};

FUNC VOID Info_Mod_Emerin_Stollen_H()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_H_15_00"); //Pewne. Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_H_12_01"); //Potrzebuje dwóch skrzydel krwi, kartki papieru - a takze profilu - i esencji mana.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Necromancer Emerin potrzebuje dwóch skrzydel muchy krwi, arkusza papieru i mana esencji do produkcji powiesciowej roli 'Transformation Harpie'.");

	Mod_Hermy_KnowsQuest = 4;

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);
};

FUNC VOID Info_Mod_Emerin_Stollen_E()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_E_15_00"); //Mam czas.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_01"); //Odkrylem, ze nauki innych byly bledne. Droga, która obrali, byla bledna.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_02"); //Ale kiedy próbowalem ich przekonac, nie uwierzyli mi. Wyrzucili mnie z wlasnej spolecznosci.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_03"); //Wiec bladzilem sie wokól i stopniowo nauczylem sie, ze zaklecie jest daleko przed transformacja.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_04"); //Odwiedzilem wielkich mistrzów, którzy prawdopodobnie do tej pory nie zyja i dowiedzialem sie wiele o nekromancji.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_05"); //Wkrótce potem odkrylem ten tunel i uczynilem go mieszkalnym przed jego zamknieciem.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_06"); //Ale potem przyszly orki i zmusily mnie do obrony tunelu.

	Info_Mod_Emerin_Stollen_G();
};

FUNC VOID Info_Mod_Emerin_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_F_15_00"); //Krótka wersja, prosze.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_F_12_01"); //Po wyparciu mnie przez magów z metamorfozy z powodu mojego wgladu do nieprawdziwosci ich nauk, przez wiele dni wedrowalem po okolicy i nauczylem sie sporo o nekromancji od wielkich mistrzów, którzy teraz prawdopodobnie nie zyja.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_F_12_02"); //Nastepnie rozstawilem ten tunel i zamknalem go przed jego ponownym ustawieniem przez orki i zmusilem mnie do obrony tunelu.

	Info_Mod_Emerin_Stollen_G();
};

INSTANCE Info_Mod_Emerin_Zutaten (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_Zutaten_Condition;
	information	= Info_Mod_Emerin_Zutaten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co powinienem zrobic?";
};

FUNC INT Info_Mod_Emerin_Zutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Emerin_Stollen))
	&& (Mod_Hermy_KnowsQuest < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_Zutaten_Info()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Zutaten_15_00"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Emerin_Zutaten_12_01"); //Potrzebuje dwóch skrzydel krwi, kartki papieru - a takze profilu - i esencji mana.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Necromancer Emerin potrzebuje dwóch skrzydel krwi muchy, profilu mnie i mana esencji do produkcji powiesciowej roli 'Transformation Harpie'.");

	Mod_Hermy_KnowsQuest = 4;
};

INSTANCE Info_Mod_Emerin_HabZutaten (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_HabZutaten_Condition;
	information	= Info_Mod_Emerin_HabZutaten_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Emerin_HabZutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Emerin_Stollen))
	&& (Mod_Hermy_KnowsQuest == 4)
	&& (Npc_HasItems(hero, ItAt_Wing) >= 2)
	&& (Npc_HasItems(hero, ItPo_Mana_01) >= 1)
	&& (Npc_HasItems(hero, ItWr_Paper) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_HabZutaten_Info()
{
	AI_Output(self, hero, "Info_Mod_Emerin_HabZutaten_12_00"); //Masz skladniki?
	AI_Output(hero, self, "Info_Mod_Emerin_HabZutaten_15_01"); //Tak, tutaj.

	B_ShowGivenThings	("Mana esencja, dwa skrzydla krwi muchy i papieru podane");

	Npc_RemoveInvItems	(hero, ItPo_Mana_01, 1);
	Npc_RemoveInvItems	(hero, ItAt_Wing, 2);
	Npc_RemoveInvItems	(hero, ItWr_Paper, 1);

	AI_Output(self, hero, "Info_Mod_Emerin_HabZutaten_12_02"); //Cudowny, wróc jutro, a potem oddam Ci role czaru.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Mam poczekac dzien, a potem zlapac zaklecie Emerina.");

	Mod_Hermy_KnowsQuest = 5;
	Mod_EmerinWillDie = Wld_GetDay();
};

INSTANCE Info_Mod_Emerin_EXIT (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_EXIT_Condition;
	information	= Info_Mod_Emerin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Emerin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Emerin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
