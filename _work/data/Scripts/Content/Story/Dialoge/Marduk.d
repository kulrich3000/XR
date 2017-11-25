INSTANCE Info_Mod_Marduk_Hi (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Hi_Condition;
	information	= Info_Mod_Marduk_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Marduk_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Marduk_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Marduk_Hi_32_01"); //Pozdrowienia, obcy. Co moge dla Ciebie zrobic?
};

INSTANCE Info_Mod_Marduk_Aufgabe (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Aufgabe_Condition;
	information	= Info_Mod_Marduk_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc nowicjuszem.";
};

FUNC INT Info_Mod_Marduk_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Aufgabe_15_00"); //Ich möchte Novize werden und wollte dich daher um eine Aufgabe bitten.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_01"); //So, eine Aufgabe. Ein Diener Innos zu sein, ist aber nicht nur eine Aufgabe, sondern eine Berufung.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_02"); //Wenn du einige Wochen lang fleißig bei den Alltagsarbeiten im Kloster geholfen und eifrig zu Innos gebetet hast, wirst du mich von der Ernsthaftigkeit deines Wunsches überzeugt haben.
	AI_Output(hero, self, "Info_Mod_Marduk_Aufgabe_15_03"); //Aber das dauert ja ewig. Gibt es keinen schnelleren Weg?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_04"); //(spöttisch) So, tatsächlich, es wäre dir zu anstrengend und zeitraubend?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_05"); //Wenn du zu gut für die Aufgaben eines Novizen bist, wirst du wohl eher den Fähigkeiten eines Feuermagiers gerecht, oder?
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_06"); //Dann bring mir doch ... eine Feuerballrune. Damit wäre ich von deinem fortgeschrittenen Können überzeugt.
	AI_Output(self, hero, "Info_Mod_Marduk_Aufgabe_32_07"); // (zu sich selbst, kopfschüttelnd) Tse, da hör sich das mal einer an ... so viel Unverfrorenheit.

	Log_CreateTopic	(TOPIC_MOD_MARDUK_FEUERBALL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARDUK_FEUERBALL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Poprosilem Marduka o zadanie i dal mi tygodnie pracy i modlitwy w klasztorze. Kiedy zapytalem go, czy jest szybsza droga, zareagowal troche poirytowany i kazal mi zabrac go na bok do strazackiej kuli. Nie wydaje mi sie, ze latwo nie potrafie sobie z tym poradzic. Moze moglem otrzymac pomoc od kogos innego....");
};

INSTANCE Info_Mod_Marduk_FeuerballRune (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_FeuerballRune_Condition;
	information	= Info_Mod_Marduk_FeuerballRune_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Marduk_FeuerballRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Aufgabe))
	&& (Npc_HasItems(hero, ItRu_InstantFireball) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_FeuerballRune_Info()
{
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_00"); //Czego chcesz? Czy nie powinienes raczej zac winogrona lub klekac przed oltarzem i modlic sie?
	AI_Output(hero, self, "Info_Mod_Marduk_FeuerballRune_15_01"); //Nie.... Nie. Zamiast tego chcialem przyniesc wam swoja zaawansowana prace, mistrza.

	B_GiveInvItems	(hero, self, ItRu_InstantFireball, 1);

	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_02"); //Co? .... nie jest to mozliwe. To musi byc falszywe.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_03"); //Nie osmielisz sie zrobic z mnie glupca.
	AI_Output(hero, self, "Info_Mod_Marduk_FeuerballRune_15_04"); //Nie, runa jest recznie robiona przez utalentowana reke.... a teraz w waszym posiadaniu, zgodnie z waszymi wymaganiami.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_05"); //Ale nie móglbys nigdy zrobic tego sam.... nawet z pomoca nowicjusza.....
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_06"); //Rozpatrywany) Odczekac minute.... (powaznie) Hmm, wszystko w porzadku, nie chce nawet pytac, kto ci w tym pomógl.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_07"); //Naprawde wypelnil pan swoje zadanie, co musze przyznac - choc niechetnie.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_08"); //A poniewaz wydaje sie, ze zdolaliscie w pelni przekonac jednego z pozostalych magów, bede tym mniej niechetnie cie akceptowal.
	AI_Output(self, hero, "Info_Mod_Marduk_FeuerballRune_32_09"); //Idzcie wiec z blogoslawienstwem Inno i przyzwoleniem.

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_MARDUK_FEUERBALL, "Pomagalem Mardukowi.", "Przynioslam Mardukowi rune.");

	B_SetTopicStatus	(TOPIC_MOD_MARDUk_FEUERBALL, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_Göttergefallen(1, 1);

	B_StartOtherRoutine	(Mod_534_KDF_Milten_NW, "MARDUK");
};

INSTANCE Info_Mod_Marduk_Nachtschicht (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Nachtschicht_Condition;
	information	= Info_Mod_Marduk_Nachtschicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Marduk_Nachtschicht_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Mod_Gilde == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Nachtschicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_00"); //Teraz jestes nowicjuszem.... a wiec bedziesz wypelnial zadania nowicjusza.
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht_15_01"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_02"); //W tym roku mamy szczególnie dobre zbiory winogron.... Nasi nowicjusze z trudem nadazaja za wyciskaniem winogron.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_03"); //Wiec kiedy inni nowicjusze poszli spac w nocy, mozna kontynuowac stompowanie na nich przez co najmniej dwie godziny.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_04"); //Rece sa wypoczete i mocne, wiec to powinno wystarczyc na nadrobienie zaleglosci....
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht_15_05"); //Czy jest jeszcze cos innego?
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_06"); //Tak. Jak zapewne zauwazyliscie, ostatnio na zewnatrz murów klasztoru dzieje sie cos niepokojacego.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_07"); //Nie znamy dokladnych pomyslodawców, ale sa to niewatpliwie zlowieszcze, demoniczne sily, które sa szczególnie silne w nocy, kiedy promienie Innosa nie oswiecaja swiata.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_08"); //Wiec chcialbym, zebys modlil sie przynajmniej przez tydzien kazdego dnia o pólnocy w naszej Innoshrine.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht_32_09"); //Niech jego obecnosc uchroni nas przed zlem i odwróci nasza uwage od klasztoru, nawet jesli jego gwiazda nie jest na niebie.

	Log_CreateTopic	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARDUK_NACHTSCHICHT, "Marduk kazal mi stomp na winogrona przez dwie godziny, gdy inni nowicjusze poszli spac. Ponadto, mam sie modlic przez tydzien o pólnocy w klasztorze Innos.");
};

INSTANCE Info_Mod_Marduk_Nachtschicht2 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Nachtschicht2_Condition;
	information	= Info_Mod_Marduk_Nachtschicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrobilem to, co powiedzial mi pan, abym zrobil.";
};

FUNC INT Info_Mod_Marduk_Nachtschicht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Nachtschicht))
	&& (Mod_Marduk_Gestampft == TRUE)
	&& (Mod_Marduk_Gebetet == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Nachtschicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Nachtschicht2_15_00"); //Zrobilem to, co powiedzial mi pan, abym zrobil.
	AI_Output(self, hero, "Info_Mod_Marduk_Nachtschicht2_32_01"); //To wlasnie dla Ciebie, Novice. Udowodniles wytrwalosc, by w nagrode odzyskac rune. Uzywaj ich zgodnie z wola Innosa.

	B_GiveInvItems	(self, hero, ItRu_InstantFireball, 1);

	B_SetTopicStatus	(TOPIC_MOD_MARDUK_NACHTSCHICHT, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Marduk_Innosklinge (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Innosklinge_Condition;
	information	= Info_Mod_Marduk_Innosklinge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Drogi magik, chcialbym zadedykowac mój miecz.";
};

FUNC INT Info_Mod_Marduk_Innosklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis3))
	&& (Mod_AndreSchwert_Test == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Innosklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Marduk_Innosklinge_15_00"); //Drogi magik, chcialbym zadedykowac mój miecz.

	if (Mod_Gilde == 2)
	{
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_01"); //Sama swieta konsekracja jest otwarta dla paladynów i klótni Innos.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_02"); //I nie widze, zebyscie byli jednym z nich.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_03"); //Aby otrzymac konsekracje, musisz przejsc próby ognia.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_04"); //Idz do piwnicy klasztoru. Mozesz do niego dotrzec poprzez biblioteke.
		AI_Output(self, hero, "Info_Mod_Marduk_Innosklinge_32_05"); //Znajdziesz tam teleport, który zawiezie Cie do izb egzaminacyjnych.

		B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Aby poswiecic miecz, musze zdac próby ognia. W tym celu musze przejsc do piwnicy klasztoru, do której docieram poprzez biblioteke.");

		Mod_AndreSchwert_Test = 1;
	};
};

INSTANCE Info_Mod_Marduk_Kreis1	(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis1_Condition;
	information	= Info_Mod_Marduk_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie pierwszego kola magii.";
};
FUNC INT Info_Mod_Marduk_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_Hi))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis1_15_00"); //Naucz mnie pierwszego kola magii.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis1_32_01"); //Pierwsze kolo pozwala na uzycie utworzonych przez Ciebie run.
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis1_32_02"); //Mozesz teraz nauczyc sie formul zaklec, aby tworzyc wlasne runy.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Marduk_Kreis2		(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis2_Condition;
	information	= Info_Mod_Marduk_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie drugiego kola magii.";
};
FUNC INT Info_Mod_Marduk_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis2_15_00"); //Naucz mnie drugiego kola magii.
	
	if (Kapitel >= 1)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis2_32_01"); //Wejdz do drugiego kola i naucz sie rzucac jeszcze mocniejsze czary.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis2_32_02"); //Nadszedl jeszcze czas.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Marduk_Kreis3		(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis3_Condition;
	information	= Info_Mod_Marduk_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie trzeciego kola magii.";
};
FUNC INT Info_Mod_Marduk_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis3_15_00"); //Naucz mnie trzeciego kola magii.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis3_32_01"); //Tak, nadszedl czas. Wprowadz trzecie kolo magii. Czekaja na Ciebie nowe zaklecia.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis3_32_02"); //Nie nadszedl jeszcze czas, aby nauczyc sie trzeciego kola.
	};
};		

INSTANCE Info_Mod_Marduk_Kreis4 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis4_Condition;
	information	= Info_Mod_Marduk_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac czwarte kolo magii.";
};

FUNC INT Info_Mod_Marduk_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Marduk_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis4_15_00"); //Chce poznac czwarte kolo magii.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis4_32_01"); //Dobre. Wszystkie znaki sa wypelnione. Teraz wejdz w czwarte kolo, abys mial moc nowych zaklec.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis4_32_02"); //Jeszcze nie.
	};
};

INSTANCE Info_Mod_Marduk_Kreis5 (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis5_Condition;
	information	= Info_Mod_Marduk_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac piate kolo magii.";
};

FUNC INT Info_Mod_Marduk_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis5_15_00"); //Chce poznac piate kolo magii.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis5_32_01"); //Nastepnie dolacz do piatego kola magii. Teraz opanujesz mocniejsze czary niz kiedykolwiek wczesniej.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis5_32_02"); //Nadszedl jeszcze czas.
	};
};

INSTANCE Info_Mod_Marduk_Kreis6	(C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Kreis6_Condition;
	information	= Info_Mod_Marduk_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie ostatniego kola magii.";
};

FUNC INT Info_Mod_Marduk_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marduk_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Marduk_Kreis6_15_00"); //Naucz mnie ostatniego kola magii.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_01"); //Wiele czasu minelo od czasu, kiedy zawarles przymierze z Innosem. Wiele sie wydarzylo i nie znajdujemy pokoju.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_02"); //Jestes wybranym Innosem ". W ten sposób bedziesz potrzebowal calej sily, aby przetrwac swoje walki.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_03"); //Poswiecam pana teraz, prosze pania wybrac. Wprowadzasz szóste kolo.
			AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_04"); //Mozesz teraz nauczyc sie zaklec ostatniego kola od Higla.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Marduk_Kreis6_32_05"); //To jeszcze nie czas. Jesli poszedles troche dalej sciezka, która pokazuje Innos, to ja cie poucze.
	};
};

INSTANCE Info_Mod_Marduk_Pickpocket (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_Pickpocket_Condition;
	information	= Info_Mod_Marduk_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Marduk_Pickpocket_Condition()
{
	C_Beklauen	(133, ItMi_Gold, 61);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

	Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_BACK, Info_Mod_Marduk_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Marduk_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Marduk_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Marduk_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Marduk_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Marduk_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Marduk_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Marduk_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Marduk_EXIT (C_INFO)
{
	npc		= Mod_921_KDF_Marduk_NW;
	nr		= 1;
	condition	= Info_Mod_Marduk_EXIT_Condition;
	information	= Info_Mod_Marduk_EXIt_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Marduk_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Marduk_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
