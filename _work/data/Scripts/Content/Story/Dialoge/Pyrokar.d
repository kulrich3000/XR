INSTANCE Info_Mod_Pyrokar_Hi (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hi_Condition;
	information	= Info_Mod_Pyrokar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pyrokar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hi_11_00"); //Zapraszamy do naszego klasztoru. Co mozemy dla Ciebie zrobic?
};

INSTANCE Info_Mod_Pyrokar_Hammer (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hammer_Condition;
	information	= Info_Mod_Pyrokar_Hammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje swietego mlotka.";
};

FUNC INT Info_Mod_Pyrokar_Hammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Goetterschwerter))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Hammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hammer_15_00"); //Potrzebuje swietego mlotka.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hammer_11_01"); //Idz do Garwiga i powiedz mu, ze wysylam ci. On pozwoli ci wziac mloteczek.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Pyrokar pozwolil mi dostac swiety mlotek. Chce najpierw dac Garwigowi znac.");
};

INSTANCE Info_Mod_Pyrokar_Goetter (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Goetter_Condition;
	information	= Info_Mod_Pyrokar_Goetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o nosnikach energii elektrycznej?";
};

FUNC INT Info_Mod_Pyrokar_Goetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trimedron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Goetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Goetter_15_00"); //Co wiesz o nosnikach energii elektrycznej?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Goetter_11_01"); //Sa trzy z nich i podobnie jak bron bogów, jest jeden na kazdym obszarze. Ponadto kazdy z nich moze byc zabity tylko przez jedna z broni bogów.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Goetter_11_02"); //Ale badz ostrozny, sa bardzo mocni.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Wladze znajduja sie równiez na róznych obszarach. Poza tym kazdy z nich moze zostac zabity tylko przez jedna z broni bogów.");
};

INSTANCE Info_Mod_Pyrokar_Machttraeger (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Machttraeger_Condition;
	information	= Info_Mod_Pyrokar_Machttraeger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa istoty potezne?";
};

FUNC INT Info_Mod_Pyrokar_Machttraeger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Goetter))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Machttraeger_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttraeger_15_00"); //Jakie sa istoty potezne?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_01"); //Nie wiemy, ale jak juz wspomnialem, sa one bardzo potezne. Musisz sie sam przekonac.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_02"); //Ale dowiedzielismy sie czegos o miejscu pobytu. I myslimy, ze wiemy, kto jest w Minentalu.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttraeger_15_03"); //Co wiesz?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_04"); //Wlasciwie powiem ci, co sie dowiedzielismy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_05"); //Wlascicielem mocy w Minentalu jest prawdopodobnie pan cienisty o imieniu Urnol. Xardas poinformowal Cie, ze juz go spotkales.

	if (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_06"); //W tej chwili wydaje sie on byc przyczyna niepokoju tutaj w Khorinis. Trzeba go zapytac.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_07"); //Po umieszczeniu go tam wrócilby do doliny rzeki Minental.
	};

	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_08"); //Nosnik energii Khorinis wydaje sie znajdowac na wyspie. Ale bez statku nie bedzie mozna do niego dotrzec.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_09"); //Ostatni wladca znajduje sie w Jharkendarzu, dolinie odkrytej przez magów wody. Rozumiem, ze uczestniczyl pan w tym wszystkim. Jest kilka dworów.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_10"); //Z pewnoscia znajduje sie w jednym z tych budynków.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Nosnikiem energii w Minental jest Shadowlord Urnol. Prawdopodobnie wróci do Minentala. Mówi sie, ze nosnik energii Khorinis znajduje sie na odleglej wyspie. Do dotarcia tam potrzebny jest mi statek. A w Jharkendarzu mialem odebrac dwory. To moze byc zabawa.");
};

INSTANCE Info_Mod_Pyrokar_Rasend (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Rasend_Condition;
	information	= Info_Mod_Pyrokar_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Rasend_Condition()
{
	if (Mod_WM_Rasend >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_00"); //Nie ma sposobu, aby opuscic Khorinis.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_01"); //Tak dlugo, jak demon szaleje tutaj, pozostawienie tej wyspy samym sobie byloby nieodpowiedzialne.
};

INSTANCE Info_Mod_Pyrokar_Trank (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Trank_Condition;
	information	= Info_Mod_Pyrokar_Trank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze eliksir dla nowicjuszy.";
};

FUNC INT Info_Mod_Pyrokar_Trank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Daron_ImKloster))
	&& (Npc_HasItems(hero, VatrasNovizenTrunk) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Trank_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_00"); //Przynosze eliksir dla nowicjuszy.

	B_GiveInvItems	(hero, self, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_01"); //Wyslalem Darona.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_02"); //Daron dal mi eliksir i kazal przyniesc go wam.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_03"); //Bardzo dziekujemy, bardzo nam pomogliscie.

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	{
		B_LogEntry_More	(TOPIC_MOD_DARONSGEFALLEN, TOPIC_MOD_FEUERMAGIER, "Przynióslem Pyrokar eliksir.", "Ja dalem Daronowi laske.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Przynióslem Pyrokar eliksir.");
	};

	Mod_FMFieberDay = Wld_GetDay();
	Mod_FMFieber = 1;

	B_SetTopicStatus	(TOPIC_MOD_DARONSGEFALLEN, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Pyrokar_Mitglied (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Mitglied_Condition;
	information	= Info_Mod_Pyrokar_Mitglied_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc jednym z waszych nowicjuszy.";
};

FUNC INT Info_Mod_Pyrokar_Mitglied_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Mitglied_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_00"); //Chce byc jednym z waszych nowicjuszy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_01"); //Zawsze potrzebujemy nowych nowicjuszy. Trzeba jednak najpierw okazac sie godnym zaufania.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_02"); //Jak moge okazac sie godnym siebie?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_03"); //Pomóz kazdemu z magów strazy pozarnej. Jedyne co musisz zrobic, to pomóc normalnemu magowi, my, wysokocisnieni magowie, nie testujemy cie.

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Aby zostac nowicjuszem ognia, musze pomóc kazdemu magowi ognia.");

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Trank))
	{
		B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Ja dalem Daronowi laske.");
	};
};

INSTANCE Info_Mod_Pyrokar_Geholfen (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Geholfen_Condition;
	information	= Info_Mod_Pyrokar_Geholfen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pomagalem wszystkim magom.";
};

FUNC INT Info_Mod_Pyrokar_Geholfen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorax_HabAlkohol))
	&& (Npc_KnowsInfo(hero, Info_Mod_Parlan_Aufgabe_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Trank))
	&& (Npc_KnowsInfo(hero, Info_Mod_Neoras_HabTrank))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Geholfen_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Geholfen_15_00"); //Pomagalem wszystkim magom.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Geholfen_11_01"); //Bardzo dobry. Mozesz do nas dolaczyc juz teraz.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Mam aprobate wszystkich magów i moge teraz stac sie jednym z ich nowicjuszy.");
};

INSTANCE Info_Mod_Pyrokar_Aufnahme (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Aufnahme_Condition;
	information	= Info_Mod_Pyrokar_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem gotów dolaczyc do Ciebie.";
};

FUNC INT Info_Mod_Pyrokar_Aufnahme_Condition()
{
	if (Mod_Gilde == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Geholfen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_15_00"); //Jestem gotów dolaczyc do Ciebie.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_01"); //Jestescie gotowi zostac nowicjuszami ognia.
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_02"); //Ale kiedy nosisz jeden z naszych nowicjuszy, nie ma odwrotu.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus <= 8)
			{
				AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_05"); //Nalezy jednak najpierw zrobic kilka rzeczy na korzysc Innosa.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "Zmienilam zdanie.", Info_Mod_Pyrokar_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "Chce do Panstwa dolaczyc.", Info_Mod_Pyrokar_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_04"); //Najpierw powinienes zdobyc neutralna zbroje.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_03"); //Lepiej zdobyc wiecej doswiadczenia.
	};
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Nein_15_00"); //Zmienilam zdanie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Nein_11_01"); //Cokolwiek mówisz.

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Geholfen)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_59);
	
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Ja_15_00"); //Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_01"); //Dobre. Oto Twoja próba.

	CreateInvItems	(self, ITAR_NOV_L, 1);
	B_GiveInvItems	(self, hero, ITAR_NOV_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Nov_L);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_02"); //Nie powinienes sie pokazywac przed zwolennikami Beliarana, oni moga byc bardzo irytujacy na Ciebie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_03"); //Jako jeden z naszych nowicjuszy mozesz nauczyc sie naszej magii.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_04"); //Twoim obowiazkiem jest równiez sluzba magikom.

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_05"); //Jedyna bronia, która moge wam zaoferowac, jest paleczka.

	B_GiveInvItems	(self, hero, ItMw_1h_Nov_Mace, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_06"); //Podam panstwu kilka szczególów.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_07"); //Bylby to przede wszystkim kamien runowy, dzieki któremu mozna stworzyc pierwsza rune.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_08"); //Wtedy jako nowicjusz masz równiez prawo wejsc do biblioteki.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_09"); //Tam spotkasz Hyglasa, który nauczy cie jak tworzyc runy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_10"); //Poza tym Marduk nauczy Cie czarodziejskiego srodowiska kiedy bedziesz gotowy.

	B_GiveInvItems	(self, hero, ItKe_KlosterBibliothek, 1);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_GILDENAUFNAHME, "Jestem nowicjuszem ognia.", "Jestem nowicjuszem ognia.");
	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "Marduk uczy magicznych kregów.");
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "W Hyglasie moge nauczyc sie robic runy.");
	
	Mod_Gilde = 6;

	Mod_925_KDF_Talamon_NW.aivar[AIV_PASSGATE] = TRUE;

	hero.guild = GIL_VLK;
	Npc_SetTrueGuild	(hero, GIL_VLK);

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

	CreateInvItems	(Mod_917_KDF_Gorax_NW, ItBE_Addon_NOV_01, 1);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	Monster_Max += 30;

	B_Göttergefallen(1, 5);

	Mod_FMAufnahme_Day = Wld_GetDay();

	Wld_ReassignPortalToGuild ("klasztor04", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("klasztor05", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("klasztor10", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("klasztor12", GIL_PUBLIC); //Schlafraum Novizen
	
	Wld_ReassignPortalToGuild ("klasztor06", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("klasztor07", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("klasztor08", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("klasztor09", GIL_PUBLIC); //Schlafraum Magier
};

INSTANCE Info_Mod_Pyrokar_FeuerGegenEis (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_FeuerGegenEis_Condition;
	information	= Info_Mod_Pyrokar_FeuerGegenEis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_FeuerGegenEis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_FeuerGegenEis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_FeuerGegenEis_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_00"); //Jestes, Novice.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_01"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_02"); //Nie wiemy jeszcze na pewno.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_03"); //Wydaje sie jednak, ze na kamiennym kregu na podwórzu Sekob powstal tajemniczy portal, przez który coraz wiecej stworzen lodu przenika do otoczenia.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_04"); //Te wodorozcienczalne istoty rozprzestrzenilysie szczególnie nad jeziorem.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_05"); //Teraz, z pomoca Innosa, istoty te nalezy odepchnac z powrotem, zbadac zjawisko i - jesli to mozliwe - ponownie zamknac portal.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_06"); //To pozwoliloby nam ograniczyc wplyw magików wody na dwory i zapewnic wyzszosc naszego kosciola Innos ".
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_07"); //W kazdym razie wyslalem juz Sergio z kilkoma nowicjuszami do zbadania sytuacji.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_08"); //Jaka jest moja praca?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_09"); //Wkrótce mialem sie do tego zblizyc. Hyglas przygotowal sie jednak do podjecia dzialan przeciwko tym lodowcom z jego wiedza o magii ognia.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_10"); //Jako mój najbardziej doswiadczony nowicjusz, bedziesz mu towarzyszyl przy sadach i w razie potrzeby wspieral go.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_11"); //Nie ma czasu do stracenia i natychmiast odchodzisz. Innos chroni Cie na drodze.

	Log_CreateTopic	(TOPIC_MOD_FM_FEUEREIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_FEUEREIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "Jestem wiec z Hyglasem. Z ogrodu Sekobs przez tajemniczy portal przeplywa coraz wiecej lodowców do Khorinis, a nasi chlopcy biora udzial w bitwach z nimi nad jeziorem. Nie ma czasu do stracenia, aby im pomóc.");
	
	B_StartOtherRoutine(Mod_104_BAU_Rega_NW, "FEUERGEGENEIS");
	B_StartOtherRoutine(Mod_1412_BAU_Bauer_NW, "FEUERGEGENEIS");
};

INSTANCE Info_Mod_Pyrokar_FeuerGegenEis2 (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_FeuerGegenEis2_Condition;
	information	= Info_Mod_Pyrokar_FeuerGegenEis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_FeuerGegenEis2_Condition()
{
	if (Mod_FM_FeuerEis == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_FeuerGegenEis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_00"); //W koncu sie obudziles!
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_01"); //(irytowany) Co.... co sie stalo?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_02"); //Sergio odnalazl cie w polu nieprzytomnosci i przywiózl do klasztoru.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_03"); //Portal....
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_04"); //Tak, zrobiles to, portal jest ponownie zablokowany.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_05"); //Mielismy jednak nadzieje dowiedziec sie wiecej o dokladnych okolicznosciach. Zwlaszcza, ze nasz brat Hyglas zginal.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_06"); //szklanki przebywal po drugiej stronie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_07"); //Druga strona portalu? Byles tam?
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_08"); //Tak..... Znalezlismy sie w jaskini lodowej z konstrukcja zasilajaca portal energia.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_09"); //Teraz zaczynam rozumiec..... Zatrzymal sie, aby zamknac portal.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_10"); //Tak, dla dobra calego Khorinisa poswiecil samego siebie i zawalil jaskinie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_11"); //W Innosie prawdziwy akt bezinteresownosci.... Hmm, teraz musze przejsc na emeryture z moimi bracmi, aby skonsultowac sie z nami.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_12"); //W miedzyczasie odpoczniecie i odwiedzicie nas za kilka godzin.

	B_SetTopicStatus	(TOPIC_MOD_FM_FEUEREIS, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_552_KDF_Serpentes_NW, "START");
	B_StartOtherRoutine	(Mod_553_KDF_Ulthar_NW, "START");
	B_StartOtherRoutine	(Mod_924_RIT_Sergio_NW, "START");
	
	B_StartOtherRoutine(Mod_104_BAU_Rega_NW, "START");
	B_StartOtherRoutine(Mod_1412_BAU_Bauer_NW, "START");

	Npc_SetRefuseTalk	(self, 240);

	Mod_TillChange = 1;

	Mod_TillChange_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Pyrokar_Befoerderung (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Befoerderung_Condition;
	information	= Info_Mod_Pyrokar_Befoerderung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_FeuerGegenEis2))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Befoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_00"); //No cóz, tam jestescie. Przeprowadzilismy szerokie dyskusje.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_01"); //Dzieki swoim zaslugom za klasztor i caly Khorinis, udowodniles, ze jestes godzien przylaczenia sie do naszych szeregów.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_02"); //Chcesz, abym zostal magikiem ognia?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_03"); //Tak, kaplan swietego ognia i wierny brat w swietej bitwie o sprawiedliwa sprawe Inna. Powiedz przysiege i dolacz do naszych szeregów.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_04"); //Przysiegam przed wszechmogacym Panem Innosem, jego slugami i swietym plomieniem....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_05"); //... od teraz i na zawsze moje zycie jest zwiazane z ogniem....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_06"); //... dopóki moje cialo i duch nie odnajda spokoju w jego swietych salach, a ogien zycia zniknie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_07"); //Wiec teraz jestes magikiem ognia.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_08"); //Oto Twoja nowa szata.

	CreateInvItems	(self, ItAr_Kdf_L, 1);
	B_GiveInvItems	(self, hero, ItAr_Kdf_L, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_09"); //Oto klucz do Twojej nowej komory lózkowej.

	B_GiveInvItems	(self, hero, ItKe_KDFPlayer, 1);

	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_10"); //A co z Hyglasem?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_11"); //Bedziemy czcic jego wielka ofiare, jak on zasluguje, i uczynimy go jednym z patronów swietych tej wyspy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_12"); //Ulthar przejmie teraz swoje zadanie w klasztorze jako nauczyciel magii ognia. I jest jeszcze jedna rzecz.....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_13"); //Tak, co?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_14"); //Bylo pilne zadanie, które Hyglas mial nam wykonac.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_15"); //Poniewaz jednak nie jest z nami teraz, zdecydowalismy sie przekazac go wam.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_16"); //Wiem, ze po kilku ostatnich wydarzeniach, bracie, przychodzi ci to bardzo szybko, ale to wazne.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_17"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_18"); //Wokól swietego miejsca, które czasami nazywane jest centrum naszej wiary.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_19"); //Jednak parlamentarzysta jest najlepiej zaznajomiony z podstawowa wiedza wszystkich magów klasztoru.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_20"); //Idzcie wiec do niego, bracie, i omówcie z nim wszystko inne. Innos chroni Cie na drodze.

	Mod_Gilde = 7;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_Göttergefallen(1, 5);

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_PATHERION, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PATHERION, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PATHERION, "Jak tylko portal dobiegnie konca, jest jeszcze jedno wazne dla mnie zadanie. Skontaktuje sie z Parlamentem, aby dowiedziec sie wiecej.");
};

INSTANCE Info_Mod_Pyrokar_Patherion2 (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Patherion2_Condition;
	information	= Info_Mod_Pyrokar_Patherion2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Patherion2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Patherion2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_00"); //Widze, ze wróciles z Patherionu. Zglaszajmy wiec, co sie tam wydarzylo?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_01"); //W klasztorze byl czarny magik. Czarodziej Garan i ja zdemaskowalismy go i uczynilismy go nieszkodliwym.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_02"); //Potem zajelismy sie bariera, która juz nie istnieje.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_03"); //To naprawde dobra wiadomosc. Uzywaj tych eliksirów jako nagrody.

	CreateInvItems	(hero, ItPo_Health_03, 3);
	CreateInvItems	(hero, ItPo_Mana_03, 3);

	B_ShowGivenThings	("Uzyskano 3 eliksiry lecznicze i 3 eliksiry maneksu.");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Pyrokar_AkilsHof (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_AkilsHof_Condition;
	information	= Info_Mod_Pyrokar_AkilsHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dignitary Innos, potrzebuje waszej pomocy.";
};

FUNC INT Info_Mod_Pyrokar_AkilsHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllDead))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Mod_AkilsHofAusgestorben == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_00"); //Dignitary Innos, potrzebuje waszej pomocy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_01"); //Jakie sa Twoje obawy?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_02"); //Bracia chodzili do siebie tak, jakby opetani i prawie zabijali sie, podczas gdy inni ludzie byli powaznie chorzy po tym, jak nieswiadomie udzielali schronienia sludze zla.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_03"); //Mówisz, ze zly sluga zla? To brzmi jak swego rodzaju obsesja, która zostala rzucona na tych ludzi.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_04"); //Czy masz ku temu lekarstwo?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_05"); //Oczywiscie oczywiscie. Nie ma nic, co moze sie oprzec wszechmocowi naszego Pana Inno.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_06"); //No cóz, jestem ulga.....
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_07"); //Za mala darowizne na rzecz klasztoru dostarcze wam eliksiry, które wam pomoga.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_08"); //Darowizna! Ile?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_09"); //Ile osób cierpi na chorobe?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_10"); //Cóz, powinny byc trzy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_11"); //Wtedy skromna darowizna 600 zlotych monet przyniesie im ulge.

	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Co? 600 zlotych monet!", Info_Mod_Pyrokar_AkilsHof_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Wszystko dobrze, tutaj zloto.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_G()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_G_11_00"); //Niech towarzyszy wam blogoslawienstwo naszego Pana.

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 3);
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Mam lekarstwo dla chorych. Teraz powinienem spieszyc sie, zeby im to przyblizyc.");
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_B()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_B_15_00"); //Co? 600 zlotych monet!
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_B_11_01"); //Jest to odpowiednia darowizna, która pomoze wprowadzic blogoslawienstwo naszego Pana Inno w swiat.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Ale to kwestia zycia i smierci (....). )", Info_Mod_Pyrokar_AkilsHof_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Wszystko dobrze, tutaj zloto.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_A_15_00"); //Wszystko dobrze, tutaj zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_D()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_D_15_00"); //Ale chodzi o Le....
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_D_11_01"); //Jesli Twoja prosba ma tak duze znaczenie, bez watpienia bedziesz w stanie podnosic te mala darowizne.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Ale Akil jest wiernym i sprawiedliwym czlowiekiem.", Info_Mod_Pyrokar_AkilsHof_F);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Dobrze, zaplace.", Info_Mod_Pyrokar_AkilsHof_E);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_F()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_00"); //Ale Akil....
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_01"); //Powiedzialem (oczekiwanie zatrzymuje sie)? (do siebie samego? co, Akil? Hmm, czlowiek wiary, co miesiac ofiarowuje co miesiac na....
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_02"); //(znowu bohatera) ah, niezmierzona zyczliwosc naszego Pana Innosa motywuje mnie, abym dal ci eliksiry jako dar bez zadnych oplat.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_03"); //Idziesz tam, tam idziesz.

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_E()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_00"); //Dobrze, zaplace.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_01"); //(do siebie) Cutthroat.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Pyrokar_AkilsHof_G();
};

INSTANCE Info_Mod_Pyrokar_Hexenfluch (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hexenfluch_Condition;
	information	= Info_Mod_Pyrokar_Hexenfluch_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wysoki magik ognia, nosze we mnie tak opresyjne uczucie.";
};

FUNC INT Info_Mod_Pyrokar_Hexenfluch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_WM_Verflucht == 1)
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_00"); //Wysoki magik ognia, nosze we mnie tak opresyjne uczucie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_01"); //Tak, wyczuwam tez, ze czarna magia zostala rzucona na ciebie. Co sie stalo?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_02"); //Kobieta rzucila na mnie to przeklenstwo.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_03"); //Kobieta? To brzmi tak...... po czary. Daje temu duzo myslenia.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_04"); //W kazdym razie, za skromna darowizne 300 monet zlota, udziele ci lekarstwa.

	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);

	Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, DIALOG_BACK, Info_Mod_Pyrokar_Hexenfluch_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, "Oto zloto.", Info_Mod_Pyrokar_Hexenfluch_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_B()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_A_15_00"); //Oto zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 2);

	if (Mod_WM_Hexeninfos == 0)
	{
		Mod_WM_Hexeninfos = 1;
	};
	
	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);
};

INSTANCE Info_Mod_Pyrokar_Kimon (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Kimon_Condition;
	information	= Info_Mod_Pyrokar_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Serpentes odmawia zaplaty zlota za winogrona kupca Kimona.";
};

FUNC INT Info_Mod_Pyrokar_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (Mod_Kimons_Traubenquest == TRUE)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Kimon_HierIstDeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_00"); //Serpentes odmawia zaplaty zlota za winogrona kupca Kimona. Za malo zaplacil 1000 zlota.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_01"); //Czy moze pan to udowodnic?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_02"); //Nie.... Nie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_03"); //Wróc, kiedy tylko mozesz!

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar chce, abym udowodnil mu zlo. Powinienem porozmawiac z Kimonem.");
};

INSTANCE Info_Mod_Pyrokar_KimonGeld (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_KimonGeld_Condition;
	information	= Info_Mod_Pyrokar_KimonGeld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto rachunek.";
};

FUNC INT Info_Mod_Pyrokar_KimonGeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kimon_Beleg))
	&& (Npc_HasItems(hero, ItWr_KimonsBeleg) == 1)
	&& (Mod_Kimons_Traubenquest == TRUE)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Kimon_HierIstDeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_KimonGeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_00"); //Oto rachunek.

	B_GiveInvItems	(hero, self, ItWr_KimonsBeleg, 1);

	B_UseFakeScroll	();

	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_01"); //Zgodnie z przepisami mirhanickimi towary musza byc sprzedawane po dwukrotnosci ich wartosci.
	AI_Output(self, hero, "Info_Mod_Pyrokar_KimonGeld_11_02"); //Cóz, wez zloto i idz.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar dal mi zloto dla Kimona. Powinienem go teraz zabrac.");
};

INSTANCE Info_Mod_Pyrokar_Kristall (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Kristall_Condition;
	information	= Info_Mod_Pyrokar_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu cenny krysztal.";
};

FUNC INT Info_Mod_Pyrokar_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_00"); //Mam tu cenny krysztal.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_01"); //Krysztal Paladynów? Jak ja otrzymales?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_02"); //Zdjalem go od zlodziei w kanale.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_03"); //Przynoszac go do mnie pokazuje mi twoje zaufanie do naszej spolecznosci.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_04"); //Jesli chcesz, mozesz teraz dolaczyc do nowicjuszy.
	};

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_SÖLDNER, "Pyrokar jest gotów przyjac mnie do nowicjuszy ognia.", "Podalem krysztal Pyrokarowi. Torlof nie spodoba sie zbytnio.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Pyrokar_Comeback (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Comeback_Condition;
	information	= Info_Mod_Pyrokar_Comeback_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos, mój pelen szacunku przyjaciel.";
};

FUNC INT Info_Mod_Pyrokar_Comeback_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Assassinengold2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Comeback_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_00"); //Innos, mój pelen szacunku przyjaciel.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_01"); //Co z przytulaniem sie? Jasne, ze czegos chcesz.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_02"); //Cóz, móglbym uzyc jednej z tych starych miseczek ofiarniczych.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_03"); //W Innosie! Chcesz oczyscic klasztorna piwnice. Bardzo dobrze. Do czego potrzebujesz miski?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_04"); //Grupa ludzi chce zorganizowac fundraisera. Dla osób niepelnosprawnych i ubogich....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_05"); //Uwaza sie, ze z tak swietym naczyniem wiecej zlota pochodzi z worków mezczyzn.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_06"); //Jest to madrze przemyslane i godne pochwaly. Klasztor tez nie plynie w zlocie.....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_07"); //Zloto ma zostac przekazane na rzecz klasztoru jedna czwarta zebranego zlota.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_08"); //Dobre, dobre, dobre, dobre. W duchu Inno. On da swoje blogoslawienstwo. Dostaniesz swoja miske. Porozmawiaj z Goraxem.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_09"); //Bardzo wam dziekuje, czcigodny.

	B_LogEntry	(TOPIC_MOD_ASS_COMEBACK, "Przy odrobinie przekonywujacej mocy bylem w stanie porozmawiac z Pyrokarem o jednej z misek ofiarniczych. Mam teraz udac sie do Goraxa.");
};

INSTANCE Info_Mod_Pyrokar_HyglasBack (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_HyglasBack_Condition;
	information	= Info_Mod_Pyrokar_HyglasBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_HyglasBack_Condition()
{
	if (Mod_FM_Hyglas_Eisgebiet == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_HyglasBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_00"); //Ach, tam jestescie. W rzeczywistosci przywiózles do nas z powrotem naszego brata Hyglasa.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_01"); //To niemal cud..... Przynajmniej tyle osób w Khorinis widzi.
	AI_Output(hero, self, "Info_Mod_Pyrokar_HyglasBack_15_02"); //Czy bedzie teraz znów sluzyl klasztorowi?
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_03"); //Nie.... Nie. nie bezposrednio. On wybral inna droge i od teraz chce glosic kazania i pomagac mniej uprzywilejowanym wyspie.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_04"); //Osobiscie lepiej byloby, gdyby zwracal sie on w równym stopniu do ludzi wszystkich klas spolecznych.... Wiecej Ale to jego decyzja.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_05"); //W kazdym razie, zrobiliscie wspaniala przysluge dla prawego Inno i powinniscie otrzymac czesc naszego skarbu klasztornego jako nagrode.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_06"); //Wykorzystaj to zloto w duchu Inno.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(300);
};

var int Pyrokar_LastPetzCounter;
var int Pyrokar_LastPetzCrime;

INSTANCE Info_Mod_Pyrokar_PMSchulden (C_INFO)
{
	npc         	= Mod_551_KDF_Pyrokar_NW;
	nr          	= 1;
	condition   	= Info_Mod_Pyrokar_PMSchulden_Condition;
	information 	= Info_Mod_Pyrokar_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Pyrokar_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Pyrokar_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Pyrokar_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Pyrokar_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Pyrokar_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Pyrokar_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Pyrokar_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Pyrokar_LastPetzCounter);
		
			if (diff > 0)
			{
				Pyrokar_Schulden = Pyrokar_Schulden + (diff * 50);
			};
		
			if (Pyrokar_Schulden > 1000)	{	Pyrokar_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Pyrokar_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Pyrokar_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_05"); //Pojawily sie nowe rzeczy.
		
		if (Pyrokar_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_THEFT)
		|| ( (Pyrokar_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_ATTACK)
		|| ( (Pyrokar_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Pyrokar_Schulden			= 0;
			Pyrokar_LastPetzCounter 	= 0;
			Pyrokar_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Pyrokar_Schulden);
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Ile to znów bylo?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Pyrokar_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Pyrokar_Schulden);

	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Ile to znów bylo?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Pyrokar_PETZMASTER   (C_INFO)
{
	npc         	= Mod_551_KDF_Pyrokar_NW;
	nr          	= 1;
	condition   	= Info_Mod_Pyrokar_PETZMASTER_Condition;
	information 	= Info_Mod_Pyrokar_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Pyrokar_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Pyrokar_PETZMASTER_Info()
{
	Pyrokar_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Pyrokar noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_00"); //Musisz byc nowym facetem, który spowodowal klopoty w klasztorze.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_02"); //Morderstwo jest powaznym wykroczeniem!

		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Pyrokar_Schulden = Pyrokar_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_04"); //Wiekszosc magów nie toleruje mordercy w klasztorze!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_11"); //Nie bede tolerowal takiego zachowania w klasztorze!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_13"); //Jesli meczycie sie z ludzmi, miastem lub podwórkiem, to nie jest to nasza dzialalnosc.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_14"); //Ale jesli zaatakujesz nowicjuszy lub magów, bede musial Cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Pyrokar_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_15_21"); //Ile?
	
	if (Pyrokar_Schulden > 1000)	{	Pyrokar_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Pyrokar_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Pyrokar_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Pyrokar_Schulden);
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayNow_11_01"); //Dobrze! Doloze wszelkich staran, aby wszyscy w klasztorze sie o tym dowiedzieli - to w pewnym stopniu przywróci Twoja reputacje.

	B_GrantAbsolution (LOC_MONASTERY);
	
	Pyrokar_Schulden			= 0;
	Pyrokar_LastPetzCounter 	= 0;
	Pyrokar_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Pyrokar_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Pyrokar_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Pyrokar_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Pyrokar_Lehrer (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Lehrer_Condition;
	information	= Info_Mod_Pyrokar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto moze mnie nauczyc jak zwiekszyc swoja magiczna moc?";
};

FUNC INT Info_Mod_Pyrokar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_Gilde == 8)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lehrer_15_00"); //Kto moze mnie nauczyc jak zwiekszyc swoja magiczna moc?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Lehrer_11_01"); //Moge cie nauczyc, jak zwiekszyc swoja magiczna moc.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KLOSTER, "Pyrokar moze mnie nauczyc, jak pobudzic MANA.");
};

INSTANCE Info_Mod_Pyrokar_Lernen (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Lernen_Condition;
	information	= Info_Mod_Pyrokar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Pyrokar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Lehrer))
	&& (hero.attribute[ATR_MANA_MAX] < 300)
	&& (Mod_Gilde == 8)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lernen_15_00"); //Naucz mnie czegos.

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Lernen_BACK_05_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};
	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

INSTANCE Info_Mod_Pyrokar_Pickpocket (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Pickpocket_Condition;
	information	= Info_Mod_Pyrokar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Pyrokar_Pickpocket_Condition()
{
	C_Beklauen	(180, ItMi_Gold, 91);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

	Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_BACK, Info_Mod_Pyrokar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pyrokar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pyrokar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pyrokar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pyrokar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pyrokar_EXIT (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_EXIT_Condition;
	information	= Info_Mod_Pyrokar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pyrokar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pyrokar_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_EXIT_11_00"); //Niech Innos oswieci Twoja droge!

	AI_StopProcessInfos	(self);
};
