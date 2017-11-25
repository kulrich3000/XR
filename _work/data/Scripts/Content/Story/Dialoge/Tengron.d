INSTANCE Info_Mod_Tengron_Hi (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Hi_Condition;
	information	= Info_Mod_Tengron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Tengron_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_07_01"); //Obserwuj swój krok.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_15_02"); //Czy nie sadzisz, ze Garond i straznicy miejscy poradza sobie z tym samodzielnie?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_07_03"); //Uh.... Nie. Obserwuje.... cos jeszcze innego.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);

	Info_AddChoice	(Info_Mod_Tengron_Hi, "Pozwólcie mi sie zgadnac, sledzicie panstwo pana Garonda.", Info_Mod_Tengron_Hi_B);
	Info_AddChoice	(Info_Mod_Tengron_Hi, "Nie obchodzi mnie, co sie dalej dzieje.", Info_Mod_Tengron_Hi_A);
};

FUNC VOID Info_Mod_Tengron_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_00"); //Pozwólcie mi sie zgadnac, sledzicie panstwo pana Garonda.
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_B_07_01"); //Nie moge sie wypowiedziec na ten temat.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_02"); //Przypuszczam, ze Pan Hagen zhanbil go?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_B_07_03"); //Moze tak.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_04"); //Nic dziwnego. Dobrze sie bawic.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);
};

FUNC VOID Info_Mod_Tengron_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_A_15_00"); //Nie obchodzi mnie, co sie dalej dzieje.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);
};

INSTANCE Info_Mod_Tengron_WillPaladinWerden (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_WillPaladinWerden_Condition;
	information	= Info_Mod_Tengron_WillPaladinWerden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedzmy, ze chcialem zostac paladyna....";
};

FUNC INT Info_Mod_Tengron_WillPaladinWerden_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_WillPaladinWerden_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_WillPaladinWerden_15_00"); //Powiedzmy, ze chcialem zostac paladyna....
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_01"); //Tylko najlepsi milicjanci wspinaja sie na paladynów. Domagamy sie calkowitej lojalnosci wobec Innosa i Lorda Hagena.
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_02"); //Paladyn musi równiez wiedziec, jak uzywac miecza.
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_03"); //Milicja znajduje sie w barakach. Lord Andre bedzie cie popelnil, jesli uzna cie za odpowiedniego.
};

INSTANCE Info_Mod_Tengron_Daemonisch (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Daemonisch_Condition;
	information	= Info_Mod_Tengron_Daemonisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moze mi Pan powiedziec, co wydarzylo sie w ciemnym lesie?";
};

FUNC INT Info_Mod_Tengron_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Daemonisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_00"); //Czy moze mi Pan powiedziec, co wydarzylo sie w ciemnym lesie?
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_01"); //Och, to nie jest tak wazne, prawdopodobnie po prostu stracilem umysl....
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_02"); //Nie, jestem naprawde zainteresowany. Moze to miec ogromne znaczenie dla bezpieczenstwa miasta.....
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_03"); //Czy naprawde tak sadzisz? Cóz, opowiem ci co widzialem....
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_04"); //Bylo juz pózno wieczorem, kiedy wyszedlem i nie mialem przy sobie pochodni, ale uzylem swiatla swietego paladynowego, aby oswietlic otoczenie.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_05"); //Wiec wstapilem do malej doliny i na poczatku nie widzialem niczego......
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_06"); //Kiedy jednak rozejrzalem sie dookola, zobaczylem cos blyszczacego lezacego w jaskini z daleka.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_07"); //Gdy zblizylem sie blizej, przerazalo mnie odkrycie, ze to paladyni i straznicy miejscy stali bez ruchu na ziemi.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_08"); //W tej wlasnie chwili zgaslo mi swiatlo.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_09"); //Zebralem swoja mane, aby ponownie zapalic swiatlo..... i nagle zobaczylem mnie od dziesiatków lat czerni.... cienie pachnace we wszystkich kierunkach.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_10"); //Pelna strasznego strachu zabralam ucieczke z powrotem do miasta......
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_11"); //No cóz, pewnie wiesz, dlaczego tu siedze.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_12"); //Moi koledzy wyszli z lasu i oskarzyli mnie o atakowanie ich......
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_13"); //Kim byli wszyscy mezczyzni w lesie?
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_14"); //No cóz, posród paladynów.... (zaklócone)

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_Irdorath (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath_Condition;
	information	= Info_Mod_Tengron_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wkrótce wyjade na wyspe statkiem.";
};

FUNC INT Info_Mod_Tengron_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath_15_00"); //Wkrótce wyjade na wyspe statkiem.
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath_15_01"); //Chodzi o to, aby pozbyc sie braków Xeres, ogre, który prawie przyniósl miasto pod jego kontrola z ciemna magia.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath_07_02"); //Karac zlego maga, który byl odpowiedzialny za to wszystko?
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath_07_03"); //Uwielbiam isc z Toba....
};

INSTANCE Info_Mod_Tengron_Irdorath2 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath2_Condition;
	information	= Info_Mod_Tengron_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wtedy po prostu przyjdzcie ze mna.";
};

FUNC INT Info_Mod_Tengron_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath2_15_00"); //Wtedy po prostu przyjdzcie ze mna.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_01"); //Ale to oznaczaloby opuszczenie mojego stanowiska w miescie.....
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath2_15_02"); //... Jak gdybys byl jedna z niewielu osób, które widzialy zagrozenie dla miasta.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_03"); //Hmm, tak, masz racje. Wydaje sie, ze to o wiele wiecej.....
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_04"); //W porzadku, bede czekal na wylot w porcie.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Bardzo dobrze, z odrobina perswazji udalo mi sie przekonac Tengron do przylaczenia sie do statku.");

	B_GivePlayerXP	(100);

	Mod_TengronDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Tengron_Irdorath3 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath3_Condition;
	information	= Info_Mod_Tengron_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Tengron_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_TengronDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath3_07_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_TengronDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Tengron_Irdorath4 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath4_Condition;
	information	= Info_Mod_Tengron_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Tengron_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_TengronDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath4_07_01"); //Bardzo dobrze, wróce do portu.

	Mod_TengronDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Tengron_HaradLehrling (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_HaradLehrling_Condition;
	information	= Info_Mod_Tengron_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z powodu Harada....";
};

FUNC INT Info_Mod_Tengron_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_HaradLehrling_15_00"); //Z powodu Harada....
	AI_Output(self, hero, "Info_Mod_Tengron_HaradLehrling_07_01"); //Zapisz oddech! Dowód jego winy zostal przedstawiony.
	AI_Output(self, hero, "Info_Mod_Tengron_HaradLehrling_07_02"); //Wszystko inne jest w reku Pana Andresa, a nie moje.
};

INSTANCE Info_Mod_Tengron_BinPaladin (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_BinPaladin_Condition;
	information	= Info_Mod_Tengron_BinPaladin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem tez teraz paladyna.";
};

FUNC INT Info_Mod_Tengron_BinPaladin_Condition()
{
	if (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_BinPaladin_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_BinPaladin_15_00"); //Jestem tez teraz paladyna.
	AI_Output(self, hero, "Info_Mod_Tengron_BinPaladin_07_01"); //Jestes wiec nowym facetem. Miales szybki wzrost. Niektóre trwaja dluzej. Prosze spojrzec na Mario. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Tengron_BinPaladin_07_02"); //Jesli Lord Hagen jest wam zaufany, tak samo jak ja. Niech Innos strzega cie na twoich drogach.
};

INSTANCE Info_Mod_Tengron_Beliar (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Beliar_Condition;
	information	= Info_Mod_Tengron_Beliar_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Tengron_Beliar_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Beliar_Info()
{
	AI_Output(self, hero, "Info_Mod_Tengron_Beliar_07_00"); //(shrieks) Ahhhhhhhhhhhhh! Zabierzcie mnie z rak, rase Beliar!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_Pickpocket (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Pickpocket_Condition;
	information	= Info_Mod_Tengron_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Tengron_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMi_Gold, 38);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

	Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_BACK, Info_Mod_Tengron_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Tengron_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Tengron_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Tengron_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Tengron_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Tengron_EXIT (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_EXIT_Condition;
	information	= Info_Mod_Tengron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tengron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
