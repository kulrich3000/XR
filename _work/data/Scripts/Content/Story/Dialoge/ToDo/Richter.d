INSTANCE Info_Mod_Richter_Hi (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Hi_Condition;
	information	= Info_Mod_Richter_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Richter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richter_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_01"); //Jestesmy najwyzszym sadem Khoraty.
	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_02"); //Decydujemy o bogactwie i ubóstwie, nienawisci i zemscie, zyciu i smierci.
	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_03"); //Ale wlasnie teraz decydujemy tylko o kolejnym posilku.
};

INSTANCE Info_Mod_Richter_UlrichVerpetzen (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_UlrichVerpetzen_Condition;
	information	= Info_Mod_Richter_UlrichVerpetzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ulrich zamierza sabotowac proces Anny.";
};

FUNC INT Info_Mod_Richter_UlrichVerpetzen_Condition()
{
	if (Mod_AnnaQuest == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Richter_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_UlrichVerpetzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_00"); //Ulrich zamierza sabotowac proces Anny.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_01"); //Tak? Z pewnoscia mozna mu zaufac. Co robi gonna?
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_02"); //On chce cie wszystkich zabic, jesli powinienes potepic Anne.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_03"); //Hmm..... Wtedy go zatrzymacie.
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_04"); //Dlaczego ja?
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_05"); //Nie szkolimy sie w walce..... Mamy jeszcze wazniejsze rzeczy do zrobienia.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_06"); //Wiec jesli Ulrich naprawde bedzie staral sie byc agresywny, pokonasz go z pomoca Naszych Gwardii.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_07"); //Slyszysz to?
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_08"); //Tak. Do zobaczenia dookola.

	Mod_AnnaQuestRichter = 1;

	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "Sedzia kazal mi stlumic powstanie Ulricha. Musze wybrac jedna strone....");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Richter_UlrichKO (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_UlrichKO_Condition;
	information	= Info_Mod_Richter_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_UlrichKO_10_00"); //Adanos byl dla nas zyczliwy. Podejmij nagrode od dyrektora.

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7370_OUT_Ulrich_REL, "TOT");
	B_StartOtherRoutine	(Mod_7365_OUT_Margarethe_REL, "START");
	B_StartOtherRoutine	(Mod_7376_OUT_Anna_REL, "TOT");
	B_StartOtherRoutine	(Mod_7374_OUT_Gerichtswache_01, "START");
	B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "START");

	AI_Teleport	(Mod_7370_OUT_Ulrich_REL, "TOT");

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Richter_Plagenquest (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Plagenquest_Condition;
	information	= Info_Mod_Richter_Plagenquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Plagenquest_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_00"); //Naruszyles prawa naszego miasta.
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_01"); //Prosze mi wybaczyc! Co zrobilem zle?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_02"); //Polowales na owady przed naszymi oczami.
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_03"); //Ale dlaczego zlamalem prawo miejskie?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_04"); //W naszych ksiegach prawniczych jest napisane, ze polowanie na owady w granicach miasta jest dozwolone tylko przy pomocy mlotków przeznaczonych do tego celu.
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_05"); //Poniewaz nie jestescie mieszkancami miasta, nie mozecie miec takiego mlotka w ogóle.... w przeciwnym razie winni bylibyscie kradziezy.
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_06"); //Masz cos do powiedzenia w swojej obronie?
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_07"); //l--
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_08"); //Przepisy prawa sa interpretowane rygorystycznie, a wyrok jest natychmiast egzekwowany. Otrzymasz......

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_09"); //... kare smierci. komornik!
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_10"); //Zatrzymajcie sie, poslizgnalem kilka linii.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_11"); //Um, cóz, werdykt jest.... cholernie, nie potrafie tego odczytac, za stary i wyplukany....
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_12"); //Hmm, w tym przypadku, arbitralny paragraf pozwala mi zdecydowac, ze ty,....
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_13"); //Teraz zaczynam byc zbyt kolorowa.... Jaki jest ten nonsens w przypadku mlotów i i tak polowan na owady?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_14"); //Niesprawiedliwi, nie osmieszaj naszych mieszczan. Prawo miejskie o mlotach mlotkowych istnieje prawie tak dlugo, jak nasze miasto istnieje......
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_15"); //A teraz..... Ach, pieklo, usunales mnie z mojej rockerki. Wyjdz z oczu.

	if (Mod_REL_Stadthalter == 1)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Cóz, jest to kolejna wirówka.... Ustawa o mlotach miejskich.... i owady powracaja. Powinienem zobaczyc Theodorus i sprawdzic, czy znalazl cos nowego.");
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Cóz, jest to kolejna wirówka.... Ustawa o mlotach miejskich.... i owady powracaja. Powinienem zobaczyc Wendla i sprawdzic, czy znalazl cos nowego.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Cóz, jest to kolejna wirówka.... Ustawa o mlotach miejskich.... i owady powracaja. Powinienem zobaczyc lucasy i sprawdzic, czy nie dowiedzial sie czegos nowego.");
	};

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);

	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
};

INSTANCE Info_Mod_Richter_Unfrieden (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Unfrieden_Condition;
	information	= Info_Mod_Richter_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam Ci to przekazac.";
};

FUNC INT Info_Mod_Richter_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_LeonhardRichter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Unfrieden_15_00"); //Mam Ci to przekazac.

	B_GiveInvItems	(hero, self, ItWr_LeonhardRichter, 1);

	AI_Output(self, hero, "DEFAULT"); //
	
	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Richter_Unfrieden_10_01"); //O Adanos, chron nas! On nie moze byc powazny!
	AI_Output(hero, self, "Info_Mod_Richter_Unfrieden_15_02"); //Czy zwolnisz mezczyzn?
	AI_Output(self, hero, "Info_Mod_Richter_Unfrieden_10_03"); //Natychmiastowo! Jestesmy pewni, ze mozna uniknac dalszych komplikacji!

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "Przekazalem wiadomosc sedziemu. Wtedy teraz powinienem odebrac moja wyplate.");

	Wld_InsertNpc	(Mod_7420_OUT_Michael_REL, "REL_CITY_001");
	Wld_InsertNpc	(Mod_7421_OUT_Philipp_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Richter_Endres (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Endres_Condition;
	information	= Info_Mod_Richter_Endres_Info;
	permanent	= 1;
	important	= 0;
	description	= "Próbuje dowiedziec sie, kto zabil Endresa.";
};

FUNC INT Info_Mod_Richter_Endres_Condition()
{
	if (Mod_EndresIndizien == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_15_00"); //Próbuje dowiedziec sie, kto zabil Endresa.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_01"); //Tak? Dowiedzielismy sie o tym krwiozerczym wydarzeniu. Co móglbys dowiedziec?
	AI_Output(hero, self, "Info_Mod_Richter_Endres_15_02"); //Sa trzy podejrzane osoby, które mnie wszystkich przesluchalem.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_03"); //Do jakich wniosków sklaniaja Cie wywiady? Wystarczy sie polozyc i zastanowic zanim odpowiesz.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_04"); //Oszczedzono nam procesu sadowego, poniewaz odczuwamy lekkie zmeczenie.

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "Jeszcze nie wiem.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana jest niewinna.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "uzdrowiciel jest niewinny.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel jest niewinny.", Info_Mod_Richter_Endres_A);
	};
};

FUNC VOID Info_Mod_Richter_Endres_E()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_E_10_00"); //Skad to wiesz?
};

FUNC VOID Info_Mod_Richter_Endres_H()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_H_10_00"); //A kto inny jest niewinny?

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "Jeszcze nie wiem.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana jest niewinna.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "uzdrowiciel jest niewinny.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel jest niewinny.", Info_Mod_Richter_Endres_A);
	};
};

FUNC VOID Info_Mod_Richter_Endres_I()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_I_10_00"); //Wtedy uzdrowiciel moze byc winowajca?
	AI_Output(hero, self, "Info_Mod_Richter_Endres_I_15_01"); //Tak wlasnie jest.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_I_10_02"); //Idzcie i znajdzcie dowody!

	Mod_EndresIndizien = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Mam znalezc dowód, ze to uzdrowiciel jest winowajca.");

	Info_ClearChoices	(Info_Mod_Richter_Endres);
};

FUNC VOID Info_Mod_Richter_Endres_D()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_D_15_00"); //Jeszcze nie wiem.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_D_10_01"); //Sprawdz!

	Info_ClearChoices	(Info_Mod_Richter_Endres);
};

FUNC VOID Info_Mod_Richter_Endres_C()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_C_15_00"); //Juliana jest niewinna.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	if (Npc_KnowsInfo(hero, Info_Mod_Roman_REL_Hi))
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Za winowajce uwaza sie mezczyzne.", Info_Mod_Richter_Endres_G);
	};
	Info_AddChoice	(Info_Mod_Richter_Endres, "To sprawia, ze czuje sie dobrze.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_B_15_00"); //uzdrowiciel jest niewinny.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "To sprawia, ze czuje sie dobrze.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_A_15_00"); //Wendel jest niewinny.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	if (Npc_KnowsInfo(hero, Info_Mod_Monteur_Endres))
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "On ma alibi.", Info_Mod_Richter_Endres_J);
	};
	Info_AddChoice	(Info_Mod_Richter_Endres, "To sprawia, ze czuje sie dobrze.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_G()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_G_15_00"); //Za winowajce uwaza sie mezczyzne.

	Mod_RichterEndres_Juliana = 1;

	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_Mod_Richter_Endres_H();
	}
	else
	{
		Info_Mod_Richter_Endres_I();
	};
};

FUNC VOID Info_Mod_Richter_Endres_J()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_J_15_00"); //On ma alibi.

	Mod_RichterEndres_Wendel = 1;

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_Mod_Richter_Endres_H();
	}
	else
	{
		Info_Mod_Richter_Endres_I();
	};
};

FUNC VOID Info_Mod_Richter_Endres_F()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_F_15_00"); //To sprawia, ze czuje sie dobrze.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_F_10_01"); //Nie czujesz sie wystarczajaco dobrze!

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "Jeszcze nie wiem.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana jest niewinna.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "uzdrowiciel jest niewinny.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel jest niewinny.", Info_Mod_Richter_Endres_A);
	};
};

INSTANCE Info_Mod_Richter_Endres02 (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Endres02_Condition;
	information	= Info_Mod_Richter_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_Endres02_Condition()
{
	if (Mod_EndresIndizien == 4)
	|| (Mod_EndresIndizien == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Endres02_Info()
{
	if (Mod_EndresIndizien == 4)
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_00"); //Byc moze byles przestepca, ale nie okazywales instynktu.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_01"); //Musimy podziekowac panstwu za pomoc w tym przypadku. Ta okropna rzecz nie moze sie zdarzyc ponownie.
	};

	AI_Output(hero, self, "Info_Mod_Richter_Endres02_15_02"); //Co dzieje sie z uzdrowicielem?
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_03"); //W zaleznosci od nastroju bedzie ona cieta na cztery czesci, wiszaca lub scieta.
	AI_Output(hero, self, "Info_Mod_Richter_Endres02_15_04"); //Czy trzeba go ukarac smiercia?
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_05"); //Ludzie chca tego w ten sposób, wierzcie nam. Jak bardzo byliby niezadowoleni, gdyby nie widzieli winnych pokrzywdzonych.
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_06"); //Teraz juz o tym nie mówmy.

	if (Mod_EndresIndizien == 4)
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_07"); //Zrobia to szczególowo plotki.

		B_GivePlayerXP	(200);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Ja sam zabralem uzdrowiciela.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_08"); //Jest wiecej przyjemnych rzeczy. Anselm oglosil, ze powinienes otrzymac ten eliksir jako nagrode za swoja sluzbe.

		B_GiveInvItems	(self, hero, ItPo_Perm_Health, 1);

		B_GivePlayerXP	(400);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Przekazalem morderczego uzdrowiciela sadownictwu.");
	};

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ENDRES, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Richter_Glorie (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Glorie_Condition;
	information	= Info_Mod_Richter_Glorie_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Richter_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_Glorie_10_00"); //Ach, milo Ci sie spotkac, uczony. Naprawde chcialem cos z wami omówic.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CASSIA");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "RICHTER");
};

INSTANCE Info_Mod_Richter_Freudenspender (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Freudenspender_Condition;
	information	= Info_Mod_Richter_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Poczuj sie jak danie radosci?";
};                       

FUNC INT Info_Mod_Richter_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Freudenspender_15_00"); //Poczuj sie jak danie radosci?
	AI_Output(self, hero, "Info_Mod_Richter_Freudenspender_10_01"); //Wolimy raczej miec dobry posilek i ekscytujace negocjacje.
};

var int Richter_LastPetzCounter;
var int Richter_LastPetzCrime;

INSTANCE Info_Mod_Richter_PMSchulden (C_INFO)
{
	npc         	= Mod_7371_OUT_Richter_REL;
	nr          	= 1;
	condition   	= Info_Mod_Richter_PMSchulden_Condition;
	information 	= Info_Mod_Richter_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Richter_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Richter_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Richter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Richter_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Richter_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Richter_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Richter_LastPetzCounter);
		
			if (diff > 0)
			{
				Richter_Schulden = Richter_Schulden + (diff * 50);
			};
		
			if (Richter_Schulden > 1000)	{	Richter_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Richter_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Richter_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_05"); //Pojawily sie nowe rzeczy.
		
		if (Richter_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Richter_LastPetzCrime == CRIME_THEFT)
		|| ( (Richter_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Richter_LastPetzCrime == CRIME_ATTACK)
		|| ( (Richter_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Richter_Schulden			= 0;
			Richter_LastPetzCounter 	= 0;
			Richter_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Richter_Schulden);
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
		Info_AddChoice		(Info_Mod_Richter_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Richter_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Richter_PMSchulden,"Ile to znów bylo?",Info_Mod_Richter_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Richter_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Richter_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Richter_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Richter_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Richter_Schulden);

	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Richter_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Richter_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Richter_PMSchulden,"Ile to znów bylo?",Info_Mod_Richter_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Richter_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Richter_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Richter_PETZMASTER   (C_INFO)
{
	npc         	= Mod_7371_OUT_Richter_REL;
	nr          	= 1;
	condition   	= Info_Mod_Richter_PETZMASTER_Condition;
	information 	= Info_Mod_Richter_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Richter_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Richter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_PETZMASTER_Info()
{
	Richter_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_02"); //Morderstwo jest powaznym wykroczeniem!

		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Richter_Schulden = Richter_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_04"); //Straznicy maja rozkaz osadzania kazdego mordercy na miejscu.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_05"); //Równiez wiekszosc mieszkanców obozu nie toleruje mordercy!
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_06"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_07"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_08"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_09"); //Nie bede tolerowal takiego zachowania w obozie!
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_10"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_11"); //Nie mozna po prostu bezkrytycznie atakowac ludzi. Bede panu za to odpowiadal.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_12"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_13"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_14"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_15"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_16"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_17"); //Bedziesz musial wyplacic odszkodowanie!
		
		Richter_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_15_18"); //Ile?
	
	if (Richter_Schulden > 1000)	{	Richter_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Richter_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Richter_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Richter_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Richter_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Richter_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Richter_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Richter_Schulden);
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayNow_10_01"); //Dobrze! Doloze wszelkich staran, aby wszyscy w miescie dowiedzieli sie o tym - wiec Twoja reputacja zostanie w rozsadny sposób przywrócona.

	B_GrantAbsolution (LOC_KHORATA);
	
	Richter_Schulden			= 0;
	Richter_LastPetzCounter 	= 0;
	Richter_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Richter_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayLater_10_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayLater_10_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Richter_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Richter_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Richter_Pickpocket (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Pickpocket_Condition;
	information	= Info_Mod_Richter_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Richter_Pickpocket_Condition()
{
	C_Beklauen	(145, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Richter_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

	Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_BACK, Info_Mod_Richter_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Richter_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Richter_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
};

FUNC VOID Info_Mod_Richter_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Richter_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Richter_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Richter_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Richter_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Richter_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Richter_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Richter_EXIT (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_EXIT_Condition;
	information	= Info_Mod_Richter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
