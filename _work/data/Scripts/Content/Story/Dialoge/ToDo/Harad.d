INSTANCE Info_Mod_Harad_Hi (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Hi_Condition;
	information	= Info_Mod_Harad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes kowalem, prawda?";
};

FUNC INT Info_Mod_Harad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Hi_15_00"); //Jestes kowalem, prawda?
	AI_Output(self, hero, "Info_Mod_Harad_Hi_28_01"); //Widac to dobrze!
};

INSTANCE Info_Mod_Harad_Waffenverkauf (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Waffenverkauf_Condition;
	information	= Info_Mod_Harad_Waffenverkauf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sprzedajesz bron?";
};

FUNC INT Info_Mod_Harad_Waffenverkauf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Waffenverkauf_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Waffenverkauf_15_00"); //Sprzedajesz bron?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_01"); //Teraz mam sprzedawac bron?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_02"); //Czyz nie wystarczy, ze stoje przez caly dzien przed kowalnia, wypalajac moja twarz i rece?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_03"); //Popros Briana o rascal. Potrafi zamienic sie w cos pozytecznego.
};

INSTANCE Info_Mod_Harad_SchlechteLaune (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_SchlechteLaune_Condition;
	information	= Info_Mod_Harad_SchlechteLaune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestes w tak zlym nastroju?";
};

FUNC INT Info_Mod_Harad_SchlechteLaune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_SchlechteLaune_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_00"); //Dlaczego jestes w tak zlym nastroju?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_01"); //Powaznie zastanawiam sie, czy nie powinienem po prostu zawiesic pracy.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_02"); //Najwyrazniej nie jest juz dluzej doceniana.
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_03"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_04"); //Ostatnia dostawa stali nigdy nie dotarla do mnie. Zostal skonfiskowany przez Paladynów. Jak jestem przestepca!
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_05"); //Nie zdziwcie sie, jesli nie chce podkuwac dla nich broni.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_06"); //Jak sie dzwoni do lasu, to brzmi.
};

INSTANCE Info_Mod_Harad_Bartok (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Bartok_Condition;
	information	= Info_Mod_Harad_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam specjalna misje z Bartoka.";
};

FUNC INT Info_Mod_Harad_Bartok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bartok_Stimme))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Bartok_Ruestung_Day == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_00"); //Mam specjalna misje z Bartoka.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_01"); //Cóz, moge sobie wyobrazic nawyki platnicze cudzoloznika.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_02"); //Chce zbroi bagiennej.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_03"); //Haha, jak smieszne. Powinienem byl wiedziec, ze chlopaki mnie oszukiwali.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_04"); //Baw sie baw z kims innym.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_05"); //Dal mi 1000 zlota....
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_06"); //Zestaw? Nie ma problemu! Tak wiec.... praktycznie nic!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_07"); //Wiec zajmiesz sie tym?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_08"); //Co jeszcze powinienem zrobic?
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_09"); //I ile to kosztowac?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_10"); //(kontrolowane) Koszty materialów, czas pracy, trasy transportu...... Zblizam sie do 1000 zlota!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_11"); //(ironiczne) Pott tysiac, co za zbieg okolicznosci.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_12"); //Powinna istniec. Chodz jutro i powiem ci wiecej!

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad potrzebuje dnia, aby zaprojektowac pancerz. Wtedy chcialbys, abym zatrzymal sie ponownie.");

	Mod_Bartok_Ruestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nowego na zestawie ziól bagiennych?";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Bartok))
	&& (Mod_Bartok_Ruestung_Day < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_00"); //Co nowego na zestawie ziól bagiennych?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_01"); //Dwie rzeczy. Po pierwsze, potrzebuje panstwa wsparcia, aby uzyskac wszystko, czego potrzebuje.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_02"); //Sporzadzilem liste.

	B_GiveInvItems	(self, hero, ItWr_KrautruestungListe, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_03"); //A dwa?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_04"); //Pomyslcie o zlocie, kiedy przynosicie mi rzeczy. Bez...... Uh, nie moge zaczac.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_05"); //Wszystkie sluszne, wszystkie sluszne.

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad dal mi liste rzeczy do dostania, az bedzie mógl zaczac od pancerza. Poza tym, powinienem pamietac o przywiezieniu zlota.");
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung2_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto elementy pancerza.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Sumpfkrautruestung))
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= 10)
	&& (Npc_HasItems(hero, ItMiSwordRaw) >= 5)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 3)
	&& (Npc_HasItems(hero, ItPl_Swampherb) >= 15)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_00"); //Oto elementy pancerza.

	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, 10);
	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 5);
	Npc_RemoveInvItems	(hero, ItPl_Swampherb, 15);
	Npc_RemoveInvItems	(hero, ItAt_SkeletonBone, 3);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
	Npc_RemoveInvItems	(hero, ItWr_KrautruestungListe, 1);

	B_ShowGivenThings	("1000 zlota, 15 roslin chwastów bagiennych, 10 skór gadów, 5 surowych stali i 3 kosci szkieletowych.");

	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_01"); //Byc moze trudno jest stworzyc godna szacunku pancerz skórzana, ale badzcie pewni, ze nikt inny nie zrobilby lepiej.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_02"); //Poniewaz skóry musza jeszcze zostac opalone, ukonczenie pancerza trwa kilka dni.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_03"); //Twój przyjaciel Bartok moze odebrac je za tydzien.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_04"); //On nie jest moim przyjacielem.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_05"); //Jednakze. Powiedz mu to.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung3_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bartok nie chce juz zbroi. Mozesz mi ja dac.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Ruestung))
	&& (Mod_Bartok_Ruestung_Day+7 < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung3_15_00"); //Bartok nie chce juz zbroi. Mozesz mi ja dac.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_28_01"); //Musisz wybrac miedzy soba.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_28_02"); //Nienawidze jej chwalic, ale staje sie prawdziwym klejnotem. Tutaj jest.

	CreateInvItems	(self, ItAr_Sumpfkraut, 1);
	B_GiveInvItems	(self, hero, ItAr_Sumpfkraut, 1);
};

INSTANCE Info_Mod_Harad_Piraten (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Piraten_Condition;
	information	= Info_Mod_Harad_Piraten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz usunac rdze z tego ostrza?";
};

FUNC INT Info_Mod_Harad_Piraten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufgabe))
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Piraten_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_00"); //Czy mozesz usunac rdze z tego ostrza?

	B_GiveInvItems	(hero, self, ItMw_Piratensaebel_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_01"); //Hmm..... Pozwólcie mi widziec....

	AI_UnequipWeapons	(self);
	EquipItem	(self, ItMw_Piratensaebel_Greg);
	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);
	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_02"); //Rzadko jest to piekna rzecz, choc nie pochodzi ode mnie. Gdzie otrzymasz?
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_03"); //Nie ma to znaczenia. Czy mozesz?
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_04"); //Nie mam teraz czasu na czyszczenie ostrzy.
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_05"); //Nie jestem mistrzem kowalem, nie jestem takim mistrzem.
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_06"); //Wszystkie sluszne, wszystkie sluszne. Nastepnie oddac z powrotem.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg, 1);

	B_LogEntry	(TOPIC_MOD_GREG_ROST, "Harad ma teraz zbyt wiele miejsc pracy. Moze powinienem zapytac Bennet o najemników.");
};

INSTANCE Info_Mod_Harad_Lehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Lehrling_Condition;
	information	= Info_Mod_Harad_Lehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Matteo mówi, ze potrzebuje twojej zgody (....) ).";
};

FUNC INT Info_Mod_Harad_Lehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Lehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_00"); //Matteo mówi, ze potrzebuje twojej aprobaty, aby zostac praktykantem.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_01"); //Ach, nie, teraz mam wymyslic kolejny test, huh?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_02"); //Tak jak nie mam nic lepszego do zrobienia przez caly dzien!
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_03"); //Jest cos, co moge Ci pomóc.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_04"); //Jest tylko jedna rzecz - ale nie bedziesz mógl mi pomóc.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_05"); //Chodzi o mój skonfiskowany stalowy pakiet, który paladynowie zaladowani na swój statek przywiezc do króla - niech zabije sie nim!
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_06"); //Statek jest strzezony przez caly czas, a straznicy nie pozwola nikomu przedostac sie do stalowego pakietu, nawet mnie jako prawowitego wlasciciela.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_07"); //Musisz wiec znalezc inny sposób dotarcia na statek.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_08"); //Gdzie znajduje sie opakowanie na statku?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_09"); //Znajduje sie on prawdopodobnie w ladowni pod pokladem, gdzie przez kilka miesiecy powinien byc nowoczesny.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_10"); //Zobacze.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_11"); //Nie miej nadziei!

	Log_CreateTopic	(TOPIC_MOD_HARADSSTAHL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HARADSSTAHL, "Zeby uzyskac glos Harada, musze mu przyniesc jego stalowy pakiet, który jest na statku Paladyn.");
};

INSTANCE Info_Mod_Harad_Stimme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Stimme_Condition;
	information	= Info_Mod_Harad_Stimme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spójrz, co tu dostalem.";
};

FUNC INT Info_Mod_Harad_Stimme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Lehrling))
	&& (Npc_HasItems(hero, ItMi_Addon_Steel_Paket) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Stimme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_00"); //Spójrz, co tu dostalem.

	B_GiveInvItems	(hero, self, ItMi_Addon_Steel_Paket, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_01"); //Wiec opiekunowie zostali przekupieni?
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_02"); //Nie.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_03"); //Wtedy nie chce wiedziec, jak to dostales.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_04"); //Juz ponioslem znaczne straty w wyniku opóznionego pakietu, ale przynajmniej teraz.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_05"); //Z mojego powodu moze pan oddac mój glos.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Mod_LehrlingsStimmen += 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_DeinLehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrling_Condition;
	information	= Info_Mod_Harad_DeinLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge byc praktykantem u Ciebie?";
};

FUNC INT Info_Mod_Harad_DeinLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Stimme))
	&& (Mod_LehrlingsStimmen == 5)
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_00"); //Czy moge byc praktykantem u Ciebie?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_01"); //Niemozliwy! Nie moge jednoczesnie pracowac i opiekowac sie dwoma praktykantami.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_03"); //Ale Brian juz sie wiele nauczyl....
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_04"); //... A jesli nie patrzysz na niego caly czas, robi wszystko, co zle!
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_05"); //Nie, nie przyjme drugiego praktykanta.
};

INSTANCE Info_Mod_Harad_DeinLehrlingStattBrian (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrlingStattBrian_Condition;
	information	= Info_Mod_Harad_DeinLehrlingStattBrian_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy chcialbys mnie zabrac zamiast Briana?";
};

FUNC INT Info_Mod_Harad_DeinLehrlingStattBrian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_DeinLehrling))
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrlingStattBrian_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_00"); //Czy chcialbys mnie zabrac zamiast Briana?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrlingStattBrian_28_01"); //Cóz, bardziej nieudolny niz on, trudno jest kolejowac do góry.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_02"); //Porozmawiam z nim.
};

INSTANCE Info_Mod_Harad_Aufnahme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Aufnahme_Condition;
	information	= Info_Mod_Harad_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rozmawialam z Brianem.";
};

FUNC INT Info_Mod_Harad_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brian_HaradLehrling))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_15_00"); //Rozmawialam z Brianem.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_01"); //(rysowac) Wiem! Nie moglem sie powstrzymac od zauwazenia jego zacinania sie!
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_02"); //Jeszcze bardziej bedzie zalowal swoich slów.

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);

	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "Brian przekonal mnie, ze nie powinienem byc kowalem.", Info_Mod_Harad_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "Jak mnie teraz przyjac jako praktykanta?", Info_Mod_Harad_Aufnahme_A);
};

FUNC VOID Info_Mod_Harad_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_B_15_00"); //Brian przekonal mnie, ze nie powinienem byc kowalem.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_B_09_01"); //To nieszczesliwy maly robak! Co zrobilem, aby zostac ukarany?

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);
};

FUNC VOID Info_Mod_Harad_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_00"); //Jak mnie teraz przyjac jako praktykanta?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_01"); //Chcialbym powiedziec nie. Kto mnie zapewni, ze nie chcesz mnie oderwac?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_02"); //Ale bez praktykanta stracilabym swoja reputacje. Nie chce skonczyc jak Constantino czy Bosper.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_03"); //Dlatego chce spróbowac z Toba.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_04"); //Grzywna. Kiedy zaczynamy?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_05"); //Gdy tylko jestes obywatelem miasta.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_06"); //Co musze zrobic?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_07"); //Zalózmy to jedno.

	CreateInvItems	(hero, ItAr_Smith, 1);
	B_ShowGivenThings ("Konserwacja odziezy kowalskiej");

	AI_UnequipArmor	(hero);

	AI_EquipArmor	(hero, ItAr_Smith);

	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_08"); //Mysle, ze tak wlasnie.

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 5;

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_More	(TOPIC_MOD_BÜRGER, TOPIC_MOD_TORLOFSPIONAGE, "Harad akceptowal mnie jako swojego praktykanta. To czyni mnie teraz obywatelem miasta.", "Poniewaz Harad przyjal mnie jako swojego praktykanta, moge teraz wejsc do wyzszej kwatery.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_BÜRGER, "Harad akceptowal mnie jako swojego praktykanta. To czyni mnie teraz obywatelem miasta.");
	};

	B_SetTopicStatus	(TOPIC_MOD_BÜRGER, LOG_SUCCESS);

	Wld_AssignRoomToGuild ("schmied",	GIL_NONE);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_Job (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Job_Condition;
	information	= Info_Mod_Harad_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce sie czegos nauczyc.";
};

FUNC INT Info_Mod_Harad_Job_Condition()
{
	if (Mod_LehrlingBei == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Job_15_00"); //Chce sie czegos nauczyc.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_01"); //Wtedy najpierw zrobisz sobie uzytecznosc.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_02"); //Przez to, ze Paladynowie dopuscili sie tak jawnego naruszenia zaufania, nie czuje sie zbytnio jak byc do ich dyspozycji.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_03"); //Nie przetrwam jednak bez nowych zamówien. Dlatego musze oferowac swoje uslugi najemnikom.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_04"); //Tutaj masz sam kuty miecz. Pokazesz im, wtedy przekonaja sie o moich umiejetnosciach.

	B_GiveInvItems	(self, hero, ItMw_HaradSchwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Job_15_05"); //A jesli to nie dziala?
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_06"); //Nie badz glupi, to zadziala.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_ONE, "Harad dal mi jeden z jego mieczy, aby zaimponowac najemnikom.");
};

INSTANCE Info_Mod_Harad_GildenZeug (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_GildenZeug_Condition;
	information	= Info_Mod_Harad_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 5)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_00"); //Ty równiez w milicji? Lepiej jest ponownie sie zastanowic.
	}
	else if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_01"); //Magik i kowal? Jak to ma sie wymyslic?
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_02"); //Dzisiaj wyjazd do najemników jest chyba najzwyczajniejszym sposobem na bycie wojownikiem.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_03"); //Po prostu badz szczesliwy, jesli nie powiem mieszkancom miasteczka o Twoim wyborze gildii.
	};
};

INSTANCE Info_Mod_Harad_LehrlingQuest (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest_Condition;
	information	= Info_Mod_Harad_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Torlof zgodzil sie na dostawe próbna.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_00"); //Torlof zgodzil sie na dostawe próbna.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_01"); //To wiecej niz mozna miec nadzieje na te dni.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_02"); //Nagroda moze byc zatrzymanie mojego miecza. Mozna go wykorzystac do walki lub sprzedac na rynku.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_03"); //Bylbym wtedy gotowy na pierwsza lekcje.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_04"); //(jajki) Jesli musze. Naucze Cie techniki, która sam udoskonalilem.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_05"); //Nie bedziesz tak dobry jak ja, ale bedziesz duzo lepszy niz zwykly botcher.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_06"); //Jaka jest to technika?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_07"); //Do tego dochodze teraz! Chodzi o wywazenie broni.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_08"); //Niektórzy idioty umieszczaja srodek ciezkosci miecza w poblizu srodka ostrza.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_09"); //W ten sposób uderzenia maja wieksza sile, ale odbywa sie to kosztem porecznosci.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_10"); //Znacznie lepiej jest byc srodek ciezkosci w poblizu prowadnicy.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_11"); //W polaczeniu z niska waga znacznie ulatwia to prowadzenie miecza podczas walki.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_12"); //Dla uzytkowników dwurecznych zaleca sie umieszczenie srodka ciezkosci dalej do listwy przypodlogowej niz dla uzytkownika jednorecznego, poniewaz pelna kontrola jest tutaj jeszcze wazniejsza.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_13"); //Dzieki. Bede sie o to przekonac.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_14"); //Powinienes byc. Daje to przewage nad przeciwnikami od samego poczatku.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_15"); //Teraz pozwole sobie wrócic do pilnej pracy.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_16"); //I zrób sobie troche cwiczen zanim przyjdziesz nastepnym razem, bo wtedy bedzie to bardziej wymagajace.

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuestFailed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuestFailed_Condition;
	information	= Info_Mod_Harad_LehrlingQuestFailed_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie moglem wykonac pracy.";
};

FUNC INT Info_Mod_Harad_LehrlingQuestFailed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuestFailed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_00"); //Nie moglem wykonac pracy.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_01"); //A co mam zrobic dla zycia? Jakim jestes glupcem!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_02"); //Jeszcze gonna cos mnie nauczylas?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_03"); //Nie chce cie na razie zobaczyc!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_04"); //Instrukcja zostanie anulowana.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest2_Condition;
	information	= Info_Mod_Harad_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostales cos do zrobienia dla mnie ponownie?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuestFailed)))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_00"); //Dostales cos do zrobienia dla mnie ponownie?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_01"); //Dawno temu. Czekam tylko na Ciebie, zebys pokazal sie jeszcze raz.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_02"); //Co to jest sprawa?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_03"); //Tengron byl tutaj. Zabronil mi on oddac miecze najemnikom.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_04"); //Przypuszczam, ze mysli, ze to mnie powstrzyma przed czyms. Nie interesuje mnie paladyn.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_05"); //Nie maja mi nic wiecej do powiedzenia.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_06"); //Nie moge jednak przejsc przez bramy miasta. Tam straznicy czekaja tylko na mnie, zeby mnie zgryzc.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_07"); //Dlatego znajdziesz sposób na zrzucenie broni na Torlof.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_08"); //Teleportuj lub rób to, co chcesz, dopóki straznicy nie zobacza przesylki!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_09"); //Z Torlof otrzymuje zloto za miecze 2000. Przywraca mi pan to z powrotem.

	B_GiveInvItems	(self, hero, ItMi_Waffenbuendel, 1);

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Harad kazal mi przyniesc ladunek broni najemnikom. Musze tylko upewnic sie, ze straznik miasta nie przeszukuje mnie, np. teleportujac mnie na zewnatrz.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dales mi tylko 17 mieczy.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_00"); //Dales mi tylko 17 mieczy.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_01"); //Nie pierz sie dookola. Na zamówienie bylo 20 mieczy.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_02"); //Torlof powiedzial inaczej. I zaplacilismy tylko 1700 zlota.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_03"); //Potem klamal. Nie licze sie za trzy miecze!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_04"); //Chce jeszcze trzy pistolety, zanim zaplaci pozostale 300 zlota.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_05"); //Wszystko w porzadku, to twój problem.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_06"); //Dlaczego moje?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_07"); //Poniewaz jestes gonna dac mi 2000 sztuk zlota, wszystko w porzadku?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_08"); //Ale....
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_09"); //W przeciwnym razie mozesz zapomniec o nastepnej lekcji!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	if (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "To nie jest warte glupiej lekcji.", Info_Mod_Harad_LehrlingQuest3_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "Wszystkie sluszne, wszystkie sluszne. Ale jak dostac 300 zlota z Torlof?", Info_Mod_Harad_LehrlingQuest3_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_B_15_00"); //To nie jest warte glupiej lekcji.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1700);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_B_09_01"); //(zdjecia) Tym razem nie dziala. Teraz wyjedz stad, mam prace do wykonania!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_00"); //Wszystkie sluszne, wszystkie sluszne. Ale jak dostac 300 zlota z Torlof?

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_01"); //Po prostu wykuc trzy normalne miecze dla niego, a nastepnie bedzie zadowolony.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_02"); //A czego ucza mnie Panstwo dzisiaj?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_03"); //Chce nauczyc Cie czegos, co kazdy kowal powinien wiedziec, ale o czym naprawde wiedza tylko nieliczni.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_04"); //Pokaze Ci, jak zrobic naprawde wytrzymale ostrze.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_05"); //Ostrzenie jest dziecinna zabawa. Jednak poczatkujacy i blenderzy czesto wybieraja zbyt niski kat skrawania ostrza.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_06"); //Krótko mówiac, ostrze przecina drewno jak maslo - ale po dwukrotnym uzyciu zuzywa sie lub peka w najgorszym przypadku.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_07"); //Poniewaz metale, z którymi pracujemy sa zazwyczaj zlej jakosci, znacznie lepiej jest zwiekszyc kat skrawania.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_08"); //Nie uzyskasz spektakularnych rezultatów, ale bron bedzie ostra przez dlugi czas.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_09"); //Jesli nie stoisz na mojej drodze, mozesz cwiczyc na kamieniu szlifierskim.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Zdecydowalem sie zaplacic Haradowi pelna kwote. Jesli chce dostac brakujace zloto z Torlof, bede musial zrobic mu jeszcze trzy miecze.");

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Schaerfen_Perk = TRUE;
};

INSTANCE Info_Mod_Harad_LehrlingQuest3Failed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3Failed_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3Failed_Info;
	permanent	= 0;
	important	= 0;
	description	= "Straz miejska odebrala mi pakiet.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3Failed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Waffenbuendel) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3Failed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_00"); //Straz miejska odebrala mi pakiet.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_01"); //Prosze mi wybaczyc! Zignorowales wszystko, co ci powiedzialem i wbiegles do ich ramion?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_02"); //Dlaczego zawsze jestem bity takimi dobrymi za nic?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_03"); //Straznicy powiedzieli, ze beda dla Ciebie konsekwencje....
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_04"); //Policz! Nie przekraczaj ponownie oczu!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest4_Condition;
	information	= Info_Mod_Harad_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu znów jestem.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest4_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3Failed)))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_00"); //Tu znów jestem. Co robi handel najemników?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_01"); //Pozwole sobie powiedziec, ze do tej pory nie byli pod wrazeniem. To sie teraz zmieni.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_02"); //Jak to zrobic?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_03"); //Zamierzam wreczyc dar najemnikowi dworu w Onar.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_04"); //W zamian mam nadzieje, ze otrzymam nowe zamówienia.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_05"); //Jaki jest to prezent?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_06"); //Miecz swietnosci, w którym wykorzystuje wszystkie moje umiejetnosci. Oznacza to, ze ten Bennet moze sie wreszcie upakowac.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_07"); //Musicie mi w tym pomóc. I dlatego przedstawie Wam wstep do stworzenia mistrzowskiej broni.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_08"); //Czekam na to z niecierpliwoscia.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_09"); //W przypadku broni pokazowej zarówno wyglad, jak i jakosc musza byc przekonujace.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_10"); //Do produkcji miecza uzywam skomplikowanej metody, która bylaby zbyt kosztowna dla standardowych mieczy:
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_11"); //Ja biore cztery prety z róznych rodzajów stali, które sa ukladane i spawane w ogniu.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_12"); //Metale sa nastepnie skladane.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_13"); //Po schlodzeniu miecz wykazuje znacznie wieksza twardosc niz miecz kuty z jednego stalowego preta.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_14"); //Musze to spróbowac. Czy w walce dostaje cos takiego?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_15"); //To jest oczywiste. Walczac z przeciwnikami, którzy uzywaja broni konwencjonalnej, mozna beztrosko uderzac bez obawy o rozpad miecza.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_16"); //Dzwieki uzyteczne.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_17"); //W celu uzyskania specjalnego wygladu uzywam dwóch srodków: Po pierwsze, dekoracje sa wprawiane w ostrze i wal.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_18"); //Nastepnie wyrzezbilem karby na Knaufie, do których pózniej wbija sie kamienie szlachetne.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_19"); //Wszystko, w czym moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_20"); //Nie posiadam jeszcze wszystkich klejnotów, których potrzebuje do zdobienia.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_21"); //Brakuje mi jeszcze kilku perel, co najmniej trzech. Jeszcze lepiej byloby, gdyby bylo ich piec.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_22"); //Zobacze, czy moge je znalezc.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_23"); //Ale nie trzeba dlugo czekac!

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Harad potrzebuje co najmniej trzech dodatkowych korali, zanim bedzie mógl zaczac tworzyc wspaniala bron dla Laresów.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest5_Condition;
	information	= Info_Mod_Harad_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest5_Condition()
{
	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest4))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "Oto piec perelek.", Info_Mod_Harad_LehrlingQuest5_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "Mam z soba trzy koraliki.", Info_Mod_Harad_LehrlingQuest5_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_C()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_00"); //Teraz, jesli chcesz obserwowac mistrza, wykonaj swoja prace.... Mozesz sie z niego wiele nauczyc.

	AI_UseMob	(self, "BSFIRE", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_01"); //Po pierwsze, stalowe prety sa nakladane i ogrzewane.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_02"); //Pompowanie w odpowiedniej temperaturze, to balagan.

	AI_UseMob	(self, "BSFIRE", -1);

	AI_UseMob	(self, "BSANVIL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_03"); //Rózne stopy stali sa skladane i formowane we wlasciwy ksztalt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_04"); //Wykonuje sie w nich zaglebienia i dekoracje. Tlumie ladny napis.

	AI_UseMob	(self, "BSANVIL", -1);

	AI_UseMob	(self, "BSCOOL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_05"); //Dobrze schlodzic. Ale nie zostawiaj go zbyt dlugo w wiadrze, Brian zrujnowal mi miecze.

	AI_UseMob	(self, "BSCOOL", -1);

	AI_UseMob	(self, "BSSHARP", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_06"); //Teraz rozdrabniamy ja, a to jest doskonale.

	AI_UseMob	(self, "BSSHARP", -1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_07"); //Gotowy. Teraz nalezy wstawic tylko koraliki.....

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "HARAD");
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_B_15_00"); //Oto piec perelek.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 5);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_B_09_01"); //Moge z nich wszystkich korzystac.

	B_GivePlayerXP	(150);

	Info_Mod_Harad_LehrlingQuest5_C();
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_A_15_00"); //Mam z soba trzy koraliki.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 3);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_A_09_01"); //Przynajmniej cos.

	B_GivePlayerXP	(100);

	Info_Mod_Harad_LehrlingQuest5_C();
};

INSTANCE Info_Mod_Harad_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest6_Condition;
	information	= Info_Mod_Harad_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_00"); //To jest tak okropnie niesprawiedliwe!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_01"); //Chodz dalej, bedziesz mial racje.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_02"); //Ale musze zaczac wszystko od nowa! Wszystko jeszcze raz!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_03"); //Pokazal mi pan, jak to zrobic. Daj mi perelki, a ja wykuje twój miecz.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_04"); //Perly wyrzucic przed Moleratami! Ide do domu. l-- Mam ból glowy!

	B_GiveInvItems	(self, hero, ItMi_Addon_WhitePearl, Npc_HasItems(self, ItMi_Addon_WhitePearl));

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Karabin Harada dla Laresów zostal skonfiskowany i to wlasnie dalo panu panu reszte broni. Musze sie spróbowac na próbce. Nie zapomnij: Wykonaj wszystkie kroki w odpowiedniej kolejnosci. Na koncu umiescic koraliki.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Harad_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest7_Condition;
	information	= Info_Mod_Harad_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto nowy wspanialy miecz.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest6))
	&& (Npc_HasItems(hero, ItMw_Prunkschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_00"); //Oto nowy wspanialy miecz.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_01"); //Och, zostan z dala od mnie z tym.

	B_GiveInvItems	(self, hero, ItMw_Prunkschwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_02"); //Nie, teraz to pan przyjmuje. I cos o tym powiedziec.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_03"); //Tak, to dobra robota.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_04"); //Czy powinienem ja zabrac do Lares?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_05"); //Nie, to byloby zbyt wyrazne do tej pory. Musi tylko zobaczyc kogos w poblizu najemników i opowiedziec o straznikach i - ktoopy! To moja kolej.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_06"); //Dlatego wolalbym raczej oddac miecz kupujacemu.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_07"); //Teraz zostaw mnie sam na sam. Nie chce teraz rozmawiac z nikim.

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest8_Condition;
	information	= Info_Mod_Harad_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_00"); //Jestes tym samym.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_02"); //Nie mozecie tez mnie rozweselic.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "Nie chce. Zasluzyles sobie na to, aby tam sie zaplesc.", Info_Mod_Harad_LehrlingQuest8_B);
	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "Ale byc moze uda sie to zrobic.", Info_Mod_Harad_LehrlingQuest8_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_B_15_00"); //Nie chce. Zasluzyles sobie na to, aby tam sie zaplesc.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_B_09_01"); //Teraz ostatnia osoba równiez wpada mi na plecy.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_FAILED);

	Mod_HaradLehrling_Kap4 = 2;

	Mod_HaradLehrling_SterbTag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_00"); //Ale byc moze uda sie to zrobic.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_01"); //Ale jak?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_02"); //Nie masz zadnych pomyslów?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_03"); //Nie. Boltan nie bedzie i tak przekupiony.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_04"); //Wtedy bede musial cos pomyslec.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_05"); //To i tak nie jest gonna praca.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Harad nie ma pojecia, jak go uwolnic.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest9 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest9_Condition;
	information	= Info_Mod_Harad_LehrlingQuest9_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest sposób na wyjscie.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest9_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_00"); //Jest sposób na wyjscie.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_01"); //Istnieje kilka mozliwosci, jedyne pytanie brzmi: czy mam na mysli, czy tez nie.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_02"); //Paladynowie zadaja, abyscie dla nich kulec zamiast najemników.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_03"); //Te grymasy odebraly mi honor. Nie bede ich zginal palcem!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_04"); //Moglem pracowac dla Paladina. I robisz wlasne rzeczy.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_05"); //Ale nie pozwole ci isc do mojej kuzni!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_06"); //Wszystko w porzadku, to juz wystarczy dla mnie. Szukam po sobie wlasnych zadan.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_07"); //(Toksyczne) Tak, zapomnij, kto dal ci cala swoja wiedze! Tylko mnie zawiesc!

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "START");
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_44);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Poniewaz nie moglem oczekiwac od Harada zadnej pomocy, postanowilem zostawic go tam, gdzie jest. Powinnam ofiarowac swoja pomoc paladynom lub samym najemnikom.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest10 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest10_Condition;
	information	= Info_Mod_Harad_LehrlingQuest10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nadal lubisz?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest10_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest10_15_00"); //Czy nadal lubisz?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest10_09_01"); //(grozne) Wystarczy zostawic mnie samemu.
};

INSTANCE Info_Mod_Harad_Blutkelch (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Blutkelch_Condition;
	information	= Info_Mod_Harad_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje szczególnie twardych pickaxe. Otrzymales cos takiego?";
};

FUNC INT Info_Mod_Harad_Blutkelch_Condition()
{
	if (Mod_ASS_Blutkelch3 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_00"); //Potrzebuje szczególnie twardych pickaxe. Otrzymales cos takiego?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_28_01"); //Nie. Robie tylko prawdziwa bron.
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_02"); //A kto moze mi pomóc?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_28_03"); //Skad powinienem wiedziec? Sam czlowiek jest czlowiekiem.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis_Condition()
{
	if (Mod_AndreSchwert == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_00"); //Czy nie jestescie nastepca Andre' a?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis_15_01"); //Tak, to prawda.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_02"); //Andre byl dobrym dla niczego, kto wbijal mnie do pracy.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_03"); //Mam nadzieje, ze nie staniesz sie taki jak on.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Andre zostawil mi ten miecz i powiedzial, ze mozna to dla mnie sfalszowac.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis))
	&& (Npc_HasItems(hero, ItMi_Schmelzschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_00"); //Andre zostawil mi ten miecz i powiedzial, ze mozna to dla mnie sfalszowac.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_01"); //Pozwole sobie to zobaczyc.

	EquipWeapon	(self, Weltenspalter);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_02"); //Wiem ten miecz! Uzywal go, aby przebic demona.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_03"); //O czym Pan mówi?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_04"); //Wiele lat temu, kiedy odbywalem denerwujaca sluzbe wojskowa, walczylem z Andre' em na polu bitwy w wojnie z Orkami.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_05"); //Wlasnie wymazalismy wojska nieprzyjaciela, a zwyciestwo w bitwie wydawalo sie pewne, kiedy niektórzy lupowi szamani wyczarowali poteznego, ognistego demona.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_06"); //Zaczal wscieklosc w naszych szeregach i bezlitosnie wypalil plomieniami wielu paladynów i wojowników.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_07"); //Nastepnie Andre uderzyl do przodu i popchnal swój miecz w klatke piersiowa potwora, który natychmiast umarl.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_08"); //Ale ogien w klatce piersiowej byl tak goracy, ze stal stopila sie.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_09"); //Co? Musialo to byc jak kuznia.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_10"); //Nie.... Nie. znacznie cieplejsze.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_11"); //Byl to najwyzszej jakosci miecz kuty w kopalniach Nordmarów, blogoslawiony w klasztorze i posiadajacy pieczec ognia.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_12"); //Ostrze jak tylko kilka paladyn mialo wówczas ostrze.... i jeszcze mniej dzisiaj.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_13"); //Andre odziedziczyl ja po ojcu.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Dlaczego Andre nie zafascynowal sie ostrzem?", Info_Mod_Harad_AndreVermaechtnis2_B);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Dlaczego takie ostrza sa dzis tak rzadkie?", Info_Mod_Harad_AndreVermaechtnis2_A);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_C()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_C_15_00"); //Czy miecz bedzie dla mnie mieczem grzebal?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_01"); //Nie bardzo mi sie to podoba, bo Andre niczego nie zawdzieczam. Mam jednak nadzieje, ze okaze swoja wdziecznosc, kiedy to zrobie. Dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_02"); //Ale powinienes wiedziec, ze taki miecz rozwija pelna moc tylko w rece paladynów i prawdziwych wierzacych.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_03"); //Z drugiej strony, niedowiarek poczuje gniew Inno, jesli spróbuje zalozyc bron.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_04"); //W kazdym razie, czy miecz powinien mi sluzyc jako bron jednoreczna czy dwureczna?

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Dwuosobowy.", Info_Mod_Harad_AndreVermaechtnis2_E);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Jedna reka.", Info_Mod_Harad_AndreVermaechtnis2_D);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_B_15_00"); //Dlaczego Andre nie zafascynowal sie ostrzem?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_01"); //Cieplo, które roztopilo miecz równiez wypalilo mu reke.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_02"); //Nigdy nie mógl nosic takiego karabinu jak wtedy znów. Zamiast tego zostal podniesiony do kapitana. Jesli tylko jego reka nie zostala uszkodzona....
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_03"); //Miecz byl pamiatka po stopionym mieczu.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_A_15_00"); //Dlaczego takie ostrza sa dzis tak rzadkie?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_01"); //No cóz, dlaczego nie rozgladasz sie po kontynencie? Sztuka kucia jest paralizowana przez niekompetentnych.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_02"); //Orkiestry wkraczaja z kazdej strony, królestwo grozi rozpadem.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_03"); //Dzis musisz sie upewnic, ze znajdziesz wystarczajaca ilosc rudy i zelaza, aby wyposazyc kazdego wojownika w prosta bron.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_F()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_28_00"); //To wlasnie zrobie. Zajmie mi to jednak kilka dni.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_28_01"); //Kiedy to zrobie, poinformuje Cie o tym.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Mod_AndreSchwert_Tag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Harad podbije miecz. Jednak zajmie mu to kilka dni.");
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_E()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_E_15_00"); //Dwuosobowy.

	Mod_AndreSchwert_Art = 2;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_D()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_D_15_00"); //Jedna reka.

	Mod_AndreSchwert_Art = 1;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis3_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis2))
	&& (Mod_AndreSchwert_Tag-2 < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_00"); //To juz wszystko! Miecz jest nowo kuty.

	if (Mod_AndreSchwert_Art == 1)
	{
		B_GiveInvItems	(self, hero, ItMw_1H_Blessed_01, 1);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMw_2H_Blessed_01, 1);
	};

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_01"); //W Innos mozesz byc dumny i szczesliwy, ze mozesz nosic taka bron.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_02"); //Tak, bron wydaje sie byc bardzo szczególnym zródlem sily.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_03"); //Tak wlasnie rozumiem. Poza tym ona jest przeze mnie pracowala. Nie odzyska jednak swojej prawdziwej mocy, dopóki nie zostanie ponownie wyswiecony po tak dlugim czasie.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_04"); //Poswiecenie?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_05"); //Kazdy miecz paladynowy poswiecony byl przed umieszczeniem go w rekach wisiorka Innos.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_06"); //W szczególnosci ma ona prawo wypedzac nieumarle i demoniczne stworzenia.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_07"); //Aby poswiecic sie konsekracji, musisz udac sie do klasztoru i porozmawiac z magikiem Innosów.... Wiecej Mysle, ze to byl Marduk.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_08"); //Wtedy potega miecza bedzie rosla.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_SUCCESS);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad powiedzial, ze powinienem poswiecic miecz w klasztorze pod Mardukiem.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis4_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis4_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword))
	&& (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_00"); //Czy poswieciles sie?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_01"); //Tak, a moc miecza wzrosla.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_02"); //To po prostu...... fantastyczne. Teraz brzeszczot jest doskonaly. Hmm, gdzie....
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_03"); //Tak?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_04"); //Pamietam tradycje, ze oprócz prostego poswiecenia miecza, odbywala sie pielgrzymka do takich ostrzy, aby doskonalic ostrze.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_05"); //Ale moze to tylko pogloski. To byl dlugi czas.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_06"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_07"); //Naprawde nie pamietam.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_08"); //Gdybym mial jeszcze troche wiecej lektury, prawdopodobnie bym spojrzal na klasztorna biblioteke...... Ale mój handel to stal.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad wspomnial o sciezce pielgrzymkowej, dzieki której ostrze moze stac sie jeszcze potezniejsze. Nie wiedzial nic bardziej konkretnego. Moze biblioteka klasztorna moze mi pomóc.");

	Wld_InsertItem	(ItWr_Innosklinge, "FP_ITEM_INNOSKLINGENBUCH");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis5_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam mozliwa wskazówke.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis5_Condition()
{
	if (Mod_AndreSchwert_Test == 2)
	&& (Npc_HasItems(hero, ItWr_Innosklinge) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_00"); //Mam mozliwa wskazówke.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_01"); //Pozwólcie, ze zobacze.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_02"); //Aha.... .... ciekawy. Hmm..... wezwanie wojownika.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_03"); //Tak?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_04"); //Prosze pozwolic mi pomyslec o tym...... Tak, to moze byc....
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_05"); //Jestem uszy.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_06"); //Wezwanie wojownika..... moze oznaczac reputacje Dominique' a.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_07"); //Mówi sie, ze to byly teksty piosenek, które paladynowie grali kiedys przed rozpoczeciem bitwy.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_08"); //To bylo dawno temu.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_09"); //Mysle, ze pamietam mit, który w tym kontekscie faktycznie mówil o swietym pozarze, który przeniknal wojownika i jego ostrze.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_10"); //Moze wiec cos wiecej niz tylko metafora?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_11"); //To byloby po prostu..... niewiarygodny. I móglbys byc tym, który moze sie dowiedziec.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_12"); //W tym celu musze jednak miec ten tekst.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_13"); //Odczekac minute..... Mysle, ze firma Ingmar moze Ci w tym pomóc.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_14"); //Jak zaden inny paladyn nie zachwyca sie wierszami i piesniami o wojnie i wierze.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_15"); //Próbuje go spróbowac.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_16"); //Tak, zrób to. I daj mi znac, kiedy ja otrzymasz.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Jak slyszalem od Harada, teksty moga nawiazywac do utworu 'Dominiques Ruf'. Paladin Ingmar moze miec jeszcze to samo.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis6_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Innosklinge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_00"); //Czy dostales linie?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis6_15_01"); //Tak, on to zrobil.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_02"); //Wiec teraz mozecie wyruszyc na pielgrzymke.... kiedy masz wszystko, czego potrzebujesz.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_03"); //Tekst piosenek mówi o tym, czego potrzebujesz, gdy przechodzisz od sanktuarium do sanktuarium i za kazdym razem, gdy mówisz czesc tekstu.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_04"); //Miejmy nadzieje, ze miecz bedzie mial nowe cechy.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_05"); //Zycze powodzenia. I pamietaj, kto dal ci wszystkie cenne wskazówki!

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Teraz moge isc na pielgrzymke.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis7_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis7_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword_05))
	&& ((Npc_HasItems(hero, ItMw_1H_Blessed_03) == 1)
	|| (Npc_HasItems(hero, ItMw_2H_Blessed_03) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_00"); //Wiec czy dopelniles konsekracje?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_01"); //Tak, tak naprawde zadzialalo.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_02"); //Pozwólcie mi widziec....

	EquipWeapon	(self, ItMw_2H_Blessed_03);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);	

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_03"); //To prawda, teraz jest to jedyny w swoim rodzaju miecz. (entuzjastyczne) Moje i Innos zjednoczone w jednym ostrzu....
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_04"); //Wszystkie sluszne, wszystkie sluszne. W kazdym razie dziekuje za pomoc.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_05"); //Pomagamy tam, gdzie mozna.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_06"); //Dbaj o mój miecz i nie dawaj go paladynom za pieniadze!

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_SUCCESS);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Harad_Anschlagtafel (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Anschlagtafel_Condition;
	information	= Info_Mod_Harad_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Widzialem twój plakat na billboardzie....";
};

FUNC INT Info_Mod_Harad_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Harad == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert)
	&& (Npc_HasItems(hero, ItMw_2H_Sword_M_01) >= Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_04) >= Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer)
	&& (Npc_HasItems(hero, ItMi_Pliers) >= Mod_Anschlagtafel_Khorinis_Harad_Zange)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_01) >= Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken)
	&& (Npc_HasItems(hero, ItMiSwordraw) >= Mod_Anschlagtafel_Khorinis_Harad_Rohstahl)
	{
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender);
		Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken);
		Npc_RemoveInvItems	(hero, ItMi_Nugget, Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_04, Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer);
		Npc_RemoveInvItems	(hero, ItMi_Pliers, Mod_Anschlagtafel_Khorinis_Harad_Zange);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_01, Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken);
		Npc_RemoveInvItems	(hero, ItMiSwordraw, Mod_Anschlagtafel_Khorinis_Harad_Rohstahl);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_00"); //Co? Pokaz mi.... W rzeczywistosci to wszystko. Nie w najlepszym stanie, ale wciaz nadajacy sie do uzytku.
		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_01"); //Oto Twoja nagroda.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Harad_Gold);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_02"); //Lepsza jakosc nastepnym razem?

		if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Harad = 0;
		Mod_Anschlagtafel_Khorinis_Harad_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Harad, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Harad_Staerke (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Staerke_Condition;
	information	= Info_Mod_Harad_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce byc silniejszy.";
};

FUNC INT Info_Mod_Harad_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& (hero.attribute[ATR_STRENGTH]	<	120)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Staerke_15_00"); //Chce byc silniejszy.

	Info_ClearChoices	(Info_Mod_Harad_Staerke);

	Info_AddChoice 		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

FUNC VOID Info_Mod_Harad_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
};

func void Info_Mod_Harad_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 120);

	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

// ------ 5 Stärke ------
func void Info_Mod_Harad_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 120);
	
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

INSTANCE Info_Mod_Harad_Schmieden (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Schmieden_Condition;
	information	= Info_Mod_Harad_Schmieden_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie kucia.";
};

FUNC INT Info_Mod_Harad_Schmieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& ((PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Schmieden_15_00"); //Naucz mnie kucia.

	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Schmieden);
};

FUNC VOID Info_Mod_Harad_Schmieden_Common()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_Common)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_01"); //To bardzo proste, chlopiec. Zrób sobie kawalek surowej stali, trzymaj go w ogniu, az sie rozpali.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_02"); //Nastepnie na kowadelko uderzysz w ostrze po prawej stronie.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_03"); //Twoje pierwsze miecze nie beda arcydzielami, ale mozesz nauczyc sie wszystkiego innego pózniej.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad01()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_01)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_28_01"); //To bardzo proste, chlopiec. Zrób sobie kawalek surowej stali, trzymaj go w ogniu, az sie rozpali.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_28_02"); //Nastepnie na kowadelko uderzysz w ostrze po prawej stronie.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad02()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_02)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_28_01"); //To bardzo proste, chlopiec. Zrób sobie kawalek surowej stali, trzymaj go w ogniu, az sie rozpali.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_28_02"); //Nastepnie na kowadelko uderzysz w ostrze po prawej stronie.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad03()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_03)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_28_01"); //To bardzo proste, chlopiec. Zrób sobie kawalek surowej stali, trzymaj go w ogniu, az sie rozpali.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_28_02"); //Nastepnie na kowadelko uderzysz w ostrze po prawej stronie.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad04()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_04)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_28_01"); //To bardzo proste, chlopiec. Zrób sobie kawalek surowej stali, trzymaj go w ogniu, az sie rozpali.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_28_02"); //Nastepnie na kowadelko uderzysz w ostrze po prawej stronie.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Nauka kuzniania sie "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

INSTANCE Info_Mod_Harad_Verkaufen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Verkaufen_Condition;
	information	= Info_Mod_Harad_Verkaufen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sprzedawac swoja sfalszowana bron.";
};

FUNC INT Info_Mod_Harad_Verkaufen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& (Mod_HaradLehrling_Kap4 == 0) {
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Verkaufen_Info()
{
	AI_Output (hero, self, "Info_Mod_Harad_Verkaufen_15_00"); //Chce sprzedawac swoja sfalszowana bron.
	
	AI_UnequipWeapons	(hero);
	
	var int anzahl_common; anzahl_common = Npc_HasItems (hero, ItMw_1H_Common_01);
	var int anzahl_schwert1; anzahl_schwert1 = Npc_HasItems (hero, ItMw_Schwert1);
	var int anzahl_schwert4; anzahl_schwert4 = Npc_HasItems (hero, ItMw_Schwert4);
	var int anzahl_rubinklinge; anzahl_rubinklinge = Npc_HasItems (hero, ItMw_Rubinklinge);
	var int anzahl_elbastardo; anzahl_elbastardo = Npc_HasItems (hero, ItMw_ElBastardo);
	
	var int anzahl_common_stark; anzahl_common_stark = Npc_HasItems (hero, ItMw_1H_Common_01_Stark);
	var int anzahl_schwert1_stark; anzahl_schwert1_stark = Npc_HasItems (hero, ItMw_Schwert1_Stark);
	var int anzahl_schwert4_stark; anzahl_schwert4_stark = Npc_HasItems (hero, ItMw_Schwert4_Stark);
	var int anzahl_rubinklinge_stark; anzahl_rubinklinge_stark = Npc_HasItems (hero, ItMw_Rubinklinge_Stark);
	var int anzahl_elbastardo_stark; anzahl_elbastardo_stark = Npc_HasItems (hero, ItMw_ElBastardo_Stark);
	
	var int gesamt; gesamt = (anzahl_common + anzahl_schwert1 + anzahl_schwert4 + anzahl_rubinklinge + anzahl_elbastardo + anzahl_common_stark + anzahl_schwert1_stark + anzahl_schwert4_stark + anzahl_rubinklinge_stark + anzahl_elbastardo_stark);
	
	if (gesamt == 0)
	{
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_01"); //Potem je zróbcie! Akceptuje tylko proste miecze.
	}
	else //(gesamt >= 1) - die verbeliebenden Klingen verkaufen ------
	{
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_02"); //Wszystko dobrze, daj mi ja.
		
		Npc_RemoveInvItems (hero, ItMw_1H_Common_01, anzahl_common);
		Npc_RemoveInvItems (hero, ItMw_Schwert1, anzahl_Schwert1);
		Npc_RemoveInvItems (hero, ItMw_Schwert4, anzahl_Schwert4);
		Npc_RemoveInvItems (hero, ItMw_Rubinklinge, anzahl_Rubinklinge);
		Npc_RemoveInvItems (hero, ItMw_ElBastardo, anzahl_ElBastardo);
		
		Npc_RemoveInvItems (hero, ItMw_1H_Common_01_Stark, anzahl_common_stark);
		Npc_RemoveInvItems (hero, ItMw_Schwert1_Stark, anzahl_Schwert1_stark);
		Npc_RemoveInvItems (hero, ItMw_Schwert4_Stark, anzahl_Schwert4_stark);
		Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Stark, anzahl_Rubinklinge_stark);
		Npc_RemoveInvItems (hero, ItMw_ElBastardo_Stark, anzahl_ElBastardo_stark);
		
		var string concatText;
		concatText = ConcatStrings(IntToString(gesamt), PRINT_ItemsGegeben);		// "x Gegenstände gegeben"
		AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
				
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_03"); //Oto Twoja wyplata.
		var int lohn;
		lohn = ((anzahl_common + anzahl_common_stark) * Value_Common1) + ((anzahl_schwert1 + anzahl_schwert1_stark) * Value_Schwert1) + ((anzahl_schwert4 + anzahl_schwert4_stark) * Value_Schwert4) + ((anzahl_rubinklinge + anzahl_rubinklinge) * Value_Rubinklinge) + ((anzahl_elbastardo + anzahl_elbastardo) * Value_ElBastardo);
				
		lohn = (lohn / 3);
		
		B_GiveInvItems (self, hero, ItMi_Gold, lohn);
	};
};

INSTANCE Info_Mod_Harad_Pfeilspitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pfeilspitzen_Condition;
	information	= Info_Mod_Harad_Pfeilspitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bosper mysli, ze mozna mnie nauczyc kucia strzalek.";
};

FUNC INT Info_Mod_Harad_Pfeilspitzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Spitzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Pfeilspitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Pfeilspitzen_15_00"); //Bosper mysli, ze mozna mnie nauczyc kucia strzalek.
	AI_Output(self, hero, "Info_Mod_Harad_Pfeilspitzen_28_01"); //Tak, jesli jest to absolutnie konieczne.
};

INSTANCE Info_Mod_Harad_Spitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Spitzen_Condition;
	information	= Info_Mod_Harad_Spitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przynies mnie do kuzniczych grot strzal (2 LP)";
};

FUNC INT Info_Mod_Harad_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Harad_Spitzen.description = "Przynies mi kilka grot strzalek do kuzni (200 zlota)";
	}
	else
	{
		Info_Mod_Harad_Spitzen.description = "Przynies mnie do kuzniczych grot strzal (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Pfeilspitzen))
	&& (Mod_PfeileSpitzen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Spitzen_15_00"); //Przynies mi kilka kucia strzalek.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Harad_Spitzen_06_01"); //Wez kawalek surowej stali idz do kowadla. Otrzymasz okolo 10 grotów strzalek z jednego kawalka surowej stali.

		Mod_PfeileSpitzen = TRUE;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Do tworzenia strzalek potrzebne sa strzalki. Moge to wygrac na kowadle z surowej stali.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Harad_Spitzen_06_02"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Harad_Pickpocket (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pickpocket_Condition;
	information	= Info_Mod_Harad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Harad_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMiSwordRaw, 18);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_BACK, Info_Mod_Harad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Harad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Harad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
};

FUNC VOID Info_Mod_Harad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Harad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Harad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Harad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Harad_EXIT (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_EXIT_Condition;
	information	= Info_Mod_Harad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Harad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
