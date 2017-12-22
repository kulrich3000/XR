INSTANCE Info_Mod_Fingers_Hi (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Hi_Condition;
	information	= Info_Mod_Fingers_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witam, co moge od Ciebie otrzymac?";
};

FUNC INT Info_Mod_Fingers_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fingers_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Hi_15_00"); //Witam, co moge od Ciebie otrzymac?
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_01"); //Czy to zrobiles? Nie, potrafie pokazac ci, jak cos sobie zdobyc.... z kieszeni i domów Twoich bliznich.
	AI_Output(hero, self, "Info_Mod_Fingers_Hi_15_02"); //Dzwieki przydatne dla mnie.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_03"); //Ahh, ktos, kto ceni cnoty. Bardzo dobry.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_04"); //Na razie moge pokazac wam, jak sie wymykac.
	AI_Output(self, hero, "Info_Mod_Fingers_Hi_05_05"); //Jesli chcesz dowiedziec sie wiecej, musisz zrobic dla mnie mala rzecz....

	Log_CreateTopic	(TOPIC_MOD_LEHRER_OLDCAMP, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_OLDCAMP, "Palce moga nauczyc mnie ponownie róznych talentów kradziezy.");
};

INSTANCE Info_Mod_Fingers_Nek (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek_Condition;
	information	= Info_Mod_Fingers_Nek_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co o tym chodzi?";
};

FUNC INT Info_Mod_Fingers_Nek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_00"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_01"); //Cóz, cien Sly ma w swoim posiadaniu cos, co chcialbym miec..... amulet.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_02"); //I mam to teraz dostac dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_03"); //Dokladnie. Powinien byl ukryc ja gdzies w swojej kabinie. Jest to pierwsza chata z baldachimem, gdy skrecamy w prawo od bramy glównej.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_04"); //Na miekkich podeszwach powinienes byc w stanie wejsc w niezauwazalny sposób i wziac go bez zadnych problemów.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_05"); //Amulet nalezal kiedys do straznika imieniem Nek, a jego nazwisko jest wygrawerowane na plecach......
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_06"); //To prawda, wtedy zdjalem jego cialo z powrotem....
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_07"); //... przynajmniej niektóre fantazyjne szczoteczki wierza, ze HE nazwal ja po sobie.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek_15_08"); //Co?
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_09"); //Nic, zapomnij. Przynies mi amulet i naucze cie wiecej.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek_05_10"); //Moze jedna lub druga moneta wyjdzie dla Ciebie....

	Log_CreateTopic	(TOPIC_MOD_FINGERS_NEK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FINGERS_NEK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FINGERS_NEK, "Cien Palca chce mnie nauczyc rzemiosla zlodziei, kiedy dostaje go amulet z chaty Sly' ego. Kabina Sly' a jest pierwsza z baldachimem, kiedy skrecam w prawo od bramy glównej.");

	Wld_InsertItem	(ItAm_Nek,	"FP_ITEM_NEKSTISCH");
	Wld_InsertItem	(ItFo_Bread,	"FP_ITEM_NEKSTISCH");
};

INSTANCE Info_Mod_Fingers_Nek2 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek2_Condition;
	information	= Info_Mod_Fingers_Nek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem amulet.";
};

FUNC INT Info_Mod_Fingers_Nek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek))
	&& (Npc_HasItems(hero, ItAm_Nek) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek2_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek2_15_00"); //Znalazlem amulet.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_01"); //Doskonale, nie spodziewalem sie niczego wiecej.
	AI_Output(hero, self, "Info_Mod_Fingers_Nek2_15_02"); //Wez to tutaj.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_03"); //(Hesitly) Uh, nie, nie, nie --- Mam lepszy pomysl.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_04"); //Dajesz mi 200 zlotych monet, a ja opowiem ci nazwisko mezczyzny, który chce amuletu.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek2_05_05"); //Daje Ci 350 zlotych monet.... W ten sposób wygrywa dla Ciebie 150 monet.... Moge cie nauczyc.

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Fingers_Nek3 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek3_Condition;
	information	= Info_Mod_Fingers_Nek3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, tutaj zloto.";
};

FUNC INT Info_Mod_Fingers_Nek3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek3_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek3_15_00"); //Okay, tutaj zloto.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek3_05_01"); //Dobrze, to Sancho. Stoi tuz przed obozem bandytów.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek3_05_02"); //Po prostu powiedz mu, ze masz nek's amulet i jest doskonaly. Kazdy ma racje?

	B_LogEntry	(TOPIC_MOD_FINGERS_NEK, "Dalem Fingersowi 200 zlotych monet na nazwisko mezczyzny, który chce miec ten amulet. To Sancho spotykam sie przed obozem bandytów. Mam nadzieje, ze Fingers mnie nie zalozyl.");
};

INSTANCE Info_Mod_Fingers_Nek4 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Nek4_Condition;
	information	= Info_Mod_Fingers_Nek4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto mówi, ze nie oszukujesz mnie?";
};

FUNC INT Info_Mod_Fingers_Nek4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Nek4_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Nek4_15_00"); //Kto mówi, ze nie oszukujesz mnie?
	AI_Output(self, hero, "Info_Mod_Fingers_Nek4_05_01"); //Cóz, jesli nie chcesz, mozesz spróbowac sprzedac amulet za kilka monet innemu kupcowi.
	AI_Output(self, hero, "Info_Mod_Fingers_Nek4_05_02"); //Nie mysl jednak, ze mozesz dostac wiecej niz 10 sztuk zlota.
};

INSTANCE Info_Mod_Fingers_SLDSpy (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_SLDSpy_Condition;
	information	= Info_Mod_Fingers_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nowego i co ciekawego do uslyszec?";
};

FUNC INT Info_Mod_Fingers_SLDSpy_Condition()
{
	if (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_SLDSpy_15_00"); //Co nowego i co ciekawego do uslyszec?
	AI_Output(self, hero, "Info_Mod_Fingers_SLDSpy_05_01"); //No cóz, dla zlodziei umiejetnych, jezeli wielu strazników sie wyprowadzi, bedzie latwa ofiara o swicie w ciagu najblizszych kilku dni.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Palce powiedzialy, ze straznicy wkrótce o swicie beda sie wyprowadzac w duzych ilosciach.");
};

INSTANCE Info_Mod_Fingers_Kap4 (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Kap4_Condition;
	information	= Info_Mod_Fingers_Kap4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fingers_Kap4_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Kap4_Info()
{
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_00"); //No cóz, no cóz.... odwiedzajacego.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_01"); //Palce?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_02"); //Zaskoczony, ze widze?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_03"); //No cóz, naprawde nie zabraklo by bylo zbyt wiele, a orki uczynilyby mnie orkami Frikassee.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_04"); //Ale gdy zawirowania rozpoczely sie z orkami w obozie, trzymalem chlodna glowe i ukrywalem sie.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_05"); //W ukryciu?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_06"); //Tak..... w beczce.... zanim w nocy udalo mi sie wymknac z obozu.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_07"); //Bylo to dosc niewygodne.... Wierzcie mi.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_08"); //A dlaczego jestes tutaj?
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_09"); //No cóz, mialem kontakty z bandytami przed upadkiem starego obozu... Wiecej A ja jestem czlowiekiem cnót, które doceniaja, jesli zrozumiecie.
	AI_Output(hero, self, "Info_Mod_Fingers_Kap4_15_10"); //Mysle, ze tak, tak. Cóz, musze isc dalej. Dbaj o siebie.
	AI_Output(self, hero, "Info_Mod_Fingers_Kap4_05_11"); //Zawsze to robie. Do zobaczenia dookola.

	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung == 0)
	{
		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "Fingers znalazl swoje miejsce wsród bandytów. Wyglada na to, ze robi tam wszystko.");
	};
};

INSTANCE Info_Mod_Fingers_Lernen (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Lernen_Condition;
	information	= Info_Mod_Fingers_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Fingers_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fingers_Lernen_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Fingers_Lernen_05_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Fingers_Lernen);

	Info_AddChoice 		(Info_Mod_Fingers_Lernen, DIALOG_BACK, Info_Mod_Fingers_Lernen_BACK);

	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("kompletacja kieszonkowa", B_GetLearnCostTalent(hero, NPC_TALENT_PICKPOCKET, 1)), Info_Mod_Fingers_Lernen_Pickpocket);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("sluzy chwytaki", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1)), Info_Mod_Fingers_Lernen_Picklock);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("bijatyka", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1)), Info_Mod_Fingers_Lernen_Sneak);
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek2))
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString("akrobatyka", B_GetLearnCostTalent(hero, NPC_TALENT_ACROBAT, 1)), Info_Mod_Fingers_Lernen_Acrobat);
	};
	if (Mod_Schwierigkeit != 4)
	{
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Fingers_Lernen_Geschick_5);
		Info_AddChoice		(Info_Mod_Fingers_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Fingers_Lernen_Geschick_1);
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Fingers_Lernen);
};

FUNC VOID Info_Mod_Fingers_Lernen_Pickpocket()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_PICKPOCKET);
};

FUNC VOID Info_Mod_Fingers_Lernen_Picklock()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_PICKLOCK);
};

FUNC VOID Info_Mod_Fingers_Lernen_Sneak()
{
	B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK);
};

FUNC VOID Info_Mod_Fingers_Lernen_Acrobat()
{
	AI_Output(hero, self, "Info_Mod_Buster_Lernen_15_00"); //Naucz mnie akrobatyki.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_ACROBAT))
	{
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_01"); //Jesli kontrolujesz swoje cialo, bedziesz mógl przeskoczyc znacznie dalej.
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_02"); //Nauczysz sie sam sie nawijac i ladujesz prawidlowo od jesieni. Pamietaj jednak, ze nie jestes niesmiertelny!
		AI_Output(self, hero, "Info_Mod_Fingers_Lernen_Acrobat_05_03"); //Równiez w walce z akrobatyka jest bardzo pomocne. Mozesz szybko zmienic dystans do przeciwnika. Powodzenia!
	};
};

FUNC VOID Info_Mod_Fingers_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Fingers_Lernen);
};

FUNC VOID Info_Mod_Fingers_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Fingers_Lernen);
};

INSTANCE Info_Mod_Fingers_Pickpocket (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_Pickpocket_Condition;
	information	= Info_Mod_Fingers_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Fingers_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Nugget, 4);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

	Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_BACK, Info_Mod_Fingers_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fingers_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fingers_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fingers_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fingers_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fingers_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fingers_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fingers_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fingers_EXIT (C_INFO)
{
	npc		= Mod_1173_STT_Fingers_MT;
	nr		= 1;
	condition	= Info_Mod_Fingers_EXIT_Condition;
	information	= Info_Mod_Fingers_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fingers_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fingers_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
