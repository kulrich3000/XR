INSTANCE Info_Mod_Irmgard_Hi (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Hi_Condition;
	information	= Info_Mod_Irmgard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czyz nie chciales sie tu wydostac od dawna, czyz nie?";
};

FUNC INT Info_Mod_Irmgard_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Hi_15_00"); //Czyz nie chciales sie tu wydostac od dawna, czyz nie?
	AI_Output(self, hero, "Info_Mod_Irmgard_Hi_17_01"); //Kocham. Jak mozesz ochotniczo pozostac w tej lonie rabusiów? Tam w rogu.... Pajeczyny!
	AI_Output(self, hero, "Info_Mod_Irmgard_Hi_17_02"); //Ale Hedwig mówi, ze to jedyny sposób, w jaki zmienia sie nasi mezczyzni. I chce, zeby mój maz sie zmienil.
};

INSTANCE Info_Mod_Irmgard_Kneipe (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe_Condition;
	information	= Info_Mod_Irmgard_Kneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla pana propozycje.";
};

FUNC INT Info_Mod_Irmgard_Kneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_00"); //Mam dla pana propozycje.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_01"); //Jesli obiecuje, ze twoje zyczenie zostanie spelnione - czy pomóglbys mi wydobyc z tego miejsca Hedwig i Berte?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_02"); //No cóz, nie wiem. Hedwig nie podda sie tak latwo.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_03"); //Musi byc jakas droga, aby ja wydostac z zajazdu, prawda?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_04"); //Nie moge o niczym myslec.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_05"); //Dlaczego o tym nie myslisz? Co by sie stalo, gdyby Hedwig wyszla z domu?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_06"); //Cóz, kocha przede wszystkim owce. Za kazdym razem, gdy ja zobaczy, zawsze od razu idzie tam i uderza.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_07"); //To poczatek. Owce musialyby wtedy uciec zanim Hedwig dotrze do niej.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_08"); //W ten sposób moglismy sie upewnic, ze ona wyjdzie z zajazdu.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_09"); //A co wiec?
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_10"); //Wtedy trzeba by ja zwabic do Anselm, zeby oboje mieli cos do powiedzenia.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_11"); //W jakis sposób uda im sie dojsc do porozumienia.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_12"); //Niekoniecznie.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_13"); //Spróbujmy.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_14"); //Gdzie dostajemy owce i naklaniamy je do zrobienia tego, czego chcemy?
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_15"); //Móglbym zamienic sie w.....
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_16"); //Gdzie moge zdobyc role konwersji?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_17"); //Wypróbuj targowisko w Daniel's lub Fire Magic House.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_18"); //Dobre. Czy jestes?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_19"); //A zatem wszystko w porzadku.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_20"); //Do zobaczenia pózniej!

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Hedwigi bardziej uwielbia owce niz cokolwiek innego, wiec moim zamiarem jest zamienic mnie w jedna owce i zwabic ja do Anselm, aby mogla sie wyrazic. Moge byc w stanie przeobrazac sie na rynku Daniela lub w Domu Strazaków.");

	CreateInvItems	(Mod_7378_OUT_Daniel_REL, ItSc_TrfSheep, 3);
};

INSTANCE Info_Mod_Irmgard_Kneipe2 (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe2_Condition;
	information	= Info_Mod_Irmgard_Kneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hedwig odwolal akcje.";
};

FUNC INT Info_Mod_Irmgard_Kneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_00"); //Hedwig odwolal akcje.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_01"); //(sceptycznie) Daj sie przekonac? To nie jej sie nie podoba.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_02"); //Anselms i moje dobre argumenty nie mialy nic przeciwko temu.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_03"); //Wiec mozesz isc teraz. I zabierz Berte z toba.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_04"); //Tak, dobra gonna dobry facet musi sie dobrze przespac.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_05"); //I do dzis nadal rozmawiam z mezem.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_06"); //Chce, abym ci w tym pomogla?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_07"); //Nie, nie sadze, zeby to byl dobry pomysl. Ale nadal milo o Tobie pomóc.

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_SUCCESS);

	Mod_Irmgard_Tag = Wld_GetDay();

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HEIM");
	B_StartOtherRoutine	(Mod_7724_OUT_Berta_REL, "HEIM");
};

INSTANCE Info_Mod_Irmgard_Kneipe3 (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe3_Condition;
	information	= Info_Mod_Irmgard_Kneipe3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak odbyla sie rozmowa z mezem?";
};

FUNC INT Info_Mod_Irmgard_Kneipe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe2))
	&& (Wld_GetDay() > Mod_Irmgard_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe3_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe3_15_00"); //Jak odbyla sie rozmowa z mezem?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe3_17_01"); //Znalezlismy dobry kompromis: zaproponowal on nieco wiecej pracy, abysmy mogli sobie pozwolic na dozorce.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe3_15_02"); //No cóz, wiec....
};

INSTANCE Info_Mod_Irmgard_Pickpocket (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Pickpocket_Condition;
	information	= Info_Mod_Irmgard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Irmgard_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

	Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_BACK, Info_Mod_Irmgard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Irmgard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Irmgard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Irmgard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Irmgard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Irmgard_EXIT (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_EXIT_Condition;
	information	= Info_Mod_Irmgard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Irmgard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Irmgard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
