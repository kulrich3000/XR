INSTANCE Info_Mod_Nefarius_AW_Fokussuche (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Fokussuche_Condition;
	information	= Info_Mod_Nefarius_AW_Fokussuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam sie z Toba skontaktowac w sprawie wyszukiwania ostrosci.";
};

FUNC INT Info_Mod_Nefarius_AW_Fokussuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_00"); //Mam sie z Toba skontaktowac w sprawie wyszukiwania ostrosci.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_01"); //Oh, tak, dokladnie.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_02"); //Saturas zapytal wszedzie, czy istnieje mozliwosc, ze nie musi wysylac dwóch z nas do Minentala.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_03"); //I na krótko przedtem odkrylem tu cos spektakularnego w napisach.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_04"); //Jesli mi to pomoze, to zawsze bede to robic.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_05"); //Starozytni ludzie byli w stanie zmielic czarna perle tak, ze dzialala ona jak pryzmat.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_06"); //Ale czarna perla nie jest przezroczysta!
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_07"); //Nie chodzilo tez o swiatlo, ale o magie.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_08"); //Czarnoksieznik mial zaklecie na pryzmat i figuratywnie widzial, ze zostal zlamany w perle i wyszedl z niej rozproszony.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_09"); //Pryzmaty te moga byc pomocne w wielu dyscyplinach, zarówno w walce jak i kwitnieniu.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_10"); //Aha.... Oznacza to, ze z odpowiednio przycietym pryzmatem, moglem rozbic zaklecie na trzy czesci i symulowac trzech magów, których potrzebuje?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_11"); //Zasadniczo tak. Nie pomogloby to jednak przeciwdzialac samemu czarowi ochronnemu, poniewaz moc zaklecia jest równiez rozproszona.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_12"); //Ale czarna perla ma wiele poteznych, czasami ciemnych cech.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_13"); //I tak starsi ludzie zdolali stworzyc pryzmat w taki sposób, aby mógl on wchlonac magie bez koniecznosci jej ponownego zarzucania.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_14"); //Procedura musi byc podobna do tej, z która sa tworzone runy z czarnej perly.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_15"); //W porzadku, prosze pozwolic mi to wyjasnic.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_16"); //Potrzebuje czarnej perelki, która nie tylko jest polerowana do magicznego pryzmatu, ale moze byc równiez naladowana zakleciami.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_17"); //Watpliwe jest jedynie, czy w ogóle jest jakies miejsce, gdzie mozna cos takiego zrobic.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_18"); //Wlasciwie?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_19"); //To wszystko, co udalo mi sie do tej pory dowiedziec, ale jestem pewien, ze to tylko kwestia czasu, zanim natknalem sie na prawe napisy.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_20"); //Czyli moge spedzic tu caly ten czas?
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_21"); //Nie obchodze sie z nim.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_22"); //Och, jeszcze jedna rzecz. Napisy zostaly zilustrowane.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_23"); //Czarodziej, który nakarmil czarna perle magia, zmniejszal sie od obrazu do obrazu.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche_05_24"); //Jest to jednak prawdopodobnie tylko niescislosc, która pojawila sie podczas procesu klucia.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche_15_25"); //(umbles) Dobrze, swietnie,......

	Log_CreateTopic	(TOPIC_MOD_MAGIEPRISMA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGIEPRISMA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "Wedlug starych ludzi jest jeden sposób, w jaki moge oszukiwac wielu magów. Potrzebuje czarnej korali, która jest pocieta na pryzmat. Nefarius szuka sposobu, aby to zrobic. Moge rozejrzec sie po ruinach tak dlugo.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Nefarius_AW_Fokussuche2 (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Fokussuche2_Condition;
	information	= Info_Mod_Nefarius_AW_Fokussuche2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam pryzmat.";
};

FUNC INT Info_Mod_Nefarius_AW_Fokussuche2_Condition()
{
	if (Npc_HasItems(hero, ItMi_Magieprisma) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_15_00"); //Mam pryzmat.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_05_01"); //Fenomen! (garnia) Maj.... Czy moge to zobaczyc?

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Fokussuche2);

	Info_AddChoice	(Info_Mod_Nefarius_AW_Fokussuche2, "Nie.", Info_Mod_Nefarius_AW_Fokussuche2_B);
	Info_AddChoice	(Info_Mod_Nefarius_AW_Fokussuche2, "Oczywiscie tak sie dzieje.", Info_Mod_Nefarius_AW_Fokussuche2_A);
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_C()
{
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_05_00"); //Dzieki pryzmatowi, powinno byc teraz mozliwe przelamanie zaklecia ochronnego kamieni ostrosciowych.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_05_01"); //Wystarczy naladowac pryzmat i opróznic go na kamien ogniskowy.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_C_05_02"); //Bedziesz mial racje!

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Fokussuche2);

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Mam swój pryzmat i moge go uzyc do przerwania zaklecia ochronnego. Jedyne co musze zrobic, to ladowac pryzmat czarami, a nastepnie opróznic go na ostrosc. Wspaniale, wiec mozemy wreszcie zaczac.");
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_B()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_B_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_B_05_01"); //Ach, zbyt zly. Cokolwiek mówisz.

	Info_Mod_Nefarius_AW_Fokussuche2_C();
};

FUNC VOID Info_Mod_Nefarius_AW_Fokussuche2_A()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_A_15_00"); //Oczywiscie tak sie dzieje.

	B_GiveInvItems	(hero, self, ItMi_Magieprisma, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_05_01"); //(assessing) Uh-huh.... Tak wiec, tak.... To ciekawe....
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_05_02"); //Czy moge zapytac, jak to zrobiles?
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_Fokussuche2_A_15_03"); //Nie chcesz wiedziec. Potrzebowano wiele magii Beliama.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_Fokussuche2_A_05_04"); //(zdziwiony) Oh! Uh, dlaczego nie zabierasz go z powrotem?

	B_GiveInvItems	(self, hero, ItMi_Magieprisma, 1);

	Info_Mod_Nefarius_AW_Fokussuche2_C();
};

INSTANCE Info_Mod_Nefarius_AW_PrismaGeladen (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_PrismaGeladen_Condition;
	information	= Info_Mod_Nefarius_AW_PrismaGeladen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zaladowalem pryzmat zakleciem.";
};

FUNC INT Info_Mod_Nefarius_AW_PrismaGeladen_Condition()
{
	if (Mod_Prisma_Start)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_PrismaGeladen_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_00"); //Zaladowalem pryzmat zakleciem.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_05_01"); //To zadzialalo! Brawo! (Pauza) To nie wszystko, co chciales powiedziec?
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_02"); //Teraz wiem, co powinien reprezentowac tajemniczy rysunek na scianie.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_03"); //Magia, która zniknela w pryzmie..... Mam uczucie, ze ukradziono mu czesc mojej zyciowej sily.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_04"); //Od tego czasu czuje sie chory i slaby.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_05_05"); //Jest to niezwykle niepokojace, zwlaszcza, ze trzeba naladowac pryzmat wieksza iloscia slów, aby dzialal w pelni.
	AI_Output(self, hero, "Info_Mod_Nefarius_AW_PrismaGeladen_05_06"); //Uwazajcie na to! Mozemy tylko miec nadzieje, ze energia, która panstwa okradziono, zostanie uwolniona wraz z zakleciami.
	AI_Output(hero, self, "Info_Mod_Nefarius_AW_PrismaGeladen_15_07"); //W przeciwnym razie pozostaje tylko moje cialo....
};

INSTANCE Info_Mod_Nefarius_AW_Runen (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Runen_Condition;
	information	= Info_Mod_Nefarius_AW_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie (tworzac runy)";
};

FUNC INT Info_Mod_Nefarius_AW_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Info ()
{
	var INT abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Nefarius_AW_Runen_15_00"); //Naucz mnie.
	
	Info_ClearChoices 	(Info_Mod_Nefarius_AW_Runen);
	Info_AddChoice		(Info_Mod_Nefarius_AW_Runen, DIALOG_BACK, Info_Mod_Nefarius_AW_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Nefarius_AW_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Icerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Icerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Icerain)) ,Info_Mod_Nefarius_AW_Runen_Icerain);
			abletolearn = (abletolearn +1);
		};	
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_IceWave] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_IceWave, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceWave)), Info_Mod_Nefarius_AW_Runen_IceWave);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Nefarius_AW_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_LightningFlash] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_LightningFlash, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightningFlash)), Info_Mod_Nefarius_AW_Runen_LightningFlash);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Waterfist] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Waterfist, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Waterfist)), Info_Mod_Nefarius_AW_Runen_Waterfist);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Nefarius_AW_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_IceCube] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_IceCube, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceCube)), Info_Mod_Nefarius_AW_Runen_IceCube);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ChargeZap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_ChargeZap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeZap)), Info_Mod_Nefarius_AW_Runen_Thunderball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Thunderstorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Thunderstorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Thunderstorm)), Info_Mod_Nefarius_AW_Runen_Thunderstorm);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Geyser] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Geyser, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Geyser)), Info_Mod_Nefarius_AW_Runen_Geyser);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_Icelance] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Icelance, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Icelance)), Info_Mod_Nefarius_AW_Runen_Icelance);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_InstantIceball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_InstantIceball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantIceball)), Info_Mod_Nefarius_AW_Runen_InstantIceball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Nefarius_AW_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Nefarius_AW_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Zap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_AW_Runen, B_BuildLearnString (NAME_SPL_Zap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Zap)), Info_Mod_Nefarius_AW_Runen_Zap);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Nefarius_AW_Runen_14_01"); //Nic wiecej nie moge cie nauczyc.
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Nefarius_AW_Runen);
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icerain);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icerain) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icerain, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonIceGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonIceGolem);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_SummonEisgoblin()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonEisgoblin);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icebolt);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Zap()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Zap) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Zap, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Icelance()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icelance);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icelance) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icelance, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_InstantIceball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantIceball);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Waterfist()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Waterfist);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_IceCube()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceCube);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceCube) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceCube, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Thunderball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeZap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Thunderstorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Thunderstorm);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Geyser()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Geyser);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Geyser) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Geyser, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_LightningFlash()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightningFlash);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_IceWave()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceWave);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceWave) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceWave, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal, 1);
	};
};

INSTANCE Info_Mod_Nefarius_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_Pickpocket_Condition;
	information	= Info_Mod_Nefarius_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Nefarius_AW_Pickpocket_Condition()
{
	C_Beklauen	(144, ItMi_Gold, 61);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_BACK, Info_Mod_Nefarius_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nefarius_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nefarius_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nefarius_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nefarius_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nefarius_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nefarius_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nefarius_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nefarius_AW_EXIT (C_INFO)
{
	npc		= Mod_9002_KDW_Nefarius_AW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_AW_EXIT_Condition;
	information	= Info_Mod_Nefarius_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nefarius_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
