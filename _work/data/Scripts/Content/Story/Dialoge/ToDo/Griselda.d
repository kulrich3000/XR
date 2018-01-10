INSTANCE Info_Mod_Griselda_Hi (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Hi_Condition;
	information	= Info_Mod_Griselda_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Griselda_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_00"); //Co, kto jest gosciem? Równiez przystojny kolega.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_01"); //Zdumiewajace, udalo sie wlasciwie dotrzec do mnie.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_02"); //Co? Kim jestes?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_03"); //Winny) Mnie? Jestem stara mama.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_04"); //Ukryte w jaskini z duchami sniegu! Nie sadze. Przestancie mówic i wyjasnijcie sie sami!
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_05"); //(ironiczne) Ohh, mezczyzna z mózgiem. I on nie bedzie sie oszukiwal.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_06"); //Bardzo dobrze. Jestem matka siostry poswieconej sztukom magicznym.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_07"); //Siostrzenstwo magii? Nie mówisz o czarownicach, czy to Ty?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_08"); //Ohh, welch schlimmes Wort ... "Hexe". Ich ziehe die Umschreibung "Siostra sztuki ciemnej" vor.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_09"); //Co to jest z punkami. Co Pan tutaj robi i co Pan robi?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_10"); //Co tu robie? Przyszedles do mnie, czy nie?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_11"); //Wiec pytanie musi brzmiec: Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_12"); //....
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_13"); //Nie wydaje sie, abys byl w nastroju po ponurym. Moze bedzie to test?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_14"); //Tak, wygladasz jak czlowiek spragniony prób.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_15"); //Egzaminy? Co myslisz?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_16"); //Dobrze, egzaminy. Sprawdzaja ludzi, pokazuja, czy maja mózgi, odwage, sile i umiejetnosci.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_17"); //Jesli sie udowodnisz, sa nagrody. Co mówisz, bohater?
};

INSTANCE Info_Mod_Griselda_Pruefung (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung_Condition;
	information	= Info_Mod_Griselda_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "W porzadku, moge to zrobic wraz z egzaminem.";
};

FUNC INT Info_Mod_Griselda_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_15_00"); //W porzadku, moge to zrobic wraz z egzaminem.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_01"); //Teraz mozesz teraz pokazac, czy wiesz o stworzeniu tyle, ile myslisz, ze wiesz.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_02"); //Dokladniej rzecz ujmujac, ozywiona czesc stworzenia, istoty i stworzenia, które chodza, raczkuja i pelzaja na dnie ziemi.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_03"); //Na arenie pojawi sie istota i mozesz wybrac jedna z kilku istot, które beda z nia konkurowac.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_04"); //Uzyskujesz kontrole nad twoim stworzeniem w walce i mozesz go kontrolowac zgodnie z twoja wola.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_05"); //Jesli zwyciezysz, dostajesz nagrode.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_06"); //Jesli spróbujesz przerwac walke poprzez retransformacje, zostanie ona uznana za przegrana.

	AI_PlayAni	(self, "T_PRACTICEMAGIC5");

	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_07"); //Jak widac, na arenie jest teraz wilk. Dokonaj wyboru.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_08"); //Z którym stworzeniem chcialbys walczyc?

	B_StartOtherRoutine	(self, "ARENA");

	Wld_InsertNpc	(Wolf_Griselda_01, "HEXE_ARENA_SPAWN_SOLO_01");

	playerIsTransformed = FALSE;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Nakretka.", Info_Mod_Griselda_Pruefung_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Blad przy miesie.", Info_Mod_Griselda_Pruefung_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Owce.", Info_Mod_Griselda_Pruefung_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung_FalscheWahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_FalscheWahl_26_00"); //Hohohohoo, mój glupi.
};

FUNC VOID Info_Mod_Griselda_Pruefung_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_C_15_00"); //Nakretka.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_C_26_01"); //Tak powinno byc.

	B_GiveInvItems	(self, hero, ItSc_TrfSnapper, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

FUNC VOID Info_Mod_Griselda_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_B_15_00"); //Blad przy miesie.

	Info_Mod_Griselda_Pruefung_FalscheWahl();

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

FUNC VOID Info_Mod_Griselda_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_A_15_00"); //Owce.

	Info_Mod_Griselda_Pruefung_FalscheWahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSheep, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

INSTANCE Info_Mod_Griselda_Pruefung2 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung2_Condition;
	information	= Info_Mod_Griselda_Pruefung2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung2_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_00"); //Och, jestem w Tobie rozczarowany.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_01"); //Pulsujace zycie byloby twoja nagroda.... O, jak niefortunnie, zapomnialem wspomniec:
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_02"); //Twój zaklad zostanie splacony w ten sam sposób. (smiertelne jeki)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_03"); //Cóz, dokonanie wlasciwego wyboru nie bylo zbyt trudne.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_04"); //Przynajmniej moge teraz wykluczyc mozliwosc calkowitego glupca stojacego przede mna. (smiertelnicy)
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_05"); //Zadne wykroczenie, twoja nagroda nie powinna byc czescia sily zyciowej twojego zmarlego przeciwnika.

		B_RaiseAttribute_Rest (hero, ATR_HITPOINTS_MAX, 14);

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_06"); //Wiec po tym, jak przetrwales pierwsza walke z sukcesem, czy nie czujesz sie chetny na kolejny krok?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_07"); //Teraz dla szczesliwego chlopca czekaja kolejne nagrody.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_08"); //Tym razem jest garstka przeciwników, dwie muchy krwi i dwa pajaki.... Wiecej nic sie bac, nic poza osadem królestwa zwierzat.
	};
};

INSTANCE Info_Mod_Griselda_Pruefung3 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung3_Condition;
	information	= Info_Mod_Griselda_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce walczyc.";
};

FUNC INT Info_Mod_Griselda_Pruefung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung2))
	&& (Mod_Griselda_Arena == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_15_00"); //Chce walczyc.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung3_26_01"); //Dokonaj wyboru.

	Wld_InsertNpc	(Blutfliege_Griselda_01, "HEXE_ARENA_TEAM_01");
	Wld_InsertNpc	(Blutfliege_Griselda_02, "HEXE_ARENA_TEAM_02");
	Wld_InsertNpc	(Spinne_Griselda_01, "HEXE_ARENA_TEAM_03");
	Wld_InsertNpc	(Spinne_Griselda_02, "HEXE_ARENA_TEAM_04");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Prowadnice cieniste.", Info_Mod_Griselda_Pruefung3_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Szkielet.", Info_Mod_Griselda_Pruefung3_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Harpie.", Info_Mod_Griselda_Pruefung3_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung3_Wahl_26_00"); //Zgodnie z Panstwa zyczeniem.
};

FUNC VOID Info_Mod_Griselda_Pruefung3_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_C_15_00"); //Prowadnice cieniste.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfShadowbeast, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_B_15_00"); //Szkielet.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSkeleton, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_A_15_00"); //Harpie.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

INSTANCE Info_Mod_Griselda_Pruefung4 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung4_Condition;
	information	= Info_Mod_Griselda_Pruefung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung3))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung4_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_00"); //Nie wytrzymal toksyny. Zbyt zle, bo jako nagrode zdolnosc do ucieczki toksyn oczekiwalby cie.....
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_01"); //Och, jak niefortunnie zapomnialem wspomniec, ze teraz twoje zaklady powinny byc splacane w ten sam sposób. (smiertelne jeki)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_02"); //Och, mnie zaskoczylas. Wydaje sie, ze nie wypadles na glowe, mój chlopiec. (smiertelnicy)
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung4_15_03"); //Hej, co to jest z golemem bagiennym?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_04"); //Ohh, ich vergaß wohl, ihn zu erwähnen. Aber ich sagte doch "garstka", und das können durchaus fünf sein.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_05"); //Podobnie golem nie jest stworzeniem swiata zwierzat.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_06"); //Wiec nie gniewaj sie, walczyles odwaznie i znoszac trucizne, a takze otrzymasz nagrode za ucieczke od potegi trucizny.

		if (Gift < 3)
		{
			Gift += 1;

			PrintScreen	("Wzrosla Wasza odpornosc na toksyny.", -1, -1, FONT_SCREEN, 2);
		};

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_07"); //Teraz, gdy walczyles tak odwaznie, nie sadze, abys byl zdesperowany, by z radoscia stawic czola kolejnej próbie.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_08"); //Na Ciebie czekaja elementy w pierscieniu, golem ognia i lodu.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_09"); //Odwazne, a nawet niemozliwe wydaje mi sie obciecie obu z nich, wiec ja równiez zostawiam pana na twarzy obojga.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_10"); //Tylko jeden musi byc przyprowadzony na kolana, a twoja walka jest uwazana za miniona.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_11"); //Co wiecej, nie zaczna sie kurczyc.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_12"); //To brzmi jak kawalek ciasta. Co mówisz: golebnik?
	};
};

INSTANCE Info_Mod_Griselda_Pruefung5 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung5_Condition;
	information	= Info_Mod_Griselda_Pruefung5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotowy do wyjazdu.";
};

FUNC INT Info_Mod_Griselda_Pruefung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung4))
	&& (Mod_Griselda_Arena == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_15_00"); //Jestem gotowy do wyjazdu.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung5_26_01"); //No cóz, wiec dokonaj wyboru.

	Wld_InsertNpc	(Firegolem_Griselda_01, "HEXE_ARENA_TEAM_01");
	Wld_InsertNpc	(Icegolem_Griselda_01, "HEXE_ARENA_TEAM_03");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Warg.", Info_Mod_Griselda_Pruefung5_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Krwawienie.", Info_Mod_Griselda_Pruefung5_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Królik.", Info_Mod_Griselda_Pruefung5_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung5_Wahl_26_00"); //Tak jak sobie tego zyczysz.
};

FUNC VOID Info_Mod_Griselda_Pruefung5_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_C_15_00"); //Warg.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_B_15_00"); //Krwawienie.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfBloodhound, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_A_15_00"); //Królik.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

INSTANCE Info_Mod_Griselda_Pruefung6 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung6_Condition;
	information	= Info_Mod_Griselda_Pruefung6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung5))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung6_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_00"); //Ach, to bylo goraco i zimno w obraczkach dla wrazliwego chlopca.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_01"); //Zbyt zle, bo jako nagrode nalezy sie spodziewac, ze bedziecie odporni na cieplo i zimno.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_02"); //Och, jak niefortunnie zapomnialem wspomniec, ze teraz twoje zaklady powinny byc splacane w ten sam sposób. (smiertelne jeki)

		Mod_Griselda_Arena = -1;

		Wld_PlayEffect	("INFERNALFIRE", hero, hero, 0, 0, 0, FALSE);

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_03"); //(z zaskoczeniem) Oh..... sprawiles, ze prawie mnie pozbawiono mowy.
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung6_15_04"); //Dlaczego to byla dziecieca zabawa.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_05"); //Wszystkie sluszne, wszystkie sluszne, wszystkie sluszne. Wtedy bedziesz mial wiecej tych gier.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_06"); //Ale najpierw jednak nagroda za odrzucenie zywiolów. Sila oporu przeciwko nim bedzie rosla w tobie.

		PrintScreen	("5 Ochrona przed ogniem i magia", -1, -1, FONT_SCREEN, 2);

		hero.protection[PROT_FIRE] += 5;
		hero.protection[PROT_MAGIC] += 5;

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_07"); //Wiec gotowe do kolejnej rundy?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_08"); //Nastepnie bedziesz musial zmierzyc sie z trzema powolnymi, leniwymi nieumarlymi. I nawet nie w tym samym czasie.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_09"); //Dopóki nie pokonasz, pojawi sie nastepny.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_10"); //Mam nadzieje, ze nie bedzie pan obrazony, jesli powierze panu to niewymagajace zadanie.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_11"); //Kiedy jestes gotowy, dokonaj wyboru.
	};
};

INSTANCE Info_Mod_Griselda_Pruefung7 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung7_Condition;
	information	= Info_Mod_Griselda_Pruefung7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej.";
};

FUNC INT Info_Mod_Griselda_Pruefung7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung6))
	&& (Mod_Griselda_Arena == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung7_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_15_00"); //Idzmy dalej.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung7_26_01"); //Jakiego rodzaju jest to tym razem stworzenie?

	Wld_InsertNpc	(Zombie_Griselda_01, "HEXE_ARENA_TEAM_01");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Nakretka.", Info_Mod_Griselda_Pruefung7_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Knur.", Info_Mod_Griselda_Pruefung7_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Golem.", Info_Mod_Griselda_Pruefung7_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung7_Wahl_26_00"); //Zgodnie z Panstwa zyczeniem.
};

FUNC VOID Info_Mod_Griselda_Pruefung7_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_C_15_00"); //Nakretka.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSnapper, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_B_15_00"); //Knur.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfKeiler, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_A_15_00"); //Golem.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfGolem, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

INSTANCE Info_Mod_Griselda_Pruefung8 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung8_Condition;
	information	= Info_Mod_Griselda_Pruefung8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung7))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung8_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_00"); //Ach, czy ten chlopiec zachorowal?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_01"); //Szkoda, bo jako nagrode mozna bylo oczekiwac, ze bedziesz sie oprzec chorobom....
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_02"); //Och, jak niefortunnie zapomnialem wspomniec, ze teraz twoje zaklady powinny byc splacane w ten sam sposób. (smiertelne jeki)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_03"); //Niesamowity, nawet oddech dzumy, o której wiedziales dzieki umiejetnemu wyborowi, aby stawic opór.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_04"); //W ten sposób powinna wzrastac wasza odpornosc na choroby.

		if (Krankheit < 4)
		{
			Krankheit += 1;

			PrintScreen	("Wzrosla Pani odpornosc na choroby.", -1, -1, FONT_SCREEN, 2);
		};

		if (KHDP < 4)
		{
			KHDP += 1;

			//PrintScreen	("Deine Widerstandskraft gegenüber Giften ist gestiegen.", -1, -1, FONT_SCREEN, 2);
		};

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_05"); //Wiec grales i wygrales wiele nagród. Nie chcesz zagrac ostatni raz i dac mi szanse na wygrana?
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung8_15_06"); //Co myslisz? Wierze, ze....
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_07"); //To nie jest tak, jakbys mial wybór - hahahahahaha.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "TRANSFORM");
	};
};

INSTANCE Info_Mod_Griselda_Pickpocket (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pickpocket_Condition;
	information	= Info_Mod_Griselda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Griselda_Pickpocket_Condition()
{
	C_Beklauen	(117, ItPo_Perm_Health, 1);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

	Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_BACK, Info_Mod_Griselda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Griselda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Griselda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Griselda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Griselda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Griselda_EXIT (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_EXIT_Condition;
	information	= Info_Mod_Griselda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Griselda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Griselda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
