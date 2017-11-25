INSTANCE Info_Mod_Wolf_Hi (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Hi_Condition;
	information	= Info_Mod_Wolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_00"); //Hej, wciaz zyjesz. Nie sadze, ze znów cie zobaczylabym.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_01"); //Przekladnia Minecrawler wydaje sie byc dosc stabilna.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_02"); //Tak, wykonales wspaniala prace.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_03"); //Prawo.... naprawde dwa kamienie, które razem wykonalem.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_04"); //Dwa? Gdzie jest drugi?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_05"); //Dalem ja mojemu przyjacielowi Gestathowi, z którym handlowalem na skraju bariery.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_06"); //Dostal mnie rzeczy, które w wiekszosci znajdowaly sie poza naszym wiezieniem, a ja dalem mu kilka specjalnych przedmiotów, które kolonia wyprodukowala.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_07"); //Potem chcial udac sie do jakiegos niegoscinnego miejsca zamieszkanego przez dzikie zwierzeta.... Jak sam powiedzial, raj dla mysliwych.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_08"); //Zdecydowanie nie widzialem go juz po upadku bariery.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_09"); //Czy moze panuje jeszcze jedna zbroja?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_10"); //Moglem. Potrzebuje jednak niezbednych surowców. Nie pamietasz, jak usunac bestie z talerzy?
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_11"); //Tak wiec.... Zapomnialem o tak wielu rzeczach.....
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_12"); //Dobrze, móglbym jeszcze raz panstwu pokazac. Ale bez wojska gasienicowców, to by nam nie zrobilo nic dobrego.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_13"); //Gdzie je znajde?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_14"); //Nie wiem..... nie ma nic bliskiego, co by mi to przeszla przez umysly.... najwyzej na poludnie.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_15"); //Gorn opowiedzial cos o zakletej twierdzy w górach, która chcial zabrac. W kazdym razie jeszcze nie dotkniety.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_16"); //Moze sa jaskinie z istotami.... nie ma pojecia.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SÖLDNER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SÖLDNER, "Wilk moze mi pokazac, jak znów dostac rekordy gasienicowe.");
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam troche rekordów gasienicowych.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung_15_00"); //Mam troche rekordów gasienicowych.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_01"); //Czy tak jest?

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_02"); //(do samego siebie) Wiec sa tu przeciez wojownicy gasienicowi...... to dobrze.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_03"); //Jesli dostaniecie mnie co najmniej 15 z nich, moge wam stworzyc nowa zbroje.
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung_15_04"); //15 sztuk tym razem!
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_05"); //Hej, przyznales, ze Twój minecrawer ocalil swoje zycie w Minental.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_06"); //Dlatego uwazam, ze tym razem nalezy osiagnac tylko nieco wiecej zysków.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_07"); //I to nie moja wina, która zgubiles swoja stara zbroje.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_08"); //Poza tym nieliczne gasienice nie powinny miec dla ciebie zadnego znaczenia po tym, jak wziales na siebie orki, nieumarle i demony.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_09"); //Tak wiec, jak juz powiedzialem, nagrywa 15 plyt i wszyscy maja sie dobrze.
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung2 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung2_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tutaj 15 minecrawerów.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung))
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung2_15_00"); //Mam tutaj 15 minecrawerów.

	B_GiveInvItems	(hero, self, ItAt_CrawlerPlate, 15);

	Npc_RemoveInvItems	(self, ItAt_CrawlerPlate, 15);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung2_31_01"); //Wspanialy! Bede mial prawo do pracy. Wróc za kilka dni.

	Mod_Wolf_MinecrawlerRuestung_Day = Wld_GetDay();

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung3 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung3_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widze, ze przekladnia gasienicowa jest gotowa.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung2))
	&& (Mod_Wolf_MinecrawlerRuestung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung3_15_00"); //Widze, ze przekladnia gasienicowa jest gotowa.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung3_31_01"); //Tak..... kopalni. Bede potrzebowal jeszcze kilka dni.

	Mod_Wolf_MinecrawlerRuestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung4 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung4_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung3))
	&& (Wld_GetDay()-2 > Mod_Wolf_MinecrawlerRuestung_Day)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung4_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung4_31_00"); //Nie musisz pytac. Oto twój nowy, ladny pancerz gasienicowy.

	CreateInvItems	(hero, ITAR_DJG_Crawler, 1);

	B_ShowGivenThings	("Zbroje z plytek gasienicowych");

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung4_31_01"); //Zabawa z tym.

	B_GivePlayerXP	(200);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_30);
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung5 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung5_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy pancerz jest jeszcze gotowy?";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung5_15_00"); //Czy pancerz jest jeszcze gotowy?
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung5_31_01"); //Nie, potrzebuje troche wiecej czasu.
};

INSTANCE Info_Mod_Wolf_Snapperbogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen_Condition;
	information	= Info_Mod_Wolf_Snapperbogen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Snapperbogen_Condition()
{
	var C_ITEM rwp;
	rwp = Npc_GetEquippedMeleeWeapon(hero);

	if (Hlp_IsItem(rwp, ItRw_Snapperbogen) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_00"); //Trzymac przez sekunde. Jaki jest ten dziwny uklon na plecach?
	AI_Output(hero, self, "Info_Mod_Wolf_Snapperbogen_15_01"); //Luk karabinczyka. Czy kiedykolwiek go widziales?
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_02"); //Pozwole sobie to zobaczyc.

	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	EquipItem	(self, ItRw_Snapperbogen);

	AI_ReadyRangedWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_DrawWeapon	(self);

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_03"); //Hmm, czuje sie jakbym widzial taki kokarde gdzies wczesniej.... hmm.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_04"); //Ale czekac minute.... co jest zadziwiajaco latwe w obsludze...... idealny do polowan na dzika przyrode.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_05"); //Sprzedajesz mi ja? Nie dalbym wam trudnego czasu.... 800 sztuk zlota na niego.
};

INSTANCE Info_Mod_Wolf_Snapperbogen2 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen2_Condition;
	information	= Info_Mod_Wolf_Snapperbogen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Sprzedaj Snap Bow na 800 sztuk zlota)";
};

FUNC INT Info_Mod_Wolf_Snapperbogen2_Condition()
{
	if (Npc_HasItems(hero, ItRw_Snapperbogen) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen2_Info()
{
	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_31_00"); //Mile robienie interesów z Toba.

	B_GiveInvItems	(self, hero, ItMi_Gold, 800);

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_31_01"); //A teraz jestem gonna dobrze przyjrzec sie tej rzeczy..... Bede sie smial, gdybym nie potrafil poklonic.

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Wolf_Lehrer (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lehrer_Condition;
	information	= Info_Mod_Wolf_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Wolf_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_01"); //Moge pomóc wam stac sie bardziej umiejetnymi i nauczyc Was jak uzywac luku.
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_02"); //Moge równiez pokazac, jak robic strzaly.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wilk moze mi pomóc byc bardziej umiejetny, nauczyc mnie jak uzywac luku i jak robic strzaly.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_03"); //Potrafie pokazac, jak robic strzaly.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wilk moze mi pokazac jak robic strzaly.");
	};
};

INSTANCE Info_Mod_Wolf_Lernen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Condition;
	information	= Info_Mod_Wolf_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Wolf_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Wolf_Lernen_31_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Wolf_Lernen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Wolf_Lernen_Bogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Bogen_Condition;
	information	= Info_Mod_Wolf_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie lucznictwa.";
};

FUNC INT Info_Mod_Wolf_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_Bogen_15_00"); //Naucz mnie lucznictwa.

	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Z powrotem.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Z powrotem.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Z powrotem.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Wolf_Schnitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Schnitzen_Condition;
	information	= Info_Mod_Wolf_Schnitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przenies strzalki do rzezby (2 LP)";
};

FUNC INT Info_Mod_Wolf_Schnitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Schnitzen.description = "Przynies strzalki do rzezbienia (200 zlota)";
	}
	else
	{
		Info_Mod_Wolf_Schnitzen.description = "Przenies strzalki do rzezby (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSchnitzen	== 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Schnitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Schnitzen_15_00"); //Naucz mnie strzalek.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_31_01"); //Okay. Najpierw nalezy kupic kawalek drewna z Thorben. Nastepnie wez to do pily i wyrzez do okolo 10 strzalek.
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_31_02"); //Nastepnie dolaczysz strzalke z grotem na kowadle i Twoja strzalka jest gotowa.

		Mod_PfeileSchnitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Do tworzenia strzalek potrzebne sa prety strzalek. Moge je wyciac z galezi.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Wolf_Schnitzen_31_03"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Wolf_Spitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Spitzen_Condition;
	information	= Info_Mod_Wolf_Spitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przynies mnie do kuzniczych grot strzal (2 LP)";
};

FUNC INT Info_Mod_Wolf_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Spitzen.description = "Naucz mnie kuszenia strzalek (200 zlota)";
	}
	else
	{
		Info_Mod_Wolf_Spitzen.description = "Naucz mnie kucia grotów strzalek (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSpitzen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Spitzen_15_00"); //Naucz mnie kucia strzalek.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Spitzen_31_01"); //Wez kawalek surowej stali idz do kowadla. Otrzymasz okolo 10 grotów strzalek z jednego kawalka surowej stali.

		Mod_PfeileSpitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Do tworzenia strzalek potrzebne sa strzalki. Moge to wygrac na kowadle z surowej stali.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Wolf_Spitzen_31_02"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Wolf_PlattenNehmen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_PlattenNehmen_Condition;
	information	= Info_Mod_Wolf_PlattenNehmen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jak odebrac te talerze od bestii? (5 LP)";
};

FUNC INT Info_Mod_Wolf_PlattenNehmen_Condition()
{
	Info_Mod_Wolf_PlattenNehmen.description = B_BuildLearnString("Jak odebrac te talerze od bestii?", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_CrawlerPlate));

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_PlattenNehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_PlattenNehmen_15_00"); //Jak odebrac te talerze od bestii?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_CrawlerPlate))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_31_01"); //Jest to stosunkowo proste. Plyty tylne sa przytwierdzane do korpusu tylko na krawedziach.
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_31_02"); //Wystarczy wziac zyletke i przeciac ja na pól przekatnej wzdluz krawedzi.
	};
};

INSTANCE Info_Mod_Wolf_Pickpocket (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Pickpocket_Condition;
	information	= Info_Mod_Wolf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Wolf_Pickpocket_Condition()
{
	C_Beklauen	(137, ItRw_Arrow, 45);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_BACK, Info_Mod_Wolf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wolf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wolf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wolf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wolf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wolf_EXIT (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_EXIT_Condition;
	information	= Info_Mod_Wolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
