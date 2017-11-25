INSTANCE Info_Mod_Trimedron_Hi (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Hi_Condition;
	information	= Info_Mod_Trimedron_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Trimedron_Hi_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		self.aivar[AIV_AttackReason] = 0;
		self.aivar[AIV_LastPlayerAR] = 0;
		B_SetAttitude (self, ATT_FRIENDLY);
		return 0;
	}
	else
	{
		B_Attack	(self, hero, AR_None, 0);
		return 0;
	};
};

FUNC VOID Info_Mod_Trimedron_Hi_Info()
{
	
};

INSTANCE Info_Mod_Trimedron_Formel (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Formel_Condition;
	information	= Info_Mod_Trimedron_Formel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pod audmeau athuk.";
};

FUNC INT Info_Mod_Trimedron_Formel_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Formel_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_00"); //Pod audmeau athuk.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_01"); //Wysluchalem panskich slów i wysluchalem pana.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_02"); //Mimo tego, ze zadziwia mnie, ze po tak dlugim czasie moge znalezc tu ponownie czlowieka.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_03"); //Powiedz wiec, skad pochodzisz i jakie jest Twoje pragnienie?
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_04"); //Pochodze z ladu i przyjechalem tutaj magia teleportowa..... jako praojcowie kultury tej wyspy.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_05"); //Diese "cywilizacja" ist seit langem erloschen, die Insel von Menschen unbewohnt.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_06"); //Mialem takie samo wrazenie. Co sie stalo z mieszkancami?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_07"); //Wiele stuleci temu lad i morze zaczely sie wscieknac.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_08"); //Byl to czas, kiedy Innos i Beliar byli w czasie wojny w krainie Adano.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_09"); //Ogien, toksyczne opary i trzesienia ziemi zniszczyly wyspe i zagrozily wszystkim jej mieszkancom.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_10"); //Poniewaz nasze teleporty zostaly uszkodzone przez trzesienia ziemi, kaplani i uczeni w pospiechu tworzyli portale, które utrzymywali wylacznie przy pomocy swoich duchowych mocy.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_11"); //Rozpoczela sie ewakuacja, ale zanim wszyscy mieszkancy zdolali uciec, rozlegla eksplozja otworzyla grunt.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_12"); //Gorace, trujace opary wydostawaly sie gwaltownie i pokryly wszystko, co znajdowalo sie ponizej tego miejsca.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_13"); //Przywiezli oni wszystkim natychmiastowa smierc, która jeszcze byla na wyspie - nie tylko kaplanom i uczonym.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_14"); //... a wiec glowa lokalnej kultury. Najpierw Xeres, a nastepnie kleski zywiolowe. Dlatego wlasnie wychodza.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_15"); //Czy? Czy wymawiasz imie tej ohydnej krzywdy?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_16"); //Nastepnie donosicie o ostatecznym wyginieciu kultury, a mimo to potraficie czytac ich teksty, rozumiec ich jezyk.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_17"); //Kim jestes, jaki jest stosunek do Twojego wygladu? Wyjasnij sie!
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_18"); //Pochodze z tej samej wyspy, na której wasza kultura byla kiedys w domu, ale z innej czesci wyspy.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_19"); //Z czarodziejami Adano, niedawno odkrylem i zglebialem ruiny tego, co kiedys bylo waszym domem.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_20"); //Zrobilismy wiele badan, wiele dowiedzielismy sie o starej kulturze i wiele sie nauczylismy.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_21"); //W trakcie naszych badan reaktywowalismy jednak niektóre portale..... który - jak to ujac - umozliwil Xeresowi powrót na ten swiat.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_22"); //Z Adanos nie jest to mozliwe. Xeres zostal zniszczony.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_23"); //Wiesz o tym?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_24"); //Oczywiscie! Pozostalismy w kontakcie z innymi budowniczymi za posrednictwem mechanizmów teleportowych, z których czesc osiedlila sie gdzies indziej, a czesc z nich pozostala w Jharkendarzu.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_25"); //Nie ma to teraz znaczenia. Skad wiesz, ze wrócil? Czy kochasz mnie?
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_26"); //Nie, zapewniam, ze mówie prawde.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_27"); //Z pomoca swoich mocarzy i orków, wkrótce podbije Khorinisa.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_28"); //Tylko jesli przywrócimy Uriziel, mozemy go zatrzymac.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_29"); //Wiesz to wszystko? Nawet nazwa miecza, którym zniszczono Xeres?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_30"); //Prawda jest, ze zastanawiam sie, czy wasze slowa moga byc prawdziwe.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_31"); //Niedawno odczuwalem tez wszystkie silne magiczne wstrzasy w kulach.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_32"); //A jednak.... Jak moge miec pewnosc, ze jestes kim udaje ci sie byc?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_33"); //Kto mówi, ze nie chcesz wykorzystac sily miecza do realizacji innych planów?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_34"); //Nie, nie moge po prostu dac Wam dostep do strony obrzedowej.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_35"); //To bedzie panska obawa, która poprowadzi pana tutaj....
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_36"); //Tak, to jedyna droga! Co moge zrobic, aby cie przekonac?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_37"); //Cóz, niech mi sie nad tym zastanowie.....
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_38"); //Po pierwsze, powiedz mi, jak zniszczono miecz i jak zamierzasz go przywrócic.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_39"); //Orkiszowy szaman z Xeres zniszczyl go w rytuale.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_40"); //Kaplani trzech bogów chca przywrócic miecz za pomoca trzech rodzajów broni bogów.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_41"); //Orkisch ... Ork ... (nachdenklich) Es klingt nach einer Abwandlung des Wortes "pierwotny ura ura".
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_42"); //I mówisz o broni trzech nowych bóstw. Prawda jest taka, ze wszystko, co mówisz mi wydaje sie rozstrzygajace. A jednak....
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_43"); //Wspaniale, nadal ma watpliwosci.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_44"); //Poczekaj.... Jesli naprawde chcesz zniszczyc Xeres, musisz równiez pozbyc sie go jako czlowieka, który go wygnal.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_45"); //Powinniscie umiec je odnalezc nahorinach lub okolicznych wyspach i umiescic je z bronia bogów.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_46"); //Magicy powinni byc w stanie udzielic Ci jasnych informacji o miejscu pobytu.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_47"); //Gdy juz to uczyniliscie i przywiezliscie mi ich dusze jako swiadectwo waszego sukcesu, objawie wejscie do swietego miejsca.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_48"); //Prawdopodobnie i tak bedziecie potrzebowac ich serc do rytualu.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_49"); //Dobrze, jesli zajdzie taka potrzeba, bede na drodze.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_50"); //Dobre. Trójca Trójca Radano bedzie cie pilnowala.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Zanim Trimedron uwolni miejsce ceremonii, prosi mnie o zniszczenie mocarzy Xeriah i sprowadzenie do niego kamieni duszy bastardowej. Magowie prawdopodobnie moga dac mi wiecej informacji o aktualnym miejscu pobytu stworzen.");
};

FUNC VOID B_Say_Antwort_Seelenstein()
{
	if (Npc_HasItems(hero, ItAt_SoulStone) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_00"); //Ausgezeichnet. Ich spüre jetzt nur noch die Mächte zweier andere Machtträger.
	}
	else if (Npc_HasItems(hero, ItAt_SoulStone) == 2)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_01"); //Unglaublich. Wenn mich meine Wahrnehmung nicht täuscht, so ist es nur noch die Macht eines Seelensteines, die es zu erringen gilt.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_02"); //Drei Seelensteine sind nun in unserem Besitz.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_03"); //Jetzt noch an deinem Vorhaben zu zweifeln, müsste von Verblendung zeugen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_04"); //Ich werde nun den Zugang zur Ritualstätte offen legen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_05"); //Dieser Zettel enthält die Formel, die, wenn am richtigen Ort dort oben am Fels ausgeprochen, den Zugang zur Ritualstätte öffnet.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_06"); //Der dreifaltige Radanos möge euer Vorhaben gelingen lassen ...

		B_GiveInvItems	(self, hero, ItWr_Ritualplatz, 1);

		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_07"); //Großartig, dann kann ich die Magier herbeiholen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_08"); //Ach, und noch etwas. Mir ist der Name des Mannes eingefallen, der Xeres bezwang und ich bin auch nun bereit, ihn dir verraten.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_09"); //Wenn ich mich recht entsinne, trug er den Namen ... Argis.
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_10"); //Argis?! Meinst du vielleicht Argez?
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_11"); //(verblüfft) Ja, genau, Argez. Wie ist es möglich, dass du es weißt?
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_12"); //Ich begegnete auf Khorinis einem Mann, der diesen Namen trug.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_13"); //Was?! Das muss ein Zufall sein ... aber vielleicht ... Ach Unsinn ...
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_14"); //Geh jetzt deinen Aufgaben weiter nach und hole die Magier herbei.

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Trimedron dal mi notatke z magiczna formula, która otworzy droge do miejsca obrzedowego. Bedzie na skoczni tutaj. Powinienem otworzyc jaskinie i przejsc do Xardas.");
	};
};

INSTANCE Info_Mod_Trimedron_SeelensteinUrnol (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUrnol_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUrnol_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu kamien duszy Urnola, wladce cienia.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUrnol_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Urnol) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUrnol_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUrnol_15_00"); //Mam tu kamien duszy Urnola, wladce cienia.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Urnol, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinFormwandler (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinFormwandler_Condition;
	information	= Info_Mod_Trimedron_SeelensteinFormwandler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zmiennosc ksztaltu ksztaltownika-zmieniacza.....";
};

FUNC INT Info_Mod_Trimedron_SeelensteinFormwandler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Formwandler) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinFormwandler_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinFormwandler_15_00"); //Zmiennosc ksztaltu ksztaltownika nie uchronila go przed zniszczeniem. Oto jego dusza kamien.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Formwandler, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinUD (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUD_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUD_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z ciala nieumarlego smoka porwalem ten kamien duszy.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUD_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_UD) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUD_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUD_15_00"); //Z ciala nieumarlego smoka porwalem ten kamien duszy.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_UD, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_Fragen (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Fragen_Condition;
	information	= Info_Mod_Trimedron_Fragen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam jeszcze jedno pytanie....";
};

FUNC INT Info_Mod_Trimedron_Fragen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Fragen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Fragen_15_00"); //Mam jeszcze jedno pytanie....
	AI_Output(self, hero, "Info_Mod_Trimedron_Fragen_07_01"); //Tak, o ile wydaje sie to uzasadnione i mozliwe, przekaze panstwu informacje.
};

INSTANCE Info_Mod_Trimedron_Teleporter (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Teleporter_Condition;
	information	= Info_Mod_Trimedron_Teleporter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aby wrócic do Khorinis, musze znalezc teleportera.";
};

FUNC INT Info_Mod_Trimedron_Teleporter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Teleporter_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Teleporter_15_00"); //Aby wrócic do Khorinis musze znalezc teleportera i aktywowac go z magicznym skupieniem. Czy wiesz, gdzie moge go znalezc?
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_01"); //Tak, w poblizu miejscowosci.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_02"); //Odpowiedni postument znajdowal sie w poblizu wiezy, ale podczas jednego z trzesien ziemi zostal pochowany pod gruzami.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_03"); //Aby odkryc cokól, musisz wiec uzyc pikselek.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Cokól znajduje sie pod gruzem w poblizu zniszczonej wiezy. Musze kopac.");
};

INSTANCE Info_Mod_Trimedron_Xeres (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Xeres_Condition;
	information	= Info_Mod_Trimedron_Xeres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ale gdybys wiedzial o pozornej eksterminacji Xeres (....). )";
};

FUNC INT Info_Mod_Trimedron_Xeres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Xeres_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Xeres_15_00"); //Jesli wiedziales o pozornym unicestwieniu Xeres, dlaczego nigdy nie wróciles?
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_01"); //Powrót? Prawie wszystkie osiedla i wiekszosc miejsc obrzedowych zostala zniszczona.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_02"); //I Xeres jako taki mógl zniknac z powierzchni ziemi.... Wiecej nie dotyczylo to jednak jego przykrycia zla.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_03"); //Kaplanstwo kultowej krwi, odnowy i zdradliwych Uraków, demonicznych stworzen....[...]. wszystkie one umozliwilyby nowe osiedlenie sie tylko kosztem kolejnego rozlewu krwi.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_04"); //Na tej wyspie znalezlismy nowy dom i bylismy - przynajmniej przez najdluzszy czas - bezpieczni od wszelkiego zla.
};

INSTANCE Info_Mod_Trimedron_Urak (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Urak_Condition;
	information	= Info_Mod_Trimedron_Urak_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wspomnial pan wczesniej slowo 'Urak' w zwiazku z orkami.";
};

FUNC INT Info_Mod_Trimedron_Urak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Urak_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Urak_15_00"); //Du erwähntest vorher in Zusammenhang mit den Orks das Wort "pierwotny ura ura". Was hat es damit auf sich?
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_01"); //Uraki byly niegdys mieszkancami przedmiesc, jak wszyscy inni.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_02"); //Ale po wygranej przez Xeres, wkradli sie po jego stronie i zdradzili wszystko to, co nasza wiara, nasza kultura.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_03"); //Wiele cierpien zadano niezlomnym i wiernym budowniczym, a wielu niewinnych ludzi zabrano morderczymi rekami.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_04"); //Po wygnaniu Xeresów i wyjsciu trzech nowych bogów z wladzy i woli Radano, Celestialisci ukarali Uraków za ich nikczemna nieprawosc.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_05"); //Oni szaleli jak horda wojny w szal krwi i mieli wyrazac to poprzez swój wyglad.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_06"); //Przez caly czas zwierzeca figura miala ja znieksztalcac, co do dzis rysuje orki.
};

INSTANCE Info_Mod_Trimedron_Argez (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Argez_Condition;
	information	= Info_Mod_Trimedron_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mówil pan o mlodym czlowieku.";
};

FUNC INT Info_Mod_Trimedron_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_00"); //Mówiles o mlodym czlowieku, który odeslal Xeresa z powrotem do lona ziemi przez Uriziel. Co wiesz o nim?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_01"); //Cóz, ten rozdzial naszej historii jest jednym z najbardziej tajemniczych rozdzialów i nigdy nie móglby byc w pelni wyjasniony.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_02"); //Nikt nie wie, skad ten czlowiek przyszedl i dokad po wygnaniu Xeres.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_03"); //Jak to jest mozliwe! Musi byc cos na jego temat.....
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_04"); //To tak jak powiedzialem.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_05"); //Wydawalo sie, ze zniknal znikad.... a on zniknal bez sladu...... tak jakby nigdy nie istnial.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_06"); //Ale poczekaj.... rzekomo ktos kiedys uslyszal jego imie....
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_07"); //(oczekiwane) Tak?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_08"); //On.... Nie moge nawet o nim pomyslec.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_09"); //Wspanialy! Duch z amnezja.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_10"); //Byly to stulecia.... Potrzebuje tylko troche czasu na zastanowienie sie.
};

INSTANCE Info_Mod_Trimedron_EXIT (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_EXIT_Condition;
	information	= Info_Mod_Trimedron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trimedron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trimedron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
