INSTANCE Info_Mod_Vatras_Hi (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Hi_Condition;
	information	= Info_Mod_Vatras_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Vatras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Vatras_Hi_05_01"); //Jestem magikiem wody Vatry.
};

INSTANCE Info_Mod_Vatras_Daemonisch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Daemonisch_Condition;
	information	= Info_Mod_Vatras_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vatras_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_RitterBeiCoragon_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Vatras_Daemonisch_05_00"); //Co Pan (i) zglasza? Musimy natychmiast zaostrzyc srodki bezpieczenstwa.....

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "No cóz, miasto zostalo zrobione.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Vatras_Irdorath (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath_Condition;
	information	= Info_Mod_Vatras_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zamierzam udac sie na wyspe statkiem, aby kontynuowac walke z ciemnymi Xeresami.";
};

FUNC INT Info_Mod_Vatras_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath_15_00"); //Zamierzam udac sie na wyspe statkiem, aby kontynuowac walke z ciemnymi Xeresami.
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath_15_01"); //Potrzebuje jednak zdolnych towarzyszów na te wycieczke.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_05_02"); //I myslales o mnie?
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_05_03"); //Widzialam, jakie zlo moze przyjac to zagrozenie, poniewaz niemal zniszczylo ono miasto.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_05_04"); //Jesli zaproponowano mi mozliwosc, to nie tylko moja wola towarzyszenia wam tam, ale nawet mój obowiazek ratowania calego Khorinisa.
};

INSTANCE Info_Mod_Vatras_Irdorath2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath2_Condition;
	information	= Info_Mod_Vatras_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "To zaszczyt powitac Cie na pokladzie.";
};

FUNC INT Info_Mod_Vatras_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath2_15_00"); //To zaszczyt powitac Cie na pokladzie.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath2_05_01"); //Nastepnie udam sie teraz do portu i czekam na poczatek naszej podrózy.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Czarodziej wodny Vatras bedzie mi towarzyszyl.");

	B_GivePlayerXP	(100);

	Mod_VatrasDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Vatras_Irdorath3 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath3_Condition;
	information	= Info_Mod_Vatras_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Vatras_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VatrasDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	&& ((Mod_MiltenDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MyxirDabei > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath3_05_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_VatrasDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Vatras_Irdorath4 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath4_Condition;
	information	= Info_Mod_Vatras_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Vatras_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VatrasDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath4_05_01"); //Bardzo dobrze, wróce do portu.

	Mod_VatrasDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Vatras_Novize (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Novize_Condition;
	information	= Info_Mod_Vatras_Novize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce zostac magikiem wody.";
};

FUNC INT Info_Mod_Vatras_Novize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Novize_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Novize_15_00"); //Chce zostac magikiem wody.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_05_01"); //Zanim staniecie sie jednym z nas, musicie nam pomóc przez jakis czas.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_05_02"); //Jesli wykonasz dla nas duza prace, zabiore Cie do pracy. Tam bedziesz wykonywal zadania dla mnie i innych magów wody.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_05_03"); //Kiedy bedziecie nam sluzyc przez jakis czas, zabierzemy Was w krag wody.

	B_LogEntry	(TOPIC_MOD_WASSERMAGIER, "Aby zostac czarodziejem wody, musze na jakis czas sluzyc magikom wody. Ale zanim zostane przyjety do sluzby magikom wody, mam przed soba wielkie zadanie do wykonania.");
};

INSTANCE Info_Mod_Vatras_Aufgabe (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Aufgabe_Condition;
	information	= Info_Mod_Vatras_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie jest zadanie?";
};

FUNC INT Info_Mod_Vatras_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Novize))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Aufgabe_15_00"); //Jakie jest zadanie?
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_05_01"); //W dzisiejszych czasach brakuje coraz wiecej ludzi. Dowiedz sie gdzie sie znajduja.

	Log_CreateTopic	(TOPIC_MOD_VERMISSTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VERMISSTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Mam sie dowiedziec, gdzie znajduja sie zaginione osoby dla magów wody.");

	Info_ClearChoices	(Info_Mod_Vatras_Aufgabe);

	Info_AddChoice	(Info_Mod_Vatras_Aufgabe, "Gdzie rozpoczac wyszukiwanie?", Info_Mod_Vatras_Aufgabe_Wo);
};

FUNC VOID Info_Mod_Vatras_Aufgabe_Wo()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Aufgabe_Wo_15_00"); //Gdzie rozpoczac wyszukiwanie?
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_Wo_05_01"); //Idz do portu i porozmawiaj z jednym z naszych czlonków. Nazywa sie Diego.
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_Wo_05_02"); //Powiedz mu, ze cie poslalem, a on ci powie wszystko, co wie.

	Info_ClearChoices	(Info_Mod_Vatras_Aufgabe);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Chca, abym poszedl do portu i porozmawial z Diego. Gonna opowiada mi wszystko, co wiesz o zaginionych osobach.");
};

INSTANCE Info_Mod_Vatras_ErsteInfos (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_ErsteInfos_Condition;
	information	= Info_Mod_Vatras_ErsteInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wstepne informacje na temat osób zaginionych.";
};

FUNC INT Info_Mod_Vatras_ErsteInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Da))
	&& (Sklavenliste_OneTime == TRUE)
	&& (Npc_HasItems(hero, Mod_Sklavenliste_DMR) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_ErsteInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_00"); //Mam wstepne informacje na temat osób zaginionych.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_05_01"); //Sprawozdania.
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_02"); //Liste te znalazlem w poblizu domu Freda.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_05_03"); //Pozwole sobie to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_04"); //Tutaj.

	B_GiveInvItems	(hero, self, Mod_Sklavenliste_DMR, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_05_05"); //Bardzo dobry. Wyglada jak Elvrich jest jej kolejna ofiara.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_05_06"); //Porozmawiaj z nim i ogonuj go.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Vatras mówi, ze powinienem porozmawiac z Elvrichem, a potem go ogonowac.");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Vatras_Fertig (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Fertig_Condition;
	information	= Info_Mod_Vatras_Fertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dowiedzialem sie, kim jest porywacz.";
};

FUNC INT Info_Mod_Vatras_Fertig_Condition()
{
	if (Mod_VermisstenQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Fertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_00"); //Dowiedzialem sie, kim jest porywacz.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_01"); //Kim to jest?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_02"); //Rycerz demoniczny porwal Elwicza. Tak wiec zaginieni ludzie beda razem z Rycerzami Demonicznymi.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_03"); //Naprawde? Co daje ci taka pewnosc?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_04"); //Widzialem na wlasne oczy, jak Elvrich zostal porwany tej nocy przez mezczyzne noszacego jedna z jej zbroi.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_05"); //A jak to bylo uprowadzenie?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_06"); //.... Wojownik demoniczny wyszedl znikad i zniknal podobnie jak Elvrich.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_07"); //Hmm, no cóz, ze wszystko brzmi bardzo mylaco.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_08"); //I wiele pozostaje ukrytych w ciemnosci nocy.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_09"); //Nie wiemy na pewno, dopóki nie znajdziesz porywaczy.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_10"); //Zostales skierowany. Wejdz w droge i spróbuj dowiedziec sie wiecej od wojowników demonów.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_11"); //Ich obóz znajdziesz gdzies w Minental w górach.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_05_12"); //Slyszalem tez, ze powinni posiadac kopalnie. Byc moze jest to równiez wazna wskazówka....

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Vatras polecil mi przeprowadzic sledztwo w sprawie osób zaginionych przez Demonicznych Wojowników. Wskazal na kopalnie jako mozliwy punkt kontaktowy.");

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Vatras_RealInfos (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_RealInfos_Condition;
	information	= Info_Mod_Vatras_RealInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam teraz pewnosc (.....) )";
};

FUNC INT Info_Mod_Vatras_RealInfos_Condition()
{
	if (Mod_WM_KurganAlarm >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_RealInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_00"); //Mam teraz pewnosc, ze demonowi wojownicy stoja za wszystkim.

	if (Mod_WM_ElvrichImSumpf == 4)
	{
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_01"); //Porwany Elvrich sam opowiedzial mi o swoim losie i losie innych.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_02"); //Co, gdzie jest teraz? Nadal w niewoli?
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_03"); //Nie, udalo mu sie uciec z kopalni, która zamienila druga w grób.
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_04"); //Siedzi w Minental w obozie spolecznosci bagiennej i najpelniej cieszy sie zyciem.
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_05"); //Dowiedzialem sie tez od niego, ze kobieta zdradzila zolnierzy demonom, którzy zostali uprowadzeni przez szefa kopalni z magia teleportu.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_06"); //Hmm..... To, o czym jestem informowany, nie jest istotne dla miasta bezpieczenstwa.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_07"); //Jak najszybciej podejmiemy niezbedne kroki, aby polozyc kres tej zlej dzialalnosci.....

		B_GivePlayerXP	(650);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_08"); //W opuszczonym wale jej kopalni znalazlem ciala trzech uprowadzonych.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_09"); //W Adanos (krótkie przerwy)? Mialem nadzieje, ze wciaz sa wsród zyjacych....
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_10"); //No cóz, przynajmniej teraz jest jasnosc co do ich losu i mozemy zrobic wszystko, co jest konieczne, aby polozyc kres temu zgielkowi w murach miasta?

		B_GivePlayerXP	(400);
	};

	AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_11"); //Tak czy inaczej, wykonales swoja prace bardziej niz dobrze i udowodniles mi, ze bedziesz godnym bratem w naszej wspólnocie.
	AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_12"); //Nic nie stoi ci na przeszkodzie, aby dolaczyc do naszych szeregów.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_13"); //Mozesz do nas dolaczyc juz teraz.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_05_14"); //Niestety, wybrales juz inna droge.
	};

	Npc_RemoveInvItems	(hero, ItWr_DraalVermisstennotiz, 1);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Powiedzialem Vatrasowi wszystko. Moge teraz dolaczyc do nich.");

	B_SetTopicStatus	(TOPIC_MOD_VERMISSTE, LOG_SUCCESS);

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Vatras_Aufnahme (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_vatras_Aufnahme_Condition;
	information	= Info_Mod_vatras_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem gotów dolaczyc do Ciebie.";
};

FUNC INT Info_Mod_vatras_Aufnahme_Condition()
{
	if (Mod_Gilde == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_vatras_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_15_00"); //Jestem gotów dolaczyc do Ciebie.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_05_01"); //Jestes gotów dolaczyc do nas.
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_05_02"); //Ale gdy tylko nosisz jedna z naszych pancerzy, nie ma juz odwrotu.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus > 8)
			|| (Mod_Gottstatus <= 4)
			{
				AI_Output(self, hero, "Info_Mod_Vatras_Aufnahme_05_05"); //Powinienes jednak zrobic jeszcze kilka rzeczy na korzysc Adanosa.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Vatras_Aufnahme);

				Info_AddChoice	(Info_Mod_Vatras_Aufnahme, "Zmienilam zdanie.", Info_Mod_Vatras_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Vatras_Aufnahme, "Chce do Panstwa dolaczyc.", Info_Mod_Vatras_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_05_04"); //Najpierw powinienes zdobyc neutralna zbroje.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_05_03"); //Lepiej zdobyc wiecej doswiadczenia.
	};
};

FUNC VOID Info_Mod_vatras_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Nein_15_00"); //Zmienilam zdanie.
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Nein_05_01"); //Cokolwiek mówisz.

	Info_ClearChoices	(Info_Mod_vatras_Aufnahme);
};

FUNC VOID Info_Mod_vatras_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_61);
	
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Ja_15_00"); //Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_05_01"); //Dobre. Oto Twoja szata.

	CreateInvItems	(self, ITAR_Wassernovize1, 1);
	B_GiveInvItems	(self, hero, ITAR_Wassernovize1, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Wassernovize1);

	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Ja_15_02"); //A co z pistoletem?
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_05_03"); //Nowicjusze maja u nas paleczke. Oto Twoje.

	B_GiveInvItems	(self, hero, ItMw_RangerStaff_Addon, 1);

	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_05_04"); //Jesli potrzebujesz lepszej broni, musisz ja kupic na rynku.
	AI_Output(self, hero, "Info_Mod_Vatras_Aufnahme_Ja_05_05"); //Ta runa powinna pomóc ci bezpiecznie przeciwstawic sie niebezpieczenstwom, które moga czaic sie w drodze do moich braci.

	B_GiveInvItems	(self, hero, ItRu_Icebolt, 1);

	B_LogEntry_More	(TOPIC_MOD_WASSERMAGIER, TOPIC_MOD_GILDENAUFNAHME, "Jestem teraz czlonkiem kola wody.", "Jestem teraz czlonkiem kola wody.");
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);

	Mod_Gilde = 9;

	hero.guild = GIL_NOV;
	Npc_SetTrueGuild	(hero, GIL_NOV);

	Info_ClearChoices	(Info_Mod_Vatras_Aufnahme);

	CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItBE_Addon_WNOV_01, 1);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Vatras_AkilsHof (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_AkilsHof_Condition;
	information	= Info_Mod_Vatras_AkilsHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mage Adanos ', mam prosbe, która wymaga twoich umiejetnosci leczniczych.";
};

FUNC INT Info_Mod_Vatras_AkilsHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllDead))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Mod_AkilsHofAusgestorben == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_AkilsHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_00"); //Mage Adanos ", mam prosbe, która wymaga twoich umiejetnosci leczniczych.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_01"); //Powiedz mi wiec, co cie do mnie przyprowadzi.
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_02"); //Zle rzeczy wydarzyly sie na farmie Akila po tym, jak popadl w noc w jej domu poplecznik o ciemnych mocach.
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_03"); //Egill wyrzadzil bratu ciezkie obrazenia podczas ataku uzaleznienia od tytoniu, a inni ciezko choruja w bardzo krótkim czasie.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_04"); //Co Pan mówi? Brak zla? W takim przypadku moje mozliwosci nie wystarcza.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_05"); //Prawdopodobnie jest to raczej obsesja niz zwykla choroba, a moja sztuka zawodzi.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_06"); //Dobrze by bylo spieszyc sie z powrotem do klasztoru magików strazy pozarnej, aby tam recytowac zapytanie.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_07"); //Ten prosty eliksir powinien pomóc cierpiacemu Ehnimowi.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_05_08"); //Przejdz teraz, wiesz co robic.
	
	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Vatras_Hexenfluch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Hexenfluch_Condition;
	information	= Info_Mod_Vatras_Hexenfluch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam problem i mam nadzieje uzyskac od panstwa pomoc.";
};

FUNC INT Info_Mod_Vatras_Hexenfluch_Condition()
{
	if (Mod_WM_Verflucht == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_15_00"); //Mam problem i mam nadzieje uzyskac od panstwa pomoc.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_05_01"); //Tak, czuje, ze wydaje mi sie Pan byc pod czara zlego zaklecia. Co sie stalo?
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_15_02"); //Kobieta w tawernie Orlana rzucila na mnie zdradliwa magie.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_05_03"); //Co? Kobieta? To brzmi dla mnie tak samo...... czarownicy.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_05_04"); //Tutaj na Khorinis....

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_05_05"); //Co dokladnie sie stalo?

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);

	if (Mod_AttraktiveFrau == 2)
	{
		Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Uh.... i zlozyly sugestywne oferty.", Info_Mod_Vatras_Hexenfluch_C);
	};
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Rozmawiala ze mna i nagle upadlem za nia.", Info_Mod_Vatras_Hexenfluch_B);
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Niewiele. Mówila do mnie i nagle bylem w tym stanie.", Info_Mod_Vatras_Hexenfluch_A);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_C()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_C_15_00"); //Uh.... i zlozyly sugestywne oferty. Przykro mi z tego powodu. Bylem glupi, gdy sie zaangazowalem.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_C_05_01"); //Co? Tak, dzialales naprawde niegodnie. Nieco spokojniejszy) Ale mysle, ze to dobrze, ze mówisz mi prawde.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_C_05_02"); //Mam nadzieje, ze wyciagneliscie wnioski z tego bledu. Przejdzcie teraz do klasztoru Pyrokar, poniewaz nie moge wam pomóc w tej sprawie.

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_B()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_B_15_00"); //Rozmawiala ze mna i nagle upadlem za nia. Nie moglem nic zrobic i podlegalem jej woli.

	if (Mod_AttraktiveFrau == 2)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_01"); //Czyz to prawda? Moze to wynikac z tego, ze czarownice sa zdolne do takiej pracy. Nie widze jednak, by bylo to prawda.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_02"); //Jesli angazujesz sie w niemoralne prostytutki demoniczne - i z wlasnej wolnej woli - przynajmniej wyznaj to.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_03"); //A gdy idziesz do klasztoru do Pyrokar, który moze Ci pomóc w odpowiedzi na twoja prosbe, powinienes uwaznie pomyslec o swoim zachowaniu.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_04"); //Teraz wyjdz z oczu.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_05"); //Hmm, widze w waszych oczach, ze mówicie prawde.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_06"); //Faktycznie odpowiada to charakterowi czarownic, aby móc oddzialywac na ich ofiary.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_05_07"); //Niestety, nie jestem w stanie pomóc w tej sprawie. Najlepiej udac sie bezposrednio do Klasztoru Pyrokar.

		B_GivePlayerXP	(150);
	};

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_A()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_A_15_00"); //Niewiele. Mówila do mnie i nagle bylem w tym stanie.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_A_05_01"); //Nie widze jak mówisz mi prawde.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_A_05_02"); //Jesli angazujesz sie w niemoralne prostytutki demoniczne, przynajmniej wyznaj to.

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);

	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Tak, masz racje, przepraszam.", Info_Mod_Vatras_Hexenfluch_E);
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Przykro mi z tego powodu. Rozmawiala ze mna i nagle upadlem za nia.", Info_Mod_Vatras_Hexenfluch_D);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_E()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_E_15_00"); //Tak, masz racje, przepraszam.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_E_05_01"); //Naprawde mam nadzieje, ze dla waszego dobra nauczycie sie Panstwo uczyc na wlasnych bledach.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_E_05_02"); //Teraz udaj sie do klasztoru Pyrokar. Znajdziesz u niego pomoc.

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_D()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_D_15_00"); //Przykro mi z tego powodu. Rozmawiala ze mna i nagle upadlem za nia. Nie moglem nic zrobic i podlegalem jej woli.

	if (Mod_AttraktiveFrau == 2)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_05_01"); //Tak, naprawde? Jestem gleboko smutny i gniewny, ze znowu klamia panstwo na mnie tak bezwstydnie.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_05_02"); //Teraz wyjdz mi z oczu, brudny klamca.

		B_GivePlayerXP	(-100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_05_03"); //Hmm, wyczuwam przynajmniej prawde w waszych slowach. No cóz, zrobilbys dobrze, gdybys od razu byl szczery.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_05_04"); //Przejdz do klasztoru Pyrokar. On moze Ci pomóc w rozwiazaniu problemu.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

INSTANCE Info_Mod_Vatras_NovizenTrank (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_NovizenTrank_Condition;
	information	= Info_Mod_Vatras_NovizenTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam odebrac lekarstwo dla nowicjuszy ognia.";
};

FUNC INT Info_Mod_Vatras_NovizenTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ZugangZumKloster))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_NovizenTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_00"); //Mam odebrac lekarstwo dla nowicjuszy ognia.
	AI_Output(self, hero, "Info_Mod_Vatras_NovizenTrank_05_01"); //Lek dla nowicjuszy pozaru? Jakie cierpienia trzeba wyleczyc?
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_02"); //Wydaje sie, ze w klasztorze panuje goraczka, która zainfekowala nowicjuszy.
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_03"); //Magia Inno nie wystarczy, aby uzdrowic nowicjuszy, wiec potrzebne sa twoje uzdrawiajace umiejetnosci.
	AI_Output(self, hero, "Info_Mod_Vatras_NovizenTrank_05_04"); //Ah, czarna goraczka. Wez ten eliksir, powinien pomóc.

	B_GiveInvItems	(self, hero, VatrasNovizenTrunk, 1);

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Vatras dal mi lekarstwo.");
};

INSTANCE Info_Mod_Vatras_TempelDicht (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_TempelDicht_Condition;
	information	= Info_Mod_Vatras_TempelDicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przybywam z pilna wiadomoscia o waszych braciach.";
};

FUNC INT Info_Mod_Vatras_TempelDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_TempelDicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_00"); //Przybywam z pilna wiadomoscia o waszych braciach.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_01"); //Mów, synu.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_02"); //Magicy wodni zostali zaatakowani i ujeci we wlasnej swiatyni.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_03"); //Dostep zostal zaplombowany przez bariere, która mozna otworzyc tylko za pomoca magicznego klucza.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_04"); //Riordian powiedzial, ze wiesz, gdzie to klucz.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_05"); //To naprawde straszna wiadomosc. Chcialbym podac klucz, ale niestety jakis czas temu zostal on skradziony.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_06"); //Co? Kto ukradl klucz?
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_07"); //Byl czlonkiem zlowieszczego kultu krwi. Kult krwi jest grupa nikczemnych istot, które wyczarowuja zaburzenia równowagi.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_08"); //Gdzie zlodziej moze uciec?
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_09"); //W poblizu tawerny Orlanu znajduje sie jaskinia. Jesli dobrze pamietam, jest jedna z kryjówek kultów krwi. Spróbuj szczescia tam.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_10"); //Dziekujemy za koncówke.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_11"); //Jeszcze jedno! Kult krwi ma nieznane zdolnosci i moce, które przerazaja nawet nas. Nalezy zachowac ostroznosc.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_12"); //Bede, to zrobie. Wyjezdzam teraz.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_05_13"); //Obys wrócil bezpiecznie!

	B_LogEntry	(TOPIC_MOD_BEL_TEMPEL, "Czarodziejski klucz zostal jakis czas temu skradziony przez zwolennika kultu krwi. Podobno znajduje sie w poblizu tawerny Orlanu w jaskini. Vatras ostrzegl mnie równiez, ze kult krwi jest bardzo potezny. Bede na bacznosci.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_4092_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4093_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4094_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4095_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4096_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4097_BlutkultMagier_NW,	"TAVERNE");
};

INSTANCE Info_Mod_Vatras_TempelDicht2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_TempelDicht2_Condition;
	information	= Info_Mod_Vatras_TempelDicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klucz znalazlem!";
};

FUNC INT Info_Mod_Vatras_TempelDicht2_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_TempelDicht))
	&& (Npc_HasItems(hero, ItKe_MagicTempelKey) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_TempelDicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht2_15_00"); //Klucz znalazlem!
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht2_05_01"); //Bardzo dobry, syn. Jest pan niezwyklym wojownikiem.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht2_15_02"); //Ide teraz do Riordiana i ratuje pozostalych.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht2_05_03"); //Zrób to, ale spiesz sie. Czas nie jest naszym sojusznikiem.
	
	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Vatras_Kristall (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kristall_Condition;
	information	= Info_Mod_Vatras_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze wam krysztal Paladynu.";
};

FUNC INT Info_Mod_Vatras_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Kristall_15_00"); //Przynosze wam krysztal Paladynu.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Vatras_Kristall_05_01"); //Cenny przedmiot. Postaram sie, aby zajal nalezne mu miejsce.
	AI_Output(self, hero, "Info_Mod_Vatras_Kristall_05_02"); //Ten akt umozliwia dolaczenie do nas.

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_WASSERMAGIER, TOPIC_MOD_SÖLDNER, "Vatras mówi, ze moge dolaczyc do kola wody.", "Podalem krysztal Vatrasom. Torlof nie spodoba sie zbytnio.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Vatras_Sweetwater (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Sweetwater_Condition;
	information	= Info_Mod_Vatras_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz mnie zobaczyc?";
};

FUNC INT Info_Mod_Vatras_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_JG_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Sweetwater_15_00"); //Chcesz mnie zobaczyc?
	AI_Output(self, hero, "Info_Mod_Vatras_Sweetwater_05_01"); //Calkiem tak. Otrzymalem wiadomosc, ze Saturas potrzebuje Twojej pomocy.
	AI_Output(self, hero, "Info_Mod_Vatras_Sweetwater_05_02"); //Minelo troche czasu. Lepiej sie spieszyc.
	AI_Output(hero, self, "Info_Mod_Vatras_Sweetwater_15_03"); //Jestem juz na drodze.....

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Vatras wysyla mnie do Satur. Jest to znowu pilne......");
};

INSTANCE Info_Mod_Vatras_Zeremoniendolch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Zeremoniendolch_Condition;
	information	= Info_Mod_Vatras_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, powitanie. Mówia, ze wiesz cos o uroczystym sztylecie.";
};

FUNC INT Info_Mod_Vatras_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_00"); //Adanos, powitanie. Mówia, ze wiesz cos o uroczystym sztylecie.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_01"); //Tyle tylko, ze zapisy takiej relikwii znaleziono w Jharkendarzu. Znasz Jharkendara?
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_02"); //Tak, otworzylem portal.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_03"); //Nastepnie porozmawiaj z Merdarionem. Jestem pewien, ze moze ci powiedziec wiecej.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_04"); //Dziekuje, magikowi.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_05"); //Trzymac przez sekunde. Jesli pójdziesz tam, mozesz zabrac ze soba kilka rzeczy.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_06"); //Zazwyczaj robi to Cavalon, ale nie byl tu od dawna.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_07"); //Jest w swiatyni portalu i stoi tam nogi w brzuchu.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_08"); //Potem powiedz mu, zeby sie tu pojawil. Mam wiecej do transportu.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_09"); //To wlasnie robie. Co powinienem zabrac ze soba?
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_05_10"); //Tutaj. Przekazujesz te torbe magikowi Cronosowi.

	B_GiveInvItems	(self, hero, ItMi_CronosBeutel, 1);

	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_11"); //To juz wszystko.

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Vatras wysyla mnie do Merdarion. Mam wziac torbe dla Cronosa i odeslac Cavalon z powrotem.");
};

INSTANCE Info_Mod_Vatras_BosperLehrling (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_BosperLehrling_Condition;
	information	= Info_Mod_Vatras_BosperLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje nalewki, która przemienia sie z powrotem po dotknieciu.";
};

FUNC INT Info_Mod_Vatras_BosperLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_BosperLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_00"); //Potrzebuje nalewki, która przemienia sie z powrotem po dotknieciu.

	if (hero.guild != GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_01"); //Tkaniny nie sa moja specjalnoscia.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_02"); //Moge podac wam role odwrotu, który nastepnie trzeba miec alchemika rozbitego na jego czesci skladowe.

		B_GiveInvItems	(self, hero, ItSc_Rueckverwandlung, 1);

		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_03"); //To bardzo mi pomaga. Dzieki.

		Mod_Bosper_Tinktur = 1;

		B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Vatras mialem tylko role retroversion, która musialem zdemontowac przez alchemika, aby z niej zrobic nalewke.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_04"); //Nie sadzisz, ze pomóglbym pomóc takiemu diabelskiemu wisiorkowi jak ty?
		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_05"); //Nie jest to kwestia wiary. Bospalarnia jest przedmiotem wyrzutów sumienia.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_06"); //(zweifelnd) Na ja, Tkaniny nie sa moja specjalnoscia.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_07"); //Móglbym ci sprzedac zaklecie zwrotne, w którym musialbys miec alchemika rozbijajacego sie na jego czesci skladowe.
		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_08"); //Ile chcesz?
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_05_09"); //300 sztuk zlota. I nie ma negocjacji.
	};
};

INSTANCE Info_Mod_Vatras_BosperLehrling2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_BosperLehrling2_Condition;
	information	= Info_Mod_Vatras_BosperLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko w prawo, daj mi przewijac.";
};

FUNC INT Info_Mod_Vatras_BosperLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_BosperLehrling))
	&& (Mod_Bosper_Tinktur == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_BosperLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling2_15_00"); //Wszystko w prawo, daj mi przewijac.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	B_GiveInvItems	(self, hero, ItSc_Rueckverwandlung, 1);

	Mod_Bosper_Tinktur = 1;

	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Vatras mialem tylko role retroversion, która musialem zdemontowac przez alchemika, aby z niej zrobic nalewke.");
};

INSTANCE Info_Mod_Vatras_Kreis1	(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis1_Condition;
	information	= Info_Mod_Vatras_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie pierwszego kola magii.";
};
FUNC INT Info_Mod_Vatras_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis1_15_00"); //Naucz mnie pierwszego kola magii.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis1_05_01"); //Pierwsze kolo pozwala na uzycie utworzonych przez Ciebie run.
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis1_05_02"); //Mozesz teraz nauczyc sie formul zaklec, aby tworzyc wlasne runy.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Vatras_Kreis2		(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis2_Condition;
	information	= Info_Mod_Vatras_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie drugiego kola magii.";
};
FUNC INT Info_Mod_Vatras_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis2_15_00"); //Naucz mnie drugiego kola magii.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis2_05_01"); //Wejdz do drugiego kola i naucz sie rzucac jeszcze mocniejsze czary.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis2_05_02"); //Nadszedl jeszcze czas.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Vatras_Kreis3		(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis3_Condition;
	information	= Info_Mod_Vatras_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie trzeciego kola magii.";
};
FUNC INT Info_Mod_Vatras_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis3_15_00"); //Naucz mnie trzeciego kola magii.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis3_05_01"); //Tak, nadszedl czas. Wprowadz trzecie kolo magii. Czekaja na Ciebie nowe zaklecia.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis3_05_02"); //Nie nadszedl jeszcze czas, aby nauczyc sie trzeciego kola.
	};
};		

INSTANCE Info_Mod_Vatras_Kreis4 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis4_Condition;
	information	= Info_Mod_Vatras_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac czwarte kolo magii.";
};

FUNC INT Info_Mod_Vatras_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis4_15_00"); //Chce poznac czwarte kolo magii.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis4_05_01"); //Dobre. Wszystkie znaki sa wypelnione. Teraz wejdz w czwarte kolo, abys mial moc nowych zaklec.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis4_05_02"); //Jeszcze nie.
	};
};

INSTANCE Info_Mod_Vatras_Kreis5 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis5_Condition;
	information	= Info_Mod_Vatras_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce poznac piate kolo magii.";
};

FUNC INT Info_Mod_Vatras_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis5_15_00"); //Chce poznac piate kolo magii.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis5_05_01"); //Nastepnie dolacz do piatego kola magii. Teraz opanujesz mocniejsze czary niz kiedykolwiek wczesniej.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis5_05_02"); //Nadszedl jeszcze czas.
	};
};

INSTANCE Info_Mod_Vatras_Kreis6	(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis6_Condition;
	information	= Info_Mod_Vatras_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie ostatniego kola magii.";
};

FUNC INT Info_Mod_Vatras_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis6_15_00"); //Naucz mnie ostatniego kola magii.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_05_01"); //Wiele czasu minelo od czasu, kiedy zawarles przymierze z Innosem. Wiele sie wydarzylo i nie znajdujemy pokoju.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_05_02"); //Jestes Wybranym Adanosem ". W ten sposób bedziesz potrzebowal calej sily, aby przetrwac swoje walki.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_05_03"); //Poswiecam pana teraz, prosze pania wybrac. Wprowadzasz szóste kolo.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_05_04"); //Jesli chcesz, mozesz teraz nauczyc sie zaklec ostatniego kola od Nefariusa.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_05_05"); //To jeszcze nie czas. Jesli poszedles troche dalej po drodze Beliar cie pokaze, a ja cie poucze.
	};
};

INSTANCE Info_Mod_Vatras_Lehrer (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Lehrer_Condition;
	information	= Info_Mod_Vatras_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto moze mnie nauczyc jak zwiekszyc swoja magiczna moc?";
};

FUNC INT Info_Mod_Vatras_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Lehrer_15_00"); //Kto moze mnie nauczyc jak zwiekszyc swoja magiczna moc?
	AI_Output(self, hero, "Info_Mod_Vatras_Lehrer_05_01"); //Z pewnoscia moge panu w tym pomóc.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Vatras moze nauczyc mnie, jak wychowywac MANA.");
};

INSTANCE Info_Mod_Vatras_Lernen (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Lernen_Condition;
	information	= Info_Mod_Vatras_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Vatras_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Lehrer))
	&& (hero.attribute[ATR_MANA_MAX]	<	300)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Lernen_15_00"); //Naucz mnie czegos.

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Lernen_BACK_05_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};
	Info_ClearChoices	(Info_Mod_Vatras_Lernen);
};

FUNC VOID Info_Mod_Vatras_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

INSTANCE Info_Mod_Vatras_Ruestung (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Ruestung_Condition;
	information	= Info_Mod_Vatras_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge uzyskac lepsza szate?";
};

FUNC INT Info_Mod_Vatras_Ruestung_Condition()
{
	if ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Mod_ZweiteVerbesserung < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_15_00"); //Czy moge uzyskac lepsza szate?

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	&& (Mod_Gilde < 10)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_05_02"); //Slyszalem, ze podobno w poblizu jeziora na pólnocny zachód od miejsca wykopaliska mieszka paczka lapanek wodnych. Z ich skóra z pewnoscia moge poprawic swoja nowicjuszowa szate wodna troche.
	
		Mod_ErsteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "W poblizu jeziora na pólnocny zachód od miejsca wykopalisk znajduje sie stado wodniaków, z których skóra Vatras moze poprawic moja nowicjuszowska szate wodna.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_05_03"); //Slysze, ze w drodze na miejsce wykopu znajduje sie lyzwiarka wodna. Z jego futrem z pewnoscia móglbym troche poprawic wasza wodna magiczna szate.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Wasserlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "W drodze do miejsca wykopaliska maga wodnego znajduje sie nieznajomy w wodzie obcy, którego futro Vatras moze wykorzystac do poprawy mojej magicznej szaty wodnej.");
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
	Info_AddChoice	(Info_Mod_Vatras_Ruestung, DIALOG_BACK, Info_Mod_Vatras_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 0)
	&& (Mod_Gilde < 10)
	{
		Info_AddChoice	(Info_Mod_Vatras_Ruestung, "Udoskonalic robie Woda Novice Robe", Info_Mod_Vatras_Ruestung_WNOV_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		Info_AddChoice	(Info_Mod_Vatras_Ruestung, "Ulepsz wodociagi Magic Robe", Info_Mod_Vatras_Ruestung_KDW_S);
	};
};

FUNC VOID Info_Mod_Vatras_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

FUNC VOID Info_Mod_Vatras_Ruestung_WNOV_S ()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_WNOV_S_15_00"); //Ulepsz moja suknie wodna.

	if (Npc_HasItems(hero, ItAt_WassersnapperHaut) >= 1)
	&& (Npc_HasItems(hero, ItAr_Wassernovize1) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_05_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_WassersnapperHaut, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_Wassernovize1, 1);

		CreateInvItems	(self, ItAr_WNOV_S, 1);

		B_GiveInvItems	(self, hero, ItAr_WNOV_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_WNOV_S);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_Wassernovize1) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_05_02"); //Musisz miec nowa próbke wody lub nie bede w stanie naprawic jej dla Ciebie.
	}
	else if (Npc_HasItems(hero, ItAt_Wassersnapperhaut) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_05_03"); //Nie moge poprawic zbroi, jesli nie masz skóry na szpicke.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

FUNC VOID Info_Mod_Vatras_Ruestung_KDW_S ()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_KDW_S_15_00"); //Udoskonal moja magiczna szate wodna.

	if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_KDW_S_05_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_WaterShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_KDW_L_ADDON, 1);

		CreateInvItems	(self, ItAr_KDW_L_S, 1);

		B_GiveInvItems	(self, hero, ItAr_KDW_L_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_KDW_L_S);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_RIT_S_05_02"); //Musisz miec czarodziejska szate wodna lub nie bede w stanie ja dla ciebie naprawic.
	}
	else if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_RIT_S_05_03"); //Jesli nie masz plaszcza odbijajacego, nie moge poprawic pancerza.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

INSTANCE Info_Mod_Vatras_Pickpocket (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Pickpocket_Condition;
	information	= Info_Mod_Vatras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Vatras_Pickpocket_Condition()
{
	C_Beklauen	(180, ItMi_Gold, 97);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

	Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_BACK, Info_Mod_Vatras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vatras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vatras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vatras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vatras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vatras_EXIT (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_EXIT_Condition;
	information	= Info_Mod_Vatras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vatras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
