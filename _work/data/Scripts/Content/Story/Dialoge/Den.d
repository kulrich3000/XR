INSTANCE Info_Mod_Den_Hi (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Hi_Condition;
	information	= Info_Mod_Den_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Den_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Den_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Den_Hi_05_01"); //Ja jestem Den, City Watch of Khorinis.
};

INSTANCE Info_Mod_Den_Stadtwache (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Stadtwache_Condition;
	information	= Info_Mod_Den_Stadtwache_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec jestes na strazy miejskiej?";
};

FUNC INT Info_Mod_Den_Stadtwache_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Stadtwache_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_00"); //Wiec jestes na strazy miejskiej?
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_01"); //Cóz, dlaczego podnioslo sie wyrzuty sumienia?
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_02"); //Jaki haniebny wydzwiek?
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_03"); //Mysle, ze nie slysze tego? Ale nie wszyscy jestesmy tak zli z milicja, tylko niewielu z nas pracuje z zlodziejska gildia i nie mam nic wspólnego z kradziezami trzy dni temu!
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_04"); //No cóz, nie musisz sie obawiac moich pytan.
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_05"); //Nie chce byc za nic oskarzany! Moje metody sa absolutnie czyste i nie bylem winny niczego podczas mojej trzyletniej sluzby!
};

INSTANCE Info_Mod_Den_Raeuber (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Raeuber_Condition;
	information	= Info_Mod_Den_Raeuber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hilda opowiedziala mi o zespole rabusiów poza Khorinis.";
};

FUNC INT Info_Mod_Den_Raeuber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hilda_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Raeuber_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_00"); //Hilda opowiedziala mi o zespole rabusiów poza Khorinis. Co wiesz o tym?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_01"); //Zaledwie nic. Hilda nie pozwolila nam wykopac sobie w jej pysznych miesnych placków, aby znalezc jakies istotne wskazówki.
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_02"); //Co pieprz miesny ma wspólnego z kradzieza owiec?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_03"); //Nie mozna tego wczesniej wiedziec.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_04"); //I bez zaglebienia sie w kaszanki miesne, przeszukiwanie domu nie bylo zakonczone, wiec nie moglem napisac raportu koncowego, co nie pomoglo nam w poszukiwaniu przestepców!
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_05"); //Co wiesz o bandytach i tak?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_06"); //Prosty gang ptaków, które wedruja po okolicy od kilku miesiecy i najwyrazniej niedawno zalozyly wlasny obóz.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_07"); //Nie wiemy dokladnie, za ile dokladnie jestes odpowiedzialny. Ogólnie rzecz biorac, róznia sie od innych bandytów tym, ze nie maja kodeksu honorowego.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_08"); //Znam kogos, kto zna kogos, kto zna kogos, kto ma krótkotrwaly kontakt z zlodziejami w tym miescie i kto dowiedzial sie, ze nawet zlodzieje gardza tymi zlodziejami.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_09"); //Te podbójki nie robia sobie nawzajem przyjazni, a jesli nie znajda sobie kolegów z braterstwa, staje sie dla nich na stale trudne.
};

INSTANCE Info_Mod_Den_Dienstzeit (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Dienstzeit_Condition;
	information	= Info_Mod_Den_Dienstzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pelni funkcje przez trzy lata? Co robiles wczesniej?";
};

FUNC INT Info_Mod_Den_Dienstzeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Dienstzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Dienstzeit_15_00"); //Pelni funkcje przez trzy lata? Co robiles wczesniej?
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_01"); //Nie ma nic! Nic powaznego! To zlodziejskie gildie, to bylo wyjatkowe!
	AI_Output(hero, self, "Info_Mod_Den_Dienstzeit_15_02"); //Masz kontakt z cecha zlodziei?
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_03"); //Jestem z nadbrzeza, musisz zobaczyc dokad zmierzasz. Nikt nie przyzna sie do tego, ale zlodziej gildia kontroluje duza czesc terenu.
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_04"); //Wszyscy maja z nia kontakt predzej czy pózniej.
};

INSTANCE Info_Mod_Den_Problem (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Problem_Condition;
	information	= Info_Mod_Den_Problem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Den_Problem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	&& (Wld_GetDay() >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Problem_Info()
{
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_00"); //Szukaj! Sluchaj!
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_01"); //Rozmawiasz do mnie?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_02"); //Tak, to prawda. Poprosil mnie pan, ze pewnego dnia.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_03"); //Jesli tak wlasnie chcesz to nazwac.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_04"); //Powiedzialem panu wszystko, co chcial pan uslyszec. W zamian, moze móglbys mi zrobic laske - nic wielkiego, nie leku.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_05"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_06"); //Jestem zmeczony patrolowaniem. Kazdego dnia policzam sobie mieszkanie, które powinno byc czyms dla mlodych zieleni.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_07"); //W barakach jest otwór, Ruga odeszla. Cóz, nie jestem najgoretszym pretendentem do pracy, ale Rangar, leniwy skumbag.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_08"); //Rangar jest pewny, ze ma brud na rekach, ale jak dziwnym jest, ze Lord Andre nie chce nic wiedziec o tym. Musi otworzyc oczy.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_09"); //Czym sie zajmujesz?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_10"); //Chce, abyscie rzucili zle swiatlo na Rangar. Rozpowszechniac plotki o nim, przemycac nielegalne towary do jego klatki piersiowej, a nastepnie powiedziec Lord Andre o tym.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_11"); //Czy mozna to zrobic?

	Info_ClearChoices	(Info_Mod_Den_Problem);

	Info_AddChoice	(Info_Mod_Den_Problem, "Zbyt niebezpieczne. Nie chce z tym nic wspólnego.", Info_Mod_Den_Problem_B);
	Info_AddChoice	(Info_Mod_Den_Problem, "Pewne. Ale na pewno jest to cos warte równiez dla Ciebie.....", Info_Mod_Den_Problem_A);
};

FUNC VOID Info_Mod_Den_Problem_B()
{
	AI_Output(hero, self, "Info_Mod_Den_Problem_B_15_00"); //Zbyt niebezpieczne. Nie chce z tym nic wspólnego.
	AI_Output(self, hero, "Info_Mod_Den_Problem_B_05_01"); //Nie jestes dobrym przyjacielem.

	Info_ClearChoices	(Info_Mod_Den_Problem);
};

FUNC VOID Info_Mod_Den_Problem_A()
{
	AI_Output(hero, self, "Info_Mod_Den_Problem_A_15_00"); //Pewne. Ale na pewno jest to cos warte równiez dla Ciebie.....
	AI_Output(self, hero, "Info_Mod_Den_Problem_A_05_01"); //Kilka monet wyjdzie jako zaplata za ciebie.

	Log_CreateTopic	(TOPIC_MOD_DENSPROBLEM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Zolnierz milicji Den Den Den na prózno czeka na awans, poniewaz Rangar najwyrazniej potepia go u Pana Andre. Teraz zrobie to samo z Rangarem: szerzyc pogloski o nim, przemycac zakazane towary do jego klatki piersiowej, a nastepnie potepic go z Panem Andrem.");

	Info_ClearChoices	(Info_Mod_Den_Problem);

	Mod_Den_Problem = 1;
};

INSTANCE Info_Mod_Den_Verbotenes (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Verbotenes_Condition;
	information	= Info_Mod_Den_Verbotenes_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki rodzaj nielegalnych towarów oznacza Pan/Pani?";
};

FUNC INT Info_Mod_Den_Verbotenes_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Verbotenes_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Verbotenes_15_00"); //Jaki rodzaj nielegalnych towarów oznacza Pan/Pani?
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_01"); //Zrobilby to bagnisty lodyga. Pan Andre powiedzial nam, abysmy nie robili tego samego.
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_02"); //Jesli przylapuje kogos z milicji, to gonna jest klopotem.
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_03"); //Jeszcze lepszym rozwiazaniem byloby cale opakowanie bogweedów, ale nie latwo sie tam dostaniesz.

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Towary zakazane, o których mowa w Den Den, sa chwastami. Jeden trzon powinien wystarczyc, ale caly pakiet bylby jeszcze lepszy. Po prostu uwaza, ze nie bedzie tak latwo.");
};

INSTANCE Info_Mod_Den_RangarsTruhe (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_RangarsTruhe_Condition;
	information	= Info_Mod_Den_RangarsTruhe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc klatke piersiowa Rangara?";
};

FUNC INT Info_Mod_Den_RangarsTruhe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_RangarsTruhe_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_RangarsTruhe_15_00"); //Gdzie moge znalezc klatke piersiowa Rangara?
	AI_Output(self, hero, "Info_Mod_Den_RangarsTruhe_05_01"); //Jest blisko niego, przy scianie przy stoisku piwnym.

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "Skrzynka Rangara znajduje sie obok sciany przy bezplatnym stoisku piwnym.");
};

INSTANCE Info_Mod_Den_Rangar (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Rangar_Condition;
	information	= Info_Mod_Den_Rangar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rozmawialem z Panem Andre.";
};

FUNC INT Info_Mod_Den_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Rangar_15_00"); //Rozmawialem z Panem Andre.
	AI_Output(self, hero, "Info_Mod_Den_Rangar_05_01"); //I co on powiedzial?
	AI_Output(hero, self, "Info_Mod_Den_Rangar_15_02"); //Sprawdzi rzeczy.
	AI_Output(self, hero, "Info_Mod_Den_Rangar_05_03"); //Bardzo dobrze, tutaj jest Twoja nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Den_Checker (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Checker_Condition;
	information	= Info_Mod_Den_Checker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Doskonale wiesz, ze....";
};

FUNC INT Info_Mod_Den_Checker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Dienstzeit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Checker_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Checker_15_00"); //Doskonale wiesz, ze....
	AI_Output(self, hero, "Info_Mod_Den_Checker_05_01"); //Hej, wykonuje swoja prace sumiennie! Tak wiele wiedzy mozna zdobyc bez spedzania lat na bieganiu spraw dla zlodziei!
};

INSTANCE Info_Mod_Den_Lernen_Armbrust (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Lernen_Armbrust_Condition;
	information	= Info_Mod_Den_Lernen_Armbrust_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie strzelaniny kuszy.";
};

FUNC INT Info_Mod_Den_Lernen_Armbrust_Condition()
{
	if (hero.hitchance[NPC_TALENT_CrossBow] < 50)
	&& (Mod_Schwierigkeit != 4)
	&& (Mod_Miliz_Armbrust)
	&& (Mod_Den_Problem == 1)
	&& (Mod_DenVerpfiffen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Lernen_Armbrust_15_00"); //Naucz mnie strzelaniny kuszy.

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);
	
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Z powrotem.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_BACK()
{
	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_CrossBow, 5, 60);

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Z powrotem.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_CrossBow, 1, 60);

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Z powrotem.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

INSTANCE Info_Mod_Den_Pickpocket (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Pickpocket_Condition;
	information	= Info_Mod_Den_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Den_Pickpocket_Condition()
{
	C_Beklauen	(60, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Den_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Den_Pickpocket);

	Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_BACK, Info_Mod_Den_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Den_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Den_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Den_Pickpocket);
};

FUNC VOID Info_Mod_Den_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Den_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Den_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Den_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Den_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Den_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Den_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Den_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Den_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Den_EXIT (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_EXIT_Condition;
	information	= Info_Mod_Den_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Den_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Den_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
