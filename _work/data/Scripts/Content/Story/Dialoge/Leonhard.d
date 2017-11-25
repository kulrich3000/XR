INSTANCE Info_Mod_Leonhard_Hi (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Hi_Condition;
	information	= Info_Mod_Leonhard_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leonhard_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Hi_36_00"); //(wstrzasniety) Hej! Po co sie chwiejesz? Próbujesz mnie przestraszyc?
};

INSTANCE Info_Mod_Leonhard_Aufgabe (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Aufgabe_Condition;
	information	= Info_Mod_Leonhard_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Leonhard_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_36_01"); //Czekam na to, aby ludzie tacy jak Ty mieli dobra oferte. Oferta dla Ciebie i dla mnie.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_36_02"); //Po prostu uklonil sie na chwile. Czekam troche dluzej.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Nie chce z tym nic wspólnego!", Info_Mod_Leonhard_Aufgabe_B);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Jaka jest ta oferta?", Info_Mod_Leonhard_Aufgabe_A);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_B_15_00"); //Nie chce z tym nic wspólnego!

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_A_15_00"); //Jaka jest ta oferta?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_01"); //Dwóch moich wspólmalzonków trafilo do wiezienia, calkowicie bezprawnego.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_02"); //A teraz chcialbym dac sedziemu mozliwosc nadrobienia bledu.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_03"); //Masz mu tylko dac wiadomosc, ze to prawda?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_04"); //Upewnij sie, ze nikt inny go nie przeczyta i nie ogladaj go sam. Nie ma w tym nic ekscytujacego.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_A_36_05"); //Oczywiscie istnieje równiez mozliwosc zwrotu kosztów.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Zajme sie tym.", Info_Mod_Leonhard_Aufgabe_D);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Dlaczego sam nie przekazujesz wiadomosci?", Info_Mod_Leonhard_Aufgabe_C);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_D()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_D_15_00"); //Zajme sie tym.

	B_GiveInvItems	(self, hero, ItWr_LeonhardRichter, 1);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Leonhard polecil mi, abym wyslal wiadomosc do sedziego w Khoracie.... Wiecej i tylko dla sedziego!");

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_C_15_00"); //Dlaczego sam nie przekazujesz wiadomosci?
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_C_36_01"); //Sedzia i ja - ja. Nie jestesmy najlepszymi przyjaciólmi.
	AI_Output(self, hero, "Info_Mod_Leonhard_Aufgabe_C_36_02"); //Mam nadzieje, ze jest to dla Ciebie wystarczajace wyjasnienie. Jaki jest wynik?

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);

	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Zajme sie tym.", Info_Mod_Leonhard_Aufgabe_D);
	Info_AddChoice	(Info_Mod_Leonhard_Aufgabe, "Nie, nie wyglada to dla mnie jak czysta praca.", Info_Mod_Leonhard_Aufgabe_E);
};

FUNC VOID Info_Mod_Leonhard_Aufgabe_E()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Aufgabe_E_15_00"); //Nie, nie wyglada to dla mnie jak czysta praca.

	Info_ClearChoices	(Info_Mod_Leonhard_Aufgabe);
};

INSTANCE Info_Mod_Leonhard_Unfrieden (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Unfrieden_Condition;
	information	= Info_Mod_Leonhard_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym zebrac moja nagrode.";
};

FUNC INT Info_Mod_Leonhard_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Unfrieden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_15_00"); //Chcialbym zebrac moja nagrode.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_36_01"); //Tak, Twoja nagroda.... Jest troche problem z nagroda.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_36_02"); //Ktos inny to robi. Ale po prostu musimy je zebrac razem.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "Masz na mysli kradziez? Ja sie z tym nie zgadzam.", Info_Mod_Leonhard_Unfrieden_B);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "Jak dostac zloto?", Info_Mod_Leonhard_Unfrieden_A);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_B_15_00"); //Masz na mysli kradziez? Ja sie z tym nie zgadzam.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_B_36_01"); //Naprawde powinienes zmienic zdanie.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "To nie jest dla mnie.", Info_Mod_Leonhard_Unfrieden_D);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "Jak dostac zloto?", Info_Mod_Leonhard_Unfrieden_A);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_A_15_00"); //Jak dostac zloto?
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_01"); //W restauracji Ruprecht, a.... Przestepcy, zagniezdzeni.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_02"); //Spi w jednym z lózek na pierwszym pietrze.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_03"); //Obok lózka chowa zloto w klatce piersiowej.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_04"); //Bedziesz musial go oczyscic w nieobserwowanym momencie w ciagu dnia i przyniesc nam jego zawartosc.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_A_36_05"); //Wtedy dostajesz swój sprawiedliwy udzial.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "To nie jest dla mnie.", Info_Mod_Leonhard_Unfrieden_D);
	Info_AddChoice	(Info_Mod_Leonhard_Unfrieden, "To juz wszystko.", Info_Mod_Leonhard_Unfrieden_C);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_D()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_D_15_00"); //To nie jest dla mnie.
	AI_Output(self, hero, "Info_Mod_Leonhard_Unfrieden_D_36_01"); //Wtedy z nagrody nic nie przyjdzie. Pomysl tylko o tym.

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Leonhard_Unfrieden_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Unfrieden_C_15_00"); //To juz wszystko.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Mam zrabowac klatke piersiowa Ruprechta, który obecnie spi w restauracji na pierwszym pietrze, aby odebrac moja nagrode.");

	Mod_LeonhardRuprecht = 1;

	Info_ClearChoices	(Info_Mod_Leonhard_Unfrieden);
};

INSTANCE Info_Mod_Leonhard_RuprechtsTruhe (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_RuprechtsTruhe_Condition;
	information	= Info_Mod_Leonhard_RuprechtsTruhe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest to zloto Ruprechta.";
};

FUNC INT Info_Mod_Leonhard_RuprechtsTruhe_Condition()
{
	if ((Mod_LeonhardRuprecht == 2)
	|| (Mod_LeonhardRuprecht == 3))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_RuprechtsTruhe_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_00"); //Jest to zloto Ruprechta.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Leonhard_RuprechtsTruhe_36_01"); //Nie jest to tyle, czego sie spodziewalem. Mysle, ze wyciagne to z twojej wyplaty. Nie zawdzieczamy Ci niczego.
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_02"); //Nie mozna byc powaznym.
	AI_Output(self, hero, "Info_Mod_Leonhard_RuprechtsTruhe_36_03"); //Wyciagnij z tego fuge!
	AI_Output(hero, self, "Info_Mod_Leonhard_RuprechtsTruhe_15_04"); //Ja po prostu pójde i sam to pojade!

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Leonhard nie chcial mi dac nagrody, wiec musialem go 'przekonac'.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNFRIEDEN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Leonhard_Endres (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Endres_Condition;
	information	= Info_Mod_Leonhard_Endres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Endres_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_00"); //Hej, dostales minute?
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_02"); //Slyszales, ze badasz skomplikowana sprawe tego, kto zabil Endresa.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_03"); //Mogloby byc.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_04"); //Chcialem tylko powiedziec, ze jeden z moich informatorów otrzymal list szantazowy od uzdrowiciela do Juliany...... wpadl w rece.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_05"); //Prawdopodobnie szantazujac ja cialem Endresa, wydajac ja za oplata lub czyms.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_06"); //Wiecie, ze Juliana nie jest biedna.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_07"); //Dlaczego Juliana nie doniosla o szantazu?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_08"); //Cóz, kiedy szantazujesz, zazwyczaj masz cos na szantazowanej osobie, prawda?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_09"); //Uzdrowiciel bedzie juz dokladnie pomyslal, czy ma wystarczajaca dzwignie.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_10"); //No cóz, wlasnie to powiedzialem. Oboje sa wiec brudni, na pewno.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_11"); //Dziekujemy za informacje. Ale dlaczego o tym mówisz?
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_12"); //Jestem przyzwoitym obywatelem, czyz nie jestem? Czy nie ma takiej nagrody za takie wskazówki?
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres_15_13"); //Jesli masz racje, jestem pewien, ze jestes.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres_36_14"); //Potem uslyszymy sie od siebie nawzajem.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Leonhard twierdzi, ze uzdrowiciel szantazowal Juliane z cialem Endresa. Musze wiec równiez z nimi porozmawiac.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Leonhard_Endres02 (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Endres02_Condition;
	information	= Info_Mod_Leonhard_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Endres02_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_36_00"); //Cóz, moja wskazówka bardzo ci pomogla.
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_15_01"); //Nie ma nic przeciwko temu.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_36_02"); //Czy moge oczekiwac nagrody?

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Leonhard_Endres02, "Nie pozwole sie z tym uciec. (100 Dawanie zlota)", Info_Mod_Leonhard_Endres02_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 10)
	{
		Info_AddChoice	(Info_Mod_Leonhard_Endres02, "Tutaj jest cos dla Ciebie. (10 zlota)", Info_Mod_Leonhard_Endres02_B);
	};
	Info_AddChoice	(Info_Mod_Leonhard_Endres02, "Zapomnij o tym.", Info_Mod_Leonhard_Endres02_A);
};

FUNC VOID Info_Mod_Leonhard_Endres02_C()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_C_15_00"); //Nie pozwole sie z tym uciec.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_C_36_01"); //O, czlowiek, dziekuje! Wiesz co, pozwole Ci pozbyc sie kosztownosci w przyszlosci. Oczywiscie na zloto.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

FUNC VOID Info_Mod_Leonhard_Endres02_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_B_15_00"); //Tutaj jest cos dla Ciebie.

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_B_36_01"); //Trudno mi sie z tego cieszyc.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

FUNC VOID Info_Mod_Leonhard_Endres02_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Endres02_A_15_00"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Leonhard_Endres02_A_36_01"); //Phew, to fugka, asshole.

	Info_ClearChoices	(Info_Mod_Leonhard_Endres02);
};

INSTANCE Info_Mod_Leonhard_Bierhexen (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Bierhexen_Condition;
	information	= Info_Mod_Leonhard_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ucierzyliscie Panstwo na jeczmieniu piwowarskim.";
};

FUNC INT Info_Mod_Leonhard_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_15_00"); //Ucierzyliscie Panstwo na jeczmieniu piwowarskim.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_01"); //Co wiec?
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_15_02"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_03"); //Poniewaz bylem pelen. Zauwazylismy, ze mistrz browaru skonczyl pierwsze piwo i odwiedzil go noca.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_04"); //Bylo naprawde fajnie, trzeba powiedziec, za piwo prawie cos bym zaplacil.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_05"); //Mialy duzo zabawy.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_06"); //W rzeczywistosci jednak w pewnym momencie pecherz staje sie widoczny.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_07"); //Oczywiscie nie chcielismy isc do rogu, wiec jeden z nas zatrzymal torbe, a inni zostali zwolnieni.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_36_08"); //Nie pamietam reszty wieczoru, ale smieszne jak mistrz browarnika nigdy nie zauwazyl, ze mielismy cale jego piwo, prawda? (smiertelnicy)

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Leonhard przyznal, ze jest winowajca. Jest jednak pewien, ze nie poniesie zadnych konsekwencji.");

	Mod_Bierhexen = 4;

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);

	Info_AddChoice	(Info_Mod_Leonhard_Bierhexen, "Bedzie to mialo konsekwencje!", Info_Mod_Leonhard_Bierhexen_B);
	Info_AddChoice	(Info_Mod_Leonhard_Bierhexen, "Co dales mi, ze nie powiedziales mistrzowi piwowarskiemu?", Info_Mod_Leonhard_Bierhexen_A);
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_B()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_B_15_00"); //Bedzie to mialo konsekwencje!
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_B_36_01"); //Tak, tak, tak, jak sadze.

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);
};

FUNC VOID Info_Mod_Leonhard_Bierhexen_A()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_A_15_00"); //Co dales mi, ze nie powiedziales mistrzowi piwowarskiemu?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_A_36_01"); //Czy nie masz zamiaru? Dlaczego myslisz, ze mówie wszystkim?
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen_A_36_02"); //Poniewaz nie daje nic do zrozumienia, jesli mistrz browarnik wie lub nie. Nie moze mnie dotknac.
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen_A_15_03"); //Zobaczymy to.

	Info_ClearChoices	(Info_Mod_Leonhard_Bierhexen);
};

INSTANCE Info_Mod_Leonhard_Bierhexen2 (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Bierhexen2_Condition;
	information	= Info_Mod_Leonhard_Bierhexen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leonhard_Bierhexen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leonhard_Bierhexen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen2_36_00"); //Na co Pan patrzy? Nigdy wczesniej nie widzialem czlowieka w uczciwej pracy?
	AI_Output(hero, self, "Info_Mod_Leonhard_Bierhexen2_15_01"); //Wyglada dla ciebie nieco niezwykly, tak.
	AI_Output(self, hero, "Info_Mod_Leonhard_Bierhexen2_36_02"); //Wylaczyc fuck up!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Leonhard_Freudenspender (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Freudenspender_Condition;
	information	= Info_Mod_Leonhard_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wyglada na to, ze mozesz uzyc jakichs smakolyków.";
};

FUNC INT Info_Mod_Leonhard_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Leonhard_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Leonhard_Freudenspender_15_00"); //Wyglada na to, ze mozesz uzyc jakichs smakolyków.
	AI_Output(self, hero, "Info_Mod_Leonhard_Freudenspender_36_01"); //Jak kosztowny?
	AI_Output(hero, self, "Info_Mod_Leonhard_Freudenspender_15_02"); //10 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Leonhard_Freudenspender_36_03"); //Daj mi to!

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Leonhard_Pickpocket (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_Pickpocket_Condition;
	information	= Info_Mod_Leonhard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Leonhard_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

	Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_BACK, Info_Mod_Leonhard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Leonhard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Leonhard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Leonhard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Leonhard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Leonhard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leonhard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Leonhard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Leonhard_EXIT (C_INFO)
{
	npc		= Mod_7419_OUT_Leonhard_REL;
	nr		= 1;
	condition	= Info_Mod_Leonhard_EXIT_Condition;
	information	= Info_Mod_Leonhard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leonhard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leonhard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
