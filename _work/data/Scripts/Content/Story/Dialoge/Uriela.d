INSTANCE Info_Mod_Uriela_GoOutOfHere (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_GoOutOfHere_Condition;
	information	= Info_Mod_Uriela_GoOutOfHere_Info;
	permanent	= 1;
	important	= 0;
	description	= "Opusc ten dom i wyciagnij z niego pieklo!";
};

FUNC INT Info_Mod_Uriela_GoOutOfHere_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hausbesetzer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_GoOutOfHere_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_GoOutOfHere_15_00"); //Opusc ten dom i wyciagnij z niego pieklo!
	AI_Output(self, hero, "Info_Mod_Uriela_GoOutOfHere_17_01"); //Nie, nie zostaniemy stad odsunieci.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Uriela_WhoAreYou (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_WhoAreYou_Condition;
	information	= Info_Mod_Uriela_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes i co robisz tutaj?";
};

FUNC INT Info_Mod_Uriela_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hausbesetzer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_WhoAreYou_15_00"); //Kim jestes i co robisz tutaj?
	AI_Output(self, hero, "Info_Mod_Uriela_WhoAreYou_17_01"); //Wierzymy w wyznawców Beliaranu, którzy musieli uciec z wyspy Khorala i szukaja nowego miejsca na pobyt.
};

INSTANCE Info_Mod_Uriela_WhyFlight (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_WhyFlight_Condition;
	information	= Info_Mod_Uriela_WhyFlight_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego musiales uciec?";
};

FUNC INT Info_Mod_Uriela_WhyFlight_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_WhyFlight_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_WhyFlight_15_00"); //Dlaczego musiales uciec?
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_01"); //Postacie niegodziwego maga o imieniu Xeres wkroczyly do naszej osady i zazadaly, abysmy zaparli sie Beliara i zamiast tego sluzyli Panu ich.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_02"); //Niezlomnie odmówilismy i zostalismy przez nich zaatakowani.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_03"); //Jak sie okazalo, oni tez byli mistrzami kulistej manifestacji i zdolali tez przyprowadzic pod swoja kontrole niektóre z naszych stworzen.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_04"); //Stracilismy i moglismy sie ocalic tylko dzieki szybkiemu teleportowi na tej wyspie - jako jedni z niewielu ocalalych.
};

INSTANCE Info_Mod_Uriela_FarmWorking (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_FarmWorking_Condition;
	information	= Info_Mod_Uriela_FarmWorking_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gospodarstwo to jest juz zamieszkane przez czesc ludzi.";
};

FUNC INT Info_Mod_Uriela_FarmWorking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_WhyFlight))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_FarmWorking_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_FarmWorking_15_00"); //Gospodarstwo to jest juz zamieszkane przez czesc ludzi.
	AI_Output(self, hero, "Info_Mod_Uriela_FarmWorking_17_01"); //A? Co powinnismy zrobic? Potrzebujemy równiez schronienia.
};

INSTANCE Info_Mod_Uriela_LiveTogether (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_LiveTogether_Condition;
	information	= Info_Mod_Uriela_LiveTogether_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie mozesz tu mieszkac?";
};

FUNC INT Info_Mod_Uriela_LiveTogether_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_FarmWorking))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_LiveTogether_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_LiveTogether_15_00"); //Czy nie mozesz tu mieszkac?
	AI_Output(self, hero, "Info_Mod_Uriela_LiveTogether_17_01"); //Z nimi? Prawdopodobnie sa oni tylko slugami Innos ". Jak by to funkcjonowalo?
	AI_Output(hero, self, "Info_Mod_Uriela_LiveTogether_15_02"); //Oni równiez poniesli straty z tego samego przyjaciela. Jest on zagrozeniem dla wszystkich slug Inno, jak równiez dla slug Beliara.
	AI_Output(self, hero, "Info_Mod_Uriela_LiveTogether_17_03"); //Hmm, byc moze masz racje. W tych okolicznosciach nie mam zastrzezen do tymczasowej wspólpracy.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Sa slugami Beliara, który musial uciec przed poplecznikami Xeresów. Zgodza sie oni mieszkac razem z innymi w gospodarstwie przez pewien czas. Mam nadzieje, ze Telbor równiez moze sie przekonac.");
};

INSTANCE Info_Mod_Uriela_LiveOtherway (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_LiveOtherway_Condition;
	information	= Info_Mod_Uriela_LiveOtherway_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie wyobrazasz sobie wyjazdu gdzies indziej?";
};

FUNC INT Info_Mod_Uriela_LiveOtherway_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_TalkAgain))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_LiveOtherway_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_LiveOtherway_15_00"); //Czy nie wyobrazasz sobie wyjazdu gdzies indziej?
	AI_Output(self, hero, "Info_Mod_Uriela_LiveOtherway_17_01"); //Co? Ale dokad idziesz? Dopóki nie bedziemy mieli innej mozliwosci, pozostaniemy tutaj.
};

INSTANCE Info_Mod_Uriela_ThinkForPlace (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_ThinkForPlace_Condition;
	information	= Info_Mod_Uriela_ThinkForPlace_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, niech mi sie pomysli, moze cos pomysle.";
};

FUNC INT Info_Mod_Uriela_ThinkForPlace_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_LiveOtherway))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_ThinkForPlace_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_ThinkForPlace_15_00"); //Cóz, niech mi sie pomysli, moze cos pomysle.
};

INSTANCE Info_Mod_Uriela_MageAndFighter (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_MageAndFighter_Condition;
	information	= Info_Mod_Uriela_MageAndFighter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestescie magicznie uzdolnieni, na pewno wiecie cos o rolnictwie (....). )";
};

FUNC INT Info_Mod_Uriela_MageAndFighter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_ThinkForPlace))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_MageAndFighter_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_MageAndFighter_15_00"); //Jestes magicznie utalentowany, masz troche wiedzy o rolnictwie i prawdopodobnie mozesz walczyc z bronia.
	AI_Output(hero, self, "Info_Mod_Uriela_MageAndFighter_15_01"); //Czarodzieje demonów, demoniczni wojownicy lub duze gospodarstwo na pewno cie wciagna.
	AI_Output(self, hero, "Info_Mod_Uriela_MageAndFighter_17_02"); //Jestesmy magicznie utalentowani, ale nie rozumiemy samych siebie w magii runowej.
	AI_Output(self, hero, "Info_Mod_Uriela_MageAndFighter_17_03"); //I mój syn nie jest tak dobry w walce z bronia.
};

INSTANCE Info_Mod_Uriela_Bengar (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Bengar_Condition;
	information	= Info_Mod_Uriela_Bengar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gospodarstwo Bengara jest opuszczone.";
};

FUNC INT Info_Mod_Uriela_Bengar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_ThinkForPlace))
	&& (Mod_BengarsHofLeer == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Bengar_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Bengar_15_00"); //Gospodarstwo Bengara jest opuszczone. Nalezy przejsc przez most i nastepnym razem skrecic w prawo na plaskowyz pastwiskowy.
	AI_Output(self, hero, "Info_Mod_Uriela_Bengar_17_01"); //Dobrze brzmi i jesli uda nam sie uniknac dalszych konfliktów w ten sposób....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7168_HEX_Hexe_NW, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7169_OUT_Mann_NW, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7170_OUT_Mann_NW, "ATBENGAR");

	Wld_InsertNpc	(FeldarbeiterSkelett_Bengar, "FARM3");

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "No cóz, Belianie zmierzaja do swojego nowego domu. Teraz musze tylko poinformowac Telbora, ze dom jest ponownie wolny.");
};

INSTANCE Info_Mod_Uriela_TeachMage (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_TeachMage_Condition;
	information	= Info_Mod_Uriela_TeachMage_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Okrag 1 i 2 programu nauczania Runemagic)";
};

FUNC INT Info_Mod_Uriela_TeachMage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_MageAndFighter))
	&& (Mod_MagieKreis >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_TeachMage_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_00"); //Pierwsze kolo pozwala na uzycie utworzonych przez Ciebie run.
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_01"); //Mozesz teraz nauczyc sie formul zaklec, aby tworzyc wlasne runy.
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_02"); //Wejdz do drugiego kola i naucz sie rzucac jeszcze mocniejsze czary.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Uriela_TeachingFinished (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_TeachingFinished_Condition;
	information	= Info_Mod_Uriela_TeachingFinished_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nauczylem cie.";
};

FUNC INT Info_Mod_Uriela_TeachingFinished_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mann_TeachFight))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_TeachingFinished_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_00"); //Nauczylem cie.

	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	{
		AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_01"); //Jestes teraz potezny w magii runów.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Mann_TeachFight))
	{
		AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_02"); //Twój syn moze walczyc.
	};

	AI_Output(self, hero, "Info_Mod_Uriela_TeachingFinished_17_03"); //Dziekuje bardzo. Teraz mozemy spojrzec gdzie indziej i zrobic cos wiecej niz tylko wybrac rzepe.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATDEMON");
	B_StartOtherRoutine	(Mod_7168_HEX_Hexe_NW, "ATDEMON");
	B_StartOtherRoutine	(Mod_7169_OUT_Mann_NW, "ATDEMON");
	B_StartOtherRoutine	(Mod_7170_OUT_Mann_NW, "ATDEMON");

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "No cóz, Belianie zmierzaja do swojego nowego domu. Teraz musze tylko poinformowac Telbora, ze dom jest ponownie wolny.");
};

INSTANCE Info_Mod_Uriela_Verbatscht (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Verbatscht_Condition;
	information	= Info_Mod_Uriela_Verbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Uriela_Verbatscht_Condition()
{
	if (Mod_UrielaCo_Weg == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Verbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Uriela_Verbatscht_17_00"); //Beliar za to ukarze cie, oszukasz.

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Uriela_Irdorath (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath_Condition;
	information	= Info_Mod_Uriela_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Uriela_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_00"); //Milosc, aby cie ponownie zobaczyc. Jak Pan/Pani byl/a?
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_01"); //Jakich wiadomosci warto wspomniec?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_02"); //Cóz, wciaz zyje i wyslalem jakies paskudne bestie do królestwa Beliara.
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_03"); //Z magia i rappenem Schustera zwiedzilem wiele miejsc na wyspie, ale dokad musze isc dalej, tylko statek moze mnie przewiezc.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_04"); //Tak naprawde planujesz podróz oceaniczna?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_05"); //Tak, na wyspe, aby polozyc stopke ciemnego Xerere.....
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_06"); //Co? Ohydny magik, który jest odpowiedzialny za zniszczenie mojej osady, ten, który próbuje wygnac mojego Pana Beliara?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_07"); //To jedno prawo tutaj.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_08"); //Jesli jest w zasiegu waszych mozliwosci, pozwole sobie towarzyszyc wam podczas tej wycieczki.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_09"); //Byloby to dla mnie wazne. W koncu zadoscuczynienie zemsty na niegodziwca za swoje wykroczenia.....
};

INSTANCE Info_Mod_Uriela_Irdorath2 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath2_Condition;
	information	= Info_Mod_Uriela_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ciesze sie, ze bede mógl wzbogacic zespól o kogos, kto rozumie magie czarownic.";
};

FUNC INT Info_Mod_Uriela_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath2_15_00"); //Ciesze sie, ze bede mógl wzbogacic zespól o kogos, kto rozumie magie czarownic. Zapraszamy do portu.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath2_17_01"); //Bede, to zrobie.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Uriela szuka zemsty na Xeres i czeka w porcie.");

	B_GivePlayerXP	(100);

	Mod_UrielaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Uriela_Irdorath3 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath3_Condition;
	information	= Info_Mod_Uriela_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Uriela_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_UrielaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath3_17_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_UrielaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Uriela_Irdorath4 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath4_Condition;
	information	= Info_Mod_Uriela_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Uriela_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_UrielaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath4_17_01"); //Bardzo dobrze, wróce do portu.

	Mod_UrielaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Uriela_EXIT (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_EXIT_Condition;
	information	= Info_Mod_Uriela_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Uriela_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Uriela_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
