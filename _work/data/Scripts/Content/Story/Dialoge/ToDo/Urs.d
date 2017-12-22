INSTANCE Info_Mod_Urs_Hi (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hi_Condition;
	information	= Info_Mod_Urs_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_00"); //Ach, co nieszczescie, ucieka.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_02"); //(Któz to jest Huh?
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_03"); //Wystarczy odwiedzic doline.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_04"); //Och, dziekuje Innosowi. Myslalem, ze byles innym bandyta. To wszystko, czego potrzebuje.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_05"); //Dlaczego, co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_06"); //Ach, widzisz tam tych dwóch bandytów? Pelni zlosliwosci, gonili przed wózkiem paczke Scavengera.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_07"); //Potem mój Wally uciekl i scigal ich. Teraz stoje tu i nie moge odejsc.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_08"); //Kto jest Wally?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_09"); //Mój wierny, oswojony przyjaciel. On sciaga wózek, bo moje wlasne sily nie pozwola mi juz tego robic.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_10"); //Poza tym, trzyma podstep od dawania mi wszelkich klopotów.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_11"); //Tak jak przy ostatnim razem prowadzilem dzialalnosc w Mental.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_12"); //Obydwaj kuterzy chciwie podeszli juz do moich cennych dóbr.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_13"); //Ale kiedy mój grymas krzyczeli na nich, odwaga ich opuscila i zmienili zdanie.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_14"); //Ahh, pies Wally to Twój pies. Cóz, obaj bandyci sa dla mnie bohaterami.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_15"); //pies uh, no cóz, rodzaj. Jest psem orkowym.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_16"); //Pies Ork? Ale....
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_17"); //Oh, to historia, która siega dalekich czasów.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_18"); //W tym czasie towarzyszyly mi paladyny na kontynencie w poblizu Faring, kiedy odkryli grupe orków.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_19"); //Bojownicy Innos natychmiast podjeli walke i zabili wszystkie orki i ich zwierzeta z korzyscia zaskoczenia.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_20"); //Gdy osiedlil sie kurz bitwy, uslyszalem zawodzenie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_21"); //W poblizu martwego psa orkowego odkrylem bezbronnego szczeniaka.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_22"); //Nie mialem serce, by zostawic go samemu sobie, wiec podnioslem go i wyciagnalem reka.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_23"); //No cóz, teraz oczywiscie rozumiem. Twój przyjaciel i towarzysz znikneli, a bandyci czekaja tylko na Twój towar.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_24"); //Hmm, czy powinienem przyciac dwóch zloczynców?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_25"); //Ach, co by to bylo dobre? Maja obóz w górach i kiedy dostaja pomoc, mam klopoty.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_26"); //Nadal jestem w stanie samodzielnie kontrolowac je, ale wózek....
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_27"); //Nie rozumiem. Nie mozesz ciagnac wózka, ale mozesz powstrzymac bandytów od grabiezy?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_28"); //Cóz, po tym jak mój Wally uciekl i dwóch zloczynców próbowalo odbic sie na moich towarach, uzylem mocy Inno, aby ponownie umiescic je na swoim miejscu.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_29"); //Kiedy zaladowalem pilke ognia w rekach....
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_30"); //Strazaka? Ale....
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_31"); //Tak, ujawniasz takze wszystkie niefortunne szczególy przeszlosci.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_32"); //Bylem niegdys magikiem ognia, pierwsze trzy kola byly potezne.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_33"); //Zaczalem jednak bardziej doglebnie zajmowac sie Boskimi mocami, ich skutkiem.... oraz manipulowanie i wyposazanie obiektów w ich moc.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_34"); //Masz na mysli czarujacy?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_35"); //Tak, urok i blogoslawienstwo. Zwykle jest to dopuszczalne tylko w bardzo rzadkich przypadkach, na przyklad podczas swietej konsekracji miecza paladynowego.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_36"); //Naruszylem to przykazanie, kiedy zaczarowalem proste przedmioty ognista magia Inno i przekazalem je zwyklym ludziom.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_37"); //Glówny magik ognia dowiedzial sie o tym i grozil mi ekskomunikatem w przypadku kolejnego naruszenia.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_38"); //I jak do tego doszlo? Nie zatrzymales sie, czy?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_39"); //Nie, podporzadkowalem sie rozkazowi.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_40"); //Ale.... ale wtedy stanelam przed decyzja.... Po prostu nie moglem sie zdecydowac w sensie Innos.... lub co rozkaz pozaru widzial jako takie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_41"); //Opowiedzialem juz o okolicznosciach, kiedy Wally wkroczyl w moje zycie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_42"); //Jednak, ze pod najbardziej surowa kara zakazano utrzymywania kontaktu z istotami zlowrogich - jako taki rozkaz widzi orki i ich stworzenia - a nawet trzymania ich w domu, ja to ukrylem.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_43"); //Wychowywalem go w szalasie poza miastem, ale po kilku miesiacach, kiedy dorastal, a ja czesciej bylem z nim w lesie, zauwazylismy, ze tak sie stalo.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_44"); //Zostalem zaproponowany wybór, aby pozbyc sie tej istoty...... lub opuszczenia Zakonu i miasta na zawsze.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_45"); //Jakiego wyboru dokonywalem, nie musze wspominac. Byl zbyt drogi mojemu sercu.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_46"); //Hmm, tak, tak, poruszajaca historia. Ale co zamierzacie teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_47"); //Och, nie wiem. Nie moge tu stac na zawsze.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_48"); //Ale nie zostawiajcie, ani mój towar, a przede wszystkim zostawiajcie Wally w tyle.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_49"); //Jestem pewna, ze wróci, kiedy bedzie strzelal do stadka.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_50"); //Z drugiej strony, mógl spotkac strazników i najemników, którzy z pewnoscia nie byliby wobec niego zbytnio sklonni.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_51"); //Dlatego chyba powinienem go przeciez znalezc.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_52"); //Hmm, prosze pozwolic mi pomyslec.... Czy nie moze Pan ode mnie dostarczyc towaru?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_53"); //Potem moglem go znalezc podczas jego Wally.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_54"); //Tak, dlaczego nie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_55"); //Dziekuje bardzo. Tak wiec....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_56"); //Wtedy najpierw bym mial ognistego mlotka dla kuzni Thofeistos, w Nowym Obozie.

	B_GiveInvItems	(self, hero, ItMw_FeurigerHammer, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_57"); //Znajdziesz go w wielkiej denie. Z niecierpliwoscia czeka na dobry utwór. Z pewnoscia zaplaci za to 20 bryl rudy.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_58"); //Hmm, a stamtad latwo odnajdziesz obóz Rangerów, który równiez musisz odwiedzic.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_59"); //Wystarczy isc droga do starej kopalni. Za obozem znajduje sie przejscie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_60"); //Dla mysliwego Zelara mam ten ladunek magicznie zaczarowanych strzalek.

	B_GiveInvItems	(self, hero, ItMi_PfeilpaketZelar, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_61"); //Chcieli ich, na wypadek gdyby Nocny Spisek znów zywil sie ich obozem. Poniewaz z normalna bronia nie da sie ich obslugiwac.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_62"); //W kazdym razie dostaniesz dla niego cenna skóre.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_63"); //Kolejna rzecz, która wiesz, to plonaca patelnia dla Omid. Jest szefem kuchni w Domu Er Barons.

	B_GiveInvItems	(self, hero, ItMi_MagischePfanne, 1);

	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_64"); //Czekaj minute, magiczna patelnia na kucharza?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_65"); //Tak, niektóre barony z rudy zawsze lubia smazyc swoje potrawy bardzo rzesko.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_66"); //A zadowolone podniebienie barona rudy nie da sie przewazac zlota. Na pewno powinienes dostac za to 400 monet.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_67"); //Wiec potem ten maly paczka blogoslawionych blankietów dla kowala Darrion, z obozu bagiennego.

	B_GiveInvItems	(self, hero, ItMi_ErzpaketDarrion, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_68"); //Ostrza wyciete z tego materialu powinny byc bardziej skuteczne wobec demonicznych stworzen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_69"); //Ci w obozie bagiennym mieli kiedys klopoty z archdaemonem lub czyms.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_70"); //Hmm, wyglada znajomy.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_71"); //W kazdym razie dostaniesz ladny pakiet bagnistej ambrozji.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_72"); //Teraz wiec obozy, które dopiero niedawno powstaly.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_73"); //Do magów w ruinach klasztoru ciagle ten pierscien, który sam w sobie niesie swiatlo Innosa.

	B_GiveInvItems	(self, hero, ItRi_Licht, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_74"); //Po zastosowaniu przez pewien czas oswietla otoczenie.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_75"); //Jeden z magów metamorfoz chcial go miec, aby mógl kontynuowac swoje badania do póznej nocy bez zadnych naciec.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_76"); //Jesli nie wiesz, gdzie jeszcze go znalezc: po prostu podazaj ta rzeka w dól rzeki, az rozbije sie na dwie biegi.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_77"); //Po lewej stronie znajduje sie ruina klasztoru. Dajesz pierscionek do bramkarza Ferco i dostaniesz magiczny bieg.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_78"); //Pozostala czesc sprzedam za jakis czas, kiedy w powietrzu bedzie mniej klopotów.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_79"); //Jak tylko wszystko sie polaczysz, znajdziesz mnie tutaj.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_80"); //Nagroda jest otrzymanie jednego z moich najlepszych utworów. Z pewnoscia bedzie pan zadowolony.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_81"); //Nie trwaj zbyt dlugo, prosze. Nie moge tu zostac na zawsze.

	Log_CreateTopic	(TOPIC_MOD_URS_HUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_URS_HUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_URS_HUND, "Dealer Urs wyciagnal swój Orkhund Wally ponizej przeleczy. Poniewaz bandyci sa blisko i chce szybko odnalezc swój Wally, zajme sie jego najwazniejszymi dobrami. W Nowym Obozie kowal Thofeistos oczekuje ognistego mlotka, do którego dostaje rude. W poblizu starej kopalni spotykam sie z Rangersami. Za kilka blogoslawionych strzalek dostaje kilka cennych skórek. W Starym Obozie przekaze ognista patelnie szefowi kuchni Erzbarone Omid, za co wyskakuja zlote monety. Kamieniarz Darrion w obozie bagnistym czeka na jakies blogoslawione puste przestrzenie, na które dostaje paczke bagna. Sledzac bieg rzeki ponizej przeleczy, po lewej stronie natrafie na ruine klasztoru, w którym zyja magicy transformacji. Daje pierscionek swiatla straznikowi Ferco i w zamian dostaje rune. Kiedy mam wszystko razem, powinienem przyniesc to do Ursa, za co obiecal mi satysfakcjonujaca nagrode. Niech mi sie jednak spieszy, bo on nie moze zostac na zawsze.");
};

INSTANCE Info_Mod_Urs_Hund (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund_Condition;
	information	= Info_Mod_Urs_Hund_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund_Condition()
{
	if (Mod_Urs_Hund == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_00"); //Ach, tam jestescie.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_01"); //Czytam panska notatke. Ale widze, ze wciaz jeszcze nie znalazles Wally.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_02"); //Nie, niestety tez nie. Teraz jest jeszcze jedna ostatnia mozliwosc. Tak, oczywiscie bedzie tam.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_03"); //Tak?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_04"); //Okreg orkowy. Prawdopodobnie zaprowadzily go tam instynkty i wspomnienia. Tam go znajde.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_05"); //Obszar orkiestry? Czyz nie jest to samobójstwo? nawet z Twoja magia.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_06"); //Nie, niekoniecznie. Nie bedzie to plomien Innos, który zapewni mi bezpieczne przejscie.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_07"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_08"); //Cóz, maly rytual.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_09"); //Zobaczysz..... ale potrzebujesz rzeczy, które dostajesz w zamian za mój towar.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_10"); //Czy masz wszystko, czego potrzebujesz?
};

INSTANCE Info_Mod_Urs_Hund2 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund2_Condition;
	information	= Info_Mod_Urs_Hund2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem wszystko.";
};

FUNC INT Info_Mod_Urs_Hund2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 20)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (Npc_HasItems(hero, ItRu_TrfMolerat) == 1)
	&& (Npc_HasItems(hero, ItAt_WargFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund2_Info()
{
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_00"); //Dostalem wszystko.

	B_ShowGivenThings	("Udzielone Waren");

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 20);
	Npc_RemoveInvItems	(hero, ItMi_HerbPaket, 1);
	Npc_RemoveInvItems	(hero, ItRu_TrfMolerat, 1);
	Npc_RemoveInvItems	(hero, ItAt_WargFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_ShadowFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_TrollFur, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_01"); //Doskonaly. Wykonal pan dobra robote.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_02"); //Nie potrzebuje Cie, zebys przechowywal zloto, nie potrzebuje go.... Oto Twoja prawdziwa nagroda.

	B_GiveInvItems	(self, hero, ItRi_Versengung, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_03"); //Ten pierscien wzmocni twoje ataki jakims ogniem i magia.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_04"); //Dobrze, dziekuje. A co dalej?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_05"); //No cóz, do wykonania tego rytualu potrzebuje mistycznego, magicznego miejsca.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_06"); //Niedaleko stad zobaczylem kamienny krag w lesie.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_07"); //W czasie, gdy bylem magikiem ognia, zajmowalem sie reliktami starozytnych kultur.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_08"); //Mówiono, ze te kregi byly kiedys w stanie pokonac bariery magii, przestrzeni i czasu.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_09"); //To brzmi jak potezne obrzedy.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_10"); //Tak, rzeczywiscie. Magowie wczesniejszych kultur musieli rozpadac sie w rodzaj magicznego, medytacyjnego stanu i jednoczyc swoje sily lub korzystac z silnych zewnetrznych zródel energii magicznej.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_11"); //Zródlo Magiczne? Masz na mysli magiczna rzecz....
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_12"); //To wlasnie ta magiczna ruda. A pakiet chwastów bagiennych powinien byc wiecej niz wystarczajacy, aby zapewnic stan przypominajacy medytacje.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_13"); //Wszystko w porzadku, ale jakiego rodzaju rytualu zamierzasz dokonac?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_14"); //Zamierzam przeniesc moc nieco silniejszego zwierzecia na rune metamorfozy.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_15"); //Jako Molerat prawdopodobnie nie dostalbym sie za daleko w okolice orka, ale skonczylem jako obiadowa przekaska dla wszystkich dzikich stworzen.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_16"); //Ahh, na tym polega rytual.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_17"); //Dokladnie. No cóz, mam niezbedne rzeczy.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_18"); //Teraz musze pokonac wszystkie magiczne stworzenia w kamiennym kregu.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_19"); //To powinno byc w mojej mocy i wiem, ze zrobiles juz dla mnie wiele.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_20"); //Bylbym jednak bardzo wdzieczny, gdybyscie jeszcze raz pomogli mi, pomagajac mi przeciw stworzeniom w kregu stentów.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_21"); //Jesli umiescisz pierscien, mozesz nawet uszkodzic Night Wispers, które sa w duzej mierze odporne na zwykla bron.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_22"); //W prawo, przejdzmy do kamiennego kola.

	B_LogEntry	(TOPIC_MOD_URS_HUND, "Teraz Urs pójdzie do kamiennego kola, aby stworzyc nowa rune transformacji. Próbuje znalezc Wally' a, który najprawdopodobniej jest w drodze do orkiestry. Mialem pomóc Ursowi zlamac stworzenia na Kólku Kamiennym. Móglbym od razu zalozyc nowy pierscionek i wypróbowac.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ZUSTEINKREIS");

	self.aivar[AIV_Partymember] = TRUE;

	B_GivePlayerXP	(600);

	Wld_InsertNpc	(Wisp,	"OW_PATH_WARAN01_SPAWN02");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC4");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC2");
};

INSTANCE Info_Mod_Urs_Hund3 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund3_Condition;
	information	= Info_Mod_Urs_Hund3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund2))
	&& (Npc_GetDistToWP(hero, "OW_FOREST_EAST_UMWEG_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund3_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund3_12_00"); //Teraz moze zaczac.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSTEINKREIS");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Urs_Hund4 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund4_Condition;
	information	= Info_Mod_Urs_Hund4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund4_Condition()
{
	if (Mod_Urs_Hund == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund4_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_00"); //Ty tutaj?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_01"); //Wystarczy odwiedzic starych znajomych. Jestem równiez zaskoczony, ze znajdziesz sie tutaj..... Widze z Wally.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_02"); //No tak, no cóz, moze to byla przygoda, nie uwierzylbys.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_03"); //Po tym jak wslizgnalem sie w bryle, chcialem isc prosto w okolice orka.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_04"); //Zapomnialem jednak, ze wiekszosc ludzi nie jest szczególnie zadowolona z wygladu takiego stworzenia.... Wiecej i chwycilby mnie sworzen straznika.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_05"); //No cóz, kiedy pamietam, ze oczywiscie szybko dalem mu pieniadze na piete, a potem - na poczatku w bardzo niezwykly sposób - bylem w stanie bezpiecznie zabrac sie do srodka huraganu.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_06"); //A jak mozna znalezc Wally wsród wszystkich czterokolowców?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_07"); //W ogóle nie. Znalezil mnie. Musialem jednak przejechac przez dluzszy czas teren orkiestry.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_08"); //Po jednym dniu czulem sie prawie w domu wsród wszystkich orków i czworonogów.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_09"); //A gdy glodowalam, zlapalam sie nawet na gonieniu za padlinozerca, który stracil droge do orkiestry.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_10"); //No cóz, to wszystko w pokretle.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_11"); //Tak czy owak, po jakims czasie minalem tez kolo wiezy, gdzie rozbilo sie stado psów huraganów.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_12"); //Poczatkowo wydawalo mi sie, ze nie mam racji i chcialem isc dalej, kiedy nagle uslyszalem glosna kore z opuszczonego budynku.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_13"); //Kiedy odwrócilem sie, zobaczylem, ze Wally przychodzi pedzic.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_14"); //Z poczatku pewnie tylko mnie pachnial i byl zdezorientowany stojac przed mna, w niezwyklej formie.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_15"); //Kiedy wlasnie mialem zawrócic, pamietalem ciasnote psów huraganowych i tylko kilka metrów dalej poszedlem, gdzie Wally uwaznie sledzil mnie po jakims wahaniu.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_16"); //Kiedy wreszcie stanalem przed nim w swojej normalnej formie, radosc z ponownego zobaczenia go byla naturalnie wielka.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_17"); //Cóz, równiez nie byl on bardzo prosty. Hmm, a Wally po prostu znowu uciekl przed swoimi kolegami?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_18"); //Otóz jego instynkty sprawiaja, ze Wally w naturalny sposób stara sie dazyc do srodowiska swojego wczesnego szczeniaka.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_19"); //Ale pod koniec dnia prawdopodobnie mieszkal wsród ludzi zbyt dlugo i przyzwyczail sie do mnie... Wiecej jako mój wierny przyjaciel i towarzysz.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_20"); //Tak, mysle, ze ci dwa nie sa tak latwo sie rozdzielac. A potem poszedles na orkiestrowe terytorium razem?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_21"); //Tak, bo przy wyjsciach na orkowe orki orki siedzialy na wargach zbyt blisko siebie strazników, bysmy nie przeszli bez dostania sie miedzy wasze fronty.... czy jako istota ludzka, wojna czy czlowiek z towarzyszem orkowego psa.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_22"); //To by nie poszlo dobrze.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_23"); //Szukalismy wiec innej drogi wyjscia i po jakims czasie spotkalismy opuszczona twierdze górska, z tymi przyjaznymi orkami.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_24"); //Niewiarygodne, czyz nie?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_25"); //Och, niektóre rzeczy sa mozliwe....
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_26"); //Tak, wszystko, co nie istnieje. Niektórzy wasko myslacy Inno-serwanci wyjasniliby to jako cos niemozliwego.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_27"); //W koncu swiat nie jest tak latwo podzielony na ciemnosc i swiatlo, dobro i zlo, jak chcialoby to przedstawic wielu obludnych kaplanów.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_28"); //Tak, jest w tym jakas prawda. Wiec co zamierzacie teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_29"); //Tak naprawde jeszcze nie wiemy.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_30"); //Ale przynajmniej jak slyszalem tutaj z orków, jest waska sciezka, która prowadzi z rejonu orkowego i nie jest strzezona przez strazników.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_31"); //My to wezmiemy pod uwage.... a nastepnie patrzec dalej.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_32"); //Hmm, przynajmniej gdzies tam, gdzie nie wygniesz sie z miasta z powodu twojego najlepszego przyjaciela lub morona, natychmiast wyciagnij miecz z niego.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_33"); //Zycze zatem powodzenia.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_34"); //Dziekuje równiez panstwu. Jestem pewien, ze kiedys spotkamy sie jeszcze raz.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Urs_EXIT (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_EXIT_Condition;
	information	= Info_Mod_Urs_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urs_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
