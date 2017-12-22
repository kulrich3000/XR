INSTANCE Info_Mod_Diego_Hi (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Hi_Condition;
	information	= Info_Mod_Diego_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_00"); //Ty nadal zyjesz.
	AI_Output(hero, self, "Info_Mod_Diego_Hi_15_01"); //Z krótka przerwa, tak.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_02"); //Damn, pierwsza dobra wiadomosc w ciagu kilku dni. Napisalismy juz o tym.
	AI_Output(hero, self, "Info_Mod_Diego_Hi_15_03"); //Ale tu stoje.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_04"); //Predzej czy pózniej bedziecie musieli mi powiedziec, co robiliscie w swiatyni sypialnej.
	AI_Output(self, hero, "Info_Mod_Diego_Hi_11_05"); //Jestem jednak pewien, ze nie wiesz wszystkiego, co wydarzylo sie od tamtego czasu.
};

INSTANCE Info_Mod_Diego_WasFuerWelt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_WasFuerWelt_Condition;
	information	= Info_Mod_Diego_WasFuerWelt_Info;
	permanent	= 0;
	important	= 0;
	description	= "W jakim swiecie skonczylismy?";
};

FUNC INT Info_Mod_Diego_WasFuerWelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_00"); //W jakim swiecie skonczylismy?
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_01"); //W skomplikowanej. Z tego, co widze, koncza sie idylliczne czasy wyspy.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_02"); //Paladynowie desperacko próbuja znalezc rozwiazanie, które uczyniloby nas, skazanych, nieszkodliwymi.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_03"); //Niektórzy z nich preferuja raczej surowe rozwiazania.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_04"); //Jestesmy szczesliwi, ze Lord Hagen jest tak klusowny - w przeciwnym razie prawdopodobnie dzialaliby przeciwko nam bardziej swiadomie.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_05"); //Wielu kolonistów nie odwazylo sie przedostac do miasta z powodu milicji.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_06"); //Gromadza sie oni w grupach na zewnatrz, na przyklad w gospodarstwie rolnika Onar.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_07"); //Watpie, czy bedzie to dzialalo na dluzsza mete. Milicja i paladyny czuja sie otoczone, a potem.... wtedy ktos robi cos w zlym momencie, a pokój sie skonczyl.
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_08"); //Po której stronie bys byl obecny?
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_09"); //Ha! Podobnie jak ja zaangazowalabym sie w te gry wojenne glupców!
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_10"); //Przypuszczam, ze podoba Ci sie rola Obserwatora.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_11"); //Poznasz wiele rzeczy. Niedawno w kilku miejscach widac zamaskowana figure, panikujaca chlopów.
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_12"); //Widzialem je na zewnatrz wiezy Xardasa.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_13"); //Xard! Nie mów mi, ze ten facet wciaz ma palce w piersiach!
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_15_14"); //On równiez mówi o nowym zagrozeniu.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_11_15"); //(mumbles) Bylbym zaskoczony, gdyby kiedykolwiek znudzil sie Xardasem.... Co zrobisz dalej?

	Info_ClearChoices	(Info_Mod_Diego_WasFuerWelt);

	Info_AddChoice	(Info_Mod_Diego_WasFuerWelt, "Po prostu pozwolilem sobie dryfowac.", Info_Mod_Diego_WasFuerWelt_B);
	Info_AddChoice	(Info_Mod_Diego_WasFuerWelt, "Pierwsza rzecza, która robie, jest zapoznanie sie z grupami.", Info_Mod_Diego_WasFuerWelt_A);
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_C()
{
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_C_11_00"); //Jesli chcecie, moge powiedziec wam o pierscieniu wody.

	Info_ClearChoices	(Info_Mod_Diego_WasFuerWelt);
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_B_15_00"); //Po prostu pozwolilem sobie dryfowac.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_B_11_01"); //Tak naprawde zarobiles, ale nie mozemy sobie pozwolic na bezczynnosc juz teraz.

	Info_Mod_Diego_WasFuerWelt_C();
};

FUNC VOID Info_Mod_Diego_WasFuerWelt_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasFuerWelt_A_15_00"); //Pierwsza rzecza, która robie, jest zapoznanie sie z grupami.
	AI_Output(self, hero, "Info_Mod_Diego_WasFuerWelt_A_11_01"); //Jak kolonia, huh?

	Info_Mod_Diego_WasFuerWelt_C();
};

INSTANCE Info_Mod_Diego_WasJetzt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_WasJetzt_Condition;
	information	= Info_Mod_Diego_WasJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co teraz robisz?";
};

FUNC INT Info_Mod_Diego_WasJetzt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_WasJetzt_15_00"); //Co teraz robisz?
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_01"); //Kiedy nie jestem potrzebny magikom wody, staram sie kontynuowac mój stary handel.
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_02"); //Kazdy musi zobaczyc, gdzie sie zatrzymuje.
	AI_Output(hero, self, "Info_Mod_Diego_WasJetzt_15_03"); //Gdzie moge cos dostac w Khorinis?
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_04"); //Na górze. Ale jest pelen paladyn.
	AI_Output(self, hero, "Info_Mod_Diego_WasJetzt_11_05"); //Tu, w dzielnicy portowej, wiekszosc z nich to biedni ludzie.
};

INSTANCE Info_Mod_Diego_RingDesWassers (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_RingDesWassers_Condition;
	information	= Info_Mod_Diego_RingDesWassers_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest stosunek do pierscienia wody?";
};

FUNC INT Info_Mod_Diego_RingDesWassers_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_WasFuerWelt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_RingDesWassers_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_RingDesWassers_15_00"); //Jaki jest stosunek do pierscienia wody?
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_01"); //Jestesmy oczami i uszami magików wody.
	AI_Output(hero, self, "Info_Mod_Diego_RingDesWassers_15_02"); //Zajmujesz sie magikami wody?
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_03"); //Sa jedynymi, którzy pozostaja rozsadni i nie przedkladaja swoich ideologicznych nonsensów nad wszystko inne.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_04"); //Nie musimy byc za to dobrymi przyjaciólmi.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_05"); //Vatras jest osoba kontaktowa w Khorinis. Jesli jestes zainteresowany, powinienes sie z nim skontaktowac.
	AI_Output(self, hero, "Info_Mod_Diego_RingDesWassers_11_06"); //Jestesmy tutaj bardzo duzo.
};

INSTANCE Info_Mod_Diego_Boring (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring_Condition;
	information	= Info_Mod_Diego_Boring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Boring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Kapitel >= 3)
	&& (Mod_Mario_Diego == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	|| (Mod_PalaKapitel3 >= 4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Boring_11_00"); //Hej, dostales minute? Na maly spacer?
	AI_Output(hero, self, "Info_Mod_Diego_Boring_15_01"); //Dla dawnych czasów blahy?
	AI_Output(self, hero, "Info_Mod_Diego_Boring_11_02"); //Dla dawnych czasów to prawda.
};

INSTANCE Info_Mod_Diego_Boring2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring2_Condition;
	information	= Info_Mod_Diego_Boring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej.";
};

FUNC INT Info_Mod_Diego_Boring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Boring))
	&& (Mod_DiegoDabei == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	|| (Mod_PalaKapitel3 >= 4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring2_15_00"); //Idzmy dalej.
	AI_Output(self, hero, "Info_Mod_Diego_Boring2_11_01"); //Idzmy tu idzmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LIGHTHOUSE");
};

INSTANCE Info_Mod_Diego_Boring3 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Boring3_Condition;
	information	= Info_Mod_Diego_Boring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Boring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Boring2))
	&& (Npc_GetDistToWP(self, "WP_DIEGO_ERINNERUNG_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Boring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_00"); //Sluchaj - Nie wiem, jak dlugo pozostaje w Khorinis.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_02"); //Nie mam tu nic do zrobienia. Nie jestem wylaczony z obowiazku regularnej pracy.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_03"); //Ale w dokach nie ma nic do podbicia, a ja mam straznika miejskiego na górze.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_15_04"); //Nie jestesmy bardzo mile widziani.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_05"); //Powiedziales to! Czasem wydaje mi sie, ze czas w barierze nie byl przeciez az tak zly.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_06"); //Pod pewnymi wzgledami bylismy wolniejsi niz obecnie.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_07"); //(rzezba) Czlowiek, nadal wolalem kilka swin w Starym Obozie, jak barony rudy, od tych paladynów, którzy chcieliby cie zawiesic, jak tylko podniósles nos.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_11_08"); //Co sadzisz - czy bylo to jeszcze lepsze niz obecnie?

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	Info_AddChoice	(Info_Mod_Diego_Boring3, "Mozesz powiedziec, ze przemieniasz przeszlosc.", Info_Mod_Diego_Boring3_B);
	Info_AddChoice	(Info_Mod_Diego_Boring3, "Tak, mysle, ze tak.", Info_Mod_Diego_Boring3_A);
};

FUNC VOID Info_Mod_Diego_Boring3_C()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_C_15_00"); //Dlaczego nie wrócisz do starego obozu?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_01"); //Nie jest tak jak kiedys.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_02"); //Chlopcy musza teraz ciezko pracowac na chleb powszedni, a lezenie na leniwej skórze przez caly dzien nie jest juz mozliwe.
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_C_15_03"); //A dokad idziesz?
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_04"); //Moge o tym zapomniec w Khorini' s.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_05"); //Poza miastem sa tylko male spolecznosci, w których byloby to zauwazalne, gdybym sie wypuscil.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_C_11_06"); //Nie, chce sie z tego wycofac. Jak przyjedziesz do mnie?

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	Info_AddChoice	(Info_Mod_Diego_Boring3, "Nie, moja przyszlosc zalezy od Khoriniego.", Info_Mod_Diego_Boring3_E);
	Info_AddChoice	(Info_Mod_Diego_Boring3, "Bez wahania, zaraz po tym, jak tylko sie tutaj znajduje.", Info_Mod_Diego_Boring3_D);
};

FUNC VOID Info_Mod_Diego_Boring3_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_B_15_00"); //Mozesz powiedziec, ze przemieniasz przeszlosc.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_B_11_01"); //Widze, zawsze jest ci ciezej.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_B_11_02"); //Nie zauwazyles zbyt wiele pieknych boków, bo zawsze byles na drodze i utknales w Guidewolvesie. (smiertelnicy)

	Info_Mod_Diego_Boring3_C();
};

FUNC VOID Info_Mod_Diego_Boring3_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_A_15_00"); //Tak, mysle, ze tak.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_A_11_01"); //Zbyt zle sie skonczylo. Moja zrecznosc nie byla czesto podziwiana w moim zyciu.

	Info_Mod_Diego_Boring3_C();
};

FUNC VOID Info_Mod_Diego_Boring3_F()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_F_15_00"); //Do zobaczenia dookola.

	Info_ClearChoices	(Info_Mod_Diego_Boring3);

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "START");
};

FUNC VOID Info_Mod_Diego_Boring3_E()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_E_15_00"); //Nie, moja przyszlosc zalezy od Khoriniego.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_01"); //Niemal podejrzewalem, ze pan to mówil.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_02"); //Ale wiesz, ze nie sadze, abys nalezal do Khorinis.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_E_11_03"); //Pomysl jeszcze raz, nie odchodze teraz.

	Info_Mod_Diego_Boring3_F();
};

FUNC VOID Info_Mod_Diego_Boring3_D()
{
	AI_Output(hero, self, "Info_Mod_Diego_Boring3_D_15_00"); //Bez wahania, zaraz po tym, jak tylko sie tutaj znajduje.
	AI_Output(self, hero, "Info_Mod_Diego_Boring3_D_11_01"); //Kiedy nadejdzie odpowiedni moment, pozwól mi to wiedziec. Wiesz, gdzie jestem.

	Info_Mod_Diego_Boring3_F();
};

INSTANCE Info_Mod_Diego_Daemonisch (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Daemonisch_Condition;
	information	= Info_Mod_Diego_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_00"); //Ponownie na polowanie na potwory i orki.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch_15_01"); //Tak, jak zwykle.... ale w tej chwili jest to raczej poszukiwanie informacji.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch_15_02"); //Moze mozesz mi powiedziec, czy slyszales cos od czasu spedzenia dnia w pubie.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_03"); //Cóz, w porcie niewiele sie dzieje, niewiele sie dzieje, niewiele o co chodzi.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_04"); //Podobno zdarzylo sie to u bram miasta. Uslyszalem tylko Vages.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_05"); //Sporo ludzi wychodzi i wnika obecnie - zwlaszcza przy Bramie Wschodniej - a inni chca widziec mroczne zjawiska.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_06"); //Jesli chcesz wiedziec wiecej, powinienes rozejrzec sie po przedmiesciach.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_07"); //O tak, a w tawernie "Zur fröhlichen Mastsau" jest tez wiele osób.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch_11_08"); //(smiech) Coragon bedzie wkrótce musial sie obawiac waskich gardel, jesli ludzie tak wiele pozeraja.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Diego powiedzial mi, ze wiele dzieje sie poza brama miasta. Wiele osób wchodzi i wychodzi z domu i podobno obserwuje sie mroczne zjawiska. W tawernie Coragon's znajduje sie równiez wiele osób wiszacych wokól i wypychajacych sie przez trzy osoby.");
};

INSTANCE Info_Mod_Diego_Daemonisch2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Daemonisch2_Condition;
	information	= Info_Mod_Diego_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Mod_HQ_Daemonisch == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_00"); //Czy masz racje?
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_01"); //Tak, mysle, ze tak.... byl po prostu nieszkodliwym zakleciem snu.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_02"); //Widziales, dokad poszedl?
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_03"); //Byl szybko jak pieklo, ale pomyslalem, ze widze, jak biegam do poludniowej bramy.
	AI_Output(hero, self, "Info_Mod_Diego_Daemonisch2_15_04"); //Wtedy nie mam czasu do stracenia. Wyjasnie to pózniej.
	AI_Output(self, hero, "Info_Mod_Diego_Daemonisch2_11_05"); //Dobrze, nie dajcie sie zatrzymac.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "To musi byc on. Do bramy poludniowej, nastepnie.");

	AI_StopProcessInfos	(self);

	if (Mod_HQ_Daemonisch_SP_01 == 2)
	{
		B_StartOtherRoutine	(Mod_753_NOV_Ulf_NW, "DAEMONISCH3");
	}
	else if (Mod_HQ_Daemonisch_SP_02 == 2)
	{
		B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "DAEMONISCH3");
	}
	else if (Mod_HQ_Daemonisch_SP_03 == 2)
	{
		B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "DAEMONISCH3");
	};
};

INSTANCE Info_Mod_Diego_Irdorath (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath_Condition;
	information	= Info_Mod_Diego_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze zabrac statek na nieszkodliwa wyspe (....). )";
};

FUNC INT Info_Mod_Diego_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_00"); //Musze zabrac statek na nieszkodliwa wyspe i poszukac odpowiedniej zalogi.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_01"); //Aha, teraz walka z Xeres prowadzi cie statkiem z wyspy....
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_02"); //Cóz, mysle, ze Vatras nie chcialby isc z wami razem.... Doskonale zdawal sobie sprawe z niebezpieczenstwa Xeres i jego popleczników postawionych przed miastem.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_03"); //A jesli chodzi o wsparcie od doswiadczonych wojowników wodnych, powinienes skontaktowac sie z Keeper Ethan....
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_04"); //No cóz, przede wszystkim oczywiscie nalezy oczywiscie znalezc kapitana. Masz jeszcze go?
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_05"); //Uh, nie.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_06"); //No cóz, oczywiscie nic sie nie dzieje bez kapitana.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_07"); //Pod jego dowództwem statek musi dostac sie na wyspe bez obrazen i bedzie mial duzy wplyw, takze na sklad zalogi.... Wiecej
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_08"); //Tak, dobrze. Czy mozesz mi polecic zdolnych kapitanów?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_09"); //No cóz, jest ich niewiele.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_10"); //Najpierw Paladin Cedryk. Zaprowadzil statek bezpiecznie do portu w Khorinis.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_11"); //Bez watpienia zdolny kapitan..... ale on z pewnoscia nie wezmie go od siebie zrobic pewne warunki, kto jest zabrany, a kto nie.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_12"); //Mysle, ze trenuje obok ratusza na górze.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_13"); //Hmm, dobrze, kto jeszcze tam jest?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_14"); //Slyszalem, ze Jack byl niegdys kapitanem nie tak dawno temu.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_15"); //Mimo ze nie jest juz najmlodszy, ma ogromne doswiadczenie w zegludze.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_16"); //Z pewnoscia podejmie on pewne bardzo pragmatyczne decyzje, ale moze równiez pozostawic panu swobode decydowania o tym, kogo pan wezmie pod uwage.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_17"); //No cóz, kto jeszcze tam jest?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_18"); //To wszystko, o czym kiedykolwiek slyszalem.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath_15_19"); //Co? Rzeczywiscie nie jest to duzy wybór......
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath_11_20"); //Duzo sie obejrzec. Byc moze spotkasz kogos innego na Khorinis, kto jest odpowiedni do prowadzenia kancelarii kapitana. Zycze powodzenia.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Diego nazwal Vatras i Keeper Ethan dalszymi kandydatami. Tylko Jack lub Paladin Cedric sa uwazane za kapitanów w miescie, chyba ze znajde kogos innego na wyspie.");
};

INSTANCE Info_Mod_Diego_Irdorath2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath2_Condition;
	information	= Info_Mod_Diego_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z Toba? Czy dolaczylbys do mojego zespolu?";
};

FUNC INT Info_Mod_Diego_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath2_15_00"); //A co z Toba? Czy dolaczylbys do mojego zespolu?
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath2_11_01"); //Oczywiscie czekalem tylko na pana zapytanie.
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath2_15_02"); //Nicosc na spotkanie. Potem zapraszamy na poklad. Zobacze cie z powrotem na statku.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Bardzo dobrze, Diego jest juz na pokladzie.");

	B_GivePlayerXP	(150);

	Mod_DiegoDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Diego_Irdorath3 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath3_Condition;
	information	= Info_Mod_Diego_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Diego_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_DiegoDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath3_11_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_DiegoDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Diego_Irdorath4 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Irdorath4_Condition;
	information	= Info_Mod_Diego_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Diego_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_DiegoDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Diego_Irdorath4_11_01"); //Bardzo dobrze, wróce do portu.

	Mod_DiegoDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Diego_Kap6 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kap6_Condition;
	information	= Info_Mod_Diego_Kap6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Kap6_Condition()
{
	if (Mod_Xardas_Ende == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kap6_Info()
{
	var c_npc Diego; Diego = Hlp_GetNpc(Mod_538_RDW_Diego_NW);
	var c_npc Lester; Lester = Hlp_GetNpc(Mod_557_PSINOV_Lester_NW);
	var c_npc Milten; Milten = Hlp_GetNpc(Mod_534_KDF_Milten_NW);
	var c_npc Gorn; Gorn = Hlp_GetNpc(Mod_533_SLD_Gorn_NW);

	TRIA_Invite(Lester);
	TRIA_Invite(Milten);
	TRIA_Invite(Gorn);

	TRIA_Start();

	AI_TurnToNpc	(Diego, hero);
	AI_TurnToNpc	(Lester, hero);
	AI_TurnToNpc	(Milten, hero);
	AI_TurnToNpc	(Gorn, hero);

	TRIA_Next(Diego);

	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_00"); //Co ty tu robisz?
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_11_01"); //Slyszelismy, ze chcielibyscie dla siebie cala zabawe.

	TRIA_Next(Gorn);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_03_02"); //Ale dopiero co wyostrzylem siekiere.

	TRIA_Next(Milten);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_03"); //Xardas opowiedzial nam, czego potrzebujesz.

	TRIA_Next(Lester);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_13_04"); //I wtedy pomyslelismy, ze byloby zle, gdybysmy znów wpuscili cie w samotnosc.
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_05"); //Zdajesz sobie sprawe, ze bedzie to niebezpieczne? Ze wszyscy mozemy umrzec?

	TRIA_Next(Gorn);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_03_06"); //Jesli tego nie zrobisz, umrzemy predzej czy pózniej.

	TRIA_Next(Lester);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_13_07"); //Jest nas pieciu. Kto móglby nas powstrzymac?
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_08"); //A zatem wszystko w porzadku. Chwalic mozna bylo to zrobic.

	TRIA_Next(Diego);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_11_09"); //I tak i tak nie zmienilbys naszego zdania. Nigdy wczesniej nie byles na to dobry.

	TRIA_Next(Milten);

	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_10"); //Mysle, ze Xardas chcial cie zobaczyc zanim odjechalismy. Nadal musisz odebrac rune.
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_15_11"); //Moja runa?
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_28_12"); //Chodzcie dalej, odejdzmy.

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_Kap6_2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kap6_2_Condition;
	information	= Info_Mod_Diego_Kap6_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Kap6_2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Kap6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kap6_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Kap6_2_11_00"); //Przejdzmy teraz! My sie nudzimy.
	AI_Output(hero, self, "Info_Mod_Diego_Kap6_2_15_01"); //Zacznijmy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_PlateauAngriff (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_PlateauAngriff_Condition;
	information	= Info_Mod_Diego_PlateauAngriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Planujemy postep w walce z potworami na plaskowyzu pastwiskowym (....). )";
};

FUNC INT Info_Mod_Diego_PlateauAngriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_25))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_Angriff_01))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_PlateauAngriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_PlateauAngriff_15_00"); //Planujemy walke z potworami na plaskowyzu pastwiskowym i mozemy potrzebowac wiekszego wsparcia.
	AI_Output(self, hero, "Info_Mod_Diego_PlateauAngriff_11_01"); //Potwory? Jak za dawnych czasów. Pamietasz troll, czy nie? Z przyjemnoscia znów walczymy u Panstwa boku.
	AI_Output(hero, self, "Info_Mod_Diego_PlateauAngriff_15_02"); //Bardzo dobry. Spotkam sie z Toba w tawernie Orlana.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAMMELN");
};

INSTANCE Info_Mod_Diego_BalrogGigantTot (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_BalrogGigantTot_Condition;
	information	= Info_Mod_Diego_BalrogGigantTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_BalrogGigantTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_PlateauAngriff))
	&& (Mod_WM_CronosAttack == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_BalrogGigantTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_BalrogGigantTot_11_00"); //Tak, tak jak dawne czasy.... tylko z wieksza liczba potworów i towarzyszy broni. Jesli jestes gonna to zrobic ponownie, wiesz, gdzie mnie znalezc.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Diego_Treffen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Treffen_Condition;
	information	= Info_Mod_Diego_Treffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gorn wyslal mnie.";
};

FUNC INT Info_Mod_Diego_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_AtCastlemine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario2)))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Joe))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_HierKristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Treffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Treffen_15_00"); //Gorn wyslal mnie. Chce powiedziec, ze wybierasz sie do tawerny Dead Harpie.
	AI_Output(self, hero, "Info_Mod_Diego_Treffen_11_01"); //Dobrze, od razu bede w drodze.

	B_LogEntry	(TOPIC_MOD_TREFFEN, "Diego natychmiast wyrusza do tawerny.");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "TREFFEN");
};

INSTANCE Info_Mod_Diego_Dieb (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Dieb_Condition;
	information	= Info_Mod_Diego_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, ze nalezales do cechu zlodziei.";
};

FUNC INT Info_Mod_Diego_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_CITY_HABOUR_02_B"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Dieb_15_00"); //Slyszalem, ze nalezales do cechu zlodziei.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_01"); //Oczywiscie, dlatego tez rzucili mnie w kolonie. Ale skad to wiesz?
	AI_Output(hero, self, "Info_Mod_Diego_Dieb_15_02"); //Jeden z paladynów powiedzial mi, ze jeden z zlodziei ukradl swój cenny krysztal i teraz szukam tego krysztalu.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_03"); //Oh, krysztal. Tak, ukradlem ja z Paladynu, aby ja zlamac. Jest w kanalizacji, w starym pokoju Fingersa.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_04"); //Oto klucz do wejscia do kanalu. Ale uwazaj, inni nie wiedza kim jestes i moga dac ci trudny czas.
	AI_Output(self, hero, "Info_Mod_Diego_Dieb_11_05"); //Powodzenia!

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Diego dal mi klucz do kanalu, gdzie krysztal ma byc ukryty. Znajduje sie tam w starym pokoju Palców.");

	B_GiveInvItems	(self, hero, ItKe_ThiefGuildKey_MIS, 1);

	DiegoGibtDiebesQuest = Wld_GetDay();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_Kristall (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Kristall_Condition;
	information	= Info_Mod_Diego_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mi pomóc w tej krysztalowej rzeczy?";
};

FUNC INT Info_Mod_Diego_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Dieb))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_02_B") < 1000)
	&& (Npc_HasItems(hero, Mod_PaladinKristall) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Mod_PalaKristall == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	|| (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario2)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Kristall_15_00"); //Czy mozesz mi pomóc w tej krysztalowej rzeczy?
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_01"); //Móglbym cie dostac krysztal, ale nie moge zostawic tutaj swojego postu.
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_02"); //Jesli dostaniesz mnie zastepstwo, moge isc.
	AI_Output(self, hero, "Info_Mod_Diego_Kristall_11_03"); //I dodaj piec kolejnych diet.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Zeby nie musialam samemu pobierac krysztalu, Diego oferuje mi swoja pomoc. Potrzebuje on jednak pieciu diet i wymiany. Powinienem zapytac innych czlonków pierscienia wodnego lub nowicjuszy.");
};

INSTANCE Info_Mod_Diego_JoeIsRelay (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_JoeIsRelay_Condition;
	information	= Info_Mod_Diego_JoeIsRelay_Info;
	permanent	= 0;
	important	= 0;
	description	= "Joe cie uwolni.";
};

FUNC INT Info_Mod_Diego_JoeIsRelay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Diego))
	&& (Mod_PalaKristall == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_JoeIsRelay_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_JoeIsRelay_15_00"); //Joe cie uwolni.
	AI_Output(self, hero, "Info_Mod_Diego_JoeIsRelay_11_01"); //Bardzo dobrze, wtedy potrzebuje tylko deski od ciebie.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Poinformowalem Diego, ze Joe go zastapi. Teraz wystarczy tylko piec kresek.");
};

INSTANCE Info_Mod_Diego_Joe (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Joe_Condition;
	information	= Info_Mod_Diego_Joe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko to jest skonfigurowane.";
};

FUNC INT Info_Mod_Diego_Joe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_JoeIsRelay))
	&& (Npc_HasItems(hero, ItKe_Lockpick) >= 5)
	&& (Mod_PalaKristall == 0)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Joe_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Joe_15_00"); //Wszystko to jest skonfigurowane. Joe przejmuje twoje stanowisko i oto Dietriches.

	B_GiveInvItems	(hero, self, ItKe_Lockpick, 5);

	AI_Output(self, hero, "Info_Mod_Diego_Joe_11_01"); //Bardzo dobrze, od razu bede w drodze. Powróc jutro, a potem powinienem to zrobic.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Diego jest na jego drodze. Jutro moge odebrac krysztal od niego.");

	Mod_DiegoHoltKristall = Wld_GetDay();

	Mod_PalaKristall = 2;

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "KRISTALL");
};

INSTANCE Info_Mod_Diego_HierKristall (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_HierKristall_Condition;
	information	= Info_Mod_Diego_HierKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_HierKristall_Condition()
{
	if (Mod_DiegoHoltKristall < Wld_GetDay())
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_02_B") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Joe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_HierKristall_Info()
{
	if (Npc_HasItems(hero, Mod_PaladinKristall) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	{
		AI_Output(self, hero, "Info_Mod_Diego_HierKristall_11_00"); //Oto krysztal.

		B_GiveInvItems	(self, hero, Mod_PaladinKristall, 1);

		B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Dostalem krysztal. Albo ide teraz do Lothara, albo zabieram go do kogos innego. Inni liderzy gildii byliby zachwyceni tym szlachetnym krysztalem.");
		B_SetTopicStatus	(TOPIC_MOD_DIEGO_KRISTALL, LOG_SUCCESS);

		Wld_RemoveItem	(Mod_PaladinKristall);

		Mod_KristallDiego = 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Diego_HierKristall_11_01"); //Krysztal juz minal, nie moge Ci tez pomóc.
	};
};

INSTANCE Info_Mod_Diego_Gerbrandt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Gerbrandt_Condition;
	information	= Info_Mod_Diego_Gerbrandt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam problem.";
};

FUNC INT Info_Mod_Diego_Gerbrandt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Gerbrandt))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Gerbrandt_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Gerbrandt_15_00"); //Mam problem. Musze udowodnic Gerbrandtowi, ze jest on wspólodpowiedzialny za wygnanie Morgaharda.
	AI_Output(self, hero, "Info_Mod_Diego_Gerbrandt_11_01"); //Szukajac swojego domu, jednym z jego swieczników jest przejscie do otwierania sekretnego kacika w domu naprzeciwko.
	AI_Output(self, hero, "Info_Mod_Diego_Gerbrandt_11_02"); //Znajdziesz tam dowody. Ale daj mi ja najpierw, Morgahard nie jest jedynym, który byl w kolonii z powodu Gerbrandta i jego gangu.
	AI_Output(hero, self, "Info_Mod_Diego_Gerbrandt_15_03"); //Dobrze, otrzymam to dla Ciebie.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego powiedzial mi, ze Gerbrandt przechowuje dowody w ukrytej niszy przeciwleglego domu, która moze otworzyc swiecznik w swoim domu. Mam mu przekazac dowody, kiedy je mam.");
};

INSTANCE Info_Mod_Diego_HabBeweise (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_HabBeweise_Condition;
	information	= Info_Mod_Diego_HabBeweise_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dowody.";
};

FUNC INT Info_Mod_Diego_HabBeweise_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Gerbrandt))
	&& (Npc_HasItems(hero, ItWr_AL_GebrandtDokumente) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_HabBeweise_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_HabBeweise_15_00"); //Mam dowody.

	B_GiveInvItems	(hero, self, ItWr_AL_GebrandtDokumente, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Diego_HabBeweise_11_01"); //Bardzo dobrze, pokazac Panowi Andreowi ten dowód. Spotkam Cie przed domem Gerbrandta.

	B_GiveInvItems	(self, hero, ItWr_AL_GebrandtDokumente, 1);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego widzial dowody. Mialem dac go lorda Andre' owi i spotkac go poza domem Gerbrandta.");

	B_StartOtherRoutine	(self, "GERBRANDT");
};

INSTANCE Info_Mod_Diego_GerbrandtGefangen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GerbrandtGefangen_Condition;
	information	= Info_Mod_Diego_GerbrandtGefangen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zostales aresztowany.";
};

FUNC INT Info_Mod_Diego_GerbrandtGefangen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Gerbrandt))
	&& (Mod_AL_Gebrandt_Gefangen == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GerbrandtGefangen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GerbrandtGefangen_15_00"); //Zostales aresztowany.
	AI_Output(self, hero, "Info_Mod_Diego_GerbrandtGefangen_11_01"); //Dobrze, dom Gerbrandta jest mój. Znalazlem troche pieniedzy Gerbrandta. Mysle, ze mozna z niego skorzystac.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Diego dal mi jako nagrode pieniadze Gerbrandta. Teraz powiedziano mi, zeby powiedziec Estebanowi, ze Morgahard zostaje wpuszczony do miasta.");

	B_StartOtherRoutine	(Mod_1928_BDT_Morgahard_NW, "STADT");
};

INSTANCE Info_Mod_Diego_RDW (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_RDW_Condition;
	information	= Info_Mod_Diego_RDW_Info;
	permanent	= 0;
	important	= 0;
	description	= "Vatras wyslal mnie.";
};

FUNC INT Info_Mod_Diego_RDW_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_RDW_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_RDW_15_00"); //Vatras wyslal mnie. Powiedzial, ze moze mi Pan pomóc znalezc osoby zaginione.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_01"); //Chcesz do nas dolaczyc?
	AI_Output(hero, self, "Info_Mod_Diego_RDW_15_02"); //Jasne, dlaczego nie. Wiec teraz mówisz mi, co wiesz?
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_03"); //Tak, tak, tak. Zaczelo sie okolo dwa tygodnie temu. Jeden z obywateli powiedzial, ze jego przyjaciel zniknal.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_04"); //Oczywiscie od razu szukalismy go i pytalismy, ale on nic nie wiedzial.
	AI_Output(self, hero, "Info_Mod_Diego_RDW_11_05"); //Coraz wiecej osób zaginelo w nastepnych dniach. Jedyne co wiemy, to ze zawsze znikaja one w nocy.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Brakujace osoby zawsze zdaja sie znikac w nocy.");
};

INSTANCE Info_Mod_Diego_Person (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Person_Condition;
	information	= Info_Mod_Diego_Person_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jest ten obywatel, który zglosil pierwsza zaginiona osobe?";
};

FUNC INT Info_Mod_Diego_Person_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_RDW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Person_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Person_15_00"); //Kim jest ten obywatel, który zglosil pierwsza zaginiona osobe?
	AI_Output(self, hero, "Info_Mod_Diego_Person_11_01"); //Nazywa sie Gerbrandt. Jest w górnej dzielnicy, ale nie dostaniesz sie do niej.
	
	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Osoba, która zglosila pierwsza zaginiona osobe, nazywa sie Gerbrandt i mieszka w górnej dzielnicy.");
};

INSTANCE Info_Mod_Diego_Mario (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Mario_Condition;
	information	= Info_Mod_Diego_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes na przygode?";
};

FUNC INT Info_Mod_Diego_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe4))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_00"); //Czy jestes na przygode?
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_01"); //Jak wygladaloby moje zycie, gdybym kiedykolwiek nie odpowiedzial na to pytanie?
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_02"); //(smiech) Co masz do zaoferowania?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_03"); //Wiele zlych goblinów. Trzech dzielnych wojowników.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_04"); //Lubie gobliny. Zawsze ukrywaja duzo zlota. Ale nie ukrywaja go dobrze.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_05"); //Kto jest trzecim wojownikiem?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_06"); //Bezludny milicjant Mario w swoich szeregach.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_07"); //Ci, którzy nie sa posluszni, sa tam przetrzymywani nieslusznie. Wlasciwie, jestem w srodku. Jesli dostaje cos z lupu.
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_08"); //Oczywiscie oczywiscie.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_09"); //Kiedy odchodzimy?
	AI_Output(hero, self, "Info_Mod_Diego_Mario_15_10"); //Wlasnie teraz, wlasnie teraz.
	AI_Output(self, hero, "Info_Mod_Diego_Mario_11_11"); //Wszystko w porzadku, idzcie naprzód.
	
	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Diego dolaczyl do nas. Teraz wszystko, co musze zrobic, to odebrac Mario i jestesmy gotowi do pracy.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Diego_Mario2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Mario2_Condition;
	information	= Info_Mod_Diego_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_11_00"); //Tak musi byc.
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_11_01"); //Uh, jesli sie nie myle, czy Mario dal ci troche nagrody w postaci zlotych monet?

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Info_ClearChoices	(Info_Mod_Diego_Mario2);

	Info_AddChoice	(Info_Mod_Diego_Mario2, "Zrobiles to zle. Nie ma nagrody.", Info_Mod_Diego_Mario2_C);
	Info_AddChoice	(Info_Mod_Diego_Mario2, "Tak, oto maly kawalek.", Info_Mod_Diego_Mario2_B);
	Info_AddChoice	(Info_Mod_Diego_Mario2, "Tak, oto Twoja polowa.", Info_Mod_Diego_Mario2_A);
};

FUNC VOID Info_Mod_Diego_Mario2_C()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_C_15_00"); //Zrobiles to zle. Nie ma nagrody.
	AI_Output(self, hero, "Info_Mod_Diego_Mario2_C_11_01"); //Hej, byc moze zle zrozumiales kod zlodziejstwa. Nie przykrecasz przyjaciól!

	Mod_Mario_Diego = 1;

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

FUNC VOID Info_Mod_Diego_Mario2_B()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_B_15_00"); //Tak, oto maly kawalek.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Diego_Mario2_B_11_01"); //Smukly, chudy? Ale czego jeszcze mozna oczekiwac od milicji?

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

FUNC VOID Info_Mod_Diego_Mario2_A()
{
	AI_Output(hero, self, "Info_Mod_Diego_Mario2_A_15_00"); //Tak, oto Twoja polowa.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Diego_Mario2_A_11_01"); //Cóz, bylo to warte naszej malej wycieczki. Dobrze jest ponownie przesunac stare kosci.

	Info_ClearChoices	(Info_Mod_Diego_Mario2);
};

INSTANCE Info_Mod_Diego_VermissteFertig (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_VermissteFertig_Condition;
	information	= Info_Mod_Diego_VermissteFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_VermissteFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_VermissteFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_00"); //Tajemnice o zaginionych obywatelach, które panstwo naprawde dobrze rozwiazali.
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_01"); //Do kopalni magów demonicznych.... Kto by sie domyslil?
	AI_Output(self, hero, "Info_Mod_Diego_VermissteFertig_11_02"); //(wlasnie) Ale mam nadzieje, ze nie doprowadzi to do konfliktów zbrojnych......

	AI_StopProcessInfos	(self);

	/*Wld_InsertNpc	(Mod_7660_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7661_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7662_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7663_MIL_Miliz_NW,	"NW_CASTLEMINE_01");
	Wld_InsertNpc	(Mod_7664_MIL_Miliz_NW,	"NW_CASTLEMINE_01");*/

	Wld_InsertNpc	(Mod_7665_MIL_Miliz_NW,	"XARDAS");
	Wld_InsertNpc	(Mod_7666_MIL_Miliz_NW,	"XARDAS");
	Wld_InsertNpc	(Mod_7667_MIL_Miliz_NW,	"XARDAS");

	B_KillNpc	(Mod_7665_MIL_Miliz_NW);

	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
	Wld_InsertNpc	(Gobbo_Skeleton,	"XARDAS");
};

INSTANCE Info_Mod_Diego_DrachenFrei (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_DrachenFrei_Condition;
	information	= Info_Mod_Diego_DrachenFrei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_DrachenFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_DrachenFrei_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_DrachenFrei_11_00"); //Hej, slysze, ze srodowisko dreczone bylo poteznymi demonami.
	AI_Output(hero, self, "Info_Mod_Diego_DrachenFrei_15_01"); //Prawdopodobnie masz na mysli smoki....
	AI_Output(self, hero, "Info_Mod_Diego_DrachenFrei_11_02"); //Smaki? Naprawde? I myslalem, ze to tylko stworzenia z ksiazek....
	AI_Output(hero, self, "Info_Mod_Diego_DrachenFrei_15_03"); //(do siebie) Hmm, no cóz, jakos to prawda....
};

INSTANCE Info_Mod_Diego_Flugblatt (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Flugblatt_Condition;
	information	= Info_Mod_Diego_Flugblatt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Diego_Flugblatt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Flugblatt_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Diego_Flugblatt_11_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Diego_Flugblatt_11_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Diego_Lehrer (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lehrer_Condition;
	information	= Info_Mod_Diego_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Diego_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Diego_Lehrer_11_00"); //Potrafie nauczyc sie wybierac zamki.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Diego_Lehrer_11_01"); //Poza tym, moge Panstwu pomóc w zwiekszeniu inteligencji.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Diego moze nauczyc mnie, jak wybierac zamki i czynic je inteligentniejszymi.");
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Diego moze nauczyc mnie wybierac zamki.");
	};
};

INSTANCE Info_Mod_Diego_Lernen (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lernen_Condition;
	information	= Info_Mod_Diego_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("sluzy chwytaki", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));
};

FUNC INT Info_Mod_Diego_Lernen_Condition()
{
	Info_Mod_Diego_Lernen.description = B_BuildLearnString("sluzy chwytaki", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Lernen_15_00"); //Naucz mnie, jak wybierac zamki.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_PICKLOCK))
	{
		AI_Output(self, hero, "Info_Mod_Diego_Lernen_11_01"); //Jesli chcesz wybrac zamek, powinienes miec przy sobie wystarczajaca ilosc szafek. Poza tym powinienes byc calkiem madry.
	};
};

INSTANCE Info_Mod_Diego_GeschickteFinger (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GeschickteFinger_Condition;
	information	= Info_Mod_Diego_GeschickteFinger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Moje diety zawsze sie zrywaja....";
};

FUNC INT Info_Mod_Diego_GeschickteFinger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GeschickteFinger_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GeschickteFinger_15_00"); //Moje diety zawsze sie zrywaja - czy masz dla mnie jakas rade?
	AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger_11_01"); //Czestotliwosc przerwania diety zalezy od Twoich umiejetnosci.
	AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger_11_02"); //Jest jednak pewna sztuczka, której mozna uzyc ostrozniej.
};

INSTANCE Info_Mod_Diego_GeschickteFinger2 (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_GeschickteFinger2_Condition;
	information	= Info_Mod_Diego_GeschickteFinger2_Info;
	permanent	= 1;
	important	= 0;
	description	= "";
};

FUNC INT Info_Mod_Diego_GeschickteFinger2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Diego_GeschickteFinger2.description = "Pokaz mi sztuczke otwarcia zamków. (500 zloto)";
	}
	else
	{
		Info_Mod_Diego_GeschickteFinger2.description = "Pokaz mi sztuczke otwarcia zamków. (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Diego_GeschickteFinger))
	&& (Dietrich_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_GeschickteFinger2_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_GeschickteFinger2_15_00"); //Pokaz mi sztuczke otwarcia zamków.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_01"); //Zwykly zamek sklada sie z kilku blokad.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_02"); //Nalezy popchnac je we wlasciwym kierunku, aby mozna bylo przesunac srube na koncu.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_03"); //Jesli pchnie sie jeden z bebenków w niewlasciwym kierunku, dietrich sie zepsuje.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_04"); //Jednak juz teraz mozesz to odczuc podczas podrózy w niewlasciwym kierunku, przy malym oporze w polowie toru.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_05"); //Aby dostrzec ten opór, musisz byc skoncentrowany i przeszkolony.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_06"); //Nie we wszystkich przypadkach uda sie zapobiec aborcji, ale przynajmniej w niektórych przypadkach.
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_07"); //Najlepiej po prostu wypróbowac.

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};

		Dietrich_Perk = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Diego_GeschickteFinger2_11_08"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Diego_Lernen_DEX (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Lernen_DEX_Condition;
	information	= Info_Mod_Diego_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Diego_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_Lernen_DEX_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Diego_Lernen_DEX_16_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Diego_Lernen_DEX);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Diego_Pickpocket (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_Pickpocket_Condition;
	information	= Info_Mod_Diego_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Diego_Pickpocket_Condition()
{
	C_Beklauen	(200, ItKe_Lockpick, 25);
};

FUNC VOID Info_Mod_Diego_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

	Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_BACK, Info_Mod_Diego_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Diego_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Diego_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
};

FUNC VOID Info_Mod_Diego_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Diego_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Diego_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Diego_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Diego_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Diego_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Diego_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Diego_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Diego_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Diego_EXIT (C_INFO)
{
	npc		= Mod_538_RDW_Diego_NW;
	nr		= 1;
	condition	= Info_Mod_Diego_EXIT_Condition;
	information	= Info_Mod_Diego_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Diego_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_EXIT_11_00"); //Zobacze cie..... miejmy nadzieje.

	AI_StopProcessInfos	(self);
};
