INSTANCE Info_Mod_Karras_Hallo (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Hallo_Condition;
	information	= Info_Mod_Karras_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestes z sympatykami Beliaranu?";
};

FUNC INT Info_Mod_Karras_Hallo_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_Hallo_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_15_00"); //Dlaczego jestes z sympatykami Beliaranu?
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_01"); //Beliar zadzwonil do mnie, kiedy dorastalem.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_02"); //Mój ojciec byl niewinnym wierzacym i bandyta. Zmeczyl moja matke i rodzenstwo.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_03"); //Pewnej nocy przemówil do mnie Beliar. Poszedlem do ojca i udusilem go we snie. Od tego czasu wszystko sie poprawilo.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);

	Info_AddChoice	(Info_Mod_Karras_Hallo, "Ekscytujaca historia!", Info_Mod_Karras_Hallo_B);
	Info_AddChoice	(Info_Mod_Karras_Hallo, "To byka.", Info_Mod_Karras_Hallo_A);
};

FUNC VOID Info_Mod_Karras_Hallo_B()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_B_15_00"); //Ekscytujaca historia!
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_B_36_01"); //Pokazuje, ze Beliar nas nie zawiedzie. A gdy juz nawiazales z nim kontakt, zawsze mozesz z nim porozmawiac.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_B_36_02"); //Tak wlasnie sie czuje.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);
};

FUNC VOID Info_Mod_Karras_Hallo_A()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_A_15_00"); //To byka.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_A_36_01"); //Rozumiem, ze nie chcesz w to wierzyc. Beliar troszczy sie jednak o osoby w niekorzystnej sytuacji.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_A_36_02"); //Wiekszosc z nas ma historie podobna do mojej. Beliar nie mówi do królów i ksiazat.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);
};

INSTANCE Info_Mod_Karras_HastDuAuftrag_2 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_HastDuAuftrag_2_Condition;
	information	= Info_Mod_Karras_HastDuAuftrag_2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie misje, Mistrza?";
};

FUNC INT Info_Mod_Karras_HastDuAuftrag_2_Condition()
{
	if (Kapitel >= 2)
	&& (Mod_Gilde == 12)
	&& (Npc_KnowsInfo(hero, Info_Mod_Karras_Hallo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_HastDuAuftrag_2_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_HastDuAuftrag_2_15_00"); //Masz dla mnie misje, Mistrza?
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_01"); //Tak, mam prace dla Ciebie, mlodego studenta. Moje uszy slysze ostatnio plotki, ze nasi znienawidzeni bracia planuja cos wielkiego.
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_02"); //Przejdz na dól poglosek. Prawdopodobnie najrozsadniej byloby postapic, gdybyscie poszli sladami poslanca Pyrokara wyslanego ostatnio do miasta.
	AI_Output(hero, self, "Info_Mod_Karras_HastDuAuftrag_2_15_03"); //Gdzie znajde poslanca?
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_04"); //Nasi harcerze donosza, ze zawsze robi przerwe w tawernie przed klasztorem, aby pic szklanke w poludnie.
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_05"); //Szklanka zazwyczaj zamienia sie w butelke lub dwie. Nie powinniscie miec zadnych problemów z pozbyciem sie listu poslannika!
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_06"); //Nie wpadaj jednak w szate!

	Log_CreateTopic	(TOPIC_MOD_KARRAS_BOTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KARRAS_BOTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KARRAS_BOTE, "Magicy strazy pozarnej zdaja sie cos planowac. Jestem tu po to, aby przechwycic waszego poslannika i zabrac go do Karrasa. W poludnie jest zawsze w tawernie przed klasztorem. Nie powinienem sie bawic w szate.");
};

INSTANCE Info_Mod_Karras_Bote (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Bote_Condition;
	information	= Info_Mod_Karras_Bote_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tutaj list, Panie Panie.";
};

FUNC INT Info_Mod_Karras_Bote_Condition()
{
	if (Npc_HasItems(hero, Mod_MattheusBotschaft) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Bote_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Bote_15_00"); //Mam tutaj list, Panie Panie.

	B_GiveInvItems	(hero, self, Mod_MattheusBotschaft, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Karras_Bote_36_01"); //Ah. Tak wiec strazacy chca zalozyc strazników. Poniewaz jednak Lord Hagen nie otrzyma tego listu, zajmie to troche czasu.

	if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Alk))
	{
		AI_Output(self, hero, "Info_Mod_Karras_Bote_36_02"); //Co uczyniliscie poslannikowi?
		AI_Output(hero, self, "Info_Mod_Karras_Bote_15_03"); //Dalem mu cos do picia, ale to chyba za duzo, przynajmniej teraz nie wstanie.
		AI_Output(self, hero, "Info_Mod_Karras_Bote_36_04"); //Wtedy prawdopodobnie zajmie to troche dluzej, az magowie ognia nabiora wiatru w materie.
	};

	AI_Output(self, hero, "Info_Mod_Karras_Bote_36_05"); //Tak czy inaczej, dobrze wykonales swoja prace. Oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_KARRAS_BOTE, "Karras jest zadowolony z mojej pracy.");

	B_SetTopicStatus	(TOPIC_MOD_KARRAS_BOTE, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Karras_Namib (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Namib_Condition;
	information	= Info_Mod_Karras_Namib_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam Ci ten list przekazac.";
};

FUNC INT Info_Mod_Karras_Namib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Namib))
	&& (Npc_HasItems(hero, ItWr_NamibForBeliar) == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Namib_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Namib_15_00"); //Mam Ci ten list przekazac.

	B_GiveInvItems	(hero, self, ItWr_NamibForBeliar, 1);

	B_UseFakeScroll();

	if (Mod_Gilde > 11)
	&& (Mod_Gilde < 16)
	{
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_01"); //W koncu myslalem, ze przestana zadawac pytania.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_02"); //Spodziewales sie tego?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_03"); //Oczywiscie! Czy uwazasz, ze nie zdawalismy sobie sprawy, ze idiot chrzestny w jaskini robil swoje eksperymenty na górze?
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_04"); //Potem przychodzicie ze mna na bagno.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_05"); //Tak..... to znaczy, ze nie.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_06"); //Co teraz?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_07"); //Pójdziemy z Toba, ale najpierw trzeba cos zorganizowac.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_08"); //Co?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_09"); //Ksiazka, Necronomicum. Magicy strazy pozarnej ukradli nam ja. Znajduje sie w klasztorze.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_10"); //A jak sobie to wyobrazasz? Nie moge pójsc do Klasztoru Strazaków! Kradlem tam mlotek i oni mnie szukaja.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_11"); //Nie wiem, jak to robisz! Moze to ci pomoze. To koszmar.

		B_GiveInvItems	(self, hero, ItMw_UnconsciousKnueppel, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_12"); //Oczarowany. Jesli kogos z tym uderzysz, on zemdli i nic nie zapamieta, kiedy sie obudzi.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_13"); //Dziala jednak tylko raz. Dlaczego nie ogladasz miasta?

		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Zanim Karras wyjedzie z nim do Minentala, pójde po ukradziona mu ksiege magów ognia. Powinienem obejrzec miasto.");

		Mod_Sekte_Karras = 2;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_14"); //Czy jestes powazny? A co otrzymujemy w zamian?
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_15"); //No cóz, mam Ci tutaj przekazac ten pakiet.

		B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_16"); //Paczka bagiennicy? Nie daj mi sie smiac.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_17"); //Nie sadzisz, ze my po prostu zmagamy sie z brudnym pakietem, czy ty? Zrobie ci umowe.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_18"); //Jest cos do zrobienia. Cos moze zrobic tylko ktos, kto nie jest jednym z naszych braci.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_19"); //Co masz na mysli?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_20"); //Magicy strazy pozarnej ukradli nam ksiazke. Chce, zebyscie odzyskali to za nas.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_21"); //Jesli wykrade te ksiazke magikom strazakom, czy przyjdziesz ze mna?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_22"); //Wiec, po pierwsze, nie kradna go, ale dostajesz nasza prawowita wlasnosc z powrotem, a po drugie, tak.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_23"); //Wszystkie sluszne, wszystkie sluszne. Gdzie moge znalezc ksiazke?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_24"); //Prawdopodobnie w jej bibliotece.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_25"); //Und nimm diesen Knüppel. Oczarowany. Jesli kogos z tym uderzysz, on zemdli i nic nie zapamieta, kiedy sie obudzi.

		B_GiveInvItems	(self, hero, ItMw_UnconsciousKnueppel, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_26"); //Dziala jednak tylko raz. Ogladaj wiec go. Jesli sie to przykreci, trzeba znalezc sposób na samodzielne wyjecie oslony.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_27"); //Teraz spiesz sie!

		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Zanim Karras wyjedzie z nim do Minentala, pójde po ukradziona mu ksiege magów ognia.");

		Mod_Sekte_Karras = 1;
	};
};

INSTANCE Info_Mod_Karras_NamibHabBuch (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_NamibHabBuch_Condition;
	information	= Info_Mod_Karras_NamibHabBuch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam ksiazke.";
};

FUNC INT Info_Mod_Karras_NamibHabBuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Namib))
	&& (Mod_Sekte_Aufnahme == 0)
	&& (Mod_Sekte_Karras >= 1)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_NamibHabBuch_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_00"); //Mam ksiazke.

	B_GiveInvItems	(hero, self, ItWr_BeliarBook, 1);

	if (Mod_Sekte_Karras == 1)
	{
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_01"); //Bardzo dobry. Nastepnie udamy sie z Toba do Minentala. Powiedz mi, kiedy bedziesz gotowy.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_02"); //Musze kogos zabrac, wtedy mozemy isc.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_03"); //Bardzo dobrze! To konczy przygotowania.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_04"); //Przygotowania do czego?
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_05"); //Zobaczysz to dosc szybko. Pozwól mi wiedziec, jak tylko bedziesz gotowy do wyjazdu.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_06"); //Najpierw musze wyciagnac przyjaciela z jaskini.
	};

	AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_07"); //Wszystkie sluszne, wszystkie sluszne.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Teraz musze dac znac Lesterowi, a potem Karrasowi i ja ide z nim do Minentala.");
};

INSTANCE Info_Mod_Karras_Lester (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Lester_Condition;
	information	= Info_Mod_Karras_Lester_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mozemy pójsc teraz.";
};

FUNC INT Info_Mod_Karras_Lester_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Karras))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Lester_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Lester_15_00"); //Mozemy pójsc teraz.
	AI_Output(self, hero, "Info_Mod_Karras_Lester_36_01"); //Wszystkie sluszne, wszystkie sluszne.
	
	AI_StopProcessInfos	(self);

	Mod_Sekte_Aufnahme = 1;
};

INSTANCE Info_Mod_Karras_Namib2 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Namib2_Condition;
	information	= Info_Mod_Karras_Namib2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Namib2_Condition()
{
	if (Mod_Sekte_Aufnahme == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Namib2_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Namib2_36_00"); //Powiedz Baalowi Namibowi, ze jestesmy tutaj.
};

INSTANCE Info_Mod_Karras_Leader (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Leader_Condition;
	information	= Info_Mod_Karras_Leader_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Leader_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_AtTempel))
	&& (hero.guild == GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Leader_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_00"); //Och, tam jestescie. Wszystko idzie zgodnie z planem. To prawie czas.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_01"); //Natychmiast wezwiemy tu nieumarlych, ale nie szkieletów kosci, ale zakonczonych tu rekinów bagiennych.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_02"); //Nie martw sie, ma to taki sam wplyw na grunt, ale skorzystamy z tego.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_03"); //Upewnilismy sie, ze jeden z Templariuszy, który mial prowadzic walke z nieumarlymi, nie dolaczy do nas.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_04"); //Zajmiesz jego miejsce.
	AI_Output(hero, self, "Info_Mod_Karras_Leader_15_05"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_06"); //Tutaj wez ten kamien.

	B_GiveInvItems	(self, hero, ItMi_SumpfhaiStein, 1);

	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_07"); //Bedzie pochlaniac energie kazdego Sumphai ty lub ktos w twojej grupie zabija.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_08"); //Powinno byc co najmniej dziesiec rekinów, inaczej wszystko za nic! Teraz odejdz.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Karras dal mi kamien. Powiedzial, ze bedzie wchlanial energie rekinów bagiennych, które zabijam z moja grupa.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_Stein (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Stein_Condition;
	information	= Info_Mod_Karras_Stein_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Stein_Condition()
{
	if (Npc_HasItems(hero, ItMi_SumpfhaiStein) == 1)
	&& (hero.guild == GIL_KDF)
	&& (Mod_Sekte_SH_Kampf == 4)
	&& (Npc_IsDead(Swampshark_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Stein_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Stein_36_00"); //Daj mi kamien.

	B_GiveInvItems	(hero, self, ItMi_SumpfhaiStein, 1);

	if (Mod_Sekte_UDS_Stein >= 10)
	{
		AI_Output(self, hero, "Info_Mod_Karras_Stein_36_01"); //Ach, tak, tak, bardzo dobrze, laduje sie. Przyjedzcie za kilka dni nad doline.
	
		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Karras chce, ze za kilka dni wróce do jego miejsca.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_Stein_36_02"); //Ale.... Nie jest nawet naladowany! Damn, wszystko za nic! Jestes bezuzyteczny! Wychodzic z moich oczu!
	};
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_Karras_Fertig (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Fertig_Condition;
	information	= Info_Mod_Karras_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_SUDD))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Fertig_36_00"); //Bede teraz wyjezdzal.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Karras_UDS (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_UDS_Condition;
	information	= Info_Mod_Karras_UDS_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_UDS_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Stein))
	&& (Mod_Sekte_UDS_Stein >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_UDS_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_00"); //Ach, tam jestes! Dostalem cos dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_01"); //Tutaj jest to runo przywolujace nieumarlego rekina bagiennego.

	B_GiveInvItems	(self, hero, ItRu_SumUDSwampshark, 1);

	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_02"); //Zrobilismy je z energii kamienia, za który nas Panstwo zaplacili.
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_03"); //Rekiny swampowe sa twardymi przeciwnikami, rekiny nieumarle sa niesamowicie silne, ale te przywolane magia sa prawie niezwyciezone!
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_MagierWerden (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_MagierWerden_Condition;
	information	= Info_Mod_Karras_MagierWerden_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_MagierWerden_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Befoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Raven_Befoerderung))
	&& (hero.guild == GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_MagierWerden_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_00"); //Teraz jestes gotowy, aby zostac czarnym magikiem.
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_01"); //Jesli wybierzesz te sciezke, powinienes odwiedzic Xardas.
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_02"); //Mozesz równiez wybrac sie do Raven i dolaczyc do Czarnych Wojowników.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_Kreis1	(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis1_Condition;
	information	= Info_Mod_Karras_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie pierwszego kola magii.";
};
FUNC INT Info_Mod_Karras_Kreis1_Condition()
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
FUNC VOID Info_Mod_Karras_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis1_15_00"); //Naucz mnie pierwszego kola magii.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis1_36_01"); //Pierwsze kolo pozwala na uzycie utworzonych przez Ciebie run.
		AI_Output (self, hero, "Info_Mod_Karras_Kreis1_36_02"); //Mozesz teraz nauczyc sie formul zaklec, aby tworzyc wlasne runy.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_Kreis2		(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis2_Condition;
	information	= Info_Mod_Karras_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie drugiego kola magii.";
};
FUNC INT Info_Mod_Karras_Kreis2_Condition ()
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
FUNC VOID Info_Mod_Karras_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis2_15_00"); //Naucz mnie drugiego kola magii.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis2_36_01"); //Wejdz do drugiego kola i naucz sie rzucac jeszcze mocniejsze czary.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis2_36_02"); //Nadszedl jeszcze czas.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_Kreis3		(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis3_Condition;
	information	= Info_Mod_Karras_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie trzeciego kola magii.";
};
FUNC INT Info_Mod_Karras_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis3_15_00"); //Naucz mnie trzeciego kola magii.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis3_36_01"); //Tak, nadszedl czas. Wprowadz trzecie kolo magii. Czekaja na Ciebie nowe zaklecia.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis3_36_02"); //Nie nadszedl jeszcze czas, aby nauczyc sie trzeciego kola.
	};
};		

INSTANCE Info_Mod_Karras_Kreis4 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis4_Condition;
	information	= Info_Mod_Karras_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac czwarte kolo magii.";
};

FUNC INT Info_Mod_Karras_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis4_15_00"); //Chce poznac czwarte kolo magii.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis4_36_01"); //Dobre. Wszystkie znaki sa wypelnione. Wejdz do czwartego kola i zostaniesz upelnomocniony nowymi zakleciami.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis4_36_02"); //Jeszcze nie.
	};
};

INSTANCE Info_Mod_Karras_Kreis5 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis5_Condition;
	information	= Info_Mod_Karras_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac piate kolo magii.";
};

FUNC INT Info_Mod_Karras_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis5_15_00"); //Chce poznac piate kolo magii.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis5_36_01"); //Nastepnie dolacz do piatego kola magii. Teraz opanujesz mocniejsze czary niz kiedykolwiek wczesniej.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis5_36_02"); //Nadszedl jeszcze czas.
	};
};

INSTANCE Info_Mod_Karras_Kreis6	(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis6_Condition;
	information	= Info_Mod_Karras_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie ostatniego kola magii.";
};

FUNC INT Info_Mod_Karras_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis6_15_00"); //Naucz mnie ostatniego kola magii.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_01"); //Minelo wiele czasu od zawarcia przymierza z Beliarem. Wiele sie wydarzylo i nie znajdujemy pokoju.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_02"); //Jestes wybranym Beliarem. W ten sposób bedziesz potrzebowal calej sily, aby przetrwac swoje walki.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_03"); //Poswiecam pana teraz, prosze pania wybrac. Wprowadzasz szóste kolo.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_04"); //Mozesz teraz nauczyc sie zaklec ostatniego kola z Andokai, jesli chcesz.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_05"); //To jeszcze nie czas. Jesli poszedles troche dalej po drodze Beliar cie pokaze, a ja cie poucze.
	};
};

INSTANCE Info_Mod_Karras_Pickpocket (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Pickpocket_Condition;
	information	= Info_Mod_Karras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Karras_Pickpocket_Condition()
{
	C_Beklauen	(136, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Karras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

	Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_BACK, Info_Mod_Karras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Karras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Karras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
};

FUNC VOID Info_Mod_Karras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Karras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Karras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Karras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Karras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Karras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Karras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Karras_EXIT (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_EXIT_Condition;
	information	= Info_Mod_Karras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
