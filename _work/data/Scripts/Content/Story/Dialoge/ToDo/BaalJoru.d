INSTANCE Info_Mod_Joru_Hi (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Hi_Condition;
	information	= Info_Mod_Joru_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joru_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Joru_Hi_07_00"); //Ach, wracasz? Od czasu panskiej ostatniej wizyty tutaj wiele sie zmienilo.
};

INSTANCE Info_Mod_Joru_Sumpfmensch (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch_Condition;
	information	= Info_Mod_Joru_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_00"); //Jestes! Spójrz na ten balagan!
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_02"); //Es wurde gestorben und der Templer hier war involviert! Vielmehr weiß ich auch noch nicht! Die Leute hier sprechen alle von dem "bagna ludzie wycie".
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_03"); //Und dann schreien sie mir ins Ohr! Was soll das alles überhaupt? Und ich hab' heute noch nicht einmal einen Stängel geraucht. Als wegen des "Ludnosc zamieszkujaca bagna kregle".
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_04"); //VERDAMMT! Naprawde potrzebuje troche ziól bagiennych teraz, bo najbardziej uporczywe kontrolowanie skal nie wytrzyma!
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_05"); //Troszczcie sie o te nieprzyjemna rzecz, czy mozecie?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Joru_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch2_Condition;
	information	= Info_Mod_Joru_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch2_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch2_15_00"); //... a potem go tu przywiozlem.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_01"); //To jest coraz bardziej dezorientujacy i mylacy jak moja migrena uderza ponownie...... Nie sadze, ze w najblizszym czasie nic nie wydobywamy z Darrionu.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_02"); //Stracil ten klucz. Moze pomoze Ci on znalezc informacje.
	
	B_GiveInvItems(self, hero, ItKe_Darrion, 1);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_03"); //Lepiej spróbowac zapytac niektórych z jego przyjaciól, podczas gdy ja troszcze sie o ten straszny atak migreny.
	
	B_UseItem(self, ItMi_Joint);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion w bagnie K. O. po lewej stronie. Chcialbym zapytac troche. Byc moze Fortuno ma jeszcze jakies informacje o Darrionie.");
};

INSTANCE Info_Mod_Joru_Sumpfmensch3 (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch3_Condition;
	information	= Info_Mod_Joru_Sumpfmensch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch3_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch3_Info()
{
	var c_npc Joru; Joru = Hlp_GetNpc(Mod_2013_PSINOV_Joru_MT);
	var c_npc Darrion; Darrion = Hlp_GetNpc(Mod_2014_PSINOV_Darrion_MT);

	TRIA_Invite(Darrion);
	TRIA_Start();

	TRIA_Next(Joru);
	
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch3_15_00"); //... i przyjechalismy tu z golemem, zeby sie do pana zglosic.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_01"); //Soso, trudne, trudne, trudne, trudne, trudne, cala historia, ale dosc ekscytujace z jednym lub drugim skretem.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_02"); //Ale faktem jest, ze jest to golem podmokly. Potwór. Musimy go zabic. Gdzie..... Mam jeszcze jedno pytanie. Dlaczego to nawet placze?
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_03"); //.... Kiedy zaprzyjaznilem sie z nim, dalem mu nazwisko.... mój stary kapitan.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_04"); //Mysle, ze staral sie wymówic to imie.... ale nigdy nie stala sie czyms wiecej niz tylko wycieleniem.....

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_05"); //WAS? To cos ma nazwe? Co tak sie nazywa?
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_06"); //....

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_07"); //Sooso.... Faktem jest, ze ta rzecz ma nazwe, nazywa sie Roger.... co oznacza, ze nie moge juz go nazywac potworami...... Zabijanie Rogera byloby oczywistym znaczeniem.... jest tylko jeden problem.......
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch3_15_08"); //Który z nich?
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_09"); //Nie sadze, bysmy mieli próbe jego wielkosci.
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_10"); //To znaczy, ze Roger moze zostac i nie zaszkodzisz mu?

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_11"); //Oczywiscie nie! Musi nas chronic przed potworami. MUSI ZABIC POTWORY! MOOOOOOOOOOOOOOONSTER DO ZABIJANIA!

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Joru_GotoTempel (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_GotoTempel_Condition;
	information	= Info_Mod_Joru_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestescie oczekiwani w swiatyni.";
};

FUNC INT Info_Mod_Joru_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_GotoTempel_15_00"); //Jestescie oczekiwani w swiatyni.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Joru_Woher (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Woher_Condition;
	information	= Info_Mod_Joru_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego umiescili cie w kolonii?";
};

FUNC INT Info_Mod_Joru_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_Woher_15_00"); //Dlaczego umiescili cie w kolonii?
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_01"); //Poniewaz kiedy zdalem próbe ognia, zabilem jednego z moich towarzyszy broni.
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_02"); //W kolonii zaprzyjaznilam sie z Tondralem, a nastepnie wraz z nim dolaczylam do braterstwa.
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_03"); //Tondral wkrótce zostal Baalem, musialem czekac az do smierci Y' Beriona.
};

INSTANCE Info_Mod_Joru_Pickpocket (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Pickpocket_Condition;
	information	= Info_Mod_Joru_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Joru_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Joint, 5);
};

FUNC VOID Info_Mod_Joru_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

	Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_BACK, Info_Mod_Joru_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joru_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joru_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
};

FUNC VOID Info_Mod_Joru_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joru_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joru_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joru_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joru_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joru_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joru_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joru_EXIT (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_EXIT_Condition;
	information	= Info_Mod_Joru_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joru_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joru_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
