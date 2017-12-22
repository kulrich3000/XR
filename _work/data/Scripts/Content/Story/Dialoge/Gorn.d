INSTANCE Info_Mod_Gorn_Hi (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hi_Condition;
	information	= Info_Mod_Gorn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_00"); //Nie wierze w to...... Ty! Zaden potwór ani demon archipelag nie moze cie zabic.....
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_01"); //Milosc, by cie zobaczyc.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_02"); //Czlowiek.... niektóre wspomnienia ozywaja. To, co wspólnie przezylismy.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_03"); //To tak jak to bylo wczoraj, ze kopalismy strazników z naszej kopniaka.
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_04"); //Albo razem zabili tlusta trolle w twierdzy klasztornej.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_05"); //Oczywiscie, jak moge zapomniec o tluszczowej suce? I znów jestes we wlasciwym miejscu i we wlasciwym czasie.
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_06"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_07"); //No cóz, wlasnie mialem zabrac tam przekleta twierdze. Nie powinno byc mnóstwo skarbów, aby pobierac, ale takze wiele nieumarlych dranie.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_03_08"); //Ciezka praca, myslalam sama sobie. Az do czasu przybycia. To mial byc spacer z wami.
};

INSTANCE Info_Mod_Gorn_GotoCastlemine (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_GotoCastlemine_Condition;
	information	= Info_Mod_Gorn_GotoCastlemine_Info;
	permanent	= 0;
	important	= 0;
	description	= "No cóz, odwiedzajmy nieumarlych.";
};

FUNC INT Info_Mod_Gorn_GotoCastlemine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_GotoCastlemine_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_GotoCastlemine_15_00"); //No cóz, odwiedzajmy nieumarlych.
	AI_Output(self, hero, "Info_Mod_Gorn_GotoCastlemine_03_01"); //Nie spodziewalem sie od Ciebie nic mniej. Pokazmy te dranie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CASTLEMINE");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Gorn_AtCastlemine (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_AtCastlemine_Condition;
	information	= Info_Mod_Gorn_AtCastlemine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_AtCastlemine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_GotoCastlemine))
	&& (Npc_GetDistToWP(hero, "NW_CASTLEMINE_HUT_10_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_AtCastlemine_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_00"); //Tak wiec tak wlasnie jest. Kilka zlotych monet zebralo sie razem, ale nie az tak wiele, na co mialem nadzieje.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_01"); //I wydaje sie, ze kopalnia tez jest pochowana. W kazdym razie nie ma nic wiecej do dostania sie tutaj.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_02"); //Ale to bylo jeszcze duzo zabawy byc znowu na drodze z toba...... i powód wystarczajacy, aby spotkac sie z innymi facetami i przedyskutowac niektóre rzeczy.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_03"); //Czy moze mnie pan laska?
	AI_Output(hero, self, "Info_Mod_Gorn_AtCastlemine_15_04"); //Oczywiscie, o co chodzi?
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_05"); //Powiedz Diego, Milten i Lester, ze spotkamy sie w tawernie Dead Harpie.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_06"); //Odkad stales sie jednym z nas, równiez mozesz przyjechac.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_03_07"); //A jesli kiedykolwiek potrzebujesz pomocy, mozesz przyjsc do nas, wtedy postaramy sie Ci pomóc.
	
	Log_CreateTopic	(TOPIC_MOD_TREFFEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TREFFEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TREFFEN, "Gorn poprosil mnie, abym powiedzial Diego, Miltenowi i Lesterowi, ze chca sie spotkac w tawernie 'Zur Toten Harpie'.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Gorn_Daemonisch (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Daemonisch_Condition;
	information	= Info_Mod_Gorn_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_03_00"); //Hej, znów szukaj przygody?
	AI_Output(hero, self, "Info_Mod_Gorn_Daemonisch_15_01"); //Nie, tak naprawde chcialem tylko troche zapytac o niezwykle rzeczy, które ostatnio sie zdarzaja.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_03_02"); //Och, Pepe wszedl z kilkoma najemnikami do lasu, aby polowac na wilki, a nastepnie szalony i odszedl.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_03_03"); //Lares moze opowiedziec ci o tym wiecej. Zreszta chlopcy z lasu od tamtego czasu jedza trzy osoby.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_03_04"); //Thekla prawie nigdy nie podaza za gotowaniem i jest juz szalona.
	AI_Output(hero, self, "Info_Mod_Gorn_Daemonisch_15_05"); //Potem zawsze jest powód do rozmowy. Cóz, do zobaczenia wkrótce.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_03_06"); //Teraz nalezy zachowac ostroznosc.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Gorn powiedzial mi, ze Lares wyslal najemnika, aby scigal wilki z Pepe' em w lesie, gdzie byl szalony. Odpowiedni najemnicy maja zjadac wlosy z glowy od czasów Thekli.");
};

INSTANCE Info_Mod_Gorn_Irdorath (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath_Condition;
	information	= Info_Mod_Gorn_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bede musial udac sie statkiem do portu na wyspe (...). )";
};

FUNC INT Info_Mod_Gorn_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath_15_00"); //Bede musial zawiezc statek na wyspe w porcie, aby zblizyc sie o krok do zniszczenia Xeres.
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath_15_01"); //Czy myslisz o kimkolwiek, kogo moge zatrudnic dla zalogi?
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_03_02"); //Podróz na wyspe? Czlowiek, jestes zawsze dobry na niespodzianke....
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_03_03"); //No cóz, na pewno bedzie tam pas Orcfighter Cord.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_03_04"); //Trener trenuje jak szalenca przez caly dzien i z pewnoscia nie stracilby szansy na taka przygode.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_03_05"); //A potem jest Bennet, bo nie byloby zle miec na pokladzie kowala, gdyby trzeba bylo miec ostre ostrza.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Gorn dal mi Orkjäger Cord i Schmied Bennet jako potencjalnych towarzyszy.");
};

INSTANCE Info_Mod_Gorn_Irdorath2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath2_Condition;
	information	= Info_Mod_Gorn_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I na pewno nie pozwolisz, zebys równiez przyjechal......";
};

FUNC INT Info_Mod_Gorn_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath2_15_00"); //I na pewno nie pozwolisz, zebys równiez przyjechal......
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath2_03_01"); //Mówisz to. W tak pelna przygód podróz, nie bede mówil nie....
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath2_15_02"); //Ciesze sie, ze moge powitac Panstwa na pokladzie.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath2_03_03"); //Bede od razu w drodze do portu.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Doskonale, Gorn bedzie dla mnie kolysal siekiere, kiedy poplyniemy na wyspe.");

	B_GivePlayerXP	(150);

	Mod_GornDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Gorn_Irdorath3 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath3_Condition;
	information	= Info_Mod_Gorn_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Gorn_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_GornDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath3_03_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_GornDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gorn_Irdorath4 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath4_Condition;
	information	= Info_Mod_Gorn_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Gorn_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_GornDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath4_03_01"); //Bardzo dobrze, wróce do portu.

	Mod_GornDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Gorn_Treffen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Treffen_Condition;
	information	= Info_Mod_Gorn_Treffen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lester_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (Npc_GetDistToWP(self, "NW_TAVERNE_IN_RANGERMEETING_LARES") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Treffen_Info()
{
	var c_npc Gorn; Gorn = Hlp_GetNpc(Mod_533_SLD_Gorn_NW);
	var c_npc Diego; Diego = Hlp_GetNpc(Mod_538_RDW_Diego_NW);
	var c_npc Lester; Lester = Hlp_GetNpc(Mod_557_PSINOV_Lester_NW);
	var c_npc Milten; Milten = Hlp_GetNpc(Mod_534_KDF_Milten_NW);

	TRIA_Invite(Diego);
	TRIA_Invite(Lester);
	TRIA_Invite(Milten);
	TRIA_Start();

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_00"); //To milo, ze wszyscy przyjezdzacie. Myslalem, ze nadszedl czas na kolejne spotkanie. Jak Pan/Pani byl/a?

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_01"); //Ostatnie kilka tygodni spedzilem sam w jaskini. Przyszedl do mnie tylko nasz przyjaciel. Czuje sie jak cos nowego.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_02"); //Czuje sie komfortowo z magikami ognia. Nie ma jednak wielu sposobów na ucieczke od murów klasztoru, wiec nie jestem dobrze poinformowany o wszystkim, co dzieje sie na zewnatrz.

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_03"); //Coraz wiecej jest oznak, ze wszyscy mamy do czynienia z najgorszymi.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_04"); //(smiech) Od kiedy próbujesz byc prorokiem, Diego?
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_05"); //Moze ma racje. Martwi sie równiez Xardas. Wraz ze smiercia spiacego nie wyeliminowalismy calego nieszczescia.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_06"); //Co nas czeka?
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_07"); //Nadal jest ciemno. Ale pojawi sie dosc szybko.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_08"); //Niech przyjdzie! Nie wyobrazam sobie niczego, czego nie jestesmy w stanie osiagnac.

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_09"); //Twoja wyobraznia nigdy nie byla lepsza....

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_10"); //W rzeczywistosci nie brzmi to tak, jakbysmy otrzymali spokój i cisze, na która zaslugujemy.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_11"); //Przyznaj sie do tego, ze znów jestes posrodku.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_12"); //Wyglada to tak. Mysle, ze mam wiecej wrogów niz zamierzalem.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_13"); //Wiesz, mam nadzieje, ze nie musisz przechodzic przez to samo. Mozesz na nas liczyc, jesli wszyscy umrzemy.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_14"); //Nie powinienes byl tak drastycznie to ujac.

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_15"); //A do tego czasu?

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_16"); //Czekamy i zobaczymy.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_17"); //A siekiera gotowa.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_18"); //I magiczna swiezosc w pamieci.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_19"); //Zostalem dotkniety. Czy mamy jeszcze uroczyscie przysiegac nasza przyjazn z przysiega lub czyms?

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_20"); //(smiech) Pozwólcie mu odejsc. Nienawidze umów, nawet z moimi najlepszymi przyjaciólmi.

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_21"); //Wtedy pozostaniemy tacy: Kiedy potrzebujemy pomocy, jestesmy dla siebie nawzajem.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_22"); //Oko.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_28_23"); //Pewne. Wyraznie. A jesli nasze niebezpieczenstwo jest otwarte, chcialbym wiedziec. Klasztor nie jest pierwszym miejscem na swiecie, które wie, co sie dzieje.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_24"); //Wszystkie sluszne, wszystkie sluszne. (pauza) Teah, uh, wez to latwo wtedy, na razie. Do zobaczenia dookola.

	TRIA_Finish();

	B_LogEntry	(TOPIC_MOD_TREFFEN, "Spotkanie sie zakonczylo i zakonczyly sie nastepujace rzeczy: Diego zostaje w Khorinis, Lester prawdopodobnie wraca do Minentala, Milten zatrzymuje sie w klasztorze, a Gorn wraca do Lares na farmie Onar.");

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(hero);

	B_SetTopicStatus	(TOPIC_MOD_TREFFEN, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_33);
};

INSTANCE Info_Mod_Gorn_Hexen_04 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_04_Condition;
	information	= Info_Mod_Gorn_Hexen_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_04_Condition()
{
	if (Mod_WM_Boeden >= 14)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gorn_Hexen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lares_Hexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_03_00"); //Och, czlowiek, te straszliwe potwory na plaskowyzu, raczej nie odwazylibysmy sie.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_03_01"); //Nieumarli na Sekobach moze nie byc bez nich, ale nadal moga byc tworzone.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_03_02"); //Lares waha sie, ale cos innego, czeka na wlasciwy moment do ataku......
};

INSTANCE Info_Mod_Gorn_Hexen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_Condition;
	information	= Info_Mod_Gorn_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Mod_WM_GornAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_03_00"); //Hej, nieumarli na dworze Sekoba rozproszyli sie. Teraz moglibysmy je pokonac.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_03_01"); //Jesli sie z tym zgadzasz, to nasz potencjal powinien wystarczyc.
	
	Info_ClearChoices	(Info_Mod_Gorn_Hexen);

	Info_AddChoice	(Info_Mod_Gorn_Hexen, "Nie, teraz mam wazniejsze rzeczy do zrobienia.", Info_Mod_Gorn_Hexen_B);
	Info_AddChoice	(Info_Mod_Gorn_Hexen, "Jasne, ze jestem.", Info_Mod_Gorn_Hexen_A);
};

FUNC VOID Info_Mod_Gorn_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hexen_B_15_00"); //Nie, teraz mam wazniejsze rzeczy do zrobienia.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_B_03_01"); //Hmm, zbyt zle nie sadzilem, zebys tego nie chcial przeoczyc.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_B_03_02"); //Wtedy bedziemy musieli po prostu troche dluzej czekac, zanim dostaniemy wzmocnienia.

	Info_ClearChoices	(Info_Mod_Gorn_Hexen);
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Gorn_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hexen_A_15_00"); //Jasne, ze jestem.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_A_03_01"); //Bardzo dobrze, nie spodziewalem sie od Ciebie niczego wiecej. No cóz, tutaj idziemy.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_A_03_02"); //Spotkamy sie na rozdrozu. Jak za dawnych czasów.

	Mod_WM_GornAttack = 1;

	Info_ClearChoices	(Info_Mod_Gorn_Hexen);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
};

INSTANCE Info_Mod_Gorn_Hexen_02 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_02_Condition;
	information	= Info_Mod_Gorn_Hexen_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_02_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_CROSS") < 500)
	&& (Mod_WM_GornAttack == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_02_03_00"); //Chodzmy dalej, kopnijmy tylek tego nieumarlego czlowieka.
	
	Mod_WM_GornAttack = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "DIENER");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "DIENER");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "DIENER");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "DIENER");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "DIENER");

	Mod_798_SLD_Wolf_NW.aivar[AIV_Partymember] = TRUE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_Partymember] = TRUE;
	Mod_526_SLD_Lares_NW.aivar[AIV_Partymember] = TRUE;
	Mod_528_SLD_Cord_NW.aivar[AIV_Partymember] = TRUE;
	Mod_533_SLD_Gorn_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Gorn_Hexen_03 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_03_Condition;
	information	= Info_Mod_Gorn_Hexen_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_03_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (Npc_IsDead(DienerDesBoesen_01))
	&& (Npc_GetDistToWP(self, "NW_FARM4_WOOD_MONSTER_MORE_03") < 500)
	&& (Mod_WM_GornAttack == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_03_03_00"); //No cóz, pokazalismy je. To byla przyjemnosc ponownie walczyc po panskiej stronie.

	B_GivePlayerXP	(200);
	
	Mod_WM_GornAttack = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "START");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "START");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "START");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "START");

	Mod_798_SLD_Wolf_NW.aivar[AIV_Partymember] = FALSE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_Partymember] = FALSE;
	Mod_526_SLD_Lares_NW.aivar[AIV_Partymember] = FALSE;
	Mod_528_SLD_Cord_NW.aivar[AIV_Partymember] = FALSE;
	Mod_533_SLD_Gorn_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Gorn_BalrogGigantTot (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_BalrogGigantTot_Condition;
	information	= Info_Mod_Gorn_BalrogGigantTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_BalrogGigantTot_Condition()
{
	if (Mod_WM_CronosAttack == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_BalrogGigantTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_BalrogGigantTot_03_00"); //Hej, slysze, ze potwory i giganci na plaskowyzu zniknely.... i mysle, ze w jakis sposób byl pan zaangazowany.
	AI_Output(self, hero, "Info_Mod_Gorn_BalrogGigantTot_03_01"); //Doskonale osiagi. Chcialbym byc na imprezie, kiedy biliscie te potwory.
};

INSTANCE Info_Mod_Gorn_Drachen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Drachen_Condition;
	information	= Info_Mod_Gorn_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_03_00"); //Czlowiek, oh, czlowiek. W Minentalu wierzy sie, ze sprostalo to wszystkim wyzwaniom, które istnieja na swiecie, a potem te olbrzymie jaszczurki sa na progu.
	AI_Output(hero, self, "Info_Mod_Gorn_Drachen_15_01"); //No cóz, bez nowych wyzwan wszystko byloby monotonne i bezsensowne.
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_03_02"); //Jak zawsze przed jakimikolwiek wielkimi zadaniami. Tak, chyba masz racje.
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_03_03"); //Jestem równiez pewien, ze bedzie kolejna okazja do wspólnej przygody. Dbaj o siebie.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gorn_Knucker (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Knucker_Condition;
	information	= Info_Mod_Gorn_Knucker_Info;
	permanent	= 0;
	important	= 0;
	description	= "No cóz, nie byles na imprezie?";
};

FUNC INT Info_Mod_Gorn_Knucker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_KnuckerTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Knucker_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_00"); //No cóz, nie byles na imprezie? Nie jest to zwykle twój sposób na unikniecie wymiany ciosów.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_01"); //Och, jestes dobrym mówca. Ja i Kordowi kazano czuwac na skraju lasu, poniewaz czesc owiec zmarla, a dwóch chlopów zniknelo.
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_02"); //Martwe owce, zaginione chlopi? Brzmi to dla mnie jak mlode wilki i uciekajacy chlopi sprawiaja, ze stajesz w zoladku.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_03"); //Tak, jesli wilki sa w stanie ssac krew owcza do ostatniej kropli, to sa.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_04"); //Tak jak chlopi, którzy noca weszli do lasu jak w transie i znikneli......
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_05"); //Hmm, oczywiscie brzmi to nieco bardziej tajemniczo. Czy nie bylaby to kolejna okazja do wspólnej przygody?
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_06"); //Masz na mysli, idzcie do lasu i zobaczycie? Nie wiem o tym. Przynajmniej musialabym opuscic stanowisko na to stanowisko....
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_07"); //Chodzcie, bo piec minut spedzamy na zwiedzaniu lasu.....
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_08"); //A czy któres z demonicznych stworzen, które wisza tu dzis atakuja? Nie, to naprawde nie dziala tak.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_09"); //Hmm, ale nastepnego wieczoru z ulga. Potem mozemy zaczac dzialac i sprawic, ze las stanie sie niepewny.
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_10"); //Dobrze, zabiore cie wtedy. Miejmy nadzieje, ze nie bedziesz juz dluzej sciskal.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_03_11"); //Na co mozesz liczyc.

	Log_CreateTopic	(TOPIC_MOD_NL_GORN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_GORN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_GORN, "Gorn zostal skazany na strzezenie lasu, poniewaz owce stracily zycie, a rolnicy zagineli. Wieczorem chce wraz z nim zbadac, co sie tam dzieje.");
};

INSTANCE Info_Mod_Gorn_WaldSpaziergang (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_WaldSpaziergang_Condition;
	information	= Info_Mod_Gorn_WaldSpaziergang_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_WaldSpaziergang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Knucker))
	&& (Wld_IsTime(20,00,04,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_WaldSpaziergang_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_WaldSpaziergang_03_00"); //Och, tam jestescie. Czy mamy wiec isc?
	AI_Output(hero, self, "Info_Mod_Gorn_WaldSpaziergang_15_01"); //Tak, nie tracmy juz czasu.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldSpaziergang_03_02"); //Wszystko w porzadku, podazaj za mna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "DRAGON");
	B_StartOtherRoutine	(self, "WALDTOUR");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
};

INSTANCE Info_Mod_Gorn_NichtsLosImWald (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_NichtsLosImWald_Condition;
	information	= Info_Mod_Gorn_NichtsLosImWald_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_NichtsLosImWald_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_WaldSpaziergang))
	&& (Npc_GetDistToWP(hero, "NW_CRYPT_MONSTER07") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_NichtsLosImWald_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_NichtsLosImWald_03_00"); //Cóz, nie dzialo sie tu wiele, poza kilkoma istotami.
	AI_Output(self, hero, "Info_Mod_Gorn_NichtsLosImWald_03_01"); //W pewnym momencie powinnismy zatrzymac sie przy krypcie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VORKRYPTA");

	Wld_InsertNpc	(Zombie_Hel_01, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_02, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_03, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_04, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_05, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_06, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_07, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_08, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_09, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_10, "NW_CRYPT_01");
};

INSTANCE Info_Mod_Gorn_VorKrypta (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_VorKrypta_Condition;
	information	= Info_Mod_Gorn_VorKrypta_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_VorKrypta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_NichtsLosImWald))
	&& (Npc_GetDistToWP(hero, "NW_CRYPT_MONSTER01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_VorKrypta_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_VorKrypta_03_00"); //Mój tylek, czy widzisz to wszystko na cmentarzu krypty? Moze maja cos wspólnego z zniknieciem chlopów.
	AI_Output(self, hero, "Info_Mod_Gorn_VorKrypta_03_01"); //Chodzmy dalej, przyjmijmy sie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEIKRYPTA");
};

INSTANCE Info_Mod_Gorn_Hel (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hel_Condition;
	information	= Info_Mod_Gorn_Hel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hel_GhuleFutsch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hel_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hel_03_00"); //Gdzie poszla pieklo?
	AI_Output(hero, self, "Info_Mod_Gorn_Hel_15_01"); //Moze ona jest wskrzeszona w krypcie. Zejdzmy na dól.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KRYPTA");
};

INSTANCE Info_Mod_Gorn_WaldFertig (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_WaldFertig_Condition;
	information	= Info_Mod_Gorn_WaldFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_WaldFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hel_InKrypta))
	&& (Npc_IsDead(Mod_7299_OUT_Hel_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_WaldFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_03_00"); //(z wyjatkiem oddechu) Boah, mogla byc twarda bestia. Nawet Thekla jest wobec nich lagodna jak jagniecina.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_03_01"); //No cóz, nie bede sie smiac z takich postów sztuk walki kobiet.
	AI_Output(hero, self, "Info_Mod_Gorn_WaldFertig_15_02"); //Cóz, w kazdym razie byc moze znalezlismy przyczyne wydarzen w tej krwiozerczej demonice.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_03_03"); //A teraz moge wreszcie przez caly dzien nie stac bezczynnie przed kaplica. Hej, zawdzieczam ci jeden.
	AI_Output(hero, self, "Info_Mod_Gorn_WaldFertig_15_04"); //Och, pozwólcie mu odejsc. (joofully) Mozliwosc zrobienia kolejnej przygody z wami i kopania niektórych demonów i nieumarlych w tylku byla dla mnie wystarczajaca nagroda.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_03_05"); //Cóz, zobaczcie nastepnym razem. Dbaj o siebie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Gorn_ZweihandAlsEinhand (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_ZweihandAlsEinhand_Condition;
	information	= Info_Mod_Gorn_ZweihandAlsEinhand_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_ZweihandAlsEinhand_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (hero.attribute[ATR_STRENGTH] >= 120)
	&& (hero.hitChance[NPC_TALENT_1H] >= 50)
	&& (hero.hitChance[NPC_TALENT_2H] >= 50)
	&& ((Mod_Gilde == 2)
	|| (Mod_Gilde == 3)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_ZweihandAlsEinhand_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_03_00"); //Widze, ze nadal uzywasz dwóch rak z oburacz, z dwojgiem.
	AI_Output(hero, self, "Info_Mod_Gorn_ZweihandAlsEinhand_15_01"); //Tak. Co jest z tym nie tak?
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_03_02"); //Niemozliwe dla zwyklego wojownika, ale tak silnych jak ty i ja mozemy prowadzic dwie rece jak mezczyzni jednej reki.
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_03_03"); //Jesli bedziesz mial ochote, pokaze ci jak to zrobic.
};

INSTANCE Info_Mod_Gorn_ZweihandAlsEinhand2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_ZweihandAlsEinhand2_Condition;
	information	= Info_Mod_Gorn_ZweihandAlsEinhand2_Info;
	permanent	= 1;
	important	= 0;
};

FUNC INT Info_Mod_Gorn_ZweihandAlsEinhand2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Gorn_ZweihandAlsEinhand2.description = "Pokaz mi, jak uzywac ludzi dwurecznych jako ludzi jednej reki. (500 zloto)";
	}
	else
	{
		Info_Mod_Gorn_ZweihandAlsEinhand2.description = "Pokaz mi, jak uzywac ludzi dwurecznych jako ludzi jednej reki. (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_ZweihandAlsEinhand))
	&& (ZweihandAlsEinhand_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_ZweihandAlsEinhand2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_ZweihandAlsEinhand2_15_00"); //Pokaz mi, jak uzywac ludzi dwurecznych jako ludzi jednej reki.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_01"); //Najwazniejsze jest to, ze uczucie jednej i dwóch rak jest inne.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_02"); //Srodek ciezkosci broni znajduje sie dalej od ciala w trybie dwurecznym.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_03"); //Dlatego powinienes uwazac, aby nie rozciagac calej reki, poniewaz wtedy ciezar broni bedzie zbyt duzy.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_04"); //Niewiele machnij reka i nie masz zadnych problemów.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_05"); //Na co czekasz? Chce widziec jak praktykujecie!

		ZweihandAlsEinhand_Perk = TRUE;

		if (hero.HitChance[NPC_TALENT_1H] >= 60)
		{
			Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST2.MDS");
		}
		else if (hero.HitChance[NPC_TALENT_1H] >= 30)
		{
			Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST1.MDS");
		};

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_03_06"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Gorn_Standfest (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Standfest_Condition;
	information	= Info_Mod_Gorn_Standfest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz, jak moge zapobiec rzucaniu mnie przez powietrze przez niektórych wrogów?";
};

FUNC INT Info_Mod_Gorn_Standfest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (hero.attribute[ATR_STRENGTH] >= 60)
	&& (hero.attribute[ATR_DEXTERITY] >= 60)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Standfest_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Standfest_15_00"); //Czy wiesz, jak moge zapobiec rzucaniu mnie przez powietrze przez niektórych wrogów?
	AI_Output(self, hero, "Info_Mod_Gorn_Standfest_03_01"); //Jest droga. Masz troche czasu?
};

INSTANCE Info_Mod_Gorn_Standfest2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Standfest2_Condition;
	information	= Info_Mod_Gorn_Standfest2_Info;
	permanent	= 1;
	important	= 0;
};

FUNC INT Info_Mod_Gorn_Standfest2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Gorn_Standfest2.description = "Jak moge stac sie bardziej stabilny? (500 zloto)";
	}
	else
	{
		Info_Mod_Gorn_Standfest2.description = "Jak moge stac sie bardziej stabilny? (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Standfest))
	&& (Standfest_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Standfest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Standfest2_15_00"); //Jak moge stac sie bardziej stabilny?

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_01"); //W koncu liczy sie tylko odpowiednia mieszanka sily i umiejetnosci.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_02"); //Kiedy widzisz, ze jeden z przeciwników przygotowuje sie na potezny cios, przygotujesz sie.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_03"); //Tuz przed tym, zanim cie zatrzyma, zrób sie malym i przesun srodek ciezkosci ciala w kierunku ziemi.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_04"); //Jesli wtedy wlozysz cala swoja moc pod cios, bedzie to jeszcze bolesne, ale nie bedziesz zeglowal przez powietrze na odleglosc kilku metrów.
		AI_Output(hero, self, "Info_Mod_Gorn_Standfest2_15_05"); //Mysle, ze ja dostaje. Dzieki.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_06"); //Witamy.

		Standfest_Perk = TRUE;

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_03_07"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

var int Mod_Gorn_Help_Paladine;

INSTANCE Info_Mod_Gorn_Hilfe (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hilfe_Condition;
	information	= Info_Mod_Gorn_Hilfe_Info;
	permanent	= 1;
	important	= 0;
	description	= "Potrzebujesz pomocy";
};

FUNC INT Info_Mod_Gorn_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_15_00"); //Potrzebuje panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_03_01"); //Z czym?

	Info_ClearChoices	(Info_Mod_Gorn_Hilfe);

	Info_AddChoice	(Info_Mod_Gorn_Hilfe, DIALOG_BACK, Info_Mod_Gorn_Hilfe_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "Wiesz, gdzie moge uzyskac silna wydzieline Minecrawler' a?", Info_Mod_Gorn_Hilfe_MinecrawlerSekret);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_NeueAufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Alvares_Knast))
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "Mam znalezc najemnika.", Info_Mod_Gorn_Hilfe_Alvares);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_Kristall))
	&& (!Mod_Gorn_Help_Paladine)
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "Musze znalezc cos w miescie. )", Info_Mod_Gorn_Hilfe_Kristall);
	};
};

FUNC VOID Info_Mod_Gorn_Hilfe_BACK()
{
	Info_ClearChoices	(Info_Mod_Gorn_Hilfe);
};

FUNC VOID Info_Mod_Gorn_Hilfe_Kristall()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_Kristall_15_00"); //Musze znalezc cos w miescie, aby szantazowac paladynów. Informacje, artefakty..... cokolwiek.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_03_01"); //Hmm, prosze pozwolic mi pomyslec. W pospiechu tez nie moge sobie wiele pomyslec..... ale czekac minute.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_03_02"); //Slyszalem, jak Lee mówil o znanym mu wczesniej paladynie. Tlusty Lothar w górnej czesci jest uwazany za dosc polkniety.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_03_03"); //Lubi nadymac sie, ale nie jest tak bliski dyscypliny.....
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_03_04"); //Moze ci cos powiedziec.

	B_LogEntry	(TOPIC_MOD_TORLOFSPIONAGE, "Dowiedzialem sie od Gorna, ze Paladin Lothar ma slabosc na alkohol i duze usta w górnej cwiartce.");
	
	Mod_Gorn_Help_Paladine = TRUE;
};

FUNC VOID Info_Mod_Gorn_Hilfe_MinecrawlerSekret()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_15_00"); //Wiesz, gdzie moge uzyskac silna wydzieline Minecrawler' a?
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_03_01"); //Pewnego razu wczoraj powiedzialem, ze w jajkach miotacza miotacza jest silniejsza wydzielina niz w szczypcach.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_03_02"); //Mialem z wolnej kopalni dwie jajka mikolajkowe, kiedy uwolnilismy je od strazników, ale podalem je Miltenowi.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_03_03"); //Nie moglem obchodzic sie z jajkami, ale jestem pewien, ze mógl uzyc ich jako maga. Idz do niego i zapytaj go, moze jeszcze go ma.

	Mod_MinecrawlerEi = 2;
	
	B_LogEntry	(TOPIC_MOD_CONSTANTINOSZUTATEN, "Mocna tajemnice miotacza otrzymuje z warsztatu miotacza. Gorn powiedzial mi, ze dal Miltenowi dwa minecrawlery.");
};

FUNC VOID Info_Mod_Gorn_Hilfe_Alvares()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_Alvares_15_00"); //Mam znalezc najemnika.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Alvares_03_01"); //Kandydat najemnika..... hmm, na farmach nie bedzie wykwalifikowanego wojownika.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Alvares_03_02"); //Prawdopodobnie najprawdopodobniej ci, którzy za swoje czyny zostali juz aresztowani przez strazników miejskich.
};

INSTANCE Info_Mod_Gorn_Pickpocket (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Pickpocket_Condition;
	information	= Info_Mod_Gorn_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Gorn_Pickpocket_Condition()
{
	C_Beklauen	(210, ItMi_Gold, 179);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

	Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_BACK, Info_Mod_Gorn_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gorn_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gorn_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gorn_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gorn_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gorn_EXIT (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_EXIT_Condition;
	information	= Info_Mod_Gorn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gorn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_EXIT_03_00"); //Niech nigdy nie znajdziecie swego mistrza!

	AI_StopProcessInfos	(self);
};
