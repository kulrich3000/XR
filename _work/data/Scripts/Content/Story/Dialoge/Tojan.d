INSTANCE Info_Mod_Tojan_Hi (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Hi_Condition;
	information	= Info_Mod_Tojan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tojan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_00"); //Wreszcie. Dlugo czekalismy, bracie. Ale nareszcie jestes tutaj.
	AI_Output(hero, self, "Info_Mod_Tojan_Hi_15_01"); //Pyrokar wyslal mnie. Mam tu zestaw eliksirów i zywnosci.
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_02"); //Bardzo dobry. Wez opakowanie zywnosci do Furgasa. Znajdziesz go w wiezy.
	AI_Output(hero, self, "Info_Mod_Tojan_Hi_15_03"); //A co mam zrobic z eliksirami?
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_04"); //Rozdaj je czarodziejom i paladynom na scianie zewnetrznej. Meskie eliksiry dla magów i eliksiry lecznicze dla paladynów.
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_05"); //Miala sie dokladnie otworzyc. Teraz spiesz sie, nie pozwól, aby nasi bracia i synowie czekali dluzej.

	Npc_RemoveInvItems	(hero, ItMi_PAT_Trank, 1);

	CreateInvItems	(hero, ItPo_Health_02, 10);
	CreateInvItems	(hero, ItPo_Mana_02, 10);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tojan_Trank (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Trank_Condition;
	information	= Info_Mod_Tojan_Trank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie dzialaly eliksiry.";
};

FUNC INT Info_Mod_Tojan_Trank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_KDF_13_TrankLeer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Trank_Info()
{
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_00"); //Nie dzialaly eliksiry. Jeden z nich zaginal.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_01"); //Co? Nie moze byc!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_02"); //Tak jest.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_03"); //Jak mozna to zrobic.... Damn to!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_04"); //Czy eliksiry sa tak drogie lub co jest tak zle?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_05"); //To nie czas na zarty! Nie widzisz, co to znaczy?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_06"); //Patherion zostal przenikniety!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_07"); //Czarny mag? Tu w klasztorze?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_08"); //Sam nie moge w to uwierzyc. Musisz znalezc tego faceta.
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_09"); //Teraz, kiedy to pan mówi, jeden z magów dziala dziwnie. Nie byl na scianie jak inni, ale na cokole.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_10"); //To musial byc on. Znajdz go, bracie. Tutaj wez to przewijanie.

	CreateInvItems	(self, ItSc_Laehmen, 1);
	B_GiveInvItems	(self, hero, ItSc_Laehmen, 1);

	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_11"); //Mozesz uzyc jej do paralizu go jak najszybciej go znalezc.
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_12"); //A gdzie powinienem zaczac go szukac?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_13"); //Zapytaj jednego z magów na scianie zewnetrznej. Moze jeden z nich zauwazyl gdzie biegal.

	Log_CreateTopic	(TOPIC_MOD_FM_SM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_SM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_SM, "Musze znalezc czarnego maga, który ukrywa sie pod czarodziejem ognia, a nastepnie paralizuje go z zakleciem, które Tojan mi dal. Pytam najpierw na scianie, czy widzieli, gdzie uciekl.");
};

INSTANCE Info_Mod_Tojan_Magier (C_INFO)
{
	npc		= Mod_1915_KDF_Tojan_PAT_UG;
	nr		= 1;
	condition	= Info_Mod_Tojan_Magier_Condition;
	information	= Info_Mod_Tojan_Magier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Magier_Condition()
{
	if (Mod_FM_SM_TOT == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Magier_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_00"); //Wróg jest czesto blizej niz myslisz? Damn, mysle, ze mamy zdrajce w swoich szeregach. Trzeba go znalezc!
	AI_Output(hero, self, "Info_Mod_Tojan_Magier_15_01"); //Jak mam go znalezc? To moze byc kazdy!
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_02"); //Rozpowszechniam slowo, ze bedziecie Go szukac!
	AI_Output(hero, self, "Info_Mod_Tojan_Magier_15_03"); //A co wiec? Nie pokaze mi, jesli wie, ze powinienem go znalezc.
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_04"); //Tak, tak jest! Bedzie sie niedbaly i spróbuje wydostac cie z drogi. Pójdzie prosto do sieci! Teraz odejdzmy!
	
	B_SetTopicStatus	(TOPIC_MOD_FM_SM, LOG_SUCCESS);

	B_Göttergefallen(1, 1);

	Log_CreateTopic	(TOPIC_MOD_FM_VERRAT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_VERRAT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Czarny magik zasygnalizowal, ze jest jeszcze jeden czarny magik w naszych szeregach. Tojan zatrudnil mnie, abym go znalazl.");
};

INSTANCE Info_Mod_Tojan_Beschwoerer (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Beschwoerer_Condition;
	information	= Info_Mod_Tojan_Beschwoerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mysle, ze wiem, kim jest zdrajca.";
};

FUNC INT Info_Mod_Tojan_Beschwoerer_Condition()
{
	if (Mod_FM_Foki == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Beschwoerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Tojan_Beschwoerer_15_00"); //Mysle, ze wiem, kim jest zdrajca.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_01"); //Naprawde?
	AI_Output(hero, self, "Info_Mod_Tojan_Beschwoerer_15_02"); //Jeden z magów o imieniu Aaron.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_03"); //Aaron? Nie wiem! Wydawal mi sie podejrzliwy.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_04"); //Tutaj wez ten amulet. Jak tylko przejadles Aarona, uzyj go, natychmiast przyjde do Ciebie.

	CreateInvItems	(self, ItAm_TojansAmulett, 1);
	B_GiveInvItems	(self, hero, ItAm_TojansAmulett, 1);

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Tojan zgadza sie z moim podejrzeniem, ze Aaron jest zdrajca. Mam go przytloczyc, a nastepnie wlozyc amulet, który mi dal.");

	Mod_FM_Foki = 3;
};

INSTANCE Info_Mod_Tojan_Falle (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Falle_Condition;
	information	= Info_Mod_Tojan_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Falle_Condition()
{
	if (Mod_FM_Foki == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_00"); //(smiech) Glupiejesz!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_01"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_02"); //Jest to tak proste, ze popelniles wlasnie ogromny blad!
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_03"); //Czarodziej, który wlasnie zginal, nie byl zdrajca.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_04"); //Nie? Kim to jest?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_05"); //To ja!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_06"); //Czy? Ale dlaczego?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_07"); //Cóz, mój pracodawca chce, zebys zmarl.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_08"); //Ale dlaczego my?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_09"); //Cóz, byles wlasciwie tylko srodkiem do celu, kozlem ofiarnym. Zostaniesz oskarzony o smierc Aarona.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_10"); //Kto podejrzewalby mnie, ze próbuje go uratowac w ostatniej chwili?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_11"); //Powiem wszystkim, ze przyszedlem zbyt pózno, aby zapobiec smierci Aarona i ze chciales mnie zabic, wiec musialem cie zniszczyc.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_12"); //Poza tym nikt nigdy wiecej nie bedzie szukal zdrajcy. Jestes juz niezywy. (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_13"); //A dlaczego Aaron? Dlaczego mialbym go zabic?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_14"); //Poniewaz wczesniej czy pózniej Aaron bedzie zagrozeniem.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_15"); //Dlaczego on, z wszystkich ludzi?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_16"); //To krew przeplywa w jego zylach! To mój ojciec.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_17"); //Twój ojciec? Ale czy nie jestes od niego znacznie starszy?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_18"); //Jeszcze nie rozumiesz? Jestesmy ostatnimi potomkami czlowieka, który zbudowal ten klasztor wlasnymi rekami!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_19"); //A dlaczego wyglada on o wiele mlodszy od Ciebie?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_20"); //Starzeje sie wolniej niz ja, poniewaz krew matki równiez przeplywa przez zyly.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_21"); //Dlaczego jednak Aron byl tu w klasztorze zwyklym magikiem?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_22"); //No cóz, moja matka jest bardzo potezna. Wymazala jego pamiec.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_23"); //Bylismy równiez zaskoczeni, ze wrócil do magów Innos.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_24"); //Kim wiec jest pieklo twoja matka?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_25"); //(smiech) Ona jest najpotezniejsza ze wszystkich czarownic, twojej królowej!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_26"); //Królowa czarownic?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_27"); //No cóz, nie moge pozwolic ci glupio umrzec. Czarownice od dawna sa sprzymierzencami czarnych magów.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_28"); //Ale wystarczy slów, teraz pójdziesz za moim ojcem w królestwie Beliara.

	Mod_FM_Foki = 8;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tojan_EXIT (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_EXIT_Condition;
	information	= Info_Mod_Tojan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tojan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tojan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
