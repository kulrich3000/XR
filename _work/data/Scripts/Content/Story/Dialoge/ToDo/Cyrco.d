INSTANCE Info_Mod_Cyrco_Hi (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Hi_Condition;
	information	= Info_Mod_Cyrco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_00"); //Ach! Nowa twarz. Slyszales o tym.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_01"); //Lubie to? Licze tylko na to, co najlepsze....
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_02"); //Och, na pewno dosc. Pomagales tam Dragomirowi. Torgan opowiedzial mi o tym.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_03"); //....
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_04"); //I dales Torganowi reke. Odwiedziles obozy i pokonales strazników.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_05"); //Tak jest. Ale, czcigodny czlowiek, czy to prawda, ze jestem teraz przyjety do Rangers?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_06"); //(smiech) Hi, hi, hi, hi. zywiolowosc mlodziezy. Jest jedna mala rzecz, która musisz zrobic.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_07"); //Wtedy nic nie stanie na przeszkodzie waszemu nagraniu, mlodemu wojownikowi. Jakie jest Twoje imie i nazwisko?
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_08"); //Nie mam nazwiska.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_09"); //Brak nazwy? Fool! Kazde dziecko otrzymuje imie.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_10"); //Prosze mi wybaczyc, drogi, mialem imie. Jednak przysiega uniemozliwia mi ponowne wymawianie imienia.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_11"); //Niezwykla przysiega....
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_12"); //To moze byc prawda. Jednak zle wydarzenia w przeszlosci sklonily mnie do tego.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_13"); //Musi pan to zaakceptowac. Powiedz mi, ze masz cos dla mnie.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_14"); //Tak, tutaj.

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, Npc_HasItems(hero, ItWr_MagicPaper));

	if (Npc_HasItems(self, ItWr_MagicPaper) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_15"); //Odnalazlem te notatke u jednego z strazników. Torgan mówi, ze przynies to do Ciebie.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_16"); //Te notatki znalazlem u jednego z strazników i bandytów. Torgan powiedzial, ze przywiezie ja do Ciebie.
	};

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_17"); //Uh-huh. Komunikat.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_18"); //Ale poczekaj, ten zapis....
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_19"); //Tak?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_20"); //Cierpliwosc!

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_21"); //Hmm. Nie wydaje mi sie to tuszem. Jest to rodzaj marki.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_22"); //Hm.... Jakas magia. Hm.... Czarna magia, powiedzialbym. I niepewna aura....
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_23"); //Czarna magia? Aura?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_24"); //Oczywiscie. Stara czarna magia. Ale nie jestem pewien. Hmm.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_25"); //Czy jest cos, co moge zrobic, aby pomóc? Wiem jak radzic sobie z buffami i rzeczami.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_26"); //Idz? Nie. Ale mozesz isc. Do obozu bagiennego.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_27"); //Czcigodny?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_28"); //Popros o Baal Orun. Moze jego dlugotrwaly kontakt z sypialnia pomoze mu rozpoznac te magie.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_29"); //Chcesz, abym poszedl?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_30"); //Och, na pewno dosc. Wydaje mi sie, ze nahorynie warza nowe nieszczescia.

	if (Npc_HasItems(self, ItWr_MagicPaper) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_31"); //Oto dokument.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_32"); //Oto dokumenty.
	};

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, Npc_HasItems(self, ItWr_MagicPaper));

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Jeszcze nie lesniczy. Ale mysle, ze jestem blisko. Teraz pokaze Baalowi Orunowi w obozie bagnistym notatke, która wzialem od straznika. Moze zna aure wokól nuty.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cyrco_BaalOrun (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_BaalOrun_Condition;
	information	= Info_Mod_Cyrco_BaalOrun_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_BaalOrun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	&& (Npc_HasItems(hero, ItMi_SpezielleRune) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_BaalOrun_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_00"); //Ciesze sie, ze przyszedles. Czy widziales, co dzieje sie na zewnatrz?
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_01"); //Witaj, wielbiciele! To, co sie wydarzylo, to sie stalo.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_02"); //Ale mam dla Ciebie wiadomosci.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_03"); //Uslyszmy to, Ranger.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_04"); //Niebezpieczenstwo?
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_05"); //Oczywiscie tak sie dzieje. Jestes teraz czlonkiem obozu jako straznik.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_06"); //Mozesz tutaj robic zakupy i szkolic sie, jesli tego potrzebujesz.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_07"); //Ale po pierwsze, prosze o sprawozdanie.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_08"); //Znalazlem te rune na zewnatrz z jednym z napastników.

	B_GiveInvItems	(hero, self, ItMi_SpezielleRune, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_09"); //Musisz zobaczyc, co jest z tym nie tak.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_10"); //Dobre. I notatka?
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_11"); //Ten guru mial wizje.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_12"); //Widzial ja w poblizu jaskini otoczonej silna obecnoscia czarnej magii.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_13"); //Ostrzegl przed samotnym wyjazdem.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_14"); //Bardzo dobrze. Daje ci dwie osoby.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_15"); //Tak?
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_16"); //Oczywiscie. Mysle, ze jestescie najblizej tego miejsca.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_17"); //Tak. Wiem juz gdzie jaskinia ta jest.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_18"); //Bandyci z notatka siedzieli przed stara kopalnia. Jaskinia ta musi byc.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_19"); //Dobre. Chce spojrzec na te runde. Moze sie to przydac.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_20"); //Daj mi znac, kiedy bedziesz gotowy.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_21"); //Na zyczenie, mistrz.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Zglosilem sie do Cyrco i dalem mu rune. Podczas ich ogladania bede szukal dwóch towarzyszy, z którymi udam sie do starej kopalni. Najpierw mam wrócic do Cyrco.");
};

INSTANCE Info_Mod_Cyrco_SonorZelar (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_SonorZelar_Condition;
	information	= Info_Mod_Cyrco_SonorZelar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestesmy gotowi. Zabiore ze soba dwóch mezczyzn.";
};

FUNC INT Info_Mod_Cyrco_SonorZelar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonor_CyrcoMine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Zelar_CyrcoMine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_SonorZelar_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_00"); //Jestesmy gotowi. Zabiore ze soba dwóch mezczyzn.
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_01"); //Dobre, dobre, dobre, dobre. Oto jeszcze cos dla Ciebie. Amulet.

	B_GiveInvItems	(self, hero, ItAm_CyrcoMinenAmulett, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_02"); //Czy nie jestem wystarczajaco ubrany dla Ciebie?
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_03"); //Pudz! Ten amulet umozliwia sledzenie magii lub ogladanie jej iluzji. Wlóz to teraz.
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_04"); //Jak wygodny. Czy widze wtedy prawdziwa twarz ludzi?
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_05"); //Wyjsc stad!
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_06"); //Tak, ale....

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Cyrco dal mi kolejny amulet, który powinienem zalozyc na kopalnie najpózniej. Pozwoli mi to odnalezc magie i ukryta jaskinie.");
};

INSTANCE Info_Mod_Cyrco_MinenPart (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_MinenPart_Condition;
	information	= Info_Mod_Cyrco_MinenPart_Info;
	permanent	= 0;
	important	= 0;
	description	= "Misja zostala zakonczona, zabrzmiala, nie bylo ofiar.";
};

FUNC INT Info_Mod_Cyrco_MinenPart_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_SonorZelar))
	&& (Mod_JG_MinenPart == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_MinenPart_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_00"); //Misja zostala zakonczona, zabrzmiala, nie bylo ofiar.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_01"); //Kim wiec byl ten nieznany papier-en?
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_02"); //Nie bylo tam nikogo. Wystarczy kilka malych szkieletów i kilka zaklec.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_03"); //Na scianie stanela beliarska swiatynia, na której znajdowala sie platforma, ale to nie dziala.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_04"); //Ahh, tak. To pasuje do siebie. Dala mi pani wczesniej rune jest teleporta, która trzeba zaladowac na posag Beliara.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_05"); //W tym celu posag Beliara musi laczyc kosci szkieletu, goblina i krople wlasnej krwi.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_06"); //Co nie wiesz.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_07"); //Oczywiscie. Rupia wydaje sie dzialac tylko w poblizu platformy.

	B_GiveInvItems	(self, hero, ItMi_SpezielleRune, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_08"); //Uh-huh. A teraz mam....
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_09"); //Och, na pewno dosc.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_10"); //Jestem na drodze.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Pozwole sobie wrócic do pisania: powinienem wziac jedna duza i jedna mala kosc i jedna krople wlasnej krwi do sanktuarium w Beliarze. Wtedy runka dziala ponownie i moge kontynuowac. Ale to dziala tylko w poblizu platformy. Zobaczmy jak.....");
	
	Npc_RemoveInvItems(hero, ItAm_CyrcoMinenAmulett, 1);
};

INSTANCE Info_Mod_Cyrco_SuchenderZettel (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_SuchenderZettel_Condition;
	information	= Info_Mod_Cyrco_SuchenderZettel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z powodzeniem korzystalem z teleportera.";
};

FUNC INT Info_Mod_Cyrco_SuchenderZettel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_Hi))
	&& (Mod_JG_MinenPart == 4)
	&& (Npc_HasItems(hero, ItWr_JGSuchenderNotiz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_00"); //Z powodzeniem korzystalem z teleportera.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_01"); //Wyladowalem w zatopionej wiezy Xardas, gdzie spotkalem poszukiwacza.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_02"); //Powiedzial, ze wkrótce spotkamy sie znowu i bedziemy teleportuja.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_03"); //Nie jestem pewny, czy naprawde jest morderca za wszystkim.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_04"); //Te informacje znalazlem równiez tutaj.

	B_GiveInvItems	(hero, self, ItWr_JGSuchenderNotiz, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_05"); //Wyglada na to, ze poszukujacy chce nas oslabic, moze nawet nas zniszczyc.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_06"); //Dziwne jest, ze w tym dokumencie niemal nie odczuwam magicznej mocy, podczas gdy drugi niemal ja przesiakniety. Nie bardzo uspokajajace.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_07"); //Bede mial kazdego mysliwego i straznika szukajacego tego faceta. Dziekuje za pomoc.

	B_SetTopicStatus	(TOPIC_MOD_JG_GARDISTEN, LOG_SUCCESS);

	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_08"); //Och, jeszcze jedna rzecz.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_09"); //Tak?
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_10"); //Slyszalem wiesc o wypadku Dragomira i zebralem maly oddzial Rangersa z kompania, aby go wesprzec.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_11"); //Musimy utrzymac stanowisko w Khorinis, ale wydaje sie, ze mamy silnych przeciwników.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_12"); //Idz i zobacz Rangar. Musialby byc blisko przeleczy w Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_13"); //Powiedz mu, aby dolaczyl do grupy Ranger i wspieral Dragomira.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_14"); //Czy jestes w niebezpieczenstwie? Znam w miescie Rangara. Ale jest tam na strazy miejskiej....
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_15"); //Tak wlasnie jest. Musial sie on udac do mysliwych. To wlasnie sa moje informacje.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_16"); //Jest jeszcze jeden tego rodzaju. Nazywa sie Ruga.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_17"); //To prawda. Spotkalem go na Dragomiru. Jest nauczycielem kuszy.

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);

	Info_AddChoice	(Info_Mod_Cyrco_SuchenderZettel, "Dlaczego nie mozesz po prostu pozwolic wrócic Dragomirowi?", Info_Mod_Cyrco_SuchenderZettel_B);
	Info_AddChoice	(Info_Mod_Cyrco_SuchenderZettel, "Hm, dobrze. Zrobie to.", Info_Mod_Cyrco_SuchenderZettel_A);
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_B()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_B_15_00"); //Dlaczego nie mozesz po prostu pozwolic wrócic Dragomirowi? Byloby to bezpieczniejsze dla wszystkich!
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_B_38_01"); //Bo.... (Pauza) Przede wszystkim prosze przyjac do wiadomosci, ze w obecnej sytuacji nie mozemy sobie na to pozwolic.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_B_38_02"); //Oto kilka eliksirów dla niego. Rozpowszechnic je madrze.

	CreateInvItems	(hero, ItPo_Health_01, 10);
	CreateInvItems	(hero, ItPo_Mana_01, 10);

	B_ShowGivenThings	("20 Otrzymane koryto do picia");

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE, "Mam przyniesc kilka eliksirów Dragomirowi. Rangar, który otrzymuje eliksiry, powinien znajdowac sie w poblizu przeleczy.");

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_A()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_A_15_00"); //Hm, dobrze. Zrobie to.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_A_38_01"); //Dobre. Wez te uzdrawiajace i mana eliksiry dla niego.

	CreateInvItems	(hero, ItPo_Health_01, 10);
	CreateInvItems	(hero, ItPo_Mana_01, 10);

	B_ShowGivenThings	("20 Otrzymane koryto do picia");

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE, "Mam przyniesc kilka eliksirów Dragomirowi. Rangar, który otrzymuje eliksiry, powinien znajdowac sie w poblizu przeleczy.");

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);
};

INSTANCE Info_Mod_Cyrco_NovizePass (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_NovizePass_Condition;
	information	= Info_Mod_Cyrco_NovizePass_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spotkalem sie z magikiem-nowicjuszem.";
};

FUNC INT Info_Mod_Cyrco_NovizePass_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Novize_JG_Pass_Hi))
	&& (Npc_HasItems(hero, ItWr_NovizeJGPass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_NovizePass_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_NovizePass_15_00"); //Spotkalem sie z magikiem-nowicjuszem. Wygladal jak magik ognia.
	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_01"); //Inny kreator ognia? To dziwne. Czy mial cos na sobie?
	AI_Output(hero, self, "Info_Mod_Cyrco_NovizePass_15_02"); //Tak, wzialem te uwage od niego.

	B_GiveInvItems	(hero, self, ItWr_NovizeJGPass, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_03"); //Hm, przyjrzyjmy sie. Z jakiegos miejsca takie imie brzmi mi znane.
	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_04"); //Zapraszamy do Wulfgaru, jest on najlepiej zaznajomiony z nasza historia.

	B_GiveInvItems	(self, hero, ItWr_NovizeJGPass, 1);

	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_05"); //Znajdziesz go dalej w jaskini, gdzie ma swoje laboratorium alchemiczne.
};

INSTANCE Info_Mod_Cyrco_Turm (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Turm_Condition;
	information	= Info_Mod_Cyrco_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Turm))
	&& (Mod_SuchenderAtTurm == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Turm_38_00"); //Gdzie isc tak szybko?
	AI_Output(hero, self, "Info_Mod_Cyrco_Turm_15_01"); //Do Wiezy Mgly. Wulfgar mówi, ze powinienem to sprawdzic dla Khorgora.
	AI_Output(self, hero, "Info_Mod_Cyrco_Turm_38_02"); //Powodzenia! Badz ostrozny.
	AI_Output(hero, self, "Info_Mod_Cyrco_Turm_15_03"); //Wiem, ze......

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cyrco_DragoHilfeII (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_DragoHilfeII_Condition;
	information	= Info_Mod_Cyrco_DragoHilfeII_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_DragoHilfeII_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Turm2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_00"); //Zatrzymaj sie! Zatrzymaj sie tam!
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_01"); //Tak, niewierny?
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_02"); //Zle wiesci z Khorinis.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_03"); //Oh, oh, oh, oh. opowiadanie
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_04"); //Mezczyzni wokól Dragomiru sa pod silnym atakiem.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_05"); //Jestes w dobrej kondycji. Trzeba im pomóc. Od razu.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_06"); //Jestem na drodze.

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE2, "Dragomir potrzebuje pomocy. Zawsze ja.");
};

INSTANCE Info_Mod_Cyrco_DragoHilfeII2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_DragoHilfeII2_Condition;
	information	= Info_Mod_Cyrco_DragoHilfeII2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powrót od Khorinis.";
};

FUNC INT Info_Mod_Cyrco_DragoHilfeII2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_HilfeII))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_00"); //Powrót od Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_01"); //A co? Co to sa wiadomosci?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_02"); //Ataki na nowy obóz staja sie coraz bardziej brutalne. Bylismy w stanie uderzyc z trudem przeciwnika.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_03"); //Czy byly jakies ofiary?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_04"); //Niestety. Dzik upadl, Nandor zostal ciezko ranny.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_05"); //Czy dostales uzdrowiciela?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_06"); //Dragomir poinformuje o tym ziolo czarownice.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_07"); //Bardzo dobry. Mozesz zostac wyslany. Niniejszym wyznaczam Pana straznika trzeciego stopnia.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_08"); //Co to znaczy?
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_09"); //Tu dostajesz te zbroje.

	B_GiveInvItems	(self, hero, ItAr_Waldlaeufer_01, 1);

	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_10"); //Mozesz wybrac pomiedzy lukiem kosci a kusza wojenna.

	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cyrco_DragoHilfeII2);

	Info_AddChoice	(Info_Mod_Cyrco_DragoHilfeII2, "Lubie teczówke.", Info_Mod_Cyrco_DragoHilfeII2_B);
	Info_AddChoice	(Info_Mod_Cyrco_DragoHilfeII2, "Lubie luk.", Info_Mod_Cyrco_DragoHilfeII2_A);
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_C()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_00"); //Dopasuj sie do siebie.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_C_15_01"); //Dziekuje panu, panie posle.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_02"); //Adanos jest z wami.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_03"); //Wróc do domu pózniej.
	
	Info_ClearChoices	(Info_Mod_Cyrco_DragoHilfeII2);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_B()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_B_15_00"); //Lubie teczówke.
	
	B_GiveInvItems	(self, hero, ItRw_Crossbow_M_02, 1);

	Info_Mod_Cyrco_DragoHilfeII2_C();
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_A()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_A_15_00"); //Lubie luk.
	
	B_GiveInvItems	(self, hero, ItRw_Bow_H_01, 1);

	Info_Mod_Cyrco_DragoHilfeII2_C();
};

INSTANCE Info_Mod_Cyrco_Opferschale (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Opferschale_Condition;
	information	= Info_Mod_Cyrco_Opferschale_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Opferschale_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_ScrollJG2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Opferschale_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_00"); //Ciesze sie, ze przyszedles.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_01"); //Co teraz jest najwazniejsze?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_02"); //Lepiej zapytac, co nie jest.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_03"); //Co nie?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_04"); //Nasza sila robocza.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_05"); //Oznacza to, ze potrzebujemy wiecej ludzi?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_06"); //Oczywiscie. Stracilismy tu dwóch mezczyzn, Dragomira trzy, o ile wiem.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_07"); //To prawda. I o kim myslales?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_08"); //Bojownicy meczaków, których mozemy uzyc. Melee.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_09"); //Hmm. Mysle, ze na farmie Onar zawsze jest kilku najemników. Moze o to zapytac.
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_10"); //I nowy magazyn?
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_11"); //Zobaczmy, co sie tam dzieje.
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_12"); //Zrób to.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_13"); //Rozumiem. Nawiasem mówiac, czy wiesz cos o misie ofiarniczej?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_14"); //Masz na mysli pewna miske?
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_15"); //Wlasciwie tak. Ale co jest pewne? Zapytam Wulfgar.

	Log_CreateTopic	(TOPIC_MOD_JG_NAHKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_NAHKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Chca, abym zatrudnil w Rangers przynajmniej dwóch mezczyzn. Dookola wisza ludzie. I moge zapytac w nowym magazynie.");
};

INSTANCE Info_Mod_Cyrco_Nahkampf (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Nahkampf_Condition;
	information	= Info_Mod_Cyrco_Nahkampf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Misja zostala zrealizowana. Czy mysliwce przybyli jeszcze?";
};

FUNC INT Info_Mod_Cyrco_Nahkampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Nahkampf2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Nahkampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_00"); //Misja zostala zrealizowana. Czy mysliwce przybyli jeszcze?
	AI_Output(self, hero, "Info_Mod_Cyrco_Nahkampf_38_01"); //Jedno tak. Juz trenuje z mysliwymi. Wydaje mi sie, ze to zdolny czlowiek.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_02"); //Dobre slyszenie. Druga pochodzi od Onars Hof.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_03"); //Musialem jednak tam jednak obiecac przywódcy, ze w zamian wyslesz mysliwego do Khorinisa.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_04"); //Mam nadzieje, ze tak wlasnie bylo w panskim umysle.
	AI_Output(self, hero, "Info_Mod_Cyrco_Nahkampf_38_05"); //Och, na pewno dosc. Wazniejszy jest tu bojownik meczowy. Wyslim sonor, kiedy nowy gosc dotrze tutaj.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Cyrco w ramach wymiany wysle Sonora do Lares.");
	B_SetTopicStatus	(TOPIC_MOD_JG_NAHKAMPF, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7679_SLD_Falin_JL,	"JL_45");
};

INSTANCE Info_Mod_Cyrco_Sweetwater (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Sweetwater_Condition;
	information	= Info_Mod_Cyrco_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czcigodny, godny zaufania. Czy to nowy facet?";
};

FUNC INT Info_Mod_Cyrco_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Nahkampf))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater_15_00"); //Witaj, ks. Czy to nowy facet?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater_38_01"); //Z pewnoscia, ze to tez jest stolek. I juz wkrótce wyslij wiadomosc.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater_15_02"); //Dla mnie?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater_38_03"); //Dokladnie. Cwiczy w tyle.
};

INSTANCE Info_Mod_Cyrco_Sweetwater2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Sweetwater2_Condition;
	information	= Info_Mod_Cyrco_Sweetwater2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Sweetwater2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Sweetwater2))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Sweetwater2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_00"); //Wracasz. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_01"); //Ludzie w Jharkendarzu mieli problemy z woda. Cóz!
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_02"); //Jharkendar?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_03"); //Oczywiscie. Nowy obszar poza Khorinis.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_04"); //Móglby on byc zlokalizowany na zachód od Relendel, ale jest niedostepny i mozna sie do niego dostac tylko przez portal.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_05"); //Magicy od wody odkryli to z moja pomoca.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_06"); //Ciekawe. Jak tam dotrzec?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_07"); //Jak juz wczesniej mówilem, poludniowo-wschodnia czesc przejscia do Relendel to duza, stara swiatynia, obok jest miejscem wykopalisk i wewnatrz portalu.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_08"); //Z czego, Relendel. Slyszalem, ze wymyslili nowa recepture.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_09"); //Opowiadaja sobie nawzajem prawdziwe cuda. Nikt jednak nie wie dokladnie co. Powinienes byc......
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_10"); //... Zobacze tam. Wiem. Nawiasem mówiac, nazywa sie to rozkoszem.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_11"); //Zmienic postrzeganie. Ludzie sa coraz dziwniejsi.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_12"); //Jestem osobiscie zainteresowana. Nie zrobilbys tego za nic.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_13"); //Co to znaczy?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_14"); //Mam tytul do rozdania....
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_15"); //Widze. Jesli nic innego sie nie dzieje.....
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_16"); //Nie, nie w tej chwili. Nie mozemy jednak zapominac o tym Khorgorze.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_17"); //Oczywiscie nie. Do zobaczenia pózniej.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_18"); //Adanos z toba!

	Log_CreateTopic	(TOPIC_MOD_JG_RELENDEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_RELENDEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_RELENDEL, "Cyrco chce, abym poszedl do Khoraty i szukal smakolyków.");
};

INSTANCE Info_Mod_Cyrco_Drachental (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Drachental_Condition;
	information	= Info_Mod_Cyrco_Drachental_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powrócilem, Panie. Otrzymalem wiele do zgloszenia.";
};

FUNC INT Info_Mod_Cyrco_Drachental_Condition()
{
	if (Mod_JG_SuchenderDT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Drachental_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_00"); //Powrócilem, Panie. Otrzymalem wiele do zgloszenia.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_01"); //(znosne) I? Czy....?

	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 2)
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_02"); //Och, na pewno dosc. Oto dwie fiolki.

		B_GiveInvItems	(hero, self, ItMi_Freudenspender, 2);

		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_03"); //Dobre. I czy wiesz jak....
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_04"); //Niestety, nie. Nawet mieszkancy Khoraty nie wiedza, jak to jest warzone.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_05"); //Ale skad sie biora?
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_06"); //Jest enklawe nazywana gdzies sadem. Wydaje mi sie, ze stad wlasnie pochodzi.
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_07"); //Zanim zapytasz: Tylko nieliczni moga wejsc do tego obszaru.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_08"); //Bardzo dobrze. Jak to dziala?
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_09"); //Podobnie jak chwast bagienny. Tylko o wiele bardziej intensywne. I uzalezniasz sie od niej.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_10"); //Niestety, nie.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_11"); //Hmm..... bardzo smutny
	};

	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_12"); //Ale czy to wszystko, czego chcesz wiedziec?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_13"); //Przez Adanosa nie! Czego jeszcze sie nauczyles?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_14"); //Ten poszukiwacz, który spowodowal naloty na mysliwych i obóz jest martwy.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_15"); //Rozmawiaj dalej. Skad to wiesz?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_16"); //W koncu go dostalem. Mieszkal w malej dolinie.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_17"); //I mysle, ze ten Khorgor tez mozna tam znalezc.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_18"); //A dlaczego nie tylko....?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_19"); //Spowolniony, starszy mezczyzna. Wrzucono mnie z powrotem do skrytej jaskini kolo Starej Kopalni.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_20"); //Tylko tutaj, aby zlozyc sprawozdanie. A co z nagrodzonym tytulem?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_21"); //Hm.... pierwszorzedny straznik. W prawo, przyprowadz mnie glowa Khorgora, a ja ci podam range najwyzszego straznika.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_22"); //To jest slowo. Masz jakas rade?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_23"); //Czy nadal masz ten dziwny prostopadloscian runowy?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_24"); //Tak jest. Ale potrzeba czaszy ofiarniczej.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_25"); //Ona bedzie tam, kiedy bedzie jej potrzebna.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_26"); //Mam nadzieje, ze dobrze.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_27"); //Powodzenia, biegacze!
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_28"); //Dziekuje panu, panie posle.

	B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Zgloszony do Cyrco. Mnie powoluje glowe na lesniczego, kiedy przynosze mu glowe Khorgora. I przypomnial mi o tej dziwnej prostopadlej runie. Zobaczmy teraz.");
};

INSTANCE Info_Mod_Cyrco_Khorgor (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Khorgor_Condition;
	information	= Info_Mod_Cyrco_Khorgor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Khorgor_Condition()
{
	if (Mod_JG_Khorgor == 2)
	&& (Npc_HasItems(hero, ItAt_KhorgorKopf) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Khorgor_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor_38_00"); //Adanos by Cie pozdrowic!
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor_15_01"); //Oto zbalansowac Mistrza.
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor_38_02"); //Sprawozdania. Co musisz zglosic?
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor_15_03"); //Bezglowy, szalony magik. Chcial stworzyc absolutny chaos. I opanuj to.

	B_GiveInvItems	(hero, self, ItAt_KhorgorKopf, 1);

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Cyrco_Khorgor2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Khorgor2_Condition;
	information	= Info_Mod_Cyrco_Khorgor2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Khorgor2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Khorgor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Khorgor2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor2_38_00"); //Tak wiec otrzymacie przyrzeczone poswiecenie. Niniejszym wyznaczam Pana straznika pierwszego stopnia. Wulfgar jest moim swiadectwem.
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor2_15_01"); //Dziekczynienie podsluzbowe, Mistrz. Zawsze do dyspozycji. Ale teraz musze wrócic do Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor2_38_02"); //Och, na pewno dosc. Zycze powodzenia.

	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENTAL, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Cyrco_Pickpocket (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Pickpocket_Condition;
	information	= Info_Mod_Cyrco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Cyrco_Pickpocket_Condition()
{
	C_Beklauen	(175, ItMi_Gold, 97);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

	Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_BACK, Info_Mod_Cyrco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cyrco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cyrco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cyrco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cyrco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cyrco_EXIT (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_EXIT_Condition;
	information	= Info_Mod_Cyrco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cyrco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cyrco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
