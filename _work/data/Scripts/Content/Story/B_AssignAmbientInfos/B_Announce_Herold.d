// ***************
// B_Announce_Herold 
// ***************

func void B_Announce_Herold ()
{
	var int randy;

	var int rnd;

	if ( C_BodystateContains(self, BS_SIT) )
	{
		AI_StandUp		(self);
		B_TurnToNpc		(self,	hero);
	};
	
	// ------ NSC steckt ggf. Waffe weg ------
	AI_RemoveWeapon (self);
	
	CreateInvItem		(self,	Fakescroll);
	AI_UseItemToState	(self,	Fakescroll,	1);
	AI_UseItemToState	(self,	Fakescroll,	-1);

	AI_Output (self,self,"Info_Mod_Herold_Announce_04_00"); //Sluchajcie, sluchajcie!
	
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Flugblaetter))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_01"); //Jestes glodny i niezbyt duzo zlota? Nastepnie udaj sie do Matteo w dzielnicy handlowej, gdzie mozna kupic wszystkie artykuly spozywcze w dobrej cenie.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_02"); //Na krótki czas jest nawet ser w ofercie, wiec spiesz sie.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_03"); //Albo odpoczac od wolnego stoiska piwnego. Czasami praca moze tez czekac.

		AI_GotoWp	(self, "WP_HEROLD_BIERHOLEN");

		CreateInvItems	(self, ItFo_Beer, 1);

		B_UseItem	(self, ItFo_Beer);

		AI_GotoWP	(self, self.wp);

		AI_AlignToWP	(self);
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Herold_Verbrecher))
	&& (Mod_PAL_HeroBot == 3)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_04"); //Wczoraj wieczorem czterech milicji zostalo zamordowanych we snie przez szalenca w kolorowym kostiumie z kolnierzem szachowym.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_05"); //Uwazaj na tego przestepce.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Valentino_Kidnapped))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_06"); //Straszne rzeczy wydarzyly sie jednak nie tylko poza Khorinis: porwano wysokiego ranga obywatela Khoriniego!
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_07"); //Valentino, nie zawsze szanowane, ale wplywowe i bogate, nie wrócilo do domu po nocnym spotkaniu.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_08"); //Po jego zniknieciu zostal poczatkowo odkryty, poniewaz mlody czlowiek byl dobrze znany z jego eskapad, porywacze napisali teraz dziwny list do mieszkanców miasta.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_09"); //Zamiast sumy pienieznej zadaja w zamian jednego z skazanych z Minentala.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_10"); //Przyczyna tego twierdzenia jest w chwili obecnej nieznana.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_11"); //Niech sprawa toczy sie bez przelewu krwi od niewinnych ludzi.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest4))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_12"); //Jakosc towarów handlowych wciaz spada.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_13"); //Tylko on sam przeszedl z wyróznieniem ostatni test produktu finansowany przez Matteo.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_14"); //Wszyscy inni handlowcy mieli przede wszystkim deficyt owoców.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_15"); //Zapytany jak interpretowal wynik, Matteo powiedzial:
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_16"); //"Nie ma nic do interpretacji. Kto sprzedaje leniwe jablka, nie moze nadal otrzymywac wsparcia.""Das gibt es nichts zu interpretieren. Wer faule Äpfel verkauft, darf nicht weiter unterstützt werden.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_17"); //Ich dagegen habe jahrelang in Qualität investiert. Das konnten die Prüfer eindrucksvoll belegen."
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_18"); //Matteo zglasza nowy rekord sprzedazy za ostatnie kilka dni.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten2))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_19"); //Lord Hagen jest coraz czesciej krytykowany za swoja polityke skazancza.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_20"); //Paladyn, który nie chcial, aby jego nazwisko zostalo opublikowane, powierzyl niewielkiemu kregowi fakt, ze administrator miasta wyslal bylego mieszkanca kopuly w celu uzyskania informacji o rozwoju doliny rzeki Minental.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_21"); //Jednakze Lord Hagen nie byl jeszcze dostepny do skomentowania.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_AufgebrachteBuergerin_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Anschlaege))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_22"); //Syn Canthara, Alievo, padl ofiara niezrozumialej próby zabójstwa.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_23"); //Podobno odwiedzil go i zabil byly wiezien, który szybko zyskal watpliwa reputacje w Khorinis.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_24"); //Zaleca sie, aby wszyscy obywatele unikali tego przestepcy do czasu rozstrzygniecia sprawy.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_25"); //Aby uzmyslowic wieznia wszystkim, Canthar rozdawal mu ulotki z jego portretem po calym Khorini.
	}
	else if (Mod_Herold_Kompass == 0)
	&& (Kapitel == 2)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_26"); //Zloty kompas Esmeraldy zostal skradziony. Zlodziej najwyrazniej zdolal uciec nierozpoznany noca przez brame wschodnia.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_27"); //Czlowiek, który kladzie zlodziej i chwyta kompas od niego, ma polecenie, aby natychmiast przywiezc ten cenny kawalek do Pana Andre.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Kompass = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_KOMPASS, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_KOMPASS, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_KOMPASS, "Zloty kompas Esmeraldy zostal skradziony, a zlodziej uciekl z bramy wschodniej. Jesli go znajde, zabiore kompas do Pana Andre.");

			Wld_InsertNpc	(Mod_7744_OUT_Dieb_NW, "TAVERNE");

			rnd = Hlp_Random(5);

			if (rnd == 0)
			{
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "BRUECKE");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "ORLAN");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);

				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SEE");
			}
			else if (rnd == 4)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SUMPF");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			};
		};
	}
	else if (Mod_Herold_Siegelring == 0)
	&& (Kapitel == 4)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_28"); //W górnej czesci miasta doszlo do brutalnego ataku na wysokiego dostojnika.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_29"); //Oprócz duzej ilosci zlota i srebra kradziono równiez szlachetny pierscien sygnetowy.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_30"); //Dwóch sprawców udalo sie uciec przez mur miejski przed przybyciem strazników.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_31"); //Osoba, która umiesci sprawce i przywiezie sygnet do Pana Hagena, moze liczyc na odpowiednia nagrode.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Siegelring = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "W górnej czesci byl rozbój, w którym kradziono szlachetny pierscien sygnetowy wraz z innymi kosztownosciami. Jesli znajde pierscionek, moge otrzymac nagrode od Pana Hagena.");

			Wld_InsertNpc	(Mod_7745_BDT_Landstreicher_NW, "TAVERNE");

			rnd = Hlp_Random(4);

			if (rnd == 0)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "WEIDENPLATEAU");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "EROL");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			};
		};
	}
	else if (Kapitel < 2)
	{
		rnd = Hlp_Random(5);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_32"); //Abuyin zasugerowal, ze niedawne nocne niebo straszna gwiazda komety (zapowiedzielismy) moze byc znakiem wywrócenia Minna przed portem.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_33"); //Jednak tylko Innos mógl poznac prawdziwe zlowieszcze znaczenie tego cudownego znaku.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_34"); //Z pewnoscia jednak nie szkodzi to intensyfikacji modlitw do Innos.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_35"); //Poza brama miasta rolnicy i niektórzy handlowcy zglaszaja równiez dziwne incydenty.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_36"); //Ostatnio coraz czesciej spotykamy sie tam z ponura figura, wedlug której poszkodowani czuli sie niekomfortowo i narzekali na dusznosc i nudnosci.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_37"); //Zaleca sie wiec, aby nie ruszac samotnie poza granice murów miejskich, a przynajmniej unikac kazdego, kto blaka sie dookola, dopóki straznik nie dowie sie wiecej.
		}
		else if (rnd == 2)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_38"); //Okazuje sie, ze kilka miesiecy temu w Myrtanie urodzilo sie dziecko rybie, którego górna czesc ciala jest ludzka, a dolna czesc ciala ma ksztalt ogona ryby.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_39"); //Niestety, Innos jadl dziecko niedlugo po porodzie, wiec nie mozemy miec nadziei, ze dowiemy sie, jak to jest, kiedy sie urodzil.
		}
		else if (rnd == 3)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_40"); //Po upadku zapory pierwsi wiezniowie przybywaja do Khorinis. Lord Hagen oglosil, ze na razie nie nalezy ich dyskryminowac.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_41"); //Kto je atakuje, ten bedzie ukarany jak kazda inna zbrodnia.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_42"); //Poniewaz naplyw ten z pewnoscia wzrosnie w ciagu najblizszych kilku tygodni, wszyscy ci, którzy nie sa w straszliwej potrzebie schronisk, proszeni sa o opuszczenie swojego zakwaterowania.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_43"); //Po rozwiazaniu kwestii zakwaterowania, mozna oczywiscie przeniesc sie z powrotem do miejsca zakwaterowania.
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_44"); //Magicy wody coraz bardziej zblizaja sie do wielkiego odkrycia.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_45"); //Teraz, gdy podziemna swiatynia zostala w pelni otwarta i odnaleziono tajemniczy portal, to tylko kwestia czasu, zanim przetrwaja oni tajemnice kompleksu.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_46"); //W miedzyczasie Serpentes jest oburzony tym jednoglosnym podejsciem magów wody.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_47"); //Klasztor chcialby wesprzec wykopalisko wszelkimi mozliwymi srodkami.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_48"); //Jeszcze bardziej przeraza go fakt, ze demon wzywajacy Xardas wrócil do kraju.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_49"); //Dawniej byl czlonkiem Magicystów Strazaków, po róznych klótniach musial opuscic rozkaz.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_50"); //Mówi sie, ze ma on kontakt z czarnymi magami, których liczba jest podobno wyzsza niz od dawna.
		};
	}
	else if (Kapitel < 4)
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_51"); //Wiadomosc z tego dnia: Magicy wodni znalezli droge przez portal. Czy to otworzylo pudelko Pandory?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_52"); //Od czasu, gdy zwolennicy Adanosu znikneli, nie ma sladu ich zycia.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_53"); //Zamiast tego pojawiaja sie niepokojace doniesienia Minentala o zmartwychwstaniu starozytnego stworzenia.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_54"); //Ale nie jest to powód do paniki, powiedzial Pan Andre. W przypadku inwazji Beliarsa Bruta straz miejska jest dobrze przygotowana.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_55"); //Serpentes byl zaniepokojony zanikiem magów wody. Powiedzial doslownie:
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_56"); //"Oczywiscie smierc wszystkich magików wody bylaby dla nas wszystkich powazna strata. Wlacze je do moich modlitw.""Natürlich wäre der Tod aller Wassermagier ein schwerer Verlust für uns alle. Ich werde sie in meine Gebete einschließen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_57"); //Dieses Unglück sollte allen Rechtgläubigen nur wieder zeigen, dass ungezügelter Forscherdrang und Wissensdurst immer in einer Katastrophe enden."
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_58"); //Mówi sie, ze Paladynowie rozwazaja wprowadzenie nowego podatku, aby ich sprzet byl na biezaco aktualizowany. Przede wszystkim podatek ten powinien uderzyc mocno w osoby o wysokich dochodach.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_59"); //Den genauen Wortlaut kennt allerdings bisher niemand. Trotzdem hat Matteo bereits ein Protestschreiben verfasst, in dem er auf die "fatalne konsekwencje dla systemu gospodarczego" durch eine weitere Steuer hinweist.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_60"); //Jesli pojawi sie jakakolwiek informacja na ten temat, zostanie ona niezwlocznie ogloszona.
		};		
	}
	else if (Kapitel == 4)
	{
		rnd = Hlp_Random(3);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_61"); //Sa straszne rzeczy, które nalezy zglaszac. Ostatnie slowa sa ostrzezeniem.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_62"); //Poza miastem, szalenstwo wzielo sie za siebie i zamienilo szanownych ludzi w opadajacych szalenców.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_63"); //Jedyna jasna plama jest to, ze nasze piekne miasto zostalo dotychczas oszczedne od tej choroby. Nawet w potrzebie Innos trzyma nad nami reke ochronna.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_64"); //Fakt, ze jego wladza nie jest bezgraniczna i potrzebuje naszego wsparcia, mozna dzis zobaczyc w starym obozie w Dolinie Kopalni, która stala sie scena wojny miedzy ludzmi a orkami.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_65"); //Po ciezkich walkach mieszkancy Starego Obozu musieli przyznac sie do porazki atakujacym.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_66"); //Chociaz w przeszlosci wielokrotnie grzeszyli, ta kleska przeciwko poplecznikom Beliara jest strasznym wydarzeniem.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_67"); //Po tym, jak Tengron jako pierwszy przyznal, ze rozwazono wprowadzenie nowego podatku, wielu obywateli z niezadowoleniem oddychalo powietrzem.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_68"); //Ubolewaja m. in. nad slaba komunikacja z paladynami, którzy dobrowolnie nic nie oddali, a teraz chcieli przedstawic im prawde accompli.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_69"); //Nadal oczekuje sie reakcji Paladynów na te oskarzenia.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_70"); //Matteo oglosil juz, ze zamierza zapobiec egzekwowaniu tego podatku nie tylko slowami, ale równiez czynami, jesli zajdzie taka potrzeba.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_71"); //Te ostatnie wydarzenia nie przyczynily sie do popularnosci Paladynów.
		}
		else
		{
			if (Mod_LehrlingBei == 1)
			&& (Npc_KnowsInfo(hero, Info_Mod_Constantino_LehrlingQuest9))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_72"); //Tak sie stalo, jak musialo to nastapic: Konstantyn ostatecznie przeszedl pod panów szalenców.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_73"); //Plotka glosi, ze próbowal zrobic Kamien Filozoficzny.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_74"); //Ten incydent pokazuje tylko, ze grzechy Inno nie sa bezkarne.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_75"); //Okaze sie dopiero, czy ktos jest chetny do opieki nad Constantino w jego póznej kondycji.
			}
			else if (Mod_LehrlingBei == 2)
			&& (Npc_KnowsInfo(hero, Info_Mod_Gritta_ThorbenLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_76"); //Cala Khorinis jest gleboko dotknieta choroba powszechnie znanego Mistrza Thorba.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_77"); //Po narzekaniu na ból przez caly dzien i próbowaniu utoniecia go w alkoholu, wieczorem bez slowa przewrócil sie wieczorem i nie jest w tej chwili do wspomnien.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_78"); //To dzieki boskiemu dalekowzrocznosci ma pilnego ucznia, aby mu pomóc, który moze zrekompensowac swoja porazke, jesli Thorben nie znajdzie drogi do swojej dawnej formy.
			}
			else if (Mod_LehrlingBei == 4)
			&& ((Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest12))
			|| (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest13)))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_79"); //Bospalar wydaje sie obecnie przezywac trudny okres.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_80"); //Kilku jego klientów i dostawców donosilo, ze wypedzil ich ze swojego sklepu z powodu odosobnionych naduzyc, mimo ze tylko go przywitali.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_81"); //Nalezy miec nadzieje, ze wkrótce ponownie sie zlapie.
			}
			else if (Mod_LehrlingBei == 5)
			&& (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_82"); //Nigdy wczesniej nie spotykany Harad jest teraz za kratami dla tajnej wspólpracy z najemnikami.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_83"); //Paladynowie mówili, ze wiedzieli o tym od dawna, ale chcieli go odstraszyc od swoich czynów dobrymi koaksingami.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_84"); //Po tym jak nie bylo to owocne, spedzi teraz czas w wiezieniu, dopóki nie uswiadomi sobie winy.
			};
		};		
	}
	else	//Kapitel 5
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_85"); //Czy Khorinis jest teraz bezbronny na lasce wszelkiego zla?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_86"); //Trzej najsilniejsi magicy i przywódcy cechów pozostawili Khorinisa, aby oddac nasze wspólne dobro w rece niezidentyfikowanej osoby.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_87"); //Na odleglej wyspie chca wykonac tajny rytual.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_88"); //Miejmy nadzieje, ze te jasne umysly wiedza, co robia. W przeciwnym razie moze to byc nasz cel!
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_89"); //Jakby tego bylo malo, spór w sprawie podatku majatkowego jest równiez na skraju eskalacji.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_90"); //Poniewaz paladyni odrzucili rewizje prawa, doszlo do spontanicznej demonstracji, która jednak zostala zmiazdzona przez straz miejska.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_91"); //Dwóch strazników zostalo lekko rannych butelka i kamieniem rzuconych podczas zamieszek na obrzezach demonstracji, kilku demonstrantów zostalo aresztowanych i ukaranych grzywna.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_92"); //Wrogie dzialania wobec paladynów staly sie jeszcze bardziej dotkliwe i nikt nie wie, jak dlugo trwac bedzie zwodniczy pokój?
		};
	};
};
