INSTANCE Info_Mod_Scatty_Hi (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_Hi_Condition;
	information	= Info_Mod_Scatty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Scatty_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_01_00"); //Jestes facetem, kt�ry prawie zapieczetowal nasz koniec!

	Log_CreateTopic	(TOPIC_MOD_ALTESLAGER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ALTESLAGER, "Przy wejsciu do starego obozu przywital mnie stary przyjaciel Scatty. Widocznie stary ob�z nadal istnieje.");

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Scatty_Hi);

	Info_AddChoice	(Info_Mod_Scatty_Hi, "Odpoczynek, przezyliscie, prawda?", Info_Mod_Scatty_Hi_C);
	Info_AddChoice	(Info_Mod_Scatty_Hi, "Jesli masz problem, przyjdz tutaj.", Info_Mod_Scatty_Hi_B);
	Info_AddChoice	(Info_Mod_Scatty_Hi, "Bylo to konieczne, chyba ze trzeba bylo umrzec przed wszystkimi innymi.", Info_Mod_Scatty_Hi_A);
};

FUNC VOID Info_Mod_Scatty_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hi_A_15_00"); //Bylo to konieczne, chyba ze trzeba bylo umrzec przed wszystkimi innymi.
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_A_01_01"); //Nastepnie wyjasnij mi co bylo konieczne.
	AI_Output(hero, self, "Info_Mod_Scatty_Hi_A_15_02"); //Gdybym tam nie byl, to spiaczka by sie obudzila i wtedy nie rozmawialibysmy tutaj.
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_A_01_03"); //Tak, sekciarskie blystki powiedzialy cos takiego, ale wiele m�wia, kiedy jest duzo bagna.
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_A_01_04"); //Ktos, kto przezyl taka walke, mozemy dobrze wykorzystac.

	Scatty_Start_DIA = 1;

	Info_ClearChoices	(Info_Mod_Scatty_Hi);
};

FUNC VOID Info_Mod_Scatty_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hi_B_15_00"); //Jesli masz problem, przyjdz tutaj.
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_B_01_01"); //Nie daje sie opowiedziec dwa razy, tu przyjedz, napadam.

	Scatty_Start_DIA = 2;

	Info_ClearChoices	(Info_Mod_Scatty_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

FUNC VOID Info_Mod_Scatty_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hi_C_15_00"); //Odpoczynek, przezyliscie, prawda?
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_C_01_01"); //Czy kochasz mnie? Sp�jrz na ob�z, a zobaczysz jak wygladamy.
	AI_Output(hero, self, "Info_Mod_Scatty_Hi_C_15_02"); //Czy musze wspomniec, ze zasluguje pan na to?
	AI_Output(self, hero, "Info_Mod_Scatty_Hi_C_01_03"); //Tak, wiem. Ale stary ob�z to wszystko, co pozostalo. Nawet jesli jest wiele asceli, mozemy zyc tylko z nimi.

	Scatty_Start_DIA = 3;

	Info_ClearChoices	(Info_Mod_Scatty_Hi);
};

INSTANCE Info_Mod_Scatty_Umgehauen (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_Umgehauen_Condition;
	information	= Info_Mod_Scatty_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scatty_Hi))
	&& (Scatty_Start_DIA == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Scatty_Umgehauen_01_00"); //O, moja biedna czaszka.
			AI_Output(hero, self, "Info_Mod_Scatty_Umgehauen_15_01"); //C�z, mysle, ze wiesz, ze nie maja ze mna zadnych problem�w.
			AI_Output(self, hero, "Info_Mod_Scatty_Umgehauen_01_02"); //Damn, wciaz jestes dobrym wojownikiem, widocznie. Mozemy uzyc kogos takiego jak Ty.

			Scatty_Start_DIA = 4;
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Scatty_Umgehauen_01_03"); //Jestes po prostu duza usta.
			AI_Output(hero, self, "Info_Mod_Scatty_Umgehauen_01_04"); //Moze i tak moga nam Panstwo pom�c.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Scatty_Hilfe (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_Hilfe_Condition;
	information	= Info_Mod_Scatty_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego m�glbym Ci pom�c?";
};

FUNC INT Info_Mod_Scatty_Hilfe_Condition()
{
	if ((Scatty_Start_DIA == 3)
	|| (Scatty_Start_DIA == 1)
	|| (Scatty_Start_DIA == 4))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_15_00"); //Dlaczego m�glbym Ci pom�c?
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_01_01"); //Mamy problem, a pan byl z nami kiedys. I na pewno nie zapomniales, ze trzymamy sie razem.
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_15_02"); //Czy Pan pom�gl mi pom�c? Czy trzymalismy sie razem, kiedy wszyscy pr�bowaliscie mnie zabic?
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_01_03"); //Myslelismy, ze nas zdradziliscie. Jesli zawrzyniesz umowe z nowym obozem, bedziesz dla nas sprzedawczykiem.

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_ALTESLAGER, "Najwyrazniej sa one wciaz tak samo dobre jak ostatni raz, to moze byc zabawa. Ale tym razem jednak maja problemy. I przychodza z 'ty kiedys byles jednym z nas'. Madrze byloby im pom�c?");

	Info_ClearChoices	(Info_Mod_Scatty_Hilfe);

	Info_AddChoice	(Info_Mod_Scatty_Hilfe, "Umiesc swoje problemy gdzie indziej, brudni zdrajcy!", Info_Mod_Scatty_Hilfe_B);

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		Info_AddChoice	(Info_Mod_Scatty_Hilfe, "Co powinienem dla Ciebie zrobic?", Info_Mod_Scatty_Hilfe_A);
	};
};

FUNC VOID Info_Mod_Scatty_Hilfe_A()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_A_15_00"); //Co powinienem dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_A_01_01"); //C�z, istniejemy gl�wnie poprzez walki na arenie. C�z, niestety coraz mniej bojownik�w wygrywa do naszego obozu, wiec nic juz nie bierzemy.
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_A_15_02"); //I jaka role w tym odgrywam?
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_A_01_03"); //C�z, mozna walczyc o stary ob�z na arenie. I inne sprawy dotyczace areny.
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_A_15_04"); //Widze, gdzie powinienem sie zarejestrowac?
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_A_01_05"); //Bartholo baron jest odpowiedzialny za wszystko, co zwiazane z administracja obozu.
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_A_15_06"); //Jestem pewien, ze barony rudy z radoscia zn�w mnie zobacza.
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_A_01_07"); //Nie sadze, ze zabijaja Cie bez sluchania Ciebie. Wszakze znajduja sie oni w pozycji gdzie moga byc szczesliwi z kazdego.
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_A_15_08"); //Bardzo uspokajajacy.

	B_LogEntry	(TOPIC_MOD_ALTESLAGER, "Postanowilem wiec im pom�c. Mam walczyc o nie na arenie i 'radzic sobie' z innymi rzeczami, wiec moge byc ciekawy. Mam nadzieje, ze nie bede tego zalowal. Scatty kazal mi porozmawiac z Bartholo. Chetnie zn�w mnie odwiedzi.");

	Scatty_Start_DIA = 5;

	Info_ClearChoices	(Info_Mod_Scatty_Hilfe);	
};

FUNC VOID Info_Mod_Scatty_Hilfe_B()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Hilfe_B_15_00"); //Umiesc swoje problemy gdzie indziej, brudni zdrajcy!
	AI_Output(self, hero, "Info_Mod_Scatty_Hilfe_B_01_01"); //Wszystko w porzadku, wyjdz stad!

	B_LogEntry	(TOPIC_MOD_ALTESLAGER, "Postanowilem opuscic stary ob�z na sw�j los.");
	B_SetTopicStatus	(TOPIC_MOD_ALTESLAGER, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Scatty_Hilfe);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Scatty_ArenaFight (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_ArenaFight_Condition;
	information	= Info_Mod_Scatty_ArenaFight_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_ArenaFight_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorus_Arena))
	&& (Wld_IsTime(08,00,23,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_ArenaFight_Info()
{
	AI_Output(self, hero, "Info_Mod_Scatty_ArenaFight_01_00"); //Drodzy czlonkowie naszego obozu i innych oboz�w, dzisiaj toczy sie bitwa pomiedzy nieznanym i rozkolysanym Templariuszem Gorem Karanto. Zaklady zostaja wniesione.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "KAMPF");

	B_Attack	(Mod_1871_TPL_GorKaranto_MT, Mod_1872_NONE_Unbekannt_MT, AR_NONE, 0);

	Wld_SendTrigger	("ARENAKAMERA");
};

INSTANCE Info_Mod_Scatty_WannaFightUB (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_WannaFightUB_Condition;
	information	= Info_Mod_Scatty_WannaFightUB_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce walczyc z nieznanym!";
};

FUNC INT Info_Mod_Scatty_WannaFightUB_Condition()
{
	if (Mod_GorKarantoSchwach == 2)
	&& (Wld_IsTime(08,00,23,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_WannaFightUB_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_WannaFightUB_15_00"); //Chce walczyc z nieznanym!
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_01_01"); //C�z, teraz masz ochote walczyc. Postaram sie o walke z nim.
	AI_Output(hero, self, "Info_Mod_Scatty_WannaFightUB_15_02"); //Nos mi nazwisko....
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_01_03"); //Wszystkie prawa, nazwy nie maja znaczenia. Mysle, ze pasuje do Twojego stylu, gdyby nie wspomniano o Twoim imieniu.
	AI_Output(hero, self, "Info_Mod_Scatty_WannaFightUB_15_04"); //Wtedy chce walczyc.
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_01_05"); //Idz na arene, na Ciebie czeka nieznane.

	B_StartOtherRoutine	(Mod_1872_NONE_Unbekannt_MT, "ARENAFIGHT");

	B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "KAMPF");

	Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS] = Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS_MAX];

	Mod_GorKarantoSchwach = 3;
};

INSTANCE Info_Mod_Scatty_WannaFightUB_AK (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_WannaFightUB_AK_Condition;
	information	= Info_Mod_Scatty_WannaFightUB_AK_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_WannaFightUB_AK_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scatty_WannaFightUB))
	&& (Wld_IsTime(08,00,23,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_WannaFightUB_AK_Info()
{
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_AK_01_00"); //Nieodebrane nieznane walczy z bezimiennym wojownikiem straznika. Zaklady zostaja wniesione.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Scatty_WannaFightUB_2 (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_WannaFightUB_2_Condition;
	information	= Info_Mod_Scatty_WannaFightUB_2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce ponownie walczyc z nieznanym.";
};

FUNC INT Info_Mod_Scatty_WannaFightUB_2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorus_Botschaft))
	&& (Wld_IsTime(08,00,23,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_WannaFightUB_2_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_WannaFightUB_2_15_00"); //Chce ponownie walczyc z nieznanym.
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_2_01_01"); //Wszystko w prawo, idz na arene, nieznany bedzie czekac na Ciebie.

	B_StartOtherRoutine	(Mod_1872_NONE_Unbekannt_MT, "ARENAFIGHT");

	B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "KAMPF");

	Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS] = Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS_MAX];

	Mod_GorKarantoSchwach = 8;
};

INSTANCE Info_Mod_Scatty_WannaFightUB_AK_2 (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_WannaFightUB_AK_2_Condition;
	information	= Info_Mod_Scatty_WannaFightUB_AK_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_WannaFightUB_AK_2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scatty_WannaFightUB_2))
	&& (Wld_IsTime(08,00,23,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_WannaFightUB_AK_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Scatty_WannaFightUB_AK_2_01_00"); //Nieodebrane nieznane walczy z bezimiennym wojownikiem straznika. Zaklady zostaja wniesione.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Scatty_UB_Besiegt (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_UB_Besiegt_Condition;
	information	= Info_Mod_Scatty_UB_Besiegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pokonalem Nieznanego Wojownika.";
};

FUNC INT Info_Mod_Scatty_UB_Besiegt_Condition()
{
	if (Mod_GorKarantoSchwach == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_UB_Besiegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_UB_Besiegt_15_00"); //Pokonalem Nieznanego Wojownika.
	AI_Output(self, hero, "Info_Mod_Scatty_UB_Besiegt_01_01"); //Bardzo dobry, w koncu jeden z naszych bojownik�w, kt�ry wygral ponownie.
	AI_Output(self, hero, "Info_Mod_Scatty_UB_Besiegt_01_02"); //Oto Tw�j udzial w przychodach.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(self, "START");

	Mod_GorKarantoSchwach = 11;
};

INSTANCE Info_Mod_Scatty_AboutSabitsch (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_AboutSabitsch_Condition;
	information	= Info_Mod_Scatty_AboutSabitsch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada dzialalnosc zaklad�w?";
};

FUNC INT Info_Mod_Scatty_AboutSabitsch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_AboutSabitsch_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_AboutSabitsch_15_00"); //Jak wyglada dzialalnosc zaklad�w?
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_01"); //Miserable. Ten nowy zawodnik Sabitsch jest jego imieniem, niszczy caly m�j zaklad bukmacherski.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_02"); //Do tej pory wygral kazda walke, nie majac nigdy realnej szansy na swoich przeciwnik�w.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_03"); //Nawet taki facet w ciemnych szatach, kt�ry po kilku sekundach posylal kazdego przeciwnika do kurzu, wrzucil go jednym ciosem.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_04"); //Na szczescie nie walczy codziennie, ale tylko wtedy, gdy jest przeciwnik, kt�ry jest got�w zaplacic wysoki zaklad.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_05"); //I co daje mi nadzieje, to coraz mniej.
	AI_Output(hero, self, "Info_Mod_Scatty_AboutSabitsch_15_06"); //Co jest tak szczeg�lnego dla tego wojownika?
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_07"); //Musi on posiadac niesamowita moc, jak potrafi obracac najciezsza siekiera z najwieksza umiejetnoscia.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_08"); //Nawet najsilniejsi chlopcy, kt�rych dotychczas spotkalem, nie mogliby sie juz z trudem zalozyc i prowadzic takiej broni.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_09"); //Dlatego tym bardziej zaskakujace jest to, ze taki facet jest entuzjastycznie nastawiony do bizuterii i biegnie przez caly dzien z amuletami i pierscionkami, jak daremna zona kupieckiej.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_10"); //Dopiero w nocy widzialem - ma on swoja chatke w poblizu mojej areny - jak co najmniej wtraca czesc swoich rzeczy do tulowia, zdejmuje swoja ciezka zbroje i zamiast tego owija sie w ladny cywilny str�j, zanim p�jdzie spac w nocy.
	AI_Output(self, hero, "Info_Mod_Scatty_AboutSabitsch_01_11"); //Zabawny facet, ale dobry przyjaciel Thorusa ", slyszalem.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Scatty powiedzial, ze Sabitsch musi byc niezwykle silnym bojownikiem, aby prowadzic swoja bron. Poza tym Sabitsch nosi bizuterie przez caly dzien, kt�ra startuje tylko w nocy i bijaty w klatce piersiowej, aby spac w cywilnym ubraniu. Znajduje jego kabine na stadionie.");
};

INSTANCE Info_Mod_Scatty_SabitschTot (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_SabitschTot_Condition;
	information	= Info_Mod_Scatty_SabitschTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Scatty_SabitschTot_Condition()
{
	if (Mod_SabitschTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_SabitschTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Scatty_SabitschTot_01_00"); //Nadal na drodze, kt�ra jest p�zno w nocy?
	AI_Output(self, hero, "Info_Mod_Scatty_SabitschTot_01_01"); //No c�z, mialem tez niedlugo miec zielona nowicjuszke.

	Mod_SabitschTotPetze = 1;
};

INSTANCE Info_Mod_Scatty_SlyArena (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_SlyArena_Condition;
	information	= Info_Mod_Scatty_SlyArena_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy Sly wezwal cie jeszcze?";
};

FUNC INT Info_Mod_Scatty_SlyArena_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena5))
	&& (Wld_IsTime(08,00,16,00))
	&& (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_SlyArena_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_SlyArena_15_00"); //Czy Sly wezwal cie jeszcze?
	AI_Output(self, hero, "Info_Mod_Scatty_SlyArena_01_01"); //Oczywiscie. Ciekawe, jak walczy zielonyhorn. Jak dotad zauwazylem go dopiero po jego zakrzyczeniu.
	AI_Output(hero, self, "Info_Mod_Scatty_SlyArena_15_02"); //Czy jest jeszcze data jego pierwszej walki?
	AI_Output(self, hero, "Info_Mod_Scatty_SlyArena_01_03"); //Jo Jo. P�zniej o godzinie 17.00 bedzie rywalizowal z Gor Karanto. M�wie, ze to trudna walka.
};

INSTANCE Info_Mod_Scatty_Kap4 (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_Kap4_Condition;
	information	= Info_Mod_Scatty_Kap4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skapy? Ty tutaj?";
};

FUNC INT Info_Mod_Scatty_Kap4_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Scatty_Kap4_Info()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Kap4_15_00"); //Skapy? Ty tutaj?
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_01"); //Gdzie jeszcze mam byc?
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_02"); //Moze jako trup w starym obozie, moze jako pokarm dla huragan�w?
	AI_Output(hero, self, "Info_Mod_Scatty_Kap4_15_03"); //Wlasciwie..... tak.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_04"); //Ach, moge sie pieknac.
	AI_Output(hero, self, "Info_Mod_Scatty_Kap4_15_05"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_06"); //Ach, kiedy te brudne orki zaatakowaly ob�z, mialem piwo przed arena.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_07"); //Slyszalem krzyk i zanim to zrozumialem, podbiegla do mnie horda ork�w.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_08"); //Po kr�tkiej walce zdalem sobie sprawe, ze to beznadziejne i biegla w przeciwnym kierunku do wyjscia z tylu.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_09"); //Tam pr�bowalem otworzyc brame z straza, a jednoczesnie trzeba bylo bronic sie przed niekt�rymi zielonymi dzbanami.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_10"); //Ostatnim wysilkiem udalo mi sie to.... ale pozostali dwaj chlopcy jednak ugryzli kurz.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_11"); //Kiedy biegalem na zewnatrz, zastanawialem sie, dokad p�jsc.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_12"); //Ich dachte mir: "Hej, chlopaki z bagiennych skryb�w zawsze pokazywali, z czego sa zrobione na arenie."
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_13"); //
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_14"); //No c�z, co teraz? Moge czuwac nad nowicjuszami podczas zniwa.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_01_15"); //Naprawde nie wiem, co tu robie.....

	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung == 0)
	{
		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "Spotkalem sie z Scatty' m na obozie bagiennym, gdzie udaje mu sie zagrac jako obserwator.");
	};

	Info_ClearChoices	(Info_Mod_Scatty_Kap4);

	Info_AddChoice	(Info_Mod_Scatty_Kap4, "Przynajmniej teraz pasowac.", Info_Mod_Scatty_Kap4_B);
	Info_AddChoice	(Info_Mod_Scatty_Kap4, "Bedziesz mial racje.", Info_Mod_Scatty_Kap4_A);
};

FUNC VOID Info_Mod_Scatty_Kap4_B()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Kap4_B_15_00"); //Przynajmniej teraz pasowac.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_B_01_01"); //Co? Upewnij sie, ze zdobedziesz ziemie zanim uderzisz piorunem podczas....

	Info_ClearChoices	(Info_Mod_Scatty_Kap4);
};

FUNC VOID Info_Mod_Scatty_Kap4_A()
{
	AI_Output(hero, self, "Info_Mod_Scatty_Kap4_A_15_00"); //Bedziesz mial racje.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_A_01_01"); //O, powiedzenie mi teraz nie pomaga.
	AI_Output(self, hero, "Info_Mod_Scatty_Kap4_A_01_02"); //Teraz odejdz..... Musze uwazac, aby nie zjesc nowicjusza.... lub bedziesz kwasny od Baala.... Bez wzgledu na to, co udalo sie przebic.

	Info_ClearChoices	(Info_Mod_Scatty_Kap4);
};

INSTANCE Info_Mod_Scatty_EXIT (C_INFO)
{
	npc		= Mod_962_STT_Scatty_MT;
	nr		= 1;
	condition	= Info_Mod_Scatty_EXIT_Condition;
	information	= Info_Mod_Scatty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Scatty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Scatty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
