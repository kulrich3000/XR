INSTANCE Info_Mod_Albert_Hi (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Hi_Condition;
	information	= Info_Mod_Albert_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Hi))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Hi_32_00"); //Zostalem juz o tym poinformowany. Wydaje mi sie, ze to Ty jestes facetem, który próbuje dostac strzal do nas.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_32_01"); //Teleporter dziala tak: daje ci kamien, który musisz umiescic na platformie, aby aktywowac Teleportera. Czy rozumiesz to bardzo dobrze?
	
	Info_ClearChoices	(Info_Mod_Albert_Hi);

	Info_AddChoice	(Info_Mod_Albert_Hi, "Nie, prosze to powtórzyc.", Info_Mod_Albert_Hi_B);
	Info_AddChoice	(Info_Mod_Albert_Hi, "Idzcie dalej.", Info_Mod_Albert_Hi_A);
};

FUNC VOID Info_Mod_Albert_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hi_B_15_00"); //Nie, prosze to powtórzyc.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_B_32_01"); //Dam ci kamien do umieszczenia tam na platformie, aby aktywowac teleportera. Czy rozumiesz to bardzo dobrze?
	
	Info_ClearChoices	(Info_Mod_Albert_Hi);

	Info_AddChoice	(Info_Mod_Albert_Hi, "Nie, prosze to powtórzyc.", Info_Mod_Albert_Hi_B);
	Info_AddChoice	(Info_Mod_Albert_Hi, "Idzcie dalej.", Info_Mod_Albert_Hi_A);
};

FUNC VOID Info_Mod_Albert_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hi_A_15_00"); //Idzcie dalej.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_A_32_01"); //Jesli jestes w naszym rodzinnym miescie, powinienes natychmiast porozmawiac z Genn, on opowie ci wszystko o dzumie goblinowej.
	AI_Output(hero, self, "Info_Mod_Albert_Hi_A_15_02"); //Okay. Daj mi kamien.
	AI_Output(self, hero, "Info_Mod_Albert_Hi_A_32_03"); //Tutaj ja masz.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Teraz moge aktywowac teleporter za pomoca kamienia ladujacego.");

	Info_ClearChoices	(Info_Mod_Albert_Hi);
};

INSTANCE Info_Mod_Albert_Matronen (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Matronen_Condition;
	information	= Info_Mod_Albert_Matronen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Matronen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Matronen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Matronen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Matronen_32_00"); //A co? Jak to sie stalo?
	AI_Output(hero, self, "Info_Mod_Albert_Matronen_15_01"); //To poszlo dobrze. Zatrzymalem potomstwo goblinów. Pozostala czesc mozna tam dostac na wlasna reke.
	AI_Output(self, hero, "Info_Mod_Albert_Matronen_32_02"); //Ciesze sie, ze Pan to zrobil. Lepiej udac sie do Turendila i powiedziec mu dobra wiadomosc.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_Faice (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Faice_Condition;
	information	= Info_Mod_Albert_Faice_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_FaiceGifty))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_VMG_FaiceGifty_Gift == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Faice_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Faice_32_00"); //Spieszyc sie, nie mamy duzo czasu.
	
	Info_ClearChoices	(Info_Mod_Albert_Faice);

	Info_AddChoice	(Info_Mod_Albert_Faice, "Jest cos, co musze zrobic najpierw.", Info_Mod_Albert_Faice_B);
	Info_AddChoice	(Info_Mod_Albert_Faice, "Daj mi kamien i od razu bede w drodze.", Info_Mod_Albert_Faice_A);
};

FUNC VOID Info_Mod_Albert_Faice_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Faice_B_15_00"); //Jest cos, co musze zrobic najpierw.
	AI_Output(self, hero, "Info_Mod_Albert_Faice_B_32_01"); //Pózniej spiesz sie.
	
	Info_ClearChoices	(Info_Mod_Albert_Faice);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Albert_Faice_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Faice_A_15_00"); //Daj mi kamien i od razu bede w drodze.
	AI_Output(self, hero, "Info_Mod_Albert_Faice_A_32_01"); //Tutaj ja masz. Dbaj o siebie.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Teraz powinienem udac sie do Tugettso i porozmawiac z Genn tam, moze on wie wiecej o roslinie leczniczej, której szukam.");

	Info_ClearChoices	(Info_Mod_Albert_Faice);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 2;
};

INSTANCE Info_Mod_Albert_Mendulus (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Mendulus_Condition;
	information	= Info_Mod_Albert_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Soeren))
	&& (Mod_VMG_FaiceGifty_Gift == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Mendulus_32_00"); //Pospiesz sie, musisz sie spieszyc. Faice nie czuje sie dobrze. Porozmawiaj z Turendilem, jest z Faice' em.
	AI_Output(hero, self, "Info_Mod_Albert_Mendulus_15_01"); //Bede w drodze od razu.
	AI_Output(self, hero, "Info_Mod_Albert_Mendulus_32_02"); //Prosze sie spieszyc.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_Gift (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Gift_Condition;
	information	= Info_Mod_Albert_Gift_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Gift_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_FurtNextDay))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_Turendil_Faice_Day == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Gift_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Gift_32_00"); //Wróc do Tugettso ponownie, mój przyjaciel?
	
	Info_ClearChoices	(Info_Mod_Albert_Gift);

	Info_AddChoice	(Info_Mod_Albert_Gift, "Wróce pózniej.", Info_Mod_Albert_Gift_B);
	Info_AddChoice	(Info_Mod_Albert_Gift, "Tak wlasnie wyglada. Czy moge miec kamien ladowania?", Info_Mod_Albert_Gift_A);
};

FUNC VOID Info_Mod_Albert_Gift_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Gift_B_15_00"); //Wróce pózniej.
	AI_Output(self, hero, "Info_Mod_Albert_Gift_B_32_01"); //Zobacze cie dookola.
	
	Info_ClearChoices	(Info_Mod_Albert_Gift);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Albert_Gift_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Gift_A_15_00"); //Tak wlasnie wyglada. Czy moge miec kamien ladowania?
	AI_Output(self, hero, "Info_Mod_Albert_Gift_A_32_01"); //Tutaj ja masz. Dbaj o siebie.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Do Tugettso. Moge sie tam dowiedziec wiecej od Genna.");

	Info_ClearChoices	(Info_Mod_Albert_Gift);

	AI_StopProcessInfos	(self);

	Mod_Turendil_Faice_Day = 1;
};

INSTANCE Info_Mod_Albert_Trador (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Trador_Condition;
	information	= Info_Mod_Albert_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Dean))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Trador_32_00"); //Turendil czeka na Ciebie.

	Wld_SendTrigger	("TRIGGERLIST_VMG_TUGETTSO");
	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
};

INSTANCE Info_Mod_Albert_TeleporterFurt (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_TeleporterFurt_Condition;
	information	= Info_Mod_Albert_TeleporterFurt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje nowego kamienia zasilajacego.";
};

FUNC INT Info_Mod_Albert_TeleporterFurt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorBesprochen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_15_00"); //Potrzebuje nowego kamienia zasilajacego.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_01"); //Um....
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_15_02"); //Czy jest jakis problem?
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_03"); //Przykro mi jednak.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_32_04"); //Ze wzgledu na czeste ostatnio zaklócenia, nie moge pogodzic mojego sumienia z posylaniem was na ewentualna smierc.
	
	Info_ClearChoices	(Info_Mod_Albert_TeleporterFurt);

	Info_AddChoice	(Info_Mod_Albert_TeleporterFurt, "Wszystko jasne. Kiedy prawdopodobnie bede mógl korzystac z portalu?", Info_Mod_Albert_TeleporterFurt_B);
	Info_AddChoice	(Info_Mod_Albert_TeleporterFurt, "Ale Turendil ma....", Info_Mod_Albert_TeleporterFurt_A);
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_B_15_00"); //Wszystko jasne. Kiedy prawdopodobnie bede mógl korzystac z portalu?
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_01"); //Jeszcze nie wiem. Ale w miedzyczasie mozna zobaczyc, czy mozna znalezc Furt.

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_02"); //Widzialem go uciekajacego do Starego Obozu.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_03"); //Slyszalem, ze widziano go w poblizu starego obozu. Sprawdz to tam.
	};

	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_B_15_04"); //Bede w drodze od razu.
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_B_32_05"); //Dowiem ci, kiedy portal jest bezpieczny.

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Teleporter jest zbyt niebezpieczny. Szukam Furta w poblizu starego obozu. Mialem sprawdzic obwód.");
	
	Info_ClearChoices	(Info_Mod_Albert_TeleporterFurt);

	AI_StopProcessInfos	(self);

	B_KillNpc	(Mod_1626_VMG_Furt_MT);

	CreateInvItems	(Mod_1626_VMG_Furt_MT, ItMw_FurtsSchwert, 1); 
};

FUNC VOID Info_Mod_Albert_TeleporterFurt_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleporterFurt_A_15_00"); //Ale Turendil ma....
	AI_Output(self, hero, "Info_Mod_Albert_TeleporterFurt_A_32_01"); //(przerwania) Nie obchodze sie. Chodzi o ludzkie zycie.
	
	Info_Mod_Albert_TeleporterFurt_B();
};

INSTANCE Info_Mod_Albert_FurtTot (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_FurtTot_Condition;
	information	= Info_Mod_Albert_FurtTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Furt.";
};

FUNC INT Info_Mod_Albert_FurtTot_Condition()
{
	if (Mod_VMG_FurtTot == 1)
	&& (Npc_HasItems(hero, ItMw_FurtsSchwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_FurtTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_00"); //Znalazlem Furt.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_01"); //Gdzie wiec on jest?
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_02"); //On nie zyje. Znalazlem go na wyspie niedaleko Starego Obozu.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_03"); //Oto dowód jego broni.

	B_GiveInvItems	(hero, self, ItMw_FurtsSchwert, 1);

	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_04"); //Szczerze mówiac, nie wiem, czy byc szczesliwym czy smutnym.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_05"); //Myslalem przeciez, ze znalem go na jakis czas. Powiem Turendilowi o tym.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_06"); //Dziekuje za przybycie do mnie.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_07"); //A co z kamieniem zasilajacym?
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_08"); //Lepiej wróce jutro, wtedy byc moze bede mógl Cie teleportowac.
	AI_Output(hero, self, "Info_Mod_Albert_FurtTot_15_09"); //Wszystko jasne.
	AI_Output(self, hero, "Info_Mod_Albert_FurtTot_32_10"); //Zobacze cie dookola.

	Mod_VMG_AlbertFurtTot = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Opowiedzialem Albertowi o smierci Furt. Powiedzial mi, zebym odpoczal dzien, wtedy moglem udac sie do teleportera.");
};

INSTANCE Info_Mod_Albert_TeleportWaldschluchtAktiv (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_TeleportWaldschluchtAktiv_Condition;
	information	= Info_Mod_Albert_TeleportWaldschluchtAktiv_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to wyglada?";
};

FUNC INT Info_Mod_Albert_TeleportWaldschluchtAktiv_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_FurtTot))
	&& (Wld_GetDay() > Mod_VMG_AlbertFurtTot)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_TeleportWaldschluchtAktiv_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_TeleportWaldschluchtAktiv_15_00"); //Jak to wyglada?
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_01"); //Mysle, ze mozemy dac jej strzal. Czy jestes gotowy?
	AI_Output(hero, self, "Info_Mod_Albert_TeleportWaldschluchtAktiv_15_02"); //Tak. Daj mi kamien.
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_03"); //Uaktywnilem juz portal. Jedyne co musisz zrobic, to przejsc przez nie.
	AI_Output(self, hero, "Info_Mod_Albert_TeleportWaldschluchtAktiv_32_04"); //Wciaz jednak masz tutaj kamien zasilajacy.

	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Spróbuje teleportera. Mam nadzieje, ze równiez wyjde z Tugettso.");

	Wld_SendTrigger	("STAENDER_VMG_PFX");
	Wld_SendTrigger	("PLATTFORM_VMG_PFX");
	Wld_SendTrigger	("WRONGTELEPORTTOWALDSCHLUCHT");
};

INSTANCE Info_Mod_Albert_WaldschluchtBack (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_WaldschluchtBack_Condition;
	information	= Info_Mod_Albert_WaldschluchtBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_WaldschluchtBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_TradorTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_WaldschluchtBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_WaldschluchtBack_32_00"); //Wydaje sie, ze to zadzialalo.

	Wld_SendUnTrigger	("STAENDER_VMG_PFX");
	Wld_SendUnTrigger	("PLATTFORM_VMG_PFX");
	Wld_SendTrigger	("WRONGTELEPORTTOWALDSCHLUCHT");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_4019_VMG_Faice_MT, "START");
};

INSTANCE Info_Mod_Albert_Pruefung (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Pruefung_Condition;
	information	= Info_Mod_Albert_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi. Potrzebuje nowego kamienia zasilajacego.";
};

FUNC INT Info_Mod_Albert_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Pruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Pruefung_15_00"); //Hi. Potrzebuje nowego kamienia zasilajacego.
	AI_Output(self, hero, "Info_Mod_Albert_Pruefung_32_01"); //Slyszalem, ze wreszcie uczysz sie naszych technik, aby stac sie szanowanym czlonkiem. Bardzo godny pochwaly. Oto kamien.
	
	B_GiveInvItems	(self, hero, ItMi_TugettsoStein, 1);

	AI_Output(hero, self, "Info_Mod_Albert_Pruefung_15_02"); //Dobrze, bede na drodze.
	AI_Output(self, hero, "Info_Mod_Albert_Pruefung_32_03"); //Powodzenia!
};

INSTANCE Info_Mod_Albert_Skinner (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Skinner_Condition;
	information	= Info_Mod_Albert_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze ci role, które chciales grac (..... )";
};

FUNC INT Info_Mod_Albert_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_KnowsInfo(hero, Info_Mod_Myxir_Skinner))
	&& (Npc_HasItems(hero, ItSc_SumWolf) >= 1)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 1)
	&& (Npc_HasItems(hero, ItSc_SumDemon) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Skinner_15_00"); //Przynosze wladcom, o które prosiles, zmieniajacy ksztalt mag.

	Npc_RemoveInvItems	(hero, ItSc_SumWolf, 1);
	Npc_RemoveInvItems	(hero, ItSc_SumGol, 1);
	Npc_RemoveInvItems	(hero, ItSc_SumDemon, 1);

	B_ShowGivenThings	("Rola przypisana na pismie");

	AI_Output(self, hero, "Info_Mod_Albert_Skinner_32_01"); //(joyful) Ahh, bajkowy, wtedy wreszcie mozemy zaczac studia. Oto uzgodniona platnosc, z dodatkowa rola zaklecia dla niezawodnego poslanca.

	CreateInvItems	(hero, ItMi_Gold, 800);
	CreateInvItems	(hero, ItSc_TrfRabbit, 2);

	B_ShowGivenThings	("Odbiór zwojów zlota i sloganów");

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Bylem z Albertem, który dal mi dodatkowa czesc powiedzenia. Teraz musze tylko wypracowac reszte z Skinnerem.");
};

INSTANCE Info_Mod_Albert_Amulett (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Amulett_Condition;
	information	= Info_Mod_Albert_Amulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, szanowny magik. Przepraszam za ten incydent.";
};

FUNC INT Info_Mod_Albert_Amulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Amulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Amulett_15_00"); //Witaj, szanowny magik. Przepraszam za ten incydent. Znalazlem wlasciwy amulet i nosze go razem ze mna.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_01"); //(Przypominajaco) Pokaz mi.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);

	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_02"); //Hmm..... Z Adanosem tak wlasnie. Moi bracia beda z tego bardzo zadowoleni.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_03"); //Poniewaz bedzie to bardzo korzystne dla naszej spolecznosci, oddam wam reszte wynagrodzenia pomimo tego incydentu.
	AI_Output(self, hero, "Info_Mod_Albert_Amulett_32_04"); //Mam jednak nadzieje, ze nie powtórzy sie to w przyszlosci.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_TrfSheep, 1);
	CreateInvItems	(hero, ItSc_TrfKeiler, 1);

	B_ShowGivenThings	("300 zlota i 2 kolowrotków zakonserwowanych");

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dalem amulet Albertowi i powinienem poinformowac o tym Dextera.");
};

INSTANCE Info_Mod_Albert_Oschust (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Oschust_Condition;
	information	= Info_Mod_Albert_Oschust_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyszedlem poprosic Pana o wsparcie.";
};

FUNC INT Info_Mod_Albert_Oschust_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_BanditenKidnapped))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	|| (Npc_KnowsInfo(hero, Info_Mod_UrShak_Oschust)))
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hexen))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Albert_HexenBack))
		{
		}
		else
		{
			return 1;
		};
	};
};

FUNC VOID Info_Mod_Albert_Oschust_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_00"); //Przyszedlem poprosic Pana o wsparcie. Dwie nasze wspólnoty sa bardzo zagrozone.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_01"); //Jak to zrobic? Powiedz mi wiec, co sie stalo.
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_02"); //Zdrajca z naszego obozu, ten sam, który sfalszowal amulet, jest odpowiedzialny za wszystko.
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_03"); //Stworzyl on dla nas zasadzke, dzieki której wielu naszych mezczyzn zostalo ujetych przez orki, z którymi tworzy wspólna sprawe.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_04"); //Co? Jaka podstawowosc aby sie zaangazowac w te szatanskie istoty.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_05"); //Ale jak daleko jest od nas to wszystko o nas? Czy orkowie chca teraz od nas odepchnac amulet?
	AI_Output(hero, self, "Info_Mod_Albert_Oschust_15_06"); //Twoja zuchwalosc czci ciebie, maga. Wlasnie o tym mysla ogry.
	AI_Output(self, hero, "Info_Mod_Albert_Oschust_32_07"); //Nie ma wiec czasu do stracenia. Czekajcie tutaj, poinformuje moich braci.

	if (!Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	{
		Wld_SendTrigger	("EVT_FOKUSTOR");
	};

	AI_GotoWP	(self, "WP_MT_ALBERT_ZU_VMGS");
	AI_GotoWP	(self, "OW_PATH_176_TEMPELFOCUS4");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_KommeMit (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_KommeMit_Condition;
	information	= Info_Mod_Albert_KommeMit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_KommeMit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Oschust))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_KommeMit_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_32_00"); //No cóz, skonsultowalem sie z bracmi i postanowilismy, ze bede wam towarzyszyc, aby ocalic waszych przyjaciól.

	if (!Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	{
		Wld_SendTrigger	("EVT_FOKUSTOR");
	};

	Info_ClearChoices	(Info_Mod_Albert_KommeMit);

	Info_AddChoice	(Info_Mod_Albert_KommeMit, "Cóz, co to za dwoje z nas?", Info_Mod_Albert_KommeMit_B);
	Info_AddChoice	(Info_Mod_Albert_KommeMit, "Wszystkie sluszne, wszystkie sluszne.", Info_Mod_Albert_KommeMit_A);
};

FUNC VOID Info_Mod_Albert_KommeMit_C()
{
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_00"); //Do tego celu sluzy teraz amulet przedluzacza.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_01"); //Ma on nastepujace cechy: Kazdy zaklecie rzucane przez nosiciela jest doswiadczany przez wszystkich swoich towarzyszy bojowych, czyniac go niezwykle poteznym narzedziem.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_02"); //Bez dalszej adorowania przeksztalce nas w muchy krwi. Wystarczy isc za mna, zabiore nas do Orc City po najszybszej drodze.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_03"); //Przeciez z moich poprzednich wypraw wiem, jak przelatywala krew, jest podziemny system jaskiniowy, w którym wasi przyjaciele powinni byc.... Jesli jeszcze zyja, powinna to byc wola Adano.
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_C_32_04"); //Teraz odejdzmy bez zwloki.
	
	Info_ClearChoices	(Info_Mod_Albert_KommeMit);

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "O to wlasnie chodzi w amulecie. Kazdy zaklecie rzucane przez przewoznika rzucany jest na wszystkich swoich towarzyszy broni bojowej.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORMTOBLOODFLY");

	Mod_AlbertTransforms = 1;
};

FUNC VOID Info_Mod_Albert_KommeMit_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_KommeMit_B_15_00"); //Cóz, co to za dwoje z nas?
	AI_Output(self, hero, "Info_Mod_Albert_KommeMit_B_32_01"); //Tutaj to nie brutalna sila moze nam pomóc odniesc sukces, ale umiejetne wykorzystanie magii.
	
	Info_Mod_Albert_KommeMit_C();
};

FUNC VOID Info_Mod_Albert_KommeMit_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_KommeMit_A_15_00"); //Wszystkie sluszne, wszystkie sluszne.
	
	Info_Mod_Albert_KommeMit_C();
};

INSTANCE Info_Mod_Albert_OrkCity (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_OrkCity_Condition;
	information	= Info_Mod_Albert_OrkCity_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OrkCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_KommeMit))
	&& (Mod_AlbertTransforms == 1)
	&& (Npc_GetDistToWP(self, "WP_MINENTAL_START_ORCCITY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OrkCity_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OrkCity_32_00"); //Cóz, to powinno byc wejscie do podziemnej jaskini.
	AI_Output(self, hero, "Info_Mod_Albert_OrkCity_32_01"); //Idz dalej, jestes silniejszym wojownikiem. Bede Cie sledzil.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dzieki magicznym sztukom Alberta i amuletowi przedluzki wkraczamy teraz do podziemnej jaskini Orków, by odnalezc wiezniów.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_FluchtHappy (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_FluchtHappy_Condition;
	information	= Info_Mod_Albert_FluchtHappy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_FluchtHappy_Condition()
{
	if (Mod_AlbertTransforms == 6)
	&& (Npc_GetDistToWP(self, "WP_MINENTAL_START_ORCCITY") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_FluchtHappy_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_FluchtHappy_32_00"); //Stad z tego miejsca moge nas wszystkich teleportowac poza orkowe miasto z teleportem zwój i amulet.

	if (Npc_HasItems(hero, ItAm_MegaAmulett2) > 0)
	{
		B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);
		Mod_Extension_Angelegt = FALSE;
	};
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SURVIVOR");

	AI_Teleport (self, "OW_PATH_1_5_B");
	AI_Teleport (hero, "OW_PATH_1_5_B");
};

INSTANCE Info_Mod_Albert_Safety (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Safety_Condition;
	information	= Info_Mod_Albert_Safety_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Safety_Condition()
{
	if (Mod_AlbertTransforms == 6)
	&& (Npc_GetDistToWP(self, "OW_PATH_1_5_B") < 1000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Albert_FluchtHappy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Safety_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Safety_32_00"); //No cóz, to oklad. Bede teraz szybko wracal do moich braci, opowiadalem im o tym, co sie wydarzylo i przygotowywalem sie do ewentualnego ataku.
	AI_Output(self, hero, "Info_Mod_Albert_Safety_32_01"); //Wy, z drugiej strony, dobrze byscie spieszyli sie do waszego obozu, poniewaz wróg moze uderzyc w kazdej chwili.
	AI_Output(hero, self, "Info_Mod_Albert_Safety_15_02"); //Dziekuje za wsparcie. Ale teraz nie jest to czas na wypoczynek. Pozostawmy wiec niezwlocznie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	if (Mod_OC_Esteban == 0)
	{
		B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "SURVIVOR");
		AI_Teleport	(Mod_948_BDT_Esteban_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Miguel == 0)
	{
		B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "SURVIVOR");
		AI_Teleport	(Mod_958_BDT_Miguel_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Juan == 0)
	{
		B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "SURVIVOR");
		AI_Teleport	(Mod_955_BDT_Juan_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Logan == 0)
	{
		B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "SURVIVOR");
		AI_Teleport	(Mod_957_BDT_Logan_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Skinner == 0)
	{
		B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "SURVIVOR");
		AI_Teleport	(Mod_964_BDT_Skinner_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Morgahard == 0)
	{
		B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "SURVIVOR");
		AI_Teleport	(Mod_790_BDT_Morgahard_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Bandit_01 == 0)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "SURVIVOR");
		AI_Teleport	(Mod_4074_BDT_Bandit_MT, "OW_PATH_1_5_3");
	};
	if (Mod_OC_Bandit_02 == 0)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "SURVIVOR");
		AI_Teleport	(Mod_4075_BDT_Bandit_MT, "OW_PATH_1_5_3");
	};
};

INSTANCE Info_Mod_Albert_Hexen (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Hexen_Condition;
	information	= Info_Mod_Albert_Hexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "My, wspólnota wody, jestesmy w wielkim cierpieniu i mozemy potrzebowac mocy amuletu.";
};

FUNC INT Info_Mod_Albert_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Amulett))
	&& (Mod_WM_ArtefaktSammler == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Hexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Hexen_15_00"); //My, wspólnota wody, jestesmy w wielkim cierpieniu i mozemy potrzebowac mocy amuletu.
	AI_Output(self, hero, "Info_Mod_Albert_Hexen_32_01"); //Chetnie pomagam naszym braciom kochajacym przyrode.
	AI_Output(self, hero, "Info_Mod_Albert_Hexen_32_02"); //Chcialbym jednak prosic panstwa o zwrócenie nam amuletu, gdy juz przezwyciezyli panstwo swój problem.

	B_GiveInvItems	(self, hero, ItAm_MegaAmulett2, 1);
};

INSTANCE Info_Mod_Albert_HexenBack (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_HexenBack_Condition;
	information	= Info_Mod_Albert_HexenBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze ci amulet z powrotem.";
};

FUNC INT Info_Mod_Albert_HexenBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hexen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cronos_Angriff_02))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_HexenBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_HexenBack_15_00"); //Przynosze ci amulet z powrotem.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett2, 1);

	AI_Output(self, hero, "Info_Mod_Albert_HexenBack_32_01"); //Dziekuje, dziekuje. Wydaje sie, ze bardzo ci to pomoglo.
};

INSTANCE Info_Mod_Albert_Asylanten (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Asylanten_Condition;
	information	= Info_Mod_Albert_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego przyjechales do Minental?";
};

FUNC INT Info_Mod_Albert_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_15_00"); //Dlaczego przyjechales do Minental?
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_32_01"); //W wymiarze ojczystym uderzyla nas prawdziwa armia goblinów.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_32_02"); //Dzieki starym teleporterom wiekszosc z nas byla w stanie wyróznic sie i szukac pomocy.

	Info_ClearChoices	(Info_Mod_Albert_Asylanten);

	Info_AddChoice	(Info_Mod_Albert_Asylanten, "Nie wyglada na to, ze szukasz pomocy.", Info_Mod_Albert_Asylanten_B);
	Info_AddChoice	(Info_Mod_Albert_Asylanten, "Co robi opózniony?", Info_Mod_Albert_Asylanten_A);
};

FUNC VOID Info_Mod_Albert_Asylanten_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_B_15_00"); //Nie wyglada na to, ze szukasz pomocy.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_01"); //To beznadziejne. Znajdujemy sie w obszarze o dziwnej rasie ludzkiej.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_02"); //Pierwsza grupa, z która mielismy do czynienia, kryje sie za wysoka palisada.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_03"); //Straznik, który zapytal nas, dlaczego przyjechalismy tu glosno sie smial i zyczyl nam Beliara.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_04"); //Inna grupa przywitala nas serdecznie i wysluchala naszego lamentów, potem wycofala sie z powrotem na spotkanie i wyslala nas do domu z gróbem.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_05"); //Poza indywidualnymi mysliwymi czy zakazami, nie moglismy znalezc nikogo innego do zapytania.
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_B_32_06"); //Od tego czasu nie mielismy innego wyboru niz miec nadzieje.
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_B_15_07"); //To nie budzi pozazdroszczenia.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Ruiny nad morzem sa domem dla magów zmian, którzy czekaja na pomoc w ich ojczystym swiecie. Wydaje sie, ze sa rozczarowani Starym Obozem i Bractwem, ale nie wykazuja zadnego agresywnego potencjalu.");

	Info_ClearChoices	(Info_Mod_Albert_Asylanten);
};

FUNC VOID Info_Mod_Albert_Asylanten_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_Asylanten_A_15_00"); //Co robi opózniony?
	AI_Output(self, hero, "Info_Mod_Albert_Asylanten_A_32_01"); //Oni beda bronic naszej wioski, jesli beda musieli. Nie poddajemy sie bez walki!

	Info_Mod_Albert_Asylanten_B();
};

INSTANCE Info_Mod_Albert_Fokus (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Fokus_Condition;
	information	= Info_Mod_Albert_Fokus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_Fokus_Condition()
{
	if (Mod_Fokus_Kloster == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Fokus_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_01"); //Szukam magicznego ostrosci. Magicy wodni umiescili ja na cokole obok podestu, ale ja tego nie widze.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_02"); //Ach, tak, dobrze go pamietam. Spowodowal nam jakies klopoty.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_03"); //Jest na nim zaklecie ochronne. W przeciwnym razie jest calkowicie nieszkodliwe.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_04"); //Dobra znajomosc. Kilkoro z nas próbowalo podniesc go z piedestalu i stluczylo, a nawet zlamalo kosci.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_05"); //Gdzie sie teraz skupiamy?
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_06"); //Wrzucilismy ja w dól do morza.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_07"); //W kazdym razie zrobilibysmy to, gdyby poszla za mna.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_08"); //Wiec po prostu umiescilismy nad nim pudelko, a potem zamknelismy je szczelnie. To jedna z tych skrzyn.
	AI_Output(hero, self, "Info_Mod_Albert_Fokus_15_09"); //Czy moge skupic sie na mnie?
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_10"); //Trzymac przez sekunde. To nie byl jedyny problem, jaki mielismy.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_11"); //Wczoraj nagle przyszla dziwaczna postac sciezki i zapytala nas o te czesc.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_12"); //Kiedy pojawil sie facet, dostalem zawrotów glowy. Nigdy nie powiedzialbym mu, ze nadal skupiamy sie na tym!
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_13"); //Dlatego klamalem mu, zeby wrzucil go do morza. Tam odszedl.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_14"); //Trzeci problem: chcielismy jak najszybciej pozbyc sie skupienia.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_15"); //Dwoje z nas chwycilismy klatke piersiowa, zeby pamietac, ze zaklecie ochronne przeskoczylo do nich!
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_16"); //Przeplynely one przez licznik.
	AI_Output(self, hero, "Info_Mod_Albert_Fokus_32_17"); //Wiec jesli uda Ci sie zlamac zaklecie, prosze, prosze, zwróc uwage na to.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Skupiajac sie na ruinach klasztoru, mialem przed soba niemal pelzajaca sylwetke. Skupia sie on na jednej z skrzyn Alberta. Aby jednak do tego dojsc, musze najpierw przerwac zaklecie ochronne, które przeskoczylo do klatki piersiowej.");
};

INSTANCE Info_Mod_Albert_WerBistDu (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_WerBistDu_Condition;
	information	= Info_Mod_Albert_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Albert_WerBistDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albert_WerBistDu_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_00"); //Nazywam sie Albert. Strzege tej platformy.
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_15_01"); //Jaka jest to platforma?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_02"); //Slyszalem, ze to byla rama dla kamieni ostrosciowych.
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_32_03"); //Uzywamy go jako teleportera do Tugettso i z powrotem.

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	Info_AddChoice	(Info_Mod_Albert_WerBistDu, "Jak dziala Teleporter?", Info_Mod_Albert_WerBistDu_B);
	Info_AddChoice	(Info_Mod_Albert_WerBistDu, "Czym jest Tugettso?", Info_Mod_Albert_WerBistDu_A);
};

FUNC VOID Info_Mod_Albert_WerBistDu_B()
{
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_B_15_00"); //Jak dziala Teleporter?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_B_32_01"); //Pokaze Ci, kiedy bedziesz gotowy.

	Mod_Albert_WBD += 1;

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	if (Mod_Albert_WBD == 1)
	{
		Info_AddChoice	(Info_Mod_Albert_WerBistDu, "Czym jest Tugettso?", Info_Mod_Albert_WerBistDu_A);
	};
};

FUNC VOID Info_Mod_Albert_WerBistDu_A()
{
	AI_Output(hero, self, "Info_Mod_Albert_WerBistDu_A_15_00"); //Czym jest Tugettso?
	AI_Output(self, hero, "Info_Mod_Albert_WerBistDu_A_32_01"); //Nasza rodzinna wioska. Jesli chcesz dowiedziec sie wiecej, zapytaj Turendil.

	Mod_Albert_WBD += 1;

	Info_ClearChoices	(Info_Mod_Albert_WerBistDu);

	if (Mod_Albert_WBD == 1)
	{
		Info_AddChoice	(Info_Mod_Albert_WerBistDu, "Jak dziala Teleporter?", Info_Mod_Albert_WerBistDu_B);
	};
};

var int Mod_Knows_AlbertTeacher;

INSTANCE Info_Mod_Albert_Lernen_MANA (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Lernen_MANA_Condition;
	information	= Info_Mod_Albert_Lernen_MANA_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce zwiekszyc swoja magiczna moc.";
};

FUNC INT Info_Mod_Albert_Lernen_MANA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Hi))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_Info()
{
	if (Mod_Knows_AlbertTeacher == FALSE)
	{
		Mod_Knows_AlbertTeacher = TRUE;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_VM, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Albert moze mi pomóc zwiekszyc moja magiczna moc.");
	};

	AI_Output(hero, self, "Info_Mod_Albert_Lernen_MANA_15_00"); //Chce zwiekszyc swoja magiczna moc.

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Albert_Lernen_MANA_BACK_14_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Albert_Lernen_MANA_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Albert_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, DIALOG_BACK, Info_Mod_Albert_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Albert_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Albert_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Albert_Lernen_MANA_1);
};

INSTANCE Info_Mod_Albert_Pickpocket (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_Pickpocket_Condition;
	information	= Info_Mod_Albert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Albert_Pickpocket_Condition()
{
	C_Beklauen	(145, ItSc_TrfShadowbeast, 1);
};

FUNC VOID Info_Mod_Albert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

	Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_BACK, Info_Mod_Albert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Albert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Albert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
};

FUNC VOID Info_Mod_Albert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Albert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Albert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Albert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Albert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Albert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Albert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Albert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Albert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Albert_EXIT (C_INFO)
{
	npc		= Mod_1958_VMG_Albert_MT;
	nr		= 1;
	condition	= Info_Mod_Albert_EXIT_Condition;
	information	= Info_Mod_Albert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Albert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
