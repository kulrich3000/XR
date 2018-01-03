INSTANCE Info_Mod_Penner_ReallyHi (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_ReallyHi_Condition;
	information	= Info_Mod_Penner_ReallyHi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_ReallyHi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_ReallyHi_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_ReallyHi_27_00"); //Masz monete?
	AI_Output(hero, self, "Info_Mod_Penner_ReallyHi_15_01"); //Mam duzo monet.
	AI_Output(self, hero, "Info_Mod_Penner_ReallyHi_27_02"); //I daj mi jedna z nich?
	AI_Output(hero, self, "Info_Mod_Penner_ReallyHi_15_03"); //No cóz, nie wiem. Odpowiedz na moje pytania i moge zmienic zdanie.
};

INSTANCE Info_Mod_Penner_OnlyPenner (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_OnlyPenner_Condition;
	information	= Info_Mod_Penner_OnlyPenner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes tu jedynym bezdomnym facetem?";
};

FUNC INT Info_Mod_Penner_OnlyPenner_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_OnlyPenner_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_OnlyPenner_15_00"); //Czy jestes tu jedynym bezdomnym facetem?
	AI_Output(self, hero, "Info_Mod_Penner_OnlyPenner_27_01"); //Yup. To jest zaleta. Nie mam konkurencji.
};

INSTANCE Info_Mod_Penner_WarumArm (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_WarumArm_Condition;
	information	= Info_Mod_Penner_WarumArm_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak udalo ci sie zyc w tak zamoznym miescie (....)? )";
};

FUNC INT Info_Mod_Penner_WarumArm_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_WarumArm_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_WarumArm_15_00"); //W jaki sposób udalo ci sie dostac biednego w tak bogatym miescie?
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_01"); //Bycie moczem nie oznacza, ze jestem biedny. Mam nawet duzo pieniedzy.
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_02"); //Móglbym wybrac swój zawód. A co mogloby byc przyjemniejsze niz leniwie siedziec przez caly dzien, prowadzac rozmowy i sprzedajac informacje w wartosci nominalnej?
	AI_Output(hero, self, "Info_Mod_Penner_WarumArm_15_03"); //Czy zajmujesz sie informacjami?
	AI_Output(self, hero, "Info_Mod_Penner_WarumArm_27_04"); //Mozna to powiedziec. Wszystko ma swoja cene.
};

INSTANCE Info_Mod_Penner_Infos (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Infos_Condition;
	information	= Info_Mod_Penner_Infos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Sprzedaj mi informacje....";
};

FUNC INT Info_Mod_Penner_Infos_Condition()
{
	return 1;
};

var int Mod_Penner_HeardAboutJuliana;
var int Mod_Penner_ElviraGoodInfo;

FUNC VOID Info_Mod_Penner_Infos_Choices()
{
	Info_ClearChoices	(Info_Mod_Penner_Infos);

	Info_AddChoice	(Info_Mod_Penner_Infos, DIALOG_BACK, Info_Mod_Penner_Infos_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	&& (!Mod_Penner_ElviraGoodInfo)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "Czy mozesz mi cos powiedziec o Elwirze? (50 Zloto)", Info_Mod_Penner_Infos_F);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_WasLos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 10)
	&& (!Mod_Penner_HeardAboutJuliana)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "Co wiesz o zniknieciu meza Julijany? (10) Zloto", Info_Mod_Penner_Infos_E);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Mod_REL_Buerger == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Penner_Infos, "Kto odpowiada glównie za zaopatrzenie w wode? (50 Zloto)", Info_Mod_Penner_Infos_D);
		//Info_AddChoice	(Info_Mod_Penner_Infos, "Wie viele Stände hat der Marktplatz von Khorata? (50 Gold)", Info_Mod_Penner_Infos_C);
		Info_AddChoice	(Info_Mod_Penner_Infos, "Jaka byla nazwa straznika trzech szczurów? (50 Zloto)", Info_Mod_Penner_Infos_B);
		Info_AddChoice	(Info_Mod_Penner_Infos, "Gdzie moge znalezc aborcje? (50 Zloto)", Info_Mod_Penner_Infos_A);
	};
};

FUNC VOID Info_Mod_Penner_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_15_00"); //Sprzedaj mi informacje....

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_BACK()
{
	Info_ClearChoices	(Info_Mod_Penner_Infos);
};

FUNC VOID Info_Mod_Penner_Infos_F()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_F_15_00"); //Czy mozesz mi cos powiedziec o Elwirze?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_01"); //Slimak na magów ognia?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_02"); //Tak..... Czekaj minute, przy tawernie byla zabawna historia.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_03"); //Cos na temat alkoholu i klasztornego wina.... Tak, to prawda, ona sama byla tam, by glosic slowo Innos i przemienic poidla.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_04"); //Oczywiscie wszyscy mezczyzni po prostu krzyczeli, kiedy przyszla.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_05"); //Karczmarz zrobil sobie wlasne i ofiarowal jej klasztorne wino.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_06"); //A ona ja? Najpierw wahalem sie i poprosilem o bezalkoholowe wino klasztorne huhä.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_F_27_07"); //Prawdopodobnie bedzie inaczej z alkoholem, jesli wiesz co mam na mysli, haha.
	
	B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "Der Penner hat erzählt, dass Elvira in der Kneipe nach einem alkoholfreien Klosterwein gefragt hat. Er mutmaßt, dass ihr bei Alkohol ganz anders wird... Das könnte helfen.");
	
	Mod_Penner_ElviraGoodInfo = TRUE;

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_E()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_00"); //Co moze mi Pan powiedziec o zniknieciu meza Julijany?

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_01"); //Masz na mysli Endy? Moge ci powiedziec, ze on zniknal.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_02"); //Nikt nie wie wiecej, a raczej nikt nie przyznaje sie wiecej.
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_03"); //Jak dlugo go zabraklo?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_04"); //Ostatnio spotkal sie z nim kilka dni temu. Byl jeszcze w pracy, a potem wzial sie.
	AI_Output(hero, self, "Info_Mod_Penner_Infos_E_15_05"); //To znaczy, ze uciekl?
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_06"); //Cóz, chyba. Juliana jest dosc gorzka, ja tez nie wytrzymalabym wiecznie.
	AI_Output(self, hero, "Info_Mod_Penner_Infos_E_27_07"); //Nie mam jednak pewnosci, ze tak bylo.

	Mod_Penner_HeardAboutJuliana = TRUE;

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_D()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_D_15_00"); //Kto odpowiada glównie za zaopatrzenie w wode?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_D_27_01"); //Oczywiscie Wendel. Nie robi nic poza calodziennym sprawdzaniem przewodów.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_C()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_C_15_00"); //Ile stoisk posiada targowisko Khorata?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_C_27_01"); //Jakie to pytanie? Czy nie mozesz liczyc? Widze tu szesc kabin.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_B()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_B_15_00"); //Jaka byla nazwa straznika trzech szczurów?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_B_27_01"); //Haha, to byla zabawa z szczurami. Nazywano ich Fievel, Pinky i Oleg.

	Info_Mod_Penner_Infos_Choices();
};

FUNC VOID Info_Mod_Penner_Infos_A()
{
	AI_Output(hero, self, "Info_Mod_Penner_Infos_A_15_00"); //Gdzie moge znalezc aborcje?

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Penner_Infos_A_27_01"); //O ile mi wiadomo, tylko magicy strazy pozarnej maja odpowiednia oficyne.

	Info_Mod_Penner_Infos_Choices();
};

INSTANCE Info_Mod_Penner_Kimon (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon_Condition;
	information	= Info_Mod_Penner_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Potrzebuje troche informacji.";
};

FUNC INT Info_Mod_Penner_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kimon_REL_Freudenspender))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_00"); //Witaj! Potrzebuje troche informacji.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon_27_01"); //Po to wlasnie jestem tutaj. Co chcesz wiedziec?
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_02"); //Szukam kogos, kto da Ci radosc. Ty, przez przypadek?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon_27_03"); //O czym myslisz? Nie mialem z tym nic wspólnego.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon_15_04"); //Skontaktuje sie z dealerami.
};

INSTANCE Info_Mod_Penner_Kimon2 (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon2_Condition;
	information	= Info_Mod_Penner_Kimon2_Info;
	permanent	= 0;
	important	= 0;
	description	= "To znów ja. Nic nie znalazlo.";
};

FUNC INT Info_Mod_Penner_Kimon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kimon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon2_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_00"); //To znów ja. Nic nie znalazlo. Ale Morfheus mówi, ze cos wiesz.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_01"); //A wiec mówi? Hmm, nie wiem....
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_02"); //Chodz dalej, wyjdz stad. To nie powinno byc twoim uszkodzeniem.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_03"); //Hmm..... Po pierwsze, kosztuje Cie gonna. Po drugie, nie mówisz nic o tym komukolwiek innemu, a ja szczuruje cie w sadzie.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon2_15_04"); //Ladunek. Trzymam sie mocno. Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon2_27_05"); //Po pierwsze, 300 zlota na informacje.
};

INSTANCE Info_Mod_Penner_Kimon3 (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Kimon3_Condition;
	information	= Info_Mod_Penner_Kimon3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mozesz mi o tym powiedziec? (300 Zloto podane";
};

FUNC INT Info_Mod_Penner_Kimon3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Kimon3_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_00"); //Co mozesz mi o tym powiedziec?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_01"); //Mój stary czlowiek mieszka tu takze w Relendel. Ale on jest z glowy. Wycofal sie do jaskini.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_02"); //Nie moge go dzis zrozumiec. Mówi tylko zagadkami. Moze sie to wymyslicie.
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_03"); //Tak, tak. Ciekawe brzmienie. Zobacze go. Gdzie jest ta jaskinia?
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_04"); //Znasz tor, kiedy wsiadasz do doliny?
	AI_Output(hero, self, "Info_Mod_Penner_Kimon3_15_05"); //Mysle, ze tak, tak.
	AI_Output(self, hero, "Info_Mod_Penner_Kimon3_27_06"); //Wiec krazysz w lewo, zawsze wzdluz tarczy klifowej. Tam idziesz do jaskini, gdzie mieszka mój stary czlowiek.

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "Bum opowiada o ojcu, który nie rozumie. Zyje w jaskini w skalnej scianie na lewo od wejscia do doliny, po przejsciu przez jaskinie Khorinis. Zobaczmy jak.....");
};

INSTANCE Info_Mod_Penner_Hi (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_Hi_Condition;
	information	= Info_Mod_Penner_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_00"); //Zaprawde! Masz monete?
	AI_Output(hero, self, "Info_Mod_Penner_Hi_15_01"); //Przeszlismy przez to juz wczesniej! Myslalem, ze masz dosc pieniedzy.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_02"); //Odkad Anselm odszedl, moje, uh, uslugi nie byly tak popularne.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_03"); //Musze jechac do Khorinis, bo umiera moja staruszka.
	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_04"); //Teraz nie mam myszy. Nie ma tu nic wiecej do zdobycia od ludzi.
	AI_Output(hero, self, "Info_Mod_Penner_Hi_15_05"); //Wszystkie sluszne, wszystkie sluszne. Oto piec zlota. Nie trac jednak ich.

	B_GiveInvItems	(hero, self, ItMi_Gold, 5);

	AI_Output(self, hero, "Info_Mod_Penner_Hi_27_06"); //Ach, dziekuje, czlowiek. Pozwól, aby Adanos Cie ochronil.

	Log_CreateTopic	(TOPIC_MOD_JG_PENNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_PENNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_PENNER, "Dal cos zebrzacego. Moze znów tego potrzebuje.");

	Npc_SetRefuseTalk (self, 30);
};

INSTANCE Info_Mod_Penner_NochDa (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_NochDa_Condition;
	information	= Info_Mod_Penner_NochDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Penner_NochDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_August_Penner2))
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_NochDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_00"); //Hej!
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_01"); //No cóz, dobrze. Jeszcze jestes tutaj.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_02"); //Bylem juz dawno, ale wagon nie bedzie biegal.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_03"); //A dlaczego nie?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_04"); //Poniewaz nie mamy tu koni....
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_05"); //Potem chce, aby nadwozie zaczepilo Snapper. Albo jeszcze lepiej, oswoic sie Razor. Biegna szybciej.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_06"); //Wedzenie brzytwy? Czy kochasz mnie? Ale co jeszcze: widze, ze masz z toba rune.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_15_07"); //To cos zepsute?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_27_08"); //Jo Jo. Tak wlasnie jest. Jesli dalbys mi ja, mam dla ciebie goraca wskazówke.

	B_SetTopicStatus	(TOPIC_MOD_JG_PENNER, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7542_OUT_Raritaetenhaendler_REL, "REL_CITY_045");

	Info_ClearChoices	(Info_Mod_Penner_NochDa);

	Info_AddChoice	(Info_Mod_Penner_NochDa, "Nie, nie sadze, ze tak nie jest. A moze jeszcze potrzebuje runa.", Info_Mod_Penner_NochDa_B);
	Info_AddChoice	(Info_Mod_Penner_NochDa, "Co chcesz z nim zrobic?", Info_Mod_Penner_NochDa_A);
};

FUNC VOID Info_Mod_Penner_NochDa_B()
{
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_00"); //Nie, nie sadze, ze tak nie jest. A moze jeszcze potrzebuje runa.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_01"); //Och, drogi, dopóki wozny nie dostanie uchwytu Razora, moja staruszka odeszla.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_02"); //Co to za pieklo. Przynajmniej miec butelke gorzalki dla mnie? Gotta zdretwiala mój ból.

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_03"); //Wszystko w porzadku, tutaj jest jalowiec.
		AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_04"); //Dzieki, czlowiek. Przynajmniej ocalisz moje zycie.

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Penner_NochDa_B_15_05"); //Nie, boje sie nie.
		AI_Output(self, hero, "Info_Mod_Penner_NochDa_B_27_06"); //Och, drogi, jesli ból mnie nie zabije.
	};

	Info_ClearChoices	(Info_Mod_Penner_NochDa);
};

FUNC VOID Info_Mod_Penner_NochDa_A()
{
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_00"); //Co chcesz z nim zrobic?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_01"); //Moze ona mnie zaprowadzi do Khorinis.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_02"); //Jesli tak powiesz. Tutaj. A co chciales mi powiedziec?

	B_GiveInvItems	(hero, self, ItMi_BrokenRune01, 1);

	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_03"); //W prawo, prosze spojrzec. Mój stary czlowiek byl kiedys piratem.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_04"); //Przywiózl wiele rzeczy na boki i zakopal caly zwir.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_05"); //Nie wiem juz gdzie, i nie rozumiem juz starego faceta.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_06"); //Mówi tylko zagadkami. Moze sie to wymyslicie.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_07"); //Tak, brzmi ciekawie. Zobacze go. Gdzie jest ta jaskinia?
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_08"); //Znasz tor, kiedy wsiadasz do doliny?
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_09"); //Mysle, ze tak, tak.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_10"); //Wiec docierasz..... ..... Jaka jest nazwa tej nazwy, gdzie kciuk po prawej stronie?
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_11"); //Po lewej stronie, gwizdek!
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_12"); //Skrec w lewo, wzdluz sciezki.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_13"); //Pewnego razu zobaczysz martwe drzewo po prawej stronie muru. Wyglada jak reka.
	AI_Output(self, hero, "Info_Mod_Penner_NochDa_A_27_14"); //Tam znów jest.... skrecamy w lewo w strone skaly. Za duzym glazem znajduje sie jaskinia.
	AI_Output(hero, self, "Info_Mod_Penner_NochDa_A_15_15"); //To powinno byc mozliwe do znalezienia. Teraz nalezy zachowac ostroznosc.

	Info_ClearChoices	(Info_Mod_Penner_NochDa);

	Log_CreateTopic	(TOPIC_MOD_JG_PENNERSVATER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_PENNERSVATER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "Bum mówi o starym piracie, który nie rozumie. Mieszka w jaskini w skalnej scianie po lewej stronie wejscia do doliny. Mialem isc ta droga. Drzewo martwe, wygladajace jak reka, w lewo do skaly. Przyjrzyjmy sie.");
};

INSTANCE Info_Mod_Penner_RuneBack (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_RuneBack_Condition;
	information	= Info_Mod_Penner_RuneBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, sport. Podrózowales jeszcze?";
};

FUNC INT Info_Mod_Penner_RuneBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_NochDa))
	&& (Npc_HasItems(self, ItMi_BrokenRune01) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune02) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Penner_RuneBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_00"); //Hi, sport. Podrózowales jeszcze?
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_01"); //Nah. To cos nie dziala. Próbowalam, zawrocilam na zawroty glowy, jakby widzialam niebieska mgielke.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_02"); //Jak otwieram oczy, wciaz siedze tutaj.
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_03"); //Przykro mi z tego powodu. Wiesz cos wiesz?
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_04"); //Nope.
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_05"); //Oddajesz mi te rzecz, a ja dam ci 200 zlota.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_06"); //200 kaczek! To jest dziesiec ciagniecia, nonsens, miedzy sciagaczami. Nie....
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_07"); //Wróc z powrotem w dól. Nie zapomnij o jedzeniu. Karczmarz posolil jagniecine.
	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_08"); //Jagniecina utwardzona. Z Adanosem! Zjadlem je w zeszlym Bozym Narodzeniu. Dwa lata temu. jo-jo
	AI_Output(hero, self, "Info_Mod_Penner_RuneBack_15_09"); //Tutaj, wezcie to i pozegnajcie sie!

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(self, ItMi_BrokenRune01, 1);
	CreateInvItems	(hero, ItMi_BrokenRune01, 1);

	B_ShowGivenThings	("200 zlota podarowanego, a polowa runa zachowana");

	AI_Output(self, hero, "Info_Mod_Penner_RuneBack_27_10"); //Dzieki milionowi ludzi!

	B_LogEntry	(TOPIC_MOD_JG_PENNER, "Zrobilismy to! Mam obie czesci. Moze rune mozna naprawic. Zapytaj eksperta. Zastanawiam sie, czy jest tutaj magik. Zapytajmy. Moze Daniel, on zajmuje sie magia.");
};

INSTANCE Info_Mod_Penner_EXIT (C_INFO)
{
	npc		= Mod_7540_OUT_Penner_REL;
	nr		= 1;
	condition	= Info_Mod_Penner_EXIT_Condition;
	information	= Info_Mod_Penner_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Penner_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Penner_EXIT_Info()
{
	if (Mod_LeavePennerFirstTime == FALSE)
	{
		Mod_LeavePennerFirstTime = TRUE;

		AI_Output(self, hero, "Info_Mod_Penner_EXIT_27_00"); //Nie musisz mi przy okazji dawac zlota. Mialem juz dosc czasu.
		AI_Output(hero, self, "Info_Mod_Penner_EXIT_15_01"); //Dlaczego wiec prosiles mnie o to?
		AI_Output(self, hero, "Info_Mod_Penner_EXIT_27_02"); //To jest czesc pracy. Spodziewacie sie panstwo tylko, ze wlóczedzy poprosza o monety.
	};

	AI_StopProcessInfos	(self);
};
