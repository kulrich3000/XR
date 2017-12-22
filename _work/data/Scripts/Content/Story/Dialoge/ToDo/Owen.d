INSTANCE Info_Mod_Owen_Hi (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Hi_Condition;
	information	= Info_Mod_Owen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Owen_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Owen_Hi_31_00"); //Wlasciwie moim imieniem jest Owen. Jesli ktos slyszy, ze ktos nazywa mnie ubijakiem zólwi, nie zwracaj uwagi. .... Bylem bardzo pijany, mialem racje?
	AI_Output(hero, self, "Info_Mod_Owen_Hi_15_01"); //Rozumiem, ze Shi-- Owen.
	AI_Output(self, hero, "Info_Mod_Owen_Hi_31_02"); //Ha-ha.
};

INSTANCE Info_Mod_Owen_WarumPirat (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_WarumPirat_Condition;
	information	= Info_Mod_Owen_WarumPirat_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dotarles do piratów?";
};

FUNC INT Info_Mod_Owen_WarumPirat_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_WarumPirat_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_WarumPirat_15_00"); //Jak dotarles do piratów?
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_01"); //Wlasciwie bylo odwrotnie: przyszli do mnie piraci. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_02"); //Bylem glównym przyjacielem w Myrthan Navy do pewnego dnia Greg i jego chlopcy zaatakowali nasz statek.
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_03"); //Po tym, jak nas ogarneli, dali nam wybór - tym, którzy jeszcze nie umarli: niewoli lub kleski.
	AI_Output(self, hero, "Info_Mod_Owen_WarumPirat_31_04"); //Trudno odgadnac co wybralem, huh? (smiertelnicy)
};

INSTANCE Info_Mod_Owen_Auftrag (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Auftrag_Condition;
	information	= Info_Mod_Owen_Auftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge Ci pomóc?";
};

FUNC INT Info_Mod_Owen_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Auftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_00"); //Czy moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_01"); //Tak, tak, wlasciwie mozna.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_02"); //Przejdz do alchemika w Khorinis. Daje Ci on worek esencji.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_03"); //Zawiera skoncentrowana witamine C.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_04"); //Ostatnim razem, kiedy wyszlismy na polowanie na skarb, musielismy odwolac, bo polowa ekipy miala szkorbut!
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_05"); //Daj mi pieniadze, a ja otrzymam Twoja witamine C.
	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_06"); //Tutaj 400 sztuk zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Owen_Auftrag_31_07"); //Jesli bedzie prosil o wiecej, przewróci Cie na stól!
	AI_Output(hero, self, "Info_Mod_Owen_Auftrag_15_08"); //Bede o tym pamietac.

	Log_CreateTopic	(TOPIC_MOD_OWEN_SKORBUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_OWEN_SKORBUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_OWEN_SKORBUT, "Owen dal mi 400 zlotych monet. Od alchemika w miescie powinienem kupic worek witaminy C.");
};

INSTANCE Info_Mod_Owen_VitaminC (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_VitaminC_Condition;
	information	= Info_Mod_Owen_VitaminC_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem torbe.";
};

FUNC INT Info_Mod_Owen_VitaminC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Auftrag))
	&& (Npc_HasItems(hero, ItFo_Addon_VitaminC) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_VitaminC_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_VitaminC_15_00"); //Dostalem torbe.

	B_GiveInvItems	(hero, self, ItFo_Addon_VitaminC, 1);

	AI_Output(self, hero, "Info_Mod_Owen_VitaminC_31_01"); //Tym razem nie powinnismy miec z tym zadnych problemów. Dobrze wykonane.

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	B_LogEntry_More	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, TOPIC_MOD_OWEN_SKORBUT, "Scurvy' ego objeli Owen i I.", "Polowanie to powinno byc bezpieczne przed atakiem szkorbutów.");
	B_SetTopicStatus	(TOPIC_MOD_OWEN_SKORBUT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Owen_Befreiung (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Befreiung_Condition;
	information	= Info_Mod_Owen_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Owen, wstajcie, to juz koniec!";
};

FUNC INT Info_Mod_Owen_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_00"); //Owen, wstajcie, to juz koniec!
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_01"); //(groans) Argh, dziekuje. Czlowiek, myslalem, ze ci zbójcy mnie zabili.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_02"); //Co sie stalo z pieklem?
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_03"); //Kiedy pelnilem sluzbe straznicza w kabinie Greg' a, za daleko do masywu. Nagle niektórzy z tych bandytów zaatakowali mnie z ciemnosci.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_04"); //Móglbym niektórych zabic, ale bylo ich zbyt wiele. Uderzyli mnie w dól i przeciagneli mnie tutaj.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_05"); //Bylem torturowany. Chcieli wiedziec, co Greg zamierza dalej zrobic. Wydaje sie, ze pracuje pan dla tej dziwnej strazy.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_06"); //Myslalem, ze nie moge juz tego zrobic, ale potem sie pojawiles i uratowales mnie.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_07"); //Nie martw sie, mam cos zlego do powiedzenia.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_08"); //Co sie stalo?
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_09"); //Alligator Jack. Bill powiedzial mi, ze zostawil mnie przed mna, zeby cie szukac.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_10"); //Niestety, padl on ofiara bandytów. Znalazlem jego cialo i kilku zmarlych bandytów, troche dalej od niego.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_11"); //(mumbles) Alligator Jack..... martwy..... moga..... nie...... byc..........
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_12"); //Chodz, zabiore cie do Billa. O to zatroszczy sie on o Ciebie.
	AI_Output(self, hero, "Info_Mod_Owen_Befreiung_03_13"); //Tak. Zobaczmy projekt ustawy.
	AI_Output(hero, self, "Info_Mod_Owen_Befreiung_15_14"); //Podazaj za mna, idz za mna.
	
	B_LogEntry	(TOPIC_MOD_BEL_PIRBILL, "Znalazlem Owena i zabieram go teraz z powrotem do Billa.");

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BILL");
};

INSTANCE Info_Mod_Owen_Beerdigung (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Beerdigung_Condition;
	information	= Info_Mod_Owen_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Owen_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Owen_Beerdigung_Info()
{
	AI_Output(hero, self, "Info_Mod_Owen_Beerdigung_15_00"); //Hej, znów jestes. Tak naprawde to pan zrobil.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_01"); //Tak, to byl rekawiczka, tak jak nigdy wczesniej nie musialem go wlozyc w swoje zycie.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_02"); //Jeden magiczny pocisk za drugim, którego musialem unikac.
	AI_Output(self, hero, "Info_Mod_Owen_Beerdigung_03_03"); //Ale tak jak powoli grozilem, ze skonczylo mi sie oddychanie, nieumarle dranie rozplynelo sie z hukiem dzwieku i dymu.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Owen_Pickpocket (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_Pickpocket_Condition;
	information	= Info_Mod_Owen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Owen_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Owen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

	Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_BACK, Info_Mod_Owen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Owen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Owen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
};

FUNC VOID Info_Mod_Owen_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Owen_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Owen_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Owen_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Owen_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Owen_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Owen_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Owen_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Owen_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Owen_EXIT (C_INFO)
{
	npc		= Mod_939_PIR_Owen_AW;
	nr		= 1;
	condition	= Info_Mod_Owen_EXIT_Condition;
	information	= Info_Mod_Owen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Owen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Owen_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
