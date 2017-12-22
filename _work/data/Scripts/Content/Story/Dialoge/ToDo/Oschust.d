INSTANCE Info_Mod_Oschust_Hi (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Hi_Condition;
	information	= Info_Mod_Oschust_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czesc, jestem nowy w obozie.";
};

FUNC INT Info_Mod_Oschust_Hi_Condition()
{
	if (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Hi_15_00"); //Czesc, jestem nowy w obozie. Co robisz kucie i stoly alchemiczne?
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_01"); //Ahh, nowe oblicze. Wystarczy zblizyc sie i zobaczyc w swoim rzemiosle mistrza podróbki i alchemika.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_02"); //Robie zardzewiale ostrza, podrobione pieniadze i zlote metale. Nasz obóz nie zarabia zle na moich oszustwach.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_03"); //Jesli masz srebrne pierscienie, zloce je równiez za niewielka oplata 10 monet, aby mozna je sprzedac dowolnemu sprzedawcy za duzo wyzsza cene ich rzeczywistej wartosci.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_04"); //Równiez zardzewiale miecze odnawiam cie tylko na 2 zlote monety z moja specjalna mieszanka kwasów w krótkim czasie.
};

INSTANCE Info_Mod_Oschust_Amulett_A (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Amulett_A_Condition;
	information	= Info_Mod_Oschust_Amulett_A_Info;
	permanent	= 0;
	important	= 0;
	description	= "Amulet okazal sie falszywy.";
};

FUNC INT Info_Mod_Oschust_Amulett_A_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Amulett_A_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_00"); //Amulet okazal sie falszywy. Czy mozesz mi cos o tym powiedziec?
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_01"); //Co? To jest falsz? Wiec caly wysilek zostal calkowicie zmarnowany?
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_02"); //Czy nie mozesz mi o tym opowiedziec wiecej?
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_03"); //Dlaczego, co masz na mysli? To wszystko, co moge powiedziec.
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_04"); //Czarnoksieznik jeszcze wyraznie wyczuwal aure prawdziwego amuletu. Musialo to byc wiec bliskie tej sytuacji przed chwila.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_05"); //Um, naprawde nie moge Ci w tym pomóc. Po prostu tylko troche to polerowalem, nadalem mu nowy blask. Nie mialem z tym nic wspólnego.
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_06"); //Rozumiesz sztuke podrabiania i przez jakis czas miales u siebie amulet.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_07"); //Co? Nie musze tego sluchac. Nie martw sie o mnie.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Oschust_Amulett_B (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Amulett_B_Condition;
	information	= Info_Mod_Oschust_Amulett_B_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi gdzie znalezc prawy amulet....";
};

FUNC INT Info_Mod_Oschust_Amulett_B_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Amulett_B_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_B_15_00"); //Powiedz mi gdzie jest prawdziwy amulet, albo wbije Ci zeby.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_B_04_01"); //Co? Nie martw sie o mnie. Nie wiem, czego chcesz.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Oschust_Umgehauen (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Umgehauen_Condition;
	information	= Info_Mod_Oschust_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy powiesz mi teraz, gdzie jest amulet, czy musze....";
};

FUNC INT Info_Mod_Oschust_Umgehauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B)))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_00"); //Czy powiesz mi teraz, gdzie jest amulet, czy musze....

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_01"); //Poczekaj, chce powiedziec wszystko.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_02"); //Slysze.....

	AI_RemoveWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_03"); //Tak, przepraszam, dostalem prawdziwy amulet i wykonalem jego kopie.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_04"); //Tam sie udajecie. A dla wyrzutów sumienia jest juz troche pózno. Gdzie jest teraz amulet?
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_05"); //Ukrylem ja w jaskini niedaleko stad. Ponizej obozu kilka metrów w kierunku kopalni i nie przegapisz.
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_06"); //Jedynym problemem jest to, ze grupa orków i ich psy osiedlily sie tam.
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_07"); //l-- W przeciwnym razie juz bym odzyskal amulet i nadrobil blad.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_08"); //Tak, na pewno. Cóz, chyba jakos bede musial sobie poradzic z orkiestrami....
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_09"); //Jesli naprawde chcesz spróbowac dostac sie do amuletu, aby go znalezc, musisz pospacerowac po dnie jaskini z pikselem.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_10"); //Dobrze, spojrze.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Z Oschusta dowiedzialem sie, ze zakopal amulet w jaskini na samym koncu, która znajduje sie pod obozem w kierunku kopalni. Czesc orków jest jednak podobno osiedlonych. Powinienem teraz poinformowac firme Dexter.");
		
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Oschust_WegenRingen (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_WegenRingen_Condition;
	information	= Info_Mod_Oschust_WegenRingen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dzieki pierscieniom....";
};

FUNC INT Info_Mod_Oschust_WegenRingen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenRingen_15_00"); //Dzieki pierscieniom....

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);

	Info_AddChoice	(Info_Mod_Oschust_WegenRingen, DIALOG_BACK, Info_Mod_Oschust_WegenRingen_BACK);

	if (Npc_HasItems(hero, ItRi_SkinnersRing) > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 35)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "A co z tym wietrznym pierscieniem orkowym?", Info_Mod_Oschust_WegenRingen_Skinner_C);
	};

	if (Npc_HasItems(hero, ItMi_SilverRing) > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 5)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "Wszystkie srebrne pierscienie pozlacane", Info_Mod_Oschust_WegenRingen_Silber_B);
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "Powlekanie zlotem srebrnego pierscienia", Info_Mod_Oschust_WegenRingen_Silber_A);
	};
};

FUNC VOID Info_Mod_Oschust_WegenRingen_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Skinner_C()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenRingen_Skinner_C_15_00"); //A co z tym wietrznym pierscieniem orkowym?

	B_GiveInvItems	(hero, self, ItRi_SkinnersRing, 1);

	Npc_RemoveInvItems	(self, ItRi_SkinnersRing, 1);

	AI_Output(self, hero, "Info_Mod_Oschust_WegenRingen_Skinner_C_04_01"); //Hmm, w bardzo zlym stanie. Trwa to troche dluzej i bedzie kosztowac nieco wiecej.
	AI_Output(self, hero, "Info_Mod_Oschust_WegenRingen_Skinner_C_04_02"); //Ale dla 35 zlotych monet bedzie tak samo dobre jak nowe jutro.

	B_GiveInvItems	(hero, self, ItMi_Gold, 35);

	Mod_OschustMachtOrkring = 1;
	Mod_OschustRingDay = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Silber_B()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMi_Silverring)*5)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 5*Npc_HasItems(hero, ItMi_SilverRing));
		CreateInvItems	(hero, ItMi_GoldRing, Npc_HasItems(hero, ItMi_SilverRing));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMi_SilverRing)), " Pierscienie srebrne zlocone"));

		Npc_RemoveInvItems	(hero, ItMi_SilverRing, Npc_HasItems(hero, ItMi_SilverRing));
	}
	else
	{
		var int GoldForRinge;

		GoldForRinge = Npc_HasItems(hero, ItMi_Gold) / 5;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 5*GoldForRinge);
		CreateInvItems	(hero, ItMi_GoldRing, GoldForRinge);
		Npc_RemoveInvItems	(hero, ItMi_SilverRing, GoldForRinge);

		Print	(ConcatStrings(IntToString(GoldForRinge), " Pierscienie srebrne zlocone"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Silber_A()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 5);
	CreateInvItems	(hero, ItMi_GoldRing, 1);
	Npc_RemoveInvItems	(hero, ItMi_SilverRing, 1);

	Print	("Pierscien srebrny zlocony");

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

INSTANCE Info_Mod_Oschust_WegenSchwertern (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_WegenSchwertern_Condition;
	information	= Info_Mod_Oschust_WegenSchwertern_Info;
	permanent	= 1;
	important	= 0;
	description	= "Z powodu mieczy....";
};

FUNC INT Info_Mod_Oschust_WegenSchwertern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenSchwertern_15_00"); //Z powodu mieczy....

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);

	Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, DIALOG_BACK, Info_Mod_Oschust_WegenSchwertern_BACK);

	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Pyl wszystkie zardzewiale, zardzewiale dlonie dwie rece.", Info_Mod_Oschust_WegenSchwertern_H);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Odkurzanie zardzewialych rdzawych dloni dwiema rekami", Info_Mod_Oschust_WegenSchwertern_G);
	};
	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Pyl wszystkich zardzewialych dwurecznych ludzi.", Info_Mod_Oschust_WegenSchwertern_F);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Odkurzanie zardzewialej osoby z dwiema rekami", Info_Mod_Oschust_WegenSchwertern_E);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Wszystkie ostre zardzewiale miecze drwiace z zardzewialych mieczy", Info_Mod_Oschust_WegenSchwertern_D);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Odkurzanie zardzewialego rdzawego miecza", Info_Mod_Oschust_WegenSchwertern_C);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Zabrudzenie wszystkich zardzewialych mieczy", Info_Mod_Oschust_WegenSchwertern_B);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Wstrzasanie zardzewialego miecza", Info_Mod_Oschust_WegenSchwertern_A);
	};
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_H()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
		CreateInvItems	(hero, ItMw_Zweihaender_Geschaerft, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft)), " Dwuosobowy, nieufny"));

		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01_Geschaerft, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_Zweihaender_Geschaerft, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01_Geschaerft, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Dwuosobowy, nieufny"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_G()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_Zweihaender, 1);
	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, 1);

	Print	("Odkurzanie dwurecznego mezczyzny");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_F()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_2H_Sword_M_01)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_2H_Sword_M_01));
		CreateInvItems	(hero, ItMw_Zweihaender, Npc_HasItems(hero, ItMw_2H_Sword_M_01));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01)), " Dwuosobowy, nieufny"));

		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Npc_HasItems(hero, ItMw_2H_Sword_M_01));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_Zweihaender, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Dwuosobowy, nieufny"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_E()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_Zweihaender, 1);
	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, 1);

	Print	("Odkurzanie dwurecznego mezczyzny");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_D()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft)), " Sworznie w derustrach"));

		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Sworznie w derustrach"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_C()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, 1);
	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, 1);

	Print	("Miecz zardzewialy");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_B()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_1h_MISC_Sword)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_1h_MISC_Sword));
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, Npc_HasItems(hero, ItMw_1h_MISC_Sword));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword)), " Sworznie w derustrach"));

		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Npc_HasItems(hero, ItMw_1h_MISC_Sword));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Sworznie w derustrach"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_A()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, 1);
	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, 1);

	Print	("Miecz zardzewialy");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

INSTANCE Info_Mod_Oschust_OrkringFertig (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_OrkringFertig_Condition;
	information	= Info_Mod_Oschust_OrkringFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_OrkringFertig_Condition()
{
	if (Mod_OschustMachtOrkring == 1)
	&& (Mod_OschustRingDay < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_OrkringFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_00"); //Pierscien jest gotowy i stal sie prawdziwym klejnotem.
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_01"); //Pracowalem nad nim przez wiele godzin, a nawet udalo mi sie wypracowac dziwne znaki runic, które zostaly wygrawerowane w ringu.
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_02"); //W tym przypadku jego wartosc musiala juz znacznie wzrosnac.

	B_GiveInvItems	(self, hero, ItRi_SkinnersRing_Gold, 1);
};

INSTANCE Info_Mod_Oschust_Piraten (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Piraten_Condition;
	information	= Info_Mod_Oschust_Piraten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz naprawic szable?";
};

FUNC INT Info_Mod_Oschust_Piraten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufgabe))
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) == 1)
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Piraten_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Piraten_15_00"); //Czy mozesz naprawic szable?
	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_01"); //Pozwole sobie to zobaczyc....

	B_GiveInvItems	(hero, self, ItMw_Piratensaebel_Greg, 1);

	AI_UnequipWeapons	(self);
	EquipItem	(self, ItMw_Piratensaebel_Greg);
	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);
	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_02"); //Wyglada to jak dobry szabla.
	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_03"); //Jutro bedzie tak dobrze jak nowe.

	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_05"); //Poniewaz nalezysz do nas, nie bedzie Cie to kosztowalo.

	Mod_MachtSäbel = 1;
	
	Mod_SäbelReparieren = Wld_GetDay();
};

INSTANCE Info_Mod_Oschust_Saebel (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Saebel_Condition;
	information	= Info_Mod_Oschust_Saebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy szabla jest gotowa?";
};

FUNC INT Info_Mod_Oschust_Saebel_Condition()
{
	if (Mod_MachtSäbel == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Oschust_Piraten))
	&& (Wld_GetDay() > Mod_SäbelReparieren)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Saebel_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Saebel_15_00"); //Czy szabla jest gotowa?
	AI_Output(self, hero, "Info_Mod_Oschust_Saebel_04_01"); //Tak, jest tak dobry jak nowy. Tutaj jest, Panie Panu.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg_Gut, 1);
};

INSTANCE Info_Mod_Oschust_Pickpocket (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Pickpocket_Condition;
	information	= Info_Mod_Oschust_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Oschust_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMiSwordRaw, 18);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

	Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_BACK, Info_Mod_Oschust_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Oschust_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Oschust_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Oschust_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Oschust_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Oschust_EXIT (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_EXIT_Condition;
	information	= Info_Mod_Oschust_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Oschust_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oschust_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
