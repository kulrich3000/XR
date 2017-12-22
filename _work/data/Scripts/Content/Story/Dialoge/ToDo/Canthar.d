INSTANCE Info_Mod_Canthar_Port (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_Port_Condition;
	information	= Info_Mod_Canthar_Port_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_Port_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brahim_Flora))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_Port_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_00"); //Jest pan tam teraz. Prawie spodziewalem sie, ze przetrwasz atak.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_01"); //A teraz zadzwoniles do mnie na konto. No cóz, nie bedziecie mogli.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_02"); //Ale twoje umiejetnosci zaskoczyly mnie. Wykonales swietna prace. Aby byc po bezpiecznej stronie, zamierzam przejsc na emeryture na chwile teraz, aby umozliwic rozwój.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_03"); //Mozesz miec pewnosc, ze ogladam kazdy krok z Was od kiedy mialem walizke. No cóz, jesli nie przeszkadzasz, zabiore ci dobre rzeczy. Nie wiesz ile warte sa tam zdjecia.

	if (Npc_HasItems(hero, ItMi_PortsKoffer) == 1)
	{
		Npc_RemoveInvItems	(hero, ItMi_PortsKoffer, 1);
	}
	else
	{
		Wld_RemoveItem	(ItMi_PortsKoffer);

		AI_Output(self, hero, "Info_Mod_Canthar_Port_09_04"); //Widze, ze próbujesz to ukryc. Wtedy po prostu bede musial zatrudnic jednego z moich pomocników, aby go poszukac.
	};

	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_05"); //Dobry Brahim prawie udaremnil mnie dostajac walizke, wysylajac cie do tego glupiego kupca. To wlasnie z jego winy musial umrzec. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_06"); //Mam wrazenie, ze zawsze pracowal przeciwko mnie tak bardzo, ze nie zauwazylem zadnego z nich. Ale bedzie widzial kare wystarczajaco szybko.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_07"); //Mówilem wiec wystarczajaco duzo teraz. Kiedy przyjdzie dzien, wróce i powoli cie rozerwe.
	AI_Output(self, hero, "Info_Mod_Canthar_Port_09_08"); //Zapytaj Moe' a, dowie sie, ze jestem z powrotem.
	
	Log_CreateTopic	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_MOE_PORT, TOPIC_MOD_CANTHAR_GESCHAEFTE, "Kantar jest mastermina. Nakazal zabójstwo Portów i Kunosa. Kiedy poszedlem do niego zobaczyc, ukradl moja walizke i zapowiedzial, ze wycofa sie na razie, ale w któryms momencie wróci. Moe wie o tym.", "Od tamtej pory interweniowalem w jednym z zakladów firmy Canthar i bylem w jego polu widzenia. Oglosil, ze po powrocie 'rozstrzygnie mnie'. Zobaczmy, co sie z niej rozwija.....");
	B_SetTopicStatus	(TOPIC_MOD_MOE_PORT, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLEEING");

	CurrentNQ += 1;
};

var int OptionenCanthar;

INSTANCE Info_Mod_Canthar_AtLager (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_AtLager_Condition;
	information	= Info_Mod_Canthar_AtLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_AtLager_Condition()
{
	if (Mod_CantharQuest_Last == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_AtLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_09_00"); //Na nogach znów? Ciesz sie, bo to bedzie ostatni raz.

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Wstapilem do pulapki Canthara. Ale nie wydaje mi sie to az tak uciazliwe. Przeciez jestem tam, gdzie chcialem byc: w lonie lwa.");

	Info_ClearChoices	(Info_Mod_Canthar_AtLager);

	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Chodzcie tutaj, tu sie tu, tu sie jezdzi!", Info_Mod_Canthar_AtLager_D);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Dlaczego Moe musial umrzec?", Info_Mod_Canthar_AtLager_C);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Co zrobiles z moim sprzetem?", Info_Mod_Canthar_AtLager_B);
	Info_AddChoice	(Info_Mod_Canthar_AtLager, "Dlaczego nie zabiles mnie dawno temu?", Info_Mod_Canthar_AtLager_A);
};

FUNC VOID Info_Mod_Canthar_AtLager_E()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_00"); //Musze przyznac, ze mam dosc nudnych pytan.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_01"); //Swedze pod palcami, aby patrzec, jak umrzesz. Wiec zetknij sie z walka!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_E_15_02"); //Co powstrzymuje mnie przed ucieczka?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_E_09_03"); //Co? Nie odniesiesz sukcesu!

	Info_ClearChoices	(Info_Mod_Canthar_AtLager);

	AI_StopProcessInfos	(self);

	Mod_CantharQuest_Last = 6;
};

FUNC VOID Info_Mod_Canthar_AtLager_D()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_D_15_00"); //Chodzcie tutaj, tu sie tu, tu sie jezdzi!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_D_09_01"); //Cóz, teraz nie zacznij od obelg.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_D_09_02"); //Ale milo zobaczyc, jak latwo jest cie prowokowac. To sprawi, ze walka bedzie jeszcze bardziej przyjemna.
};

FUNC VOID Info_Mod_Canthar_AtLager_C()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_C_15_00"); //Dlaczego Moe musial umrzec?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_01"); //Nie rozumiesz, czy? To tez jest troche trudne.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_02"); //Ale to dlatego, ze cie pomógl.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_C_09_03"); //Gdyby zatrzymal sie po moim pierwszym ostrzezeniu, umarlby przynajmniej szybko.....

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};
};

FUNC VOID Info_Mod_Canthar_AtLager_B()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_B_15_00"); //Co zrobiles z moim sprzetem?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_B_09_01"); //Ach, jest w bezpiecznym miejscu na drugim koncu naszego stroju.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_B_09_02"); //Ale nie bedziesz jej potrzebowal dluzej. (smiertelnicy)

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Wedlug Canthara, mój sprzet jest ukryty gdzies w tym bezpiecznym domu. Prawdopodobnie powinienem ja znalezc, zanim ja napotkam.");

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};

};

FUNC VOID Info_Mod_Canthar_AtLager_A()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager_A_15_00"); //Dlaczego nie zabiles mnie dawno temu?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_A_09_01"); //Czy wiesz, co zrobiles dla mnie?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager_A_09_02"); //Nie, zginiesz wlasna reka!

	OptionenCanthar += 1;

	if (OptionenCanthar == 3)
	{
		Info_Mod_Canthar_AtLager_E();
	};
};

var int OptionenCanthar2;

INSTANCE Info_Mod_Canthar_AtLager2 (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_AtLager2_Condition;
	information	= Info_Mod_Canthar_AtLager2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Canthar_AtLager2_Condition()
{
	if (Mod_CantharQuest_Last == 7)
	&& (Npc_IsDead(Mod_7211_NONE_Schlaeger_NW))
	&& (Npc_IsDead(Mod_7212_NONE_Schlaeger_NW))
	&& (Npc_IsDead(Mod_7213_NONE_Schlaeger_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Canthar_AtLager2_Info()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_00"); //Byc moze myslisz, ze jestes juz na koncu.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_01"); //Tylko ja stoje miedzy wami a wasza nieskonczona chwala. Ale badzcie pewni, to nie tak!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_02"); //Co próbujesz mi powiedziec?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_03"); //Nic nie zrozumiales. Ale pamietaj moje slowa, zapamietasz je!
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_04"); //Spowolnijmy. Teraz powiedz mi, co to wszystko zalezalo od calej rakiety.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_05"); //Dlaczego moje zarobki w zlodziejskiej gildii nie wystarczaly i dlaczego zbudowalem sobie drugie istnienie?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_06"); //Gildia zlodziei przezyla, ale nie przyszla do zycia.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_07"); //Czy w Beliar powinienem zbierac sekstanty przez caly dzien i ulatwiac stare farsy na kieszeniach?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_08"); //Gdzie jest wyzwanie, radosc?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_09"); //My nie jestesmy tak bardzo róznimy sie miedzy soba, Ty i ja.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_10"); //Jesli sie nad tym zastanowisz, przekonasz sie.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_11"); //Z wyjatkiem zabiles mojego syna i zlamalem mój biznes.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_15_12"); //Nie chcemy sprzeniewierzac swojego sumienia Moego i innych zmarlych ludzi.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_09_13"); //Masz odwage porównac je z moim synem?

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Canthar powiedzial w naszej ostatniej rozmowie, ze nie byl on ostatnim przypadkiem na mojej drodze do sukcesu. Co Pan sadzi, ze mial na mysli?");

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Oplaty za przejazd byly zbyt wysokie po wszystkich stronach.", Info_Mod_Canthar_AtLager2_C);
	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Jak gdyby syn stal sie czyms lepszym niz ojciec!", Info_Mod_Canthar_AtLager2_B);
	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Kazda osoba ma te sama wartosc.", Info_Mod_Canthar_AtLager2_A);
};

FUNC VOID Info_Mod_Canthar_AtLager2_D()
{
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_D_09_00"); //Teraz nieuchronnie walczymy. Nie do unikniecia?
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_D_15_01"); //W tym pojedynku nie bedziesz mial szansy.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_D_09_02"); //Czy mozesz mi powiedziec cos, czego jeszcze nie wiem?

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Zamknijmy ja!", Info_Mod_Canthar_AtLager2_F);

	if (OptionenCanthar2 == 1)
	{
		Info_AddChoice	(Info_Mod_Canthar_AtLager2, "Wybaczam wam.", Info_Mod_Canthar_AtLager2_E);
	};
};

FUNC VOID Info_Mod_Canthar_AtLager2_C()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_C_15_00"); //Oplaty za przejazd byly zbyt wysokie po wszystkich stronach.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_C_09_01"); //Ma pani racje. (retoryczne) Ale co powinnismy teraz z tym zrobic?

	OptionenCanthar2 = 1;

	Info_Mod_Canthar_AtLager2_D();
};

FUNC VOID Info_Mod_Canthar_AtLager2_B()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_B_15_00"); //Jak gdyby syn stal sie czyms lepszym niz ojciec!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_B_09_01"); //(Cisza zmarlych)

	Info_Mod_Canthar_AtLager2_D();

};

FUNC VOID Info_Mod_Canthar_AtLager2_A()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_A_15_00"); //Kazda osoba ma te sama wartosc.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_A_09_01"); //Nie daj sie zwiesc, nie podazaj za tym. Ile osób zmarlo z twojego wplywu?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_A_09_02"); //Pomyslcie o tym zanim przyjdziecie do mnie z kazaniami!

	Info_Mod_Canthar_AtLager2_D();
};

FUNC VOID Info_Mod_Canthar_AtLager2_F()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_F_15_00"); //Zamknijmy ja!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_F_09_01"); //Tak, ale nie zgodnie z planem. (Pauza) Postanowilem nie stawiac ci czola.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_F_15_02"); //Czym sie zajmujesz?

	Mod_CantharSelbstmord = 1;

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Kantar zmarl. Mam nadzieje, ze juz nie mam klopotów.");
};

FUNC VOID Info_Mod_Canthar_AtLager2_E()
{
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_00"); //Wybaczam wam.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_01"); //Jak? Co? Nie, ale.....
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_02"); //Jestes brudnym molanem, ale ja tez nie chce cie zabijac.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_03"); //Czy powinienem cie zaatakowac? To bylby mój upadek.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_04"); //Czy moge zyc z wstydem, który chcialbys mi przyniesc? Bylbym nieszczesliwy na zawsze.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_05"); //Rozpocznij nowe zycie. Daleko stad.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_06"); //Moge to zrobic? Chociaz.... Moze warunki tam panuja lepsze.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_07"); //Jakie warunki?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_08"); //Co bym tam zrobil? Zyc regularna egzystencja? Pah!
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_09"); //Akceptuje wasza szlachetna ofiare pokoju.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_10"); //Ale musisz wiedziec, ze nie jestem najwiekszym zwierzeciem w naszej organizacji.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_11"); //Kim to jest?
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_12"); //Nie wiem o tym. Nie znam pracodawcy.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_13"); //Kiedys spotykalismy sie w ciemnosci w magazynie przeladunkowym.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_14"); //Ale kiedy wrócisz do Khorinis, jestem pewien, ze poznasz go.
	AI_Output(hero, self, "Info_Mod_Canthar_AtLager2_E_15_15"); //Dziekujemy za informacje. Teraz nalezy zachowac ostroznosc.
	AI_Output(self, hero, "Info_Mod_Canthar_AtLager2_E_09_16"); //Jestes bardziej rozsadny niz pomyslalem. Oto klucz do drzwi zewnetrznych.

	B_GiveInvItems	(self, hero, ItKe_Canthar, 1);

	Info_ClearChoices	(Info_Mod_Canthar_AtLager2);

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Pozwalam zyc Cantharowi. Jako podziekowanie powiedzial mi, ze gdy wrócilem do Khorinisa, spotkalem nieznana osobe, która byla szefem Canthar.");
};

INSTANCE Info_Mod_Canthar_Pickpocket (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_Pickpocket_Condition;
	information	= Info_Mod_Canthar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Canthar_Pickpocket_Condition()
{
	C_Beklauen	(135, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

	Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_BACK, Info_Mod_Canthar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Canthar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Canthar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Canthar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Canthar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Canthar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Canthar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Canthar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Canthar_EXIT (C_INFO)
{
	npc		= Mod_548_NONE_Canthar_NW;
	nr		= 1;
	condition	= Info_Mod_Canthar_EXIT_Condition;
	information	= Info_Mod_Canthar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Canthar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Canthar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
