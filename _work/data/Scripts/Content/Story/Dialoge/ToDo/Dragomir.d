var int BerichtCounter;

INSTANCE Info_Mod_Dragomir_Hi (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Hi_Condition;
	information	= Info_Mod_Dragomir_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Dragomir_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragomir_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Dragomir_Hi_12_01"); //Hi.
};

INSTANCE Info_Mod_Dragomir_Jagdgebiete (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Jagdgebiete_Condition;
	information	= Info_Mod_Dragomir_Jagdgebiete_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem z wszystkimi mysliwymi.";
};

FUNC INT Info_Mod_Dragomir_Jagdgebiete_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nandor_WoelfeTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gaan_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grom_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	&& (Npc_HasItems(hero, ItMi_Erzbrocken_Seltsam) == 1)
	&& (Npc_HasItems(hero, ItWr_NandorToDragomir) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_15_00"); //Bylem z wszystkimi mysliwymi.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_12_01"); //Cóz, co mówia?

	Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Nandor lub.....", Info_Mod_Dragomir_Jagdgebiete_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "gromantropijny", Info_Mod_Dragomir_Jagdgebiete_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Grimbald.....", Info_Mod_Dragomir_Jagdgebiete_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Gaan....", Info_Mod_Dragomir_Jagdgebiete_Gaan);
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Nandor()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_00"); //Nandor dal mi ten list dla Ciebie.

	B_GiveInvItems	(hero, self, ItWr_NandorToDragomir, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_01"); //Zginelismy tez kilka wilków, które zachowywaly sie raczej nienormalnie.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_02"); //Pozwole sobie to zobaczyc.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_03"); //Hm, dobrze. A co z wilkami?
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_04"); //Nandor powiedziala, ze jej oczy wygladaly jak oczy zmarlego mezczyzny. Poza tym zachowywaly sie one po prostu inaczej niz inne wilki.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_05"); //Dobrze, dziekuje.

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //Widze wiec, ze przeprowadziles wywiad z wszystkimi mysliwymi, a nie zla. To czesc gry spacer po lesie.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Tutaj, jako nagrode za wysilki, to cos wyjatkowego.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Jesli zechcesz, zabiore cie teraz w nasze szeregi.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Powiedzialem Dragomirowi o mysliwych.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Grom()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grom_15_00"); //Grom jest wciaz z najemnikami, ale slyszal, ze grabieze na polu powoduja najemnikom wiele klopotów.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grom_12_01"); //Zlodzieje polowi? (krótko) Sa to denerwujace bestie, ale na szczescie nieszkodliwe dla zaawansowanego wojownika.

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //Widze wiec, ze przeprowadziles wywiad z wszystkimi mysliwymi, a nie zla. To czesc gry spacer po lesie.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Tutaj, jako nagrode za wysilki, to cos wyjatkowego.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Jesli zechcesz, zabiore cie teraz w nasze szeregi.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Powiedzialem Dragomirowi o mysliwych.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Grimbald()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_00"); //Grimbald jest zafascynowany trolla i ma wspanialy widok na doline. Znalazl dziwny kawalek rudy w grupie snapperów, którzy zaatakowali Black Troll.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_01"); //Dal mi go dla ciebie, moze mozesz cos z tym zrobic.

	B_GiveInvItems	(hero, self, ItMi_Erzbrocken_Seltsam, 1);

	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_NandorGrom))
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_02"); //Oh, tak. W lesie cos sie dzieje.
	};

	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_12_03"); //Dziwne rzeczy, wcale mi sie nie podoba. Gdybym nie wiedzial lepiej, powiedzialbym, ze z tej rudy nic dobrego nie przychodzi.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_04"); //Masz na mysli, ze w bryle rudy jest zlo?
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_12_05"); //Cóz, z czego sie smiejesz? Ale tak, to jest mniej wiecej taki sam sposób, w jaki mozna by to powiedziec...... Wez grude, byc moze znasz kogos, kto moze dowiedziec sie wiecej na ten temat.

	B_GiveInvItems	(self, hero, ItMi_Erzbrocken_Seltsam, 1);

	Mod_JG_GrimbaldTeacher = 1;

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //Widze wiec, ze przeprowadziles wywiad z wszystkimi mysliwymi, a nie zla. To czesc gry spacer po lesie.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Tutaj, jako nagrode za wysilki, to cos wyjatkowego.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Jesli zechcesz, zabiore cie teraz w nasze szeregi.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Powiedzialem Dragomirowi o mysliwych.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Gaan()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Gaan_15_00"); //Gaan nadal obserwuje przelecz, ale laka jest tam bardzo dobrze przygotowana do polowan. Widzial tez kilka szponiastych.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Gaan_12_01"); //Nakladka? Nie ma tu nic szczególnego.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Gaan_15_03"); //Nie, tak naprawde nie.....

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //Widze wiec, ze przeprowadziles wywiad z wszystkimi mysliwymi, a nie zla. To czesc gry spacer po lesie.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Tutaj, jako nagrode za wysilki, to cos wyjatkowego.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Jesli zechcesz, zabiore cie teraz w nasze szeregi.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Powiedzialem Dragomirowi o mysliwych.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

INSTANCE Info_Mod_Dragomir_Aufnahme (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Aufnahme_Condition;
	information	= Info_Mod_Dragomir_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc mysliwym.";
};

FUNC INT Info_Mod_Dragomir_Aufnahme_Condition()
{
	if (BerichtCounter == 4)
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Aufnahme_15_00"); //Chce byc mysliwym.
	AI_Output(self, hero, "Info_Mod_Dragomir_Aufnahme_12_01"); //Dzieki temu jestes równiez mysliwym.

	Mod_AnzahlNebengilden += 1;

	Jäger_Dabei = TRUE;

	Mod_DragomirsLager = Wld_GetDay();

	B_Göttergefallen(2, 2);

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry_NS	(TOPIC_MOD_NEBENGILDEN, "Jestem teraz czlonkiem Rangers.");
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_62);
};

INSTANCE Info_Mod_Dragomir_ToDoChapter1 (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_ToDoChapter1_Condition;
	information	= Info_Mod_Dragomir_ToDoChapter1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz dla mnie wiecej do zrobienia?";
};

FUNC INT Info_Mod_Dragomir_ToDoChapter1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	&& (Jäger_Dabei == TRUE)
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_00"); //Czy masz dla mnie wiecej do zrobienia?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_01"); //Tak, bym mial. Prawdopodobnie byles troche zaskoczony, ze grabieze tak popychali sie w stosunku do najemników, nie byliscie?
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_02"); //Cóz, troche troche.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_03"); //Cóz, to dlatego, ze widzielismy ich ludnosc.... Powiedzmy, ze troche to popieralismy.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_04"); //Uh-huh.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_05"); //Owszem, rolnicy spalali coraz wiecej lasów i zabijali zwierzeta w celu poszerzenia pól. Nie moglismy juz tego dluzej poprzec.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_06"); //Co robiliscie?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_07"); //Ukrywalismy miedzy innymi jaja polne rabunkowe w miejscach ich gniazdowania i nieco zwiekszylismy stado.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_08"); //A co mam z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_09"); //No cóz, mam tu kilka takich rzeczy i male klopoty, które teraz powoduja najemnikom, nie wystarcza.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_10"); //Wiec powinienem....
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_11"); //Dokladnie. Tutaj wezmiesz ten eliksir przed wejsciem do gniazda. W ten sposób nie beda w stanie odróznic cie od swoich bliznich i nie beda Cie atakowac.

	B_GiveInvItems	(self, hero, ItPo_Feldraeubertrank, 1);

	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_12"); //Nastepnie wkladasz do gniazda wiaderko pelne jaj. To powinno byc jeszcze kilkaset stworzen, które w ciagu najblizszych kilku dni beda musialy sie wykluc.

	B_GiveInvItems	(self, hero, ItMi_Feldraeubereier, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_13"); //Uh-huh. Mam nadzieje, ze eliksir bedzie dzialal dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_14"); //Jak myslisz, jak myslales, ze ostatnio to zrobilismy?

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);

	Info_AddChoice	(Info_Mod_Dragomir_ToDoChapter1, "Wlasciwie to zrobie.", Info_Mod_Dragomir_ToDoChapter1_Ja);
	Info_AddChoice	(Info_Mod_Dragomir_ToDoChapter1, "Mysle, ze lepiej bym tego nie robil. Takie paskudne rzeczy......", Info_Mod_Dragomir_ToDoChapter1_Nein);
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Ja()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_Ja_15_00"); //Wlasciwie to zrobie.

	Log_CreateTopic	(TOPIC_MOD_JG_BUGS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_BUGS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_BUGS, "Mam opróznic wiadro polowych zlocistych jaj dla Dragomira w jaskini polowej rabunkowej niedaleko Onars Hof.");

	Bug_Mission = TRUE;

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Nein()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_Nein_15_00"); //Mysle, ze lepiej bym tego nie robil. Takie paskudne rzeczy......

	Npc_RemoveInvItems	(hero, ItPo_Feldraeubertrank, 1);

	Npc_RemoveInvItems	(hero, ItMi_Feldraeubereier, 1);

	B_ShowGivenThings	("Napój i wiaderko z jajami polnymi zlocistymi podawanymi");

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);
};	

INSTANCE Info_Mod_Dragomir_EimerLeer (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_EimerLeer_Condition;
	information	= Info_Mod_Dragomir_EimerLeer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiaderko w gniezdzie.";
};

FUNC INT Info_Mod_Dragomir_EimerLeer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_ToDoChapter1))
	&& (Mod_EimerAusgeleert == TRUE)
	&& (Bug_Mission == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_EimerLeer_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_EimerLeer_15_00"); //Wiaderko w gniezdzie.
	AI_Output(self, hero, "Info_Mod_Dragomir_EimerLeer_12_01"); //Bardzo dobry. Tutaj, wez to za nagrode.

	B_GivePlayerXP	(100);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_JG_BUGS, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
	
	Wld_InsertNpc(YGiant_Bug, "FP_STAND_WASILI_VERBANNT_02");
	Wld_InsertNpc(YGiant_Bug, "FP_STAND_NW_BIGFARM_FELDREUBER4");
	Wld_InsertNpc(YGiant_Bug, "FP_ROAM_NW_BIGFARM_FELDREUBER10");
};

INSTANCE Info_Mod_Dragomir_BurnedLager (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_BurnedLager_Condition;
	information	= Info_Mod_Dragomir_BurnedLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_BurnedLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	&& (Mod_Drago == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_12_00"); //Ach, wy. Wreszcie. Myslalem, ze nikt nie odwazy sie tu przyjechac, z wyjatkiem tych paskudnych stworzen z lasu. Powiedz, czy mozesz cos zrobic dla mnie?

	Wld_SendUntrigger	("DRAGOMIRSFEUER");
	Wld_SendUntrigger	("DRAGOMIRSMOKE");
	
	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
	
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Nie, teraz nie mam na to czasu.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Co chcesz, abym zrobil?", Info_Mod_Dragomir_BurnedLager_B);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Co ty robisz na tej pustyni?", Info_Mod_Dragomir_BurnedLager_A);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_C()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_C_15_00"); //Nein, dafür habe ich jetzt keine Zeit.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_C_12_01"); //Dann hinfort mit dir und stör uns nicht bei der Arbeit.		

	Mod_Drago = 3;

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_B()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_B_15_00"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_B_12_01"); //Dobrze, sluchaj. Rangerzy i Druidy maja swoisty rajd w Minental. Powiedz im, jak postepujemy i popros ich, aby wyslali nam wzmocnienia.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_B_12_02"); //Tutaj, na mapie zaznaczylem jej miejsce zamieszkania dla Ciebie. Chodz, spiesz sie.

	B_GiveInvItems	(self, hero, ItWr_EremitenCamp, 1);

	Mod_Drago = 4;

	B_LogEntry	(TOPIC_MOD_JG_LAGER, "Dragomir powiedzial mi, ze obóz zostal zaatakowany przez czarnych magów i bandytów. Poprosil mnie o wezwanie Druidów i Rangerów w Minental do utworzenia kopii zapasowej.");

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_A()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_A_15_00"); //Co ty robisz na tej pustyni?
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_01"); //Musielismy tu uciekac. Zaatakowali nas czarnoskórzy magicy, ale byli tez wspierani przez bandytów.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_02"); //Mamy szczescie, ze nie znaja tego obszaru tak dobrze, bo inaczej juz dawno bysmy byli przytloczeni. Ale sledzenie nas nie zajmie im wiele czasu.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_03"); //Widzisz, ze sytuacja jest powazna, czy pomozesz nam teraz?

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
	
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Nie, teraz nie mam na to czasu.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Co chcesz, abym zrobil?", Info_Mod_Dragomir_BurnedLager_B);
};

INSTANCE Info_Mod_Dragomir_WillQuestDoch (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WillQuestDoch_Condition;
	information	= Info_Mod_Dragomir_WillQuestDoch_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_WillQuestDoch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_BurnedLager))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_Drago == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WillQuestDoch_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragomir_WillQuestDoch_12_00"); //Czy zdecydowales sie nam pomóc?
	
	Info_ClearChoices	(Info_Mod_Dragomir_WillQuestDoch);
	
	Info_AddChoice	(Info_Mod_Dragomir_WillQuestDoch, "Nie, teraz nie mam na to czasu.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_WillQuestDoch, "Co chcesz, abym zrobil?", Info_Mod_Dragomir_BurnedLager_B);
};

INSTANCE Info_Mod_Dragomir_HilfeII (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_HilfeII_Condition;
	information	= Info_Mod_Dragomir_HilfeII_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z Adanosem! Co sie tu dzialo?";
};

FUNC INT Info_Mod_Dragomir_HilfeII_Condition()
{
	if (Mod_JG_DragoHilfe2 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_HilfeII_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_00"); //Z Adanosem! Co sie tu dzialo?
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_01"); //Nie wiem! Pakiet wyszedl z ciemnego lasu. I te nie byly pierwszymi.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_02"); //Ocalony jeden z wrogów, którego mozna zadac pytanie.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_03"); //Nie sadze. Nikt juz nie porusza sie.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_04"); //Hm. Ma to cos wspólnego z khorgorem. Widocznie czarodziej wsciekly. To wszystko, co wiemy.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_05"); //Dlaczego jednak mysliwi i straznicy? Jestesmy jednym z najbardziej niewinnych na wyspie.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_06"); //Nie wiemy na pewno. Ale dostalismy ten Khorgor.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_07"); //Twoje slowo w uchu Adano! Co wiec dzieje sie pózniej?
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_08"); //Nie wiem o tym. W razie potrzeby powinienem tylko Cie wesprzec.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_09"); //Wracam do Minentala. Zrobilismy troche pracy do wykonania.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_10"); //Adanos z toba! Twierdze tutaj.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_11"); //Kto opiekuje sie Nandorem i Ruga?
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_12"); //Przynosze ziolowa czarownice.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_13"); //Dobre. I szczescie.

	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE2, "Tutaj walka byla w pelnym rozkwicie, kiedy przyjechalem. Z trudem wygralismy. Dzik upadl, Nandor i Ruga sa ranni. Musze zglosic sie do Cyrco.");

	B_StartOtherRoutine	(Mod_1937_JGR_Nandor_NW, "KO");
	B_StartOtherRoutine	(Mod_749_MIL_Ruga_NW, "KO");

	B_KillNpc	(Mod_7413_JG_Wild_NW);
	
	B_GivePlayerXP(100);
};

INSTANCE Info_Mod_Dragomir_Untier (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Untier_Condition;
	information	= Info_Mod_Dragomir_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ostatnio widziales cos niezwyklego?";
};

FUNC INT Info_Mod_Dragomir_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Untier_15_00"); //Ostatnio widziales cos niezwyklego?
	AI_Output(self, hero, "Info_Mod_Dragomir_Untier_12_01"); //Hmm, owszem, kilka dni temu niektórzy z tych demonicznych magów szli tutaj i wykonywali swoje zlowieszcze rytualy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Untier_12_02"); //Gleba poczatkowo wykazywala niezwykle zmiany, ale.....
	AI_Output(hero, self, "Info_Mod_Dragomir_Untier_15_03"); //Tak, przeszedlem przez to.
};

INSTANCE Info_Mod_Dragomir_WhoAreYou (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WhoAreYou_Condition;
	information	= Info_Mod_Dragomir_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes ludzmi?";
};

FUNC INT Info_Mod_Dragomir_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WhoAreYou_15_00"); //Kim jestes ludzmi?
	AI_Output(self, hero, "Info_Mod_Dragomir_WhoAreYou_12_01"); //Jestesmy mysliwymi w lesie przed Khorinis i sprzedajemy nasza ofiare glównie handlarzom w miescie. Tutaj mamy jeden z naszych obozów.
};

INSTANCE Info_Mod_Dragomir_LohntEsSich (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_LohntEsSich_Condition;
	information	= Info_Mod_Dragomir_LohntEsSich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy warto tu polowac?";
};

FUNC INT Info_Mod_Dragomir_LohntEsSich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_LohntEsSich_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_00"); //Czy warto tu polowac?
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_01"); //Oh, tak. Lasy sa tu znoszone przez zwierzeta. Nie zaglebiaj sie w to za daleko.
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_02"); //Dlaczego nie?
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_03"); //Czy uwazasz, ze biegajace szkielety i szalone gobliny uwazasz za zwierzeta do polowania?
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_04"); //Wlasciwie nie.
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_05"); //Idziesz tam.
};

INSTANCE Info_Mod_Dragomir_WerBistDu (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WerBistDu_Condition;
	information	= Info_Mod_Dragomir_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "A kim jestes?";
};

FUNC INT Info_Mod_Dragomir_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WerBistDu_15_00"); //A kim jestes?
	AI_Output(self, hero, "Info_Mod_Dragomir_WerBistDu_12_01"); //Nazywam sie Dragomir i jestem przywódca tego obozu.
};

INSTANCE Info_Mod_Dragomir_MitmachenPre (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_MitmachenPre_Condition;
	information	= Info_Mod_Dragomir_MitmachenPre_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge dolaczyc do mysliwych?";
};

FUNC INT Info_Mod_Dragomir_MitmachenPre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	&& (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_MitmachenPre_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_MitmachenPre_15_00"); //Czy moge dolaczyc do mysliwych?
	AI_Output(self, hero, "Info_Mod_Dragomir_MitmachenPre_12_01"); //Jestes jeszcze troche za slaby. Nie masz jeszcze nic na zeberkach. Czasami zdarzaja sie problemy z nami.
	AI_Output(self, hero, "Info_Mod_Dragomir_MitmachenPre_12_02"); //Wróc do domu pózniej.
};

INSTANCE Info_Mod_Dragomir_Bosper (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Bosper_Condition;
	information	= Info_Mod_Dragomir_Bosper_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bospaler powiedzial powitanie. Potrzebuje nowych skór.";
};

FUNC INT Info_Mod_Dragomir_Bosper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_OtherHunters))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Bosper_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_00"); //Bospaler powiedzial powitanie. Potrzebuje nowych skór.
	AI_Output(self, hero, "Info_Mod_Dragomir_Bosper_12_01"); //Oh, tak. Dostalem kupe. Móglbys/- móc

	B_GiveInvItems	(self, hero, ItMi_Wolfsfelle, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_02"); //Dostawszy je? Jesli mam laske, to dobrze.
	AI_Output(self, hero, "Info_Mod_Dragomir_Bosper_12_03"); //Powiedz mu, ze bedziemy sie osiedlac, gdy dojezdzam do miasta.
	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_04"); //Jestem na drodze.

	B_LogEntry	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, "Mialem przywiezc Dragomira Skóry Bosper. Jestem pewien, ze przyniesie Ci to punkty za nagrywanie.");
};

INSTANCE Info_Mod_Dragomir_AllesKlar (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_AllesKlar_Condition;
	information	= Info_Mod_Dragomir_AllesKlar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie chcesz byc w porzadku?";
};

FUNC INT Info_Mod_Dragomir_AllesKlar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_AllesKlar_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_AllesKlar_15_00"); //Czy nie chcesz byc w porzadku?
	AI_Output(self, hero, "Info_Mod_Dragomir_AllesKlar_12_01"); //Wystarczy przetrwac.
};

INSTANCE Info_Mod_Dragomir_Mitmachen (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Mitmachen_Condition;
	information	= Info_Mod_Dragomir_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge dolaczyc do Ciebie?";
};

FUNC INT Info_Mod_Dragomir_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	&& (Mod_Gilde > 0)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_00"); //Czy moge dolaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_01"); //Nie moge samodzielnie decydowac. Ale skoro pytasz, mam cos, co móglbys dla mnie zrobic.
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_03"); //Niektórzy z naszych mysliwych rozsiali sie po calym kraju i szukaja dobrych terenów lowieckich. Chce, zebys zatrzymal sie przy ich domu i zapytal, jak one wygladaja.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_04"); //Wtedy nie musza biegac dalej i dalej.
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_05"); //Gdzie sa mysliwi?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_06"); //Po drodze jest czterech mysliwych. Gaan, Nandor, Grimbald i Grom.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_07"); //Gaan jest na przeleczy Minentala, Grom powinien znalezc sie na farmie Onar z najemnikami, chcial zapytac tam wokól.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_08"); //Nandor wszedl do ciemnego lasu. O ile wiem, gdzies tam jest jeden z tych kamiennych kregów, szukaj.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_09"); //Grimbald lezy nad jeziorem, w poblizu jaskini czarnego trolla. Chcial zobaczyc bestie. Jesli przetrwal spotkanie, znajdziemy go na pewno.

	Log_CreateTopic	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Dragomir poprosil mnie o wizyte u czterech mysliwych: Gaana, Nandora, Grimbalda i Groma. Gaan znajduje sie przy przeleczy do Minental, Grom jest na farmie Onars, Nandor znajduje sie w ciemnym lesie w poblizu kamiennego kola, a Grimbald jest nad jeziorem w poblizu czarnego trolla.");
};

INSTANCE Info_Mod_Dragomir_WoIst (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WoIst_Condition;
	information	= Info_Mod_Dragomir_WoIst_Info;
	permanent	= 1;
	important	= 0;
	description	= "Gdzie moge znalezc....";
};

FUNC INT Info_Mod_Dragomir_WoIst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WoIst_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_15_00"); //Gdzie moge znalezc....

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_BACK()
{
	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Nandor()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Nandor_15_00"); //... Nandor?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Nandor_12_01"); //Nandor jest w ciemnym lesie, gdzies w poblizu kamiennego kola.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Grom()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Grom_15_00"); //... Grom?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Grom_12_01"); //On jest na farmie Onar z najemnikami.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Grimbald()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Grimbald_15_00"); //... Grimbald?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Grimbald_12_01"); //Grimbald polozony jest nad jeziorem w poblizu czarnego trolla.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Gaan()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Gaan_15_00"); //... Gaan?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Gaan_12_01"); //Gaan jest przy Minental Pass.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

INSTANCE Info_Mod_Dragomir_Pedro (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Pedro_Condition;
	information	= Info_Mod_Dragomir_Pedro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widziales nowicjusza ognia?";
};

FUNC INT Info_Mod_Dragomir_Pedro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Isgaroth_Pedro))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlan_Ring_Zurueck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Pedro_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_00"); //Widziales nowicjusza ognia?
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_01"); //Oczywiscie widzialem nowicjusza pozaru. Widze jeden raz dziennie.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_02"); //Widziales go dzisiaj?
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_03"); //Oczywiscie, Ty.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_04"); //A poza mna?
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_05"); //Ach, teraz pamietam. Nowicjusz wlasnie wbiegl do tawerny. Wydawalo mu sie, ze jest w pospiechu.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_06"); //Dzieki.
	AI_output(self, hero, "Info_Mod_Dragomir_Pedro_12_07"); //Bez problemu.

	B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Dragomir pilowal Pedro do tawerny.");
};

INSTANCE Info_Mod_Dragomir_Orlan (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Orlan_Condition;
	information	= Info_Mod_Dragomir_Orlan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Orlan mówi, ze zaden nowicjusz nie poszedl do tawerny.";
};

FUNC INT Info_Mod_Dragomir_Orlan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Pedro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Orlan_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Orlan_15_00"); //Orlan mówi, ze zaden nowicjusz nie poszedl do tawerny.
	AI_Output(self, hero, "Info_Mod_Dragomir_Orlan_12_01"); //Wtedy chyba jeden z nas klamal.
	AI_Output(hero, self, "Info_Mod_Dragomir_Orlan_15_02"); //Wydaje mi sie, ze oklamal pan mnie.
	AI_Output(self, hero, "Info_Mod_Dragomir_Orlan_12_03"); //Poczekaj, nie musze sie z tym zniesc.

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
	
	self.flags = 0;
};

INSTANCE Info_Mod_Dragomir_Niederlage (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Niederlage_Condition;
	information	= Info_Mod_Dragomir_Niederlage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_Niederlage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Orlan))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Niederlage_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_00"); //Dobrze, dobrze, klamalem.
			AI_Output(hero, self, "Info_Mod_Dragomir_Niederlage_15_01"); //Wiec czy gonna powiedz mi, gdzie jest Pedro lub czy musze isc znowu?
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_02"); //Tak, tak, tak. Jesli podazasz ta sciezka, po prawej stronie znajdziecie zdalny obóz. Tam wlasnie ukrywa sie.

			B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Pedro ukrywa sie w obozie za obozem Dragomira.");

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_03"); //Nastepnym razem, pomysl dwa razy zanim nazwij mnie klamca.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
	
	self.flags = 2;
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dragomir_Plage (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Plage_Condition;
	information	= Info_Mod_Dragomir_Plage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jako straznik, z pewnoscia posiada pan wiedze o faunie i florze, w tym o zbiornikach wodnych.";
};

FUNC INT Info_Mod_Dragomir_Plage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Plage))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Plage_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_00"); //Jako straznik, z pewnoscia posiada pan wiedze o faunie i florze, w tym o zbiornikach wodnych.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_01"); //Tak, znalazles sie we wlasciwym miejscu. Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_02"); //Teraz z jeziora w Nowym Obozie wylaniaja sie robaki i kraby, które nekaja caly obszar.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_03"); //Jezioro w Nowym Obozie! Z tego, co pamietam, zbudowano tam zapore.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_04"); //I musicie bylo tam zdziesiatkowac pierwotne królestwo zwierzat, prawda?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_05"); //Bylbym zaskoczony, gdyby znalezli tam jednego Lurkera.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_06"); //Ooh, ooh, ooh, ooh,.... Ale jak.....?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_07"); //Jak glupi sa ludzie. Zdewastuj ich srodowisko i wierzcie, ze pozostanie to bezkarne.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_08"); //Jak myslisz, jak to mozliwe, ze obecnie jest tak wiele rekinów bagiennych i much krwi w bagnie?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_09"); //Cudowne wody zastojowe, w których jaja bagien i zarodniki zarlacza blotnego moga rozwinac sie w larwy.... a zwlaszcza bez ich drapiezników - czarownice.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_10"); //Zamykasz jezioro do zapory i eksterminujesz ciecierzyce?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_11"); //To równiez calkiem sluszne, ze sami sa Panstwo winni za to, co dzieje sie z jeziorem.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_12"); //Ale czy nie mozna nic zrobic, aby powstrzymac to, co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_13"); //Tjaaa.... musialbys przynajmniej naprawic szkody wyrzadzone dzikiej faunie i florze jeziora.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_14"); //Oznaczaloby to jednak, ze czarownice znów by....
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_15"); //Dokladnie.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_16"); //Jak mozna to zrobic?
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_17"); //Trudno mi o zmielenie w obozie calego zwierzaka...... a sezon legowy juz sie skonczyl, wiec nie ma juz jaj Lurkera.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_18"); //Twoja wiedza o sezonie legowym cielat zaskakuje mnie....
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_19"); //No cóz, no cóz....
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_20"); //Nie wydaje sie doskonala.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_21"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_22"); //Curekarze w Minentalu i niedaleko Khorinis juz sie rodzi, to prawda.... Jednak na pólnocy wyspy, zwanej Relendel, po kilku tygodniach sa tacy, jak na pólnocy wyspy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_23"); //Jesli masz szczescie, znajdziesz tu jajka w poblizu jeziora.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_24"); //Jesli umiescisz co najmniej trzy z nich w jaskini Lurker w poblizu jeziora Nowego Obozu, stan wody powinien w krótkim czasie powrócic do normy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_25"); //Mam jednak nadzieje, ze to wydarzenie bedzie lekcja dla was i innych najemników przez dlugi czas.

	B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Dragomir powiedzial, ze w Relendel moge znalezc jaja Lurkera w poblizu jeziora. Gdybym trzy z nich deponowal w jaskini Lurker w Nowym Obozie, zaraza wkrótce bylaby historia. Jaja beda prawdopodobnie znajdowaly sie w jaskini w duzym jeziorze. Miejsce, w którym musze nurkowac jest wyraznie wskazane przez Lurkera na plazy.");

	Mod_NL_JeremiahHasEier = 3;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Dragomir_Leichengase (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Leichengase_Condition;
	information	= Info_Mod_Dragomir_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje panstwa pomocy.";
};

FUNC INT Info_Mod_Dragomir_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_00"); //Potrzebuje panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_01"); //Z czym?
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_02"); //Dostalem torbe ziolowa do karmienia troll.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_03"); //Chcesz karmic trolle tym warzywem?
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_04"); //Mówimy o tym samym, czyz nie?
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_05"); //Trzy metry wysokie na trzy metry, dosc owlosione, nieswiezy oddech jak tylek Beliara.... i poczekac, bylo jeszcze cos innego. Ach, tak, MIESA!
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_06"); //Gdyby troll po prostu zjadl rzeczy, nie potrzebowalbym waszej pomocy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_07"); //Co to jednak fajnie, ze tak czy owak ten gówno? Och, zostaw go tam, nie chce wiedziec.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_08"); //Jesli naprawde chcesz, aby troll zjesc te zielone rzeczy, nasmarowac je tluszczem trzonowym!
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_09"); //Zwierzeta kochaja smród zjelczalych diabelskich rzeczy.

	if (Jäger_Dabei == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_10"); //Dzieki.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_11"); //Dlaczego tak nie jest? Dzieki.
		AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_12"); //Co to jest ten gówno?
		AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_13"); //Dziekuje, ze nie moge sie pic w tawernie, zeby zapomniec o rozmowie, która wlasnie odbylismy.

		Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);

		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			Info_AddChoice	(Info_Mod_Dragomir_Leichengase, "Oto 50 sztuk zlota.", Info_Mod_Dragomir_Leichengase_B);
		};
		Info_AddChoice	(Info_Mod_Dragomir_Leichengase, "Potrzebuje panstwa pomocy.", Info_Mod_Dragomir_Leichengase_A);
	};

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Dragomir pomyslal, ze bogata bedzie mieszanka ziól i tluszczu trzonowego.");
};

FUNC VOID Info_Mod_Dragomir_Leichengase_B()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_B_15_00"); //Oto 50 sztuk zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_01"); //Cóz, prawdopodobnie bede mógl sobie pozwolic na lekka amnezje. Do zobaczenia dookola.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_02"); //Och, poczekaj. Nadal mam troche starego tluszczu trzonowego, który i tak odchodzi.

	B_GiveInvItems	(self, hero, ItMi_MoleratLubric_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_03"); //Im wiecej smierdzi, tym lepiej dla stworzen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_04"); //Uwazaj jednak, nawet najsilniejszy troll pozbywa sie kawalka plesni melasy! (smiertelni zandarmowie)

	Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);
};

FUNC VOID Info_Mod_Dragomir_Leichengase_A()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_A_15_00"); //Potrzebuje panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_A_12_01"); //Z czym?

	Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);
};

INSTANCE Info_Mod_Dragomir_AlterMann (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_AlterMann_Condition;
	information	= Info_Mod_Dragomir_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapytaj o starca w lesie.";
};

FUNC INT Info_Mod_Dragomir_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_00"); //Ach, masz na mysli starego czlowieka z lasu. Tak, wiem o nim cos.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_01"); //Mówi sie, ze ma ona stulecia i ma chronic zwierzeta w lesie wokól Khoraty.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_02"); //Mówi sie, ze jest slepy, ale jednoczesnie ma magiczny talent.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_03"); //To wszystko, o czym moge teraz pomyslec. Moze ktos inny wie wiecej.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Od pierwszego straznika nie dostalem wiele nowych informacji. Stary czlowiek z lasu, chroniac zwierzeta, jest starozytnym, niewidomym i magicznym. Moze inny straznik wie wiecej.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_04"); //Stary czlowiek z lasu? Tak, slyszalem, ze byl kiedys sluga Adano.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_05"); //Nie wiadomo, czy byl on takim straznikiem jak my, magikiem wody, czy przemieniajacym magiem.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_06"); //Jego magiczne zdolnosci, a takze silne przywiazanie do swiata zwierzat i roslin sa dowodem na to, ze ma wszystko.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "W 2. lesniczy tez nie dowiedzialem sie wiele, co warto wiedziec. Mówi sie, ze stary czlowiek lasu jest zwiazany z Adanosem i kreacja, zwlaszcza zwierzetami i roslinami.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_07"); //Cóz, nie moge ci wiele powiedziec o nim.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_08"); //Problem polega równiez na tym, ze nie rozmawia z nikim, nawet z nami, nawet jesli dazymy do podobnych celów.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_09"); //Sam z zwierzetami lasu bawi sie sam.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_10"); //No cóz, gdybym byl dzikiem, jestem pewien, ze móglbym powiedziec ci wiecej o nim.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, to mogla byc wazna wskazówka. Stary czlowiek z lasu calkowicie unika ludzi, mówi tylko zwierzetom.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_11"); //Stary czlowiek z lasu? Cóz, ma byc scisle zwiazany z fauna i flora.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_12"); //Mówi sie, ze prowadzi on spakowywanie zwierzat takich jak knury czy wilki, aby chronic las przed intruzami.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_13"); //Nawet mówi sie, ze czesto wystepuje w ksztalcie zielonego wilka.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Przede wszystkim powinien on równiez poinstruowac wieksze paczki zwierzat, takie jak knury i wilki, aby chronic las przed intruzami.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_14"); //Interesuja Cie opowiesci o starym czlowieku z lasu?
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_15"); //Cóz, nie wiem wiele o tej mistycznej dziwnej kuli.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_16"); //Podobno zamieszkuje glównie w ciemnym lesie, ale równiez w poblizu zbiorników wodnych, takich jak jeziora.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_17"); //Rzadko zdarza sie, ze ktos go widzial.....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Najprawdopodobniej znajduje sie on w gestym lesie Khoraty w poblizu jeziora.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Dragomir_Pickpocket (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Pickpocket_Condition;
	information	= Info_Mod_Dragomir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Dragomir_Pickpocket_Condition()
{
	C_Beklauen	(58, ItRw_Bolt, 40);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

	Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_BACK, Info_Mod_Dragomir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dragomir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

		Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dragomir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dragomir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dragomir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dragomir_EXIT (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_EXIT_Condition;
	information	= Info_Mod_Dragomir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= "Do zobaczenia dookola.";
};

FUNC INT Info_Mod_Dragomir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragomir_EXIT_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_EXIT_15_00"); //Do zobaczenia dookola.

	AI_StopProcessInfos	(hero);
};
