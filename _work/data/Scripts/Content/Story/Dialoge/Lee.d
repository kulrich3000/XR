INSTANCE Info_Mod_Lee_Hi (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Hi_Condition;
	information	= Info_Mod_Lee_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Hi_04_00"); //Ponownie? Po twoim akcie, Magicy Wody byli bardzo podekscytowani. Masz szczescie, ze teraz nie sa w obozie.
};

INSTANCE Info_Mod_Lee_AL (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_AL_Condition;
	information	= Info_Mod_Lee_AL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_AL_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_AL_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_AL_04_00"); //Nie moge w to uwierzyc.... przekroczony przez orki. Nie wiem, czy mam sie smiac czy plakac.....
};

INSTANCE Info_Mod_Lee_WieStehts (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_WieStehts_Condition;
	information	= Info_Mod_Lee_WieStehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to wyglada tutaj w magazynie (....)? )";
};

FUNC INT Info_Mod_Lee_WieStehts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_WieStehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_00"); //Jak wyglada sytuacja w obozie po upadku zapory?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_01"); //Ach, nie jest to wcale latwiejsze. Kiedy bariera byla jeszcze na swoim miejscu, wszyscy mielismy wspólny cel: upadek i ucieczke.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_02"); //Teraz, gdy juz nie stoi, tylko twardy pulk zapobiega wybuchowi calkowitej anarchii. Sylvio jest dla mnie wielka pomoca, kto wie jak radzic sobie z bandytami i zlodziejami.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_03"); //Tak, i dlaczego wszyscy nie uciekliscie przed Minentalem, jak pierwotnie planowano?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_04"); //A gdzie sie podoba? Paladyni, którzy osiedlili sie w Khorinis, trzymali sie w ramionach, a potem szubienicy?
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_05"); //....
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_06"); //Nie, jezeli nie chcemy pasc ofiara wladzy króla i jego paladynów, musimy byc nieco bardziej aktywni.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_07"); //Niektórzy z naszych najemników przemkneli juz przez przelecz i osiedlili sie w Khorinis na duzej farmie, aby zbadac sytuacje, jak zapewne juz wiesz.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_08"); //Dlaczego mnie przekradles? A dlaczego tak malo?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_09"); //Czy kiedykolwiek zauwazyles dziwne ptaki na przeleczy? Królewscy rojalisci nazywaja ich sami. Król zdaje sie, ze wyslal ich tam, ale nie pytajcie mnie, do czego sa.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_10"); //No cóz, w kazdym razie to sprawdzeni na polu bitwy chlopcy, którzy mogliby zrujnowac nasza trase, gdyby cala grupa nas chciala przejsc przez przelecz.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_11"); //A potem, cóz, toczy sie stara klótnia z Starym Obozem. Oni stracili swoje zródlo dochodu, swoja kopalnie, ale teraz sa jak dziwka z Królem i wszyscy, którzy maja pieniadze i rude.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_12"); //Nigdy nie wiesz, co zrobia dalej. Dlatego nie chce wyciagac zbyt wielu moich mezczyzn z obozu, ale raczej planowac i przygotowywac wszystko dobrze.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_13"); //Jak wygladaja te przygotowania?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_14"); //Szkolimy naszych ludzi i przygotowujemy ich do ostatecznego uderzenia w króla. W przeciwnym razie tak naprawde nigdy nie bedziemy mogli zyc w pokoju.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_15"); //Przeciw królowi? Ale on jest na kontynencie.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_16"); //Tak, na kontynencie i oslabione orkami. W pomyslnym czasie wyruszymy z Doliny Kopalni, zawladniemy statkiem i odwiedzimy króla.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_17"); //A poniewaz ziemia jest w miedzyczasie pokryta orkami, trenujemy wielu naszych mezczyzn szczególnie w walce z orkami, szkolimy ich, by byli mysliwymi orkami, aby mogli pokazac owlosiona zielona skórke, której nie mozemy oszukac.

	if (hero.guild == GIL_MIL) {
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_18"); //Ale my tylko uznajemy to, co najlepsze w szeregach Lowcy Orku. Ja równiez chcialbym cie miec ze mna, bo pokazales mi, ze masz przed soba walczaca sile i umysly.
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_19"); //Sylvio przewodzi Orkjägerowi i decyduje, kto moze wziac w nim udzial. Szukaj, gdzie mozesz sie przydac w obozie.

		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_HAGEN_ASYLANTEN, "Sylvio decyduje, kto wchodzi na lowców Orku.", "Lee planuje wyrwac sie z Minentala wraz z jego zwolennikami i dotrzec do ladu, gdzie chca obalic króla. Ognisko jest juz przygotowywane.");
	} else {
		B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Lee planuje wyrwac sie z Minentala wraz z jego zwolennikami i dotrzec do ladu, gdzie chca obalic króla. Ognisko jest juz przygotowywane.");
	};
};

INSTANCE Info_Mod_Lee_Aufgabe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Aufgabe_Condition;
	information	= Info_Mod_Lee_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie prace?";
};

FUNC INT Info_Mod_Lee_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Aufgabe_15_00"); //Masz dla mnie prace?
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_01"); //Tak, jest cos, co mozna zrobic. Na koniec pewien informator powiedzial mi, ze cos wydaje sie warzyc w starym obozie. Idz i szpieguj na cos.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_02"); //Rozmawiaj z jak najwieksza iloscia cieni, poniewaz zawsze mozesz uzyskac od nich najlepsze informacje pod reka.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_03"); //Mordrag daje ci pancerz cieni, który nadal ma z pobytu w starym obozie przed upadkiem zapory. Znajdziesz go w pubie.

	Log_CreateTopic	(TOPIC_MOD_SLD_SPY, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee dala mi zadanie szpiegowania na Starym Obozie. Mam dostac pancerz od Mordraga i porozmawiac z jak najwieksza liczba cieni.");

	B_RemoveNpc	(Mod_1108_GRD_Bullit_MT);
};

INSTANCE Info_Mod_Lee_GotoSylvio (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GotoSylvio_Condition;
	information	= Info_Mod_Lee_GotoSylvio_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_GotoSylvio_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GotoSylvio_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_GotoSylvio_04_00"); //Och, prawie zapomnialem. Sylvio chcial porozmawiac z osoba, której przypisalem to zadanie. Najlepiej wiec najpierw go zobaczyc.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sylvio chcial mnie wczesniej zobaczyc.");
};

INSTANCE Info_Mod_Lee_Infos (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Infos_Condition;
	information	= Info_Mod_Lee_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wazne informacje (.....) )";
};

FUNC INT Info_Mod_Lee_Infos_Condition()
{
	if (Mod_SLD_Spy == 1)
	&& (Npc_HasItems(hero, ItAr_Stt_Mordrag) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_00"); //Z moich rozmów z niektórymi cieniami zdobylem wazne informacje. Widocznie ofiara morderstwa padl straznik.
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_01"); //Inny straznik chce, aby jeden z naszych mezczyzn byl winowajca, a stary obóz planuje zaatakowac nas o swicie w najblizszych dniach.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_02"); //Co? Nie sadze, ze gonna starego obozu ma pelna szyje.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_03"); //Bardziej kontemplacyjne) Oni nie moga juz przekraczac gór, o to juz zadbalismy. Najprawdopodobniej spróbuja to zrobic atakiem frontalnym, który powinien spowodowac nam pewne straty.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_04"); //Pozostawie moich mezczyzn na miejscu przy wejsciu glównym o swicie przez kilka nastepnych dni.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_05"); //(bohater) Gdybys tez tam byl, daloby to troche punktów plus. Oczywiscie, mimo ze juz uczyniles z nas swietna obsluge.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee chce przechwycic atak strazników o swicie przy wejsciu glównym. Gdybym byl z wami, móglbym okazac sie bojownikiem.");

	Mod_SLD_Spy = 2;

	Mod_SLD_KampfDay = Wld_GetDay();

	B_GivePlayerXP	(250);

	Npc_RemoveInvItems	(hero, ItAr_Stt_Mordrag, 1);

	B_StartOtherRoutine	(self, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "GARDISTEN");
};

INSTANCE Info_Mod_Lee_SchlachtVerpasst (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtVerpasst_Condition;
	information	= Info_Mod_Lee_SchlachtVerpasst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtVerpasst_Condition()
{
	if (Mod_SLD_Spy == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtVerpasst_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_00"); //Szkoda, ze nie walczyliscie w walce. Dalismy straznikom dobre otarcie. Ginacy straznik dal mi wiecej informacji o morderstwie.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_01"); //Czas i wyglad pasuja tylko do Sentenzy jako mordercy. Dostanie cos do slyszenia. Zrobic interesy z ludzmi z dawnego obozu, wiec naprawde.....
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_02"); //Oto Twoje wynagrodzenie.

	B_ShowGivenThings	("200 zlota i 8 rudy uzyskano");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 8);

	B_GivePlayerXP	(200);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_SchlachtDa (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDa_Condition;
	information	= Info_Mod_Lee_SchlachtDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDa_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Wld_GetDay() > Mod_SLD_KampfDay)
	&& (Wld_IsTime(05,00,08,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDa_04_00"); //Chwalic mozna bylo to zrobic. Tutaj tez przychodza.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7221_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7222_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7223_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7224_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7225_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7226_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7227_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7228_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7229_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7230_GRD_Gardist_MT, "OW_PATH_066");
};

INSTANCE Info_Mod_Lee_SchlachtDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDabei_Condition;
	information	= Info_Mod_Lee_SchlachtDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDabei_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtDa))
	&& (NpC_IsDead(Mod_7221_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7222_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7223_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7224_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7225_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7226_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7227_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7228_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7229_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7230_GRD_Gardist_MT))
	&& (Mod_NL_SchlachtDa == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_00"); //Doskonaly. Wszyscy oni byliby zmiazdzeni. Stary obóz bedzie potrzebowal czegos, dopóki nie odzyska utraconej sily.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_01"); //Ginacy straznik dal mi wiecej informacji o morderstwie. Czas i wyglad pasuja tylko do Sentenzy jako mordercy.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_02"); //Dostanie cos do slyszenia. Zrobic interesy z ludzmi z dawnego obozu, wiec naprawde.....
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_03"); //Ah, tutaj masz zloto i rude, jak równiez zasluzona place.

	B_ShowGivenThings	("300 zlota i 10 zakonserwowanych rudy");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	B_GivePlayerXP	(400);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_Kagan (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Kagan_Condition;
	information	= Info_Mod_Lee_Kagan_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Kagan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kagan_Isidro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Kagan_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_00"); //Slyszalem, ze pod waszym wplywem dwie kopalnie bagna opuscily obóz.
	AI_Output(hero, self, "Info_Mod_Lee_Kagan_15_01"); //....
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_02"); //Zrobil pan naprawde dobrze. Teraz mezczyzni w obozie sa jeszcze rzadziej uwiedzani do przyjemnosci bagna.
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_03"); //Oto jakas nagroda za rude i zloto.

	B_ShowGivenThings	("Zloto 200 zlota i 6 rudy uzyskano");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 6);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lee_OrkjaegerDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerDabei_Condition;
	information	= Info_Mod_Lee_OrkjaegerDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerDabei_Condition()
{
	if (Mod_Gilde == 19)
	&& (Mod_SLD_Orkjaeger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerDabei_04_00"); //Gratulacje. Slyszales, ze byles z mysliwymi Orka. Bylbym zaskoczony, gdybys tego nie zrobil.
};

INSTANCE Info_Mod_Lee_OrkjaegerNoway (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerNoway_Condition;
	information	= Info_Mod_Lee_OrkjaegerNoway_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerNoway_Condition()
{
	if (Mod_SLD_Orkjaeger == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerNoway_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_00"); //A co z nagraniem z mysliwymi Orc? Jak to sie dzieje?
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_01"); //Nie. Sylvio postanowil mnie nie przyznac.
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_02"); //Co? Uwielbialabym widziec w szeregach mysliwych Orka takiego wojownika jak ty. Zbyt zle. O ile nie.....
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_03"); //Tak, co?
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_04"); //No cóz, gdybys rzucil mu wyzwanie do rywalizacji i wzial zwyciestwo, automatycznie stalbys sie liderem mysliwych Orka. Takie sa zasady.
};

INSTANCE Info_Mod_Lee_Wettstreit (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Wettstreit_Condition;
	information	= Info_Mod_Lee_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wtedy wystawiam go na konkurs.";
};

FUNC INT Info_Mod_Lee_Wettstreit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_OrkjaegerNoway))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Wettstreit_15_00"); //Wtedy wystawiam go na konkurs.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_01"); //Nastepnie udaj sie do Sylvio i powiedz mu. W miedzyczasie mam wszystko gotowe.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_02"); //Potem wróce do mnie i naucze cie, co robic.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Gdybym rzucil Sylvio wyzwanie do rywalizacji i zwyciestwa, moge przejac jego pozycje i zostac mysliwym orkiem. Nastepnie Lee powie mi, co mam zrobic.");
};

INSTANCE Info_Mod_Lee_GiveMap (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GiveMap_Condition;
	information	= Info_Mod_Lee_GiveMap_Info;
	permanent	= 0;
	important	= 0;
	description	= "No, co to jest konkurs?";
};

FUNC INT Info_Mod_Lee_GiveMap_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_Wettstreit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GiveMap_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_GiveMap_15_00"); //No, co to jest konkurs?
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_01"); //Oto mapa.

	B_GiveInvItems	(self, hero, ItWr_Map_Wettstreit_01, 1);

	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_02"); //Niebieski krzyzyk pokazuje polozenie klucza, czerwony krzyzyk pokazuje polozenie tulowia, do którego pasuje klucz. Sylvio szuka drugiego klucza, którego poszukuje.
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_03"); //Kto z zawartoscia klatki piersiowej pierwszy otrzymal wygral. Wszystko jasne? W porzadku, idzmy.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Lee dala mi podwójna kartke. Blekitny Krzyz pokazuje mi, gdzie moge znalezc klucz do klatki piersiowej oznaczony czerwonym krzyzykiem. Mam zabrac zawartosc klatki piersiowej do Lee. Sylvio bedzie musialo dazyc do tego samego celu i znalezc drugi klucz.");

	Mod_SLD_Wettstreit = 1;

	Wld_InsertNpc	(Mod_7231_SLD_Organisator_MT,	"LOCATION_29_04");
	Wld_InsertNpc	(Mod_7232_SLD_Organisator_MT,	"OW_ABYSS_SPAWN_WARAN");

	B_KillNpc	(Mod_7231_SLD_Organisator_MT);
	B_KillNpc	(Mod_7232_SLD_Organisator_MT);
};

INSTANCE Info_Mod_Lee_HabPfeife (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_HabPfeife_Condition;
	information	= Info_Mod_Lee_HabPfeife_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam zawartosc klatki piersiowej.";
};

FUNC INT Info_Mod_Lee_HabPfeife_Condition()
{
	if (Mod_SLD_Wettstreit == 3)
	&& (Npc_HasItems(hero, ItMi_LeePipe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_HabPfeife_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_HabPfeife_15_00"); //Mam zawartosc klatki piersiowej.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_01"); //Pokaz mi....

	B_GiveInvItems	(hero, self, ItMi_LeePipe, 1);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_02"); //Fakt. W ten sposób wygrales konkurs. Gratulacje!
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_03"); //(do samego siebie) Zastanawiam sie, gdzie sa najemnicy odpowiedzialni za klucze.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_04"); //(znów bohaterowi) No cóz, bez wzgledu na to co, dzieki temu jestes teraz przywódca mysliwych Ork, a wiec nawet Orkjägera. Oto twój nowy pancerz.

	B_ShowGivenThings	("Zbroje mysliwskie otrzymuja");

	CreateInvItems	(hero, ItAr_Sld_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Sld_H);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_05"); //Dobry kawalek. Mozesz odebrac bron w Thofeistos. Jestem pewna, ze sprostasz nowej pozycji.

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Orkfriedhof))
	{
		AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_06"); //Teraz mozesz spieszyc sie na Cmentarz Lukowy. Byc moze dotrzesz tam na czas.
	};

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(600);

	B_Göttergefallen(2, 5);

	Mod_Gilde = 19;

	Mod_LeeOJGBoss = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);

	if (!Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		B_StartOtherRoutine	(Mod_10000_Orc_Tarrok_MT, "START");
	};
};

INSTANCE Info_Mod_Lee_Orkfriedhof (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Orkfriedhof_Condition;
	information	= Info_Mod_Lee_Orkfriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Orkfriedhof_Condition()
{
	if (Mod_NL_UOS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Orkfriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_00"); //Hej, dobra z toba przyjsc obok.
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_02"); //Skontaktowal sie z nami obóz bagienny i poprosil o pomoc.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_03"); //Niedawno, kiedy na cmentarzu orkowym szukano skarby i artefaktów, nagle, kiedy niektóre blotniaki poszukiwaly skarby i artefaktów, smiertelne szczatki orków zaczely nagle rosnac, stajac sie nieumarlym bytem. Tylko nowicjuszom udalo sie uciec.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_04"); //Teraz wykorzystamy nasza zdolnosc do walki z zielonymi skórami i poszukiwania ocalalych.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_05"); //Dobry placa i nasi chlopcy moga skorzystac z dodatkowych szkolen.
	AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_06"); //Arc cmentarza? Nieumarle orki? Musze tam pojechac.....

	Log_CreateTopic	(TOPIC_MOD_SLD_FRIEDHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_RUNNING);

	if (Mod_Gilde == 19)
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_07"); //Hej, nie spodziewalem sie tak wielkiego entuzjazmu, chociaz mialem nadzieje, ze poprowadzisz naszych chlopców w walce.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_08"); //Juz czekaja na rozpoczecie pracy poza Cmentarzem Lukowym. Pospiesz sie, zebys nie przegapil zabawy.

		B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Arc cmentarza? Nieumarle orki? Szaman musi byc.....");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_09"); //Hej, tyle entuzjazmu do walki zaszczyci cie. Musisz jednak stac sie mysliwymi orkiestrowymi, zanim bedziesz mógl towarzyszyc chlopcom na ich misji.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_10"); //Ale nie masz zbyt wiele czasu, zanim to sie rozpocznie. (Hesitnie) Jest tylko mozliwosc....
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_11"); //Tak, co?
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_12"); //Musialbys rzucic Sylvio wyzwanie do rywalizacji i pokonac go, aby zajac jego stanowisko. Jesli tego wlasnie oczekujesz....
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_13"); //Tak, musze isc na ten cmentarz.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_14"); //Okay, potem dajcie znac Sylvio i wróccie do mnie.

		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_SLD_FRIEDHOF, "Gdybym rzucil Sylvio wyzwanie do rywalizacji i zwyciestwa, moge przejac jego pozycje i zostac mysliwym orkiem. Nastepnie Lee powie mi, co mam zrobic.", "Arc cmentarza? Nieumarle orki? Szaman musi byc..... Ale wstepu na cmentarz nie dostaje, dopóki nie bede mysliwym orkowym.");
	};

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_15"); //Mam dla Ciebie kilka hasel teleportowych. Zrobiles guru jakis czas temu.....

	B_GiveInvItems	(self, hero, ItSc_TeleportOrkfriedhof, 3);
};

INSTANCE Info_Mod_Lee_OrkschamaneTot (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkschamaneTot_Condition;
	information	= Info_Mod_Lee_OrkschamaneTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkschamaneTot_Condition()
{
	if ((Mod_NL_UOS == 8)
	|| (Mod_NL_UOS == 7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkschamaneTot_Info()
{
	if (Mod_NL_UOS == 7)
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_00"); //Zrobiles to zrobiles. Obóz podmokly byl bardzo zadowolony z ratowania swojego ludu i hojnie nas za to wynagrodzil. Oto Twój udzial.

		CreateInvItems	(hero, ItMi_Gold, 400);
		CreateInvItems	(hero, ItMi_Nugget, 4);
		CreateInvItems	(hero, ItPo_Health_03, 5);

		B_GivePlayerXP	(500);

		B_ShowGivenThings	("400 zlota, 4 sztuki rudy i 5 wyciagów z gojenia uzyskano");

		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_01"); //Ale teraz powiedz: Gdzie sa nasi chlopcy? Czy robia zasluzony odpoczynek w obozie bagnistym?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_02"); //Uh, nie. .... wszystkie nieumarle i orki zostaly ciezko ranne. Co moge powiedziec....? sa umarli (na siebie) lub nieumarli......
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_03"); //Mam nadzieje, ze jest to zly zart.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_04"); //Cóz, chcialbym, zeby tak bylo.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_05"); //(podpisal) Tak wielu dobrych mezczyzn.... To..... te przebite orki. Placa za to.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_06"); //A jezeli wszyscy zgineli, to nie udalo sie wam jako przywódca huraganu.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_07"); //Byc moze wybralem zly wybór z Sylvio jako przywódca Orkjägera, jesli moi chlopcy byli w tak zlej kondycji.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_08"); //Co? Ty tutaj? A co z cmentarzem orkowym?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_09"); //Cóz, bylem tam bylam....
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_10"); //Tak, co jeszcze? Ocaliles kogos?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_11"); //Nie, boje sie nie. Jestes teraz..... Oni wszyscy umarli.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_12"); //(nieszczesliwy) Damn it. Fryzurcy nie beda sie z tego zadowoleni....
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_13"); //Ale gdzie sa inni chlopcy? Zakladam, ze zrobia ladny Lenz w obozie bagnistym. Powiedz im, zeby sie tu dostali.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_14"); //No cóz, moze to byc troche trudne.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_15"); //Co to ma oznaczac?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_16"); //No cóz, wszyscy oni sa umarli (do siebie) lub nieumarli.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_17"); //(baff) To jest zly zart.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_18"); //No cóz, nie sadze. Zombie, orki i nieumarli szamani pograzyli nas w klopotach.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_19"); //Co? Co? Tak wielu dobrych mezczyzn? To..... Oni za to zaplaca.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_20"); //A ty tu kopiesz moja twarz po tym, jak pozwolisz im umrzec! Ich przywódca! Wkrótce zawiodlas.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_21"); //A Sylvio spedza mily dzien! Byc moze mimo wszystko nie bylem tak dobry, ze chlopaki byli w tak zlej kondycji. Bedzie mial klopoty.
		};

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);

	// Orkfriedhof wieder dicht machen

	Wld_SendTrigger	("EVT_ORCGRAVYARD_MOVER_01");
};

INSTANCE Info_Mod_Lee_FreieMine (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_FreieMine_Condition;
	information	= Info_Mod_Lee_FreieMine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_FreieMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_FreieMine_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_00"); //Nareszcie tu jestes....
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_02"); //Kopalnia pelna gówno. Nieustanne ataki minecrawla, niezaleznie od tego, ile robimy z bestii.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_03"); //Czysciles stara kopalnie od potworów z tamtego czasu.....
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_04"); //... a pan pomyslal o mnie, ze rozwiaze problem.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_05"); //Tak, jestes najbardziej wykwalifikowana osoba, z która mozesz sie skontaktowac, jesli chodzi o te gasienice górnicze.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_06"); //Idzcie wiec do kopalni i zobaczcie co mozecie zrobic.
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_07"); //Dobrze, ale chcialem poinformowac o tym na Khorinisie....
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_08"); //(przerwania) Jest duzo czasu. Najpierw gasienice.

	Log_CreateTopic	(TOPIC_MOD_NL_CRAWLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_CRAWLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Wolna kopalnia cierpi na zaraze miotacza. Lee kazal mi to wyprostowac.");
};

INSTANCE Info_Mod_Lee_Gormgniez (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Gormgniez_Condition;
	information	= Info_Mod_Lee_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_00"); //Czy rozwiazales/as problem gasienic w kopalni?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_01"); //Tak, znów jest cicho.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_02"); //Bardzo dobrze, nie spodziewalem sie niczego wiecej. Oto Twoje wynagrodzenie.

	B_ShowGivenThings	("400 zlota i 10 konserwowanych rudy");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_03"); //Jakies inne wiadomosci z calego swiata, o których warto wspomniec, warto wiedziec?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_04"); //Cóz, na przyklad,horyn zostal uderzony smokami.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_05"); //Smaki? Czy mnie oszukujesz, prawda? Ale jesli to prawda....
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_06"); //To prawda.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_07"); //(jak obsesyjnie) Tak, znalem to. Wszyscy mysleli, ze bylem szalony, kiedy kupilem kosztowna pancerz mysliwska smoka. Teraz jednak, tak, teraz zaczynaja one dzialac.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_08"); //Chce wyslac swoja elite do Khorinisa po wsparcie.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_09"); //Idz do Thofeistos, daj mu rude jako nagrode.

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Mam odebrac od Thofeistosa jakies kawalki rudy jako nagrode.");

	B_RemoveNpc	(Mod_1288_SLD_Butch_MT);
	B_RemoveNpc	(Mod_1306_SLD_Organisator_MT);
	B_RemoveNpc	(Mod_1314_SLD_Organisator_MT);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lee_Plage (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Plage_Condition;
	information	= Info_Mod_Lee_Plage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Plage_Condition()
{
	if (Mod_NL_JeremiahHasEier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Plage_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_00"); //Panie Jezu Chryste, to wszystko, co tam bylo.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_01"); //Czym jest tym razem? Nieumarli, orki, czy gorzej?
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_02"); //Mam na mysli brudne robactwo wyrywajace sie z jeziora, te robaki i kraby.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_03"); //Wszedzie tam gdzie te istoty czolgaja sie, defiluja wszystko co jadalne, nie da sie przymknac oko bez tych pasozytów, a jezioro tez czai sie powoli.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_04"); //Cóz, co moge zrobic?
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_05"); //Co moge dla Ciebie zrobic? To wlasnie chce ci to powiedziec.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_06"); //Na Khorinisie owi mysliwi i straznicy biegali wokól siebie. Wiedza o tym wszystkim.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_07"); //Skoro i tak caly czas jestes na calej wyspie, dlaczego nie pójdziesz do niej i nie chcesz poprosic go o rade?
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_08"); //Dobrze, wtedy bede po drodze....
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_09"); //Tak, zrób troche wczesniej, zanim caly teren zostanie zanieczyszczony tym brudem i musimy oczyscic obóz na koncu.

	Log_CreateTopic	(TOPIC_MOD_NL_PLAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Z jeziora w Nowym Obozie wylaniaja sie irytujace szkodniki. Lee chce, abym zapytal Rangerów, jak radzic sobie z ta plaga.");
};

INSTANCE Info_Mod_Lee_PlageFertig (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_PlageFertig_Condition;
	information	= Info_Mod_Lee_PlageFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PlageFertig_Condition()
{
	if (Mod_NL_JeremiahHasEier == 6)
	&& (Wld_GetDay()-3 >= Mod_NL_JeremiahHasEier_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_PlageFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_00"); //Pasozyty staly sie znacznie mniejsze. Czy tak wlasnie postepowales?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_01"); //Tak, mialem swój udzial. Niewiele dluzej i plaga nie powinna byc historia raz na zawsze.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_02"); //Naprawde, juz wiecej bestii na jeziorze?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_03"); //Uh, no cóz, z wyjatkiem Lurkerów, których przenioslem.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_04"); //Co, jak mnie oszukujesz?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_05"); //Nie, Curekarze sa naturalnymi wrogami tego pelzajacego zwierzecia.
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_06"); //Wazne jest, aby przynajmniej niewielka ich populacja pozostala nad jeziorem.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_07"); //No cóz, dla mnie. W kazdym razie wykonal pan naprawde dobra robote i bardzo sie przysluzyl obozowi.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_08"); //Tutaj zarobiles wiecej niz twoja nagroda.

	B_ShowGivenThings	("400 zlota, 20 rudy, 5 energii czystego zycia i eliksiru zycia.");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItPo_Health_Addon_04, 5);
	CreateInvItems	(hero, ItPo_Perm_Health, 1);

	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(600);
};

INSTANCE Info_Mod_Lee_ZugangKneipe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe_Condition;
	information	= Info_Mod_Lee_ZugangKneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym isc do pubu i potrzebowac twojej zgody.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Khaled_KenneLee))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_00"); //Chcialbym isc do pubu i potrzebowac twojej zgody.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_01"); //Do pubu? Otóz zasady mówia, ze trzeba byc najemnikiem lub harcerzem.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_02"); //A jesli po prostu wyrazam zgode, przyczyniam sie do naruszenia zasad. I to byloby zle dla morale obozu.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_03"); //Wiec albo trzeba stac sie najemnikami i wspierac chlopców w Khorinis lub....
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_04"); //... Wybieram sciezke poszukiwacza?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_05"); //Tak, to druga opcja.
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_06"); //A co musze zrobic?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_07"); //Prosze pozwolic mi pomyslec o tym.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_08"); //Zeby byc pelnoprawnym poszukiwaczem, trzeba wykopac rude i wplacic czesc pieniedzy do obozu.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_09"); //Tak wiec, powiedzmy, przyprowadzcie mi dziesiec bryl rudy.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_10"); //Ta symboliczna kwota jest dla mnie wystarczajaca.

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "Dowodem na to, ze prowadze dzialalnosc poszukiwawcza ma byc 10 bryl rudy Lee. Potem moge pójsc do pubu.");
};

INSTANCE Info_Mod_Lee_ZugangKneipe2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe2_Condition;
	information	= Info_Mod_Lee_ZugangKneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto dziesiec bryl rudy.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_ZugangKneipe))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe2_15_00"); //Oto dziesiec bryl rudy.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_01"); //Dobrze stworzyc to z pewnoscia nie bylo wyczynem, ale tylko dla wejscia do pubu nikt nie powinien oderwac nogi.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_02"); //Tutaj moja pisemna zgoda. Wypic napój dla mojego zdrowia.

	B_GiveInvItems	(self, hero, ItWr_LeeInKneipe, 1);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "No cóz, mam pisemna zgode Lee.");
};

INSTANCE Info_Mod_Lee_KesselProblem (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem_Condition;
	information	= Info_Mod_Lee_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem_Condition()
{
	if (Kapitel >= 3)
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem_Info()
{
	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_00"); //Damn to! Tu znów jedziemy.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem_15_01"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_02"); //Obecnie dzikie zwierzeta zyjace w górach sprawiaja, ze praca w kotlinie dolinowej jest niebezpieczna. Nawet poszukiwacz zjedliscie.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_03"); //Ktos powinien zobaczyc, co sie dzieje przed przybyciem tu rudy.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_04"); //Hmm, oczywiscie nie zalezy juz od moich mezczyzn.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_05"); //Szef kuchni szef kuchni Bullco wydaje sie równiez spedzac wiecej czasu w tawernie niz przed kopalnia.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_06"); //Byc moze móglbys rozejrzec sie po dorzeczu doliny i zadac sobie pytanie, jak naprawde wyglada sytuacja?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_07"); //Prosze pozwolic mi wiedziec, czy istnieja jakies problemy.....

	Log_CreateTopic	(TOPIC_MOD_NL_TALKESSELPROB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Lee przeklety o problemach w basenie. Dzikie zwierzeta z gór zyja tam i juz zabily poszukiwacza. Dostawy rudy moga na tym w coraz wiekszym stopniu ucierpiec. Lee poprosila mnie, abym sie rozejrzal i dala mu znac, czy istnieja jakies powazne problemy.");
};

INSTANCE Info_Mod_Lee_KesselProblem2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem2_Condition;
	information	= Info_Mod_Lee_KesselProblem2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem2_Condition()
{
	if (Mod_NL_TalkesselProblem == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_00"); //(liryczny) Stop! Slyszalem, ze Bruce poblogoslawil doczesny.... i slyszalem, jak pan w to uczestniczyl.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_01"); //Co sie stalo przy kotle?
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_02"); //Nie mialem wyboru. Próbowal mnie zabic.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_03"); //(Zdziwiony) Ale...... Dlaczego? Co sie tam wydarzylo?
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_04"); //No cóz, zrozumialem go.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_05"); //Wykorzystal czesc rudy z kotla do wlasnej dzialalnosci.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_06"); //Cala historia z dzikimi zwierzetami zostala wynaleziona. Aby go zwiesc, dostal od Festera futro dla biegacza cienia.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_07"); //Oto jego lista.

	B_GiveInvItems	(hero, self, ItWr_KesselProblem, 1);

	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_08"); //Masz racje. Spedzil rude pod ladunkiem.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_09"); //I jeszcze jedno oszustwo. Prawdopodobnie sam zabil poszukiwacza jako dywersje.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_10"); //Falszywe) Embezzlement rudy dla watpliwych transakcji...... a nawet zabójstwo.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_11"); //A Bullco siedzi przed pubem i napojami. Byl najdluzej lezacym szefem kotliny doliny.... Wiecej
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_12"); //Hmm..... i co z Festerem. Co to sa te inne rzeczy, które sprzedal Bruce?

	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1288_SLD_Butch_MT, "BOSS");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);

	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "Towary z zewnatrz. Wino, szynka, wino....", Info_Mod_Lee_KesselProblem2_B);
	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "Sprzedal mu ziolo bagienne.", Info_Mod_Lee_KesselProblem2_A);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_B()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_00"); //Towary z zewnatrz. Wino, szynka, wino....
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_01"); //(znów cisza? Wszystkie sluszne, wszystkie sluszne. Zmieniam z nim slowa i dochodze do jego konca.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_02"); //Byc moze nie wiedzial nic o programach Bruce' a.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_03"); //....
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_04"); //Oh, to prawda. Wykonal pan bardzo dobra prace.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_05"); //Dzieki Tobie, od tej pory w obozie bedzie lepiej. Tutaj z pewnoscia zasluguje pan na rude i zloto.

	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("20 Ruda i 200 zloto uzyskane");

	Mod_NL_TalkesselProblem = 5;

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_A()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_00"); //Sprzedal mu ziolo bagienne.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_01"); //Co? Co? Sprzedaj kapuste w moim magazynie! Bedzie mial klopoty.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_02"); //Od teraz wstac o godzinie 6.00, cwiczyc.... Upewnie sie, ze nie dostanie wiecej pomyslów.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_03"); //Tak wiec....
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_04"); //(do bohatera) Hmm, huh? Oh, to prawda. Wykonal pan naprawde dobra prace.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_05"); //Wszyscy freeloaderzy i dobrzy dostaja to, na co zasluguja.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_06"); //Tutaj zarobiles naprawde rude i zloto.

	CreateInvItems	(hero, ItMi_Nugget, 27);
	CreateInvItems	(hero, ItMi_Gold, 260);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("27 Ruda i 260 zloto zakonserwowane");

	Mod_NL_TalkesselProblem = 6;

	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "STRAFE");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

INSTANCE Info_Mod_Lee_SentenzaSchwert (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SentenzaSchwert_Condition;
	information	= Info_Mod_Lee_SentenzaSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec twoi chlopcy byli na tyle predcy?";
};

FUNC INT Info_Mod_Lee_SentenzaSchwert_Condition()
{
	if (Mod_NL_BruceTot == 3)
	&& (Npc_IsDead(Mod_796_SLD_Sentenza_MT))
	&& (Npc_IsDead(Mod_779_SLD_Bullco_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SentenzaSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_00"); //Wiec twoi chlopcy byli na tyle predcy?
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_01"); //No cóz, mialem silne podejrzenie. Ostatecznie, Bruce nigdy nie przesunal sie wystarczajaco daleko od basenu, aby odwiedzic innych handlowców.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_02"); //Musial wiec miec zwolenników w obozie.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_03"); //Roscoe otworzyl dla mnie oczy i uszy..... i dostac sie na tyle, aby umiescic tutaj dranie.
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_04"); //Tak, to byl dobry moment.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_05"); //W kazdym razie, dzieki waszej pomocy, nasz obóz znów jest ubozszy o dwa oszusci. Tu troche rudy.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_06"); //Jestem pewien, ze znajdziesz wystarczajaco duzo w kieszeniach. A dzikie zwierzeta zajma reszte.

	B_GivePlayerXP	(300);

	B_SetTopicStatus	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Lee_Mitmachen (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Mitmachen_Condition;
	information	= Info_Mod_Lee_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge dolaczyc do Ciebie?";
};

FUNC INT Info_Mod_Lee_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_00"); //Czy moge dolaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_01"); //Dolacz do nas? No cóz, zawsze mozemy uzywac dobrych mezczyzn, a ty pokazales mi, ze nie jestes juz wtedy dobry dla niczego.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_02"); //Wolalbym jednak, zebyscie najpierw sie wykazali, tak aby najemnicy uszanowali wasze nagranie.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_03"); //Wielu nowych chlopaków jest w obozie i nie wszyscy pamietaja cie od innych.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_04"); //Zawsze byles na wyciagniecie reki.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_05"); //Dobrze, co ja chce zrobic?
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_06"); //Cóz, znajac cie, jestem pewien, ze jestes w polowie drogi do khorynu i znasz swoja droge.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_07"); //Tak, bylem tu i tam.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_08"); //Cóz, wtedy chce, zebys wspieral chlopców na duzym gospodarstwie w Khorinis.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_09"); //Pierwszym priorytetem jest zdobycie oparcia.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_10"); //Jesli postapisz troche sprawnie, jestem pewien, ze wkrótce zobacze cie z powrotem w najemniczej zbroi.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_11"); //Jesli oczywiscie nie nalezysz do innego duzego obozu lub nawet do Starego Obozu. Kazdy ma racje? Dobre.
};

var int Lee_LastPetzCounter;
var int Lee_LastPetzCrime;

INSTANCE Info_Mod_Lee_PMSchulden (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PMSchulden_Condition;
	information 	= Info_Mod_Lee_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lee_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lee_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Lee_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Lee_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Lee_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lee_LastPetzCounter);
		
			if (diff > 0)
			{
				Lee_Schulden = Lee_Schulden + (diff * 50);
			};
		
			if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lee_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lee_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_05"); //Pojawily sie nowe rzeczy.
		
		if (Lee_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Lee_LastPetzCrime == CRIME_THEFT)
		|| ( (Lee_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Lee_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lee_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Lee_Schulden			= 0;
			Lee_LastPetzCounter 	= 0;
			Lee_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Lee_Schulden);
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lee_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Ile to znów bylo?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Lee_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lee_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lee_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Lee_Schulden);

	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lee_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Ile to znów bylo?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lee_PETZMASTER   (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PETZMASTER_Condition;
	information 	= Info_Mod_Lee_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PETZMASTER_Info()
{
	Lee_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_02"); //Morderstwo jest powaznym wykroczeniem!

		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lee_Schulden = Lee_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy. Jestesmy na wojnie i potrzebujemy kazdego czlowieka, którego mozemy dostac.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_11"); //Nie bede tolerowal takiego zachowania w naszym kraju!
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_13"); //Jesli walczysz z riffem w miescie, to jest jedna rzecz....
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_14"); //Ale jesli zaatakujesz chlopów lub innych najemników, bede musial cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Lee_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_15_21"); //Ile?
	
	if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lee_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lee_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lee_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Lee_Schulden);
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayNow_04_01"); //Dobrze! Doloze wszelkich staran, aby kazdy rolnik i najemnik dowiedzial sie o tym - w pewnym stopniu przywróci to Twoja reputacje.

	B_GrantAbsolution (LOC_FARM);
	
	Lee_Schulden			= 0;
	Lee_LastPetzCounter 	= 0;
	Lee_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lee_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Lee_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lee_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lee_Pickpocket (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Pickpocket_Condition;
	information	= Info_Mod_Lee_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Lee_Pickpocket_Condition()
{
	C_Beklauen	(158, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_BACK, Info_Mod_Lee_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lee_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lee_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
};

FUNC VOID Info_Mod_Lee_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lee_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lee_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lee_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lee_EXIT (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 999;
	condition	= Info_Mod_Lee_EXIT_Condition;
	information	= Info_Mod_Lee_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lee_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
