INSTANCE Info_Mod_Ethan_Hi (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Hi_Condition;
	information	= Info_Mod_Ethan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Ethan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Ethan_Hi_13_01"); //Jestem Etanem, najwyzszym straznikiem srodowiska wodnego. Prowadze i kieruje wojownikami wodnymi.
};

INSTANCE Info_Mod_Ethan_Irdorath (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath_Condition;
	information	= Info_Mod_Ethan_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Droga do zniszczenia zlych Xeres poprowadzi mnie statkiem na wyspe.";
};

FUNC INT Info_Mod_Ethan_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_00"); //Droga do zniszczenia zlych Xeres poprowadzi mnie statkiem na wyspe.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_01"); //Jestem jednak uzalezniony od wsparcia silnych i odwaznych towarzyszy.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_02"); //Wtedy dobrze sie skontaktowales.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_03"); //Wygnanie tego przyjaciela ma najwyzszy priorytet i pomoze wam z lodem i mieczem wykonac swoja czesc.
};

INSTANCE Info_Mod_Ethan_Irdorath2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath2_Condition;
	information	= Info_Mod_Ethan_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wtedy ciesze sie, ze moge poznac zawodnika walczacego o równowage w naszych szeregach.";
};

FUNC INT Info_Mod_Ethan_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_00"); //Wtedy ciesze sie, ze moge poznac zawodnika walczacego o równowage w naszych szeregach.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_01"); //Miejscem spotkania naszej wycieczki jest port Khorinis.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath2_13_02"); //Wtedy bede mial racje po drodze.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Teraz z Ethanem znam silnego wojownika na pokladzie.");

	B_GivePlayerXP	(100);

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_Irdorath3 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath3_Condition;
	information	= Info_Mod_Ethan_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Ethan_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath3_13_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_EthanDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Ethan_Irdorath4 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath4_Condition;
	information	= Info_Mod_Ethan_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Ethan_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath4_13_01"); //Bardzo dobrze, wróce do portu.

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_01 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_01_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_00"); //Udowodniles, ze masz zarówno moc walki, jak i mózgi.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_01"); //No cóz, mam prosbe, abyscie mogli mi panstwo pomóc w....
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_03"); //No cóz, mam zwyczaj trenowac wieczorem.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_04"); //Kilka dni temu trenowalem w poblizu jaskini, kiedy slyszalem dziwne odglosy. Ja nakarmilem jaskinie, a potem.....
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_05"); //Tak, co sie stalo?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_06"); //Um.... Obudzilem sie nastepnego ranka w jaskini.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_07"); //Powtórzylem to w inne wieczory, aby odtworzyc zródlo dzwieku, ale to samo wydarzylo sie za kazdym razem.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_08"); //Bylem troche zawstydzony, jakbym gonil duchy, wiec nie prosilem nikogo innego o pomoc.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_09"); //Czy móglbys przyjsc do jaskini piramidy noca, aby pomóc mi w moim, uh, badaniu?

	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Naprawde, mam jeszcze lepsze rzeczy do zrobienia.", Info_Mod_Ethan_DungeonSounds_01_B);
	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Oczywiscie oczywiscie. Musimy dotrzec do dna.", Info_Mod_Ethan_DungeonSounds_01_A);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_B()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_B_15_00"); //Naprawde mam wiec lepsze rzeczy do zrobienia niz dostac sie na dno przyczyny naglego sennosci.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_B_13_01"); //Ahhm, tak, byc moze masz racje.
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_A()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_A_15_00"); //Oczywiscie oczywiscie. Musimy dotrzec do dna.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_A_13_01"); //Wszystkie sluszne, wszystkie sluszne. Czekam na Ciebie w nocy poza jaskinia.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_ETHAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_ETHAN, "Ethan zawsze slyszy wieczorem dziwne dzwieki z jaskini w poblizu piramidy, ale zasypia kiedy tylko je karmi. Mam mu pomóc w zbadaniu sprawy. W nocy czeka na mnie poza jaskinia.");

	Mod_WM_EthanQuest = 1;
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATDUNGEON");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_02 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_02_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_01))
	&& (Mod_WM_EthanQuest == 1)
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_RUINS_39") < 500)
	&& (Wld_IsTime(20,00,24,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_00"); //Och, tam jestescie. Slyszysz odglosy?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_02_15_01"); //Tak, wlasciwie.....
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_02"); //Wszystkie sluszne, wszystkie sluszne. Wejde do srodka, a Ty pozostaniesz na zewnatrz, aby zobaczyc, co sie dzieje.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INDUNGEON");

	Wld_InsertNpc	(Minenzwerg_01, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_02, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_03, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_04, "NW_TROLLAREA_RUINS_CAVE_01");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_03 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_03_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_02))
	&& (Mod_WM_EthanQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_00"); //Cóz, co sie stalo?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_01"); //Male postacie przechodzily przez jaskinie z pikseksami i pracowaly na skalach.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_02"); //Male cyfry z pikseksami? Hmm, brzmi jak bitwa minowa.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_03"); //Nic, co nie stanowiloby dla nas zagrozenia, w przeciwnym razie bysmy nie zyli.
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_04"); //Krasnoludki kopalniane?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_05"); //Ach, stworzenia, które chca wydobywac mineraly w nocy w ciszy i spokoju. To rozwiazuje te tajemnice.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_06"); //Dziekujemy za wsparcie. Tutaj wez to zloto i zwój jako nagrode.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_IceRAin, 1);

	B_ShowGivenThings	("300 Zloto i zwoje odebrane");

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Ethan_Befoerderung (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_Condition;
	information	= Info_Mod_Ethan_Befoerderung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_Condition()
{
	if (Mod_Gilde == 9)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_08))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_00"); //Rozumiem, ze przychodzicie do mnie, aby dolaczyc do Wodnych Wojowników.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_01"); //Ciesze sie, ze w naszych szeregach mam tak energicznego czlowieka jak Ty.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_02"); //Tak wiec, ale przede wszystkim, dac swiadectwo komunii z woda i powiedziec slowa przysiegi:
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_03"); //Przysiegam mocami bogów.... i moc swietej wody......
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_04"); //Przysiegam mocami bogów.... i moc swietej wody......
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_05"); //... ze moja wiedza i dzialania beda polaczone z woda od teraz i na zawsze....
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_06"); //... ze moja wiedza i dzialania beda polaczone z woda od teraz i na zawsze....
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_07"); //... i fontanna zycia.
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_08"); //... i fontanna zycia.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_09"); //To sie dzieje. Od teraz bedziecie sluzyc jako wojownik wód naszej spolecznosci i bedziecie podazac za wola Adano.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_10"); //Tutaj daje wam pancerz wodny i miecz wojownika.

	CreateInvItems	(self, ItAr_WKR_H, 1);
	B_GiveInvItems	(self, hero, ItAr_WKR_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_WKR_H);

	if (hero.Hitchance[NPC_TALENT_2H] >= hero.Hitchance[NPC_TALENT_1H])
	{
		CreateInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else
	{
		CreateInvItems	(hero, ItMw_AdanosSchwert, 1);
	};

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_11"); //Oprócz tego ta krag lodowcowy pomoze Ci w walce wrecz.

	B_GiveInvItems	(self, hero, ItRu_Eisklinge, 1);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_12"); //Niech Adanos zawsze pomaga w tobie w twoich próbach i pozwala ci nadal podazac sciezka równowagi.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(1000);

	Mod_Gilde = 17;

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Befoerderung_2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_2_Condition;
	information	= Info_Mod_Ethan_Befoerderung_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_2_Condition()
{
	if (Mod_Gilde == 17)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_00"); //Ach, tam jestescie. Uslyszalem juz o waszych zaslugach i moge tylko w pelni poprzec wole Satry.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_01"); //Wiec zadaje panu nastepujace pytanie: Czy czujesz sie gotów sluzyc jako straznik wody Adano?
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_2_15_02"); //Tak, chce zostac straznikiem wody.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_03"); //Nastepnie wez te zbroje i blogoslawienstwo Adano.

	CreateInvItems	(hero, ItAr_Hueter, 1);
	B_ShowGivenThings	("Zbroja straznicza");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Hueter);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_04"); //Mozna równiez zobaczyc, ze teraz jeszcze efektywniej uzywac Rune of the Ice Blade.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_05"); //Niech w twojej pracy zachowa sie równowaga.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(400);

	Mod_Gilde = 18;

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Pickpocket (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Pickpocket_Condition;
	information	= Info_Mod_Ethan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Ethan_Pickpocket_Condition()
{
	C_Beklauen	(144, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_BACK, Info_Mod_Ethan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ethan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ethan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ethan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ethan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ethan_EXIT (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_EXIT_Condition;
	information	= Info_Mod_Ethan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ethan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_EXIT_13_00"); //Walka o równowage!

	AI_StopProcessInfos	(self);
};
