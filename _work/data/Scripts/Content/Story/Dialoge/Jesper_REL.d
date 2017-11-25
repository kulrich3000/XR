INSTANCE Info_Mod_Jesper_REL_Hi (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Hi_Condition;
	information	= Info_Mod_Jesper_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_00"); //Ach, dobrze od ciebie przyjsc.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_01"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_02"); //Rozprzestrzenily sie rumory. Na rynku znajduje sie opuszczony dom, który bylby idealny do nowego zakwaterowania.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_03"); //Niestety, wlasciciel piwowarstwa i rzeznik ostatnio zainteresowali sie budynkiem.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_04"); //Maja oni plany otwarcia w nim wykwintnej restauracji.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_05"); //Teraz chodzi o to, aby widziec plotke w pubie, ze bedzie to straszyc.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_06"); //Rozumiem. Gdy tylko mieszkancy zaczna omijac budynek, zainteresowani kupujacy straca zainteresowanie nim.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_36_07"); //Dokladnie. Nalóz wiec zawsze glosno i grubo. Chodzcie dalej, odejdzmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TAVERNE");
};

INSTANCE Info_Mod_Jesper_REL_InTaverne (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InTaverne_Condition;
	information	= Info_Mod_Jesper_REL_InTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_305") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_00"); //Ach, dobrze widziec cie.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_01"); //Tak, mój przyjaciel, ciesze sie, ze równiez tutaj moge sie z Toba spotkac.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_02"); //To naprawde piekne miasto z ladnymi i inteligentnymi ludzmi.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_03"); //Tak, jesli tylko ten dom nie istnieje.... wiesz, ze porzuconego na rynku, gdzie wkrótce otworza restauracje.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_04"); //Tak to jest prawda, co o tym slyszysz.... ze jest nawiedzony?
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_05"); //To nie jest nawet wyrazenie..... Slyszalem tyle strasznych rzeczy o tak wielu ludziach.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_06"); //Na poczatku nie chcialem sobie w to uwierzyc, ale potem widzialem to na wlasne oczy.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_07"); //Musisz byc zmeczony zyciem, aby tam pojechac.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_36_08"); //Tak, powiedz mi wiecej o tym, o co chodzi.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Mówi sie, ze tam znajduje sie portal o przerazajacym imperium Beliara.", Info_Mod_Jesper_REL_InTaverne_D);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "W scianach budynku zamurowane sa szczatki zloczynców.", Info_Mod_Jesper_REL_InTaverne_C);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Spolecznosc okultystów, w której kiedys odbywaly sie mroczne obrzedy.", Info_Mod_Jesper_REL_InTaverne_B);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Mówi sie, ze kosci wrogiej czarownicy sa tam pochowane.", Info_Mod_Jesper_REL_InTaverne_A);
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_E()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_E_36_00"); //To okropne. Adanos powstrzymuje mnie od tego budynku! Unikne jego obecnosci.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_E_15_01"); //Tak, dobrze bys zrobil. Do nastepnego pozegnania przyjaciel.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	B_StartOtherRoutine	(self, "TAVERNE2");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "VORTAVERNE");
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_D()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_00"); //Mówi sie, ze tam znajduje sie portal o przerazajacym imperium Beliara.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_01"); //Gosc odwiedzajacy dom moze byc narazony na ryzyko, ze zostanie przytloczony przez ciemne sily.... Wiecej i przejsc przez reszte dnia jako nieumarli.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_02"); //Mówi sie, ze niektórzy ludzie doswiadczyli tego losu.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_03"); //A jesli sluchasz uwaznie, slyszysz równiez jeki przeklenstw.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_C()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_00"); //W scianach budynku zamurowane sa szczatki zloczynców.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_01"); //Oni zgrzeszyli przeciwko samemu Adanosowi i zostali przekleci przez niego do wiecznej nieumarlosci.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_02"); //Trzeba byloby byc szalonym, zeby wejsc do budynku, bo zgnile kosci bez watpienia zlapalyby intruza ze wszystkich stron i chwytaly go.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_00"); //Niegdys wspólnota okultystów utrzymywala tam zlowieszcze rytualy, zaklecia demonicznych stworzen...... a nawet ludzkie ofiary.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_01"); //Mówi sie, ze wyrwali serce nieszczescia z ich ciala zywcem.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_02"); //Ich niespokojne dusze mieszkaja teraz w budynku i pozwalaja kazdemu odwiedzajacemu popasc w szalenstwo, który stawia w nim stope.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_00"); //Mówi sie, ze kosci wrogiej czarownicy sa tam pochowane.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_01"); //Niegdys zostala osadzona w Khoracie, a teraz niespokojnie szuka zemsty na swoich oprawcach.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_02"); //I za kazdym razem, gdy ktos ignorancki wchodzi do budynku, blade kosci czarownicy chwytaja go i wciagaja nieszczesliwa dusze do glebi.

	Info_Mod_Jesper_REL_InTaverne_E();
};

INSTANCE Info_Mod_Jesper_REL_InHaus (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InHaus_Condition;
	information	= Info_Mod_Jesper_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_InHaus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_36_00"); //Czlowiek, czy widziales wszystkie te twarze, kiedy opowiadalismy te straszna historie o domu?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_36_01"); //Móglbym sie smiac.....

	AI_StopProcessInfos	(self);

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Jesper_REL_Glorie (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie_Condition;
	information	= Info_Mod_Jesper_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_36_00"); //W porzadku, wszystko poszlo zgodnie z planem.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_36_01"); //Miejmy nadzieje, ze ksiazka powinna teraz przekazac to wszystko wam.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie2_Condition;
	information	= Info_Mod_Jesper_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bibliothekar_Glorie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_00"); //Dobrze, wyprowadzimy Cie z tego miejsca.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_01"); //Bede rozpraszac bibliotekarza, gdy bede przy nim, zeby sie upewnic, ze nie zauwazy.

	AI_TurnToNpc	(self, Mod_7278_OUT_Bibliothekar_REL);

	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_02"); //Slysze, ze szukasz pomocy wizualnej?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_36_03"); //Mysle, ze widzialem tam cos blyszczacego.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "REL_CITY_151");

	AI_Teleport	(Mod_7371_OUT_Richter_REL, "REL_CITY_145");
	B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "ATBIB");
};

INSTANCE Info_Mod_Jesper_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie3_Condition;
	information	= Info_Mod_Jesper_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_00"); //Ach, tam pan wreszcie jest.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_01"); //To byc moze bylo zamieszka w bibliotece, kiedy odkryto kradziez zapisów, powiem wam.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_02"); //Gubernator natychmiast zadzwonil do wszystkich strazników i zlecil im poszukiwanie uczonego.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_36_03"); //Moze to nadal stac sie czyms (smiech). chociaz jako zlodziej obrazaloby mnie troche na moja czesc, gdyby teraz wzial na siebie caly zaslugi.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie4_Condition;
	information	= Info_Mod_Jesper_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie4_Condition()
{
	if (Mod_Diebe_Brunnen == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie4_36_00"); //Co to za fuck?

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Lesser_Skeleton_Diebe_01, "FP_REL_SKELETT_DIEBE_01");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_02, "FP_REL_SKELETT_DIEBE_02");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_03, "FP_REL_SKELETT_DIEBE_03");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_04, "FP_REL_SKELETT_DIEBE_04");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_05, "FP_REL_SKELETT_DIEBE_05");
};

INSTANCE Info_Mod_Jesper_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie5_Condition;
	information	= Info_Mod_Jesper_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie5_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_CITY_023") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_00"); //Och, oh, to ty. Przerazyl mnie pieklo.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Glorie5_15_01"); //Ty tutaj?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_02"); //Gdzie jeszcze? Od czasu osadzenia w wiezieniu starca mozna spokojnie pladrowac majatek. Takie jest nasze powolanie. Zobacz, gdzie mozna cos podniesc i zlapac.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_36_03"); //Cóz, trzymaj oczy otwarte.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Jesper_REL_EXIT (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_EXIT_Condition;
	information	= Info_Mod_Jesper_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
