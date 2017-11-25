INSTANCE Info_Mod_Bullco_Hi (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Hi_Condition;
	information	= Info_Mod_Bullco_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bullco_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullco_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_01"); //Jestem Bullco, mysliwy na smoka.
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_02"); //Ile smoków polowales?
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_03"); //(dumb) Huh? Czy widzisz tutaj jakies smoki?
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_04"); //Do tej pory musicie je wszystkie wymazac.
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_05"); //Czy kochasz mnie, mezczyzne?
	AI_Output(hero, self, "Info_Mod_Bullco_Hi_15_06"); //Cóz, powodzenia.
	AI_Output(self, hero, "Info_Mod_Bullco_Hi_06_07"); //Tak.....
};

INSTANCE Info_Mod_Bullco_Frauenraub (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Frauenraub_Condition;
	information	= Info_Mod_Bullco_Frauenraub_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bullco_Frauenraub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_Frauenraub))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Frauenraub_Info()
{
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_00"); //Ach, tam jestescie wreszcie....
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_02"); //Znasz juz swoja droge wokól Starego Obozu i prawdopodobnie wiesz, gdzie znajduje sie dom Archbarone.
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_03"); //Mysle, ze tak.
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_04"); //Cóz, a barony rudy maja wiecej niz tylko rude. (migrujace giggle)

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_05"); //Siedzace tam dziewczyny. Daj nam jedna z nich.
	AI_Output(hero, self, "Info_Mod_Bullco_Frauenraub_15_06"); //A jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_07"); //Wszystko jest juz zajete. Tutaj, wez ten czar mgly pozostawiony przez magów wodnych w tym czasie i uzyj go w domu arcybarów.

	B_GiveInvItems	(self, hero, ItSc_Nebel, 1);

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_08"); //Wtedy wszystko co musisz zrobic, to poprosic dziewczyne o zakladanie plaszcza i pójscie z toba.

	B_GiveInvItems	(self, hero, ItAr_WomanCape, 1);

	AI_Output(self, hero, "Info_Mod_Bullco_Frauenraub_06_09"); //Zabierasz ja do Sylvio. Kazdy ma racje? W porzadku, idzmy.

	B_LogEntry	(TOPIC_MOD_SLD_BULLCO, "Bullco polecil mi pójsc do Domu Arcybaronów, uzyc mglistej roli, która mi dal i naklonic jedna z kobiet do wlozenia cypla. Mam ja zabrac do Sylvio.");
};

INSTANCE Info_Mod_Bullco_KesselProblem (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_KesselProblem_Condition;
	information	= Info_Mod_Bullco_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bullco_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_KesselProblem2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_KesselProblem_Info()
{
	AI_Output(self, hero, "Info_Mod_Bullco_KesselProblem_06_00"); //Brudny dranie. Zrobiles mi pan moja prace w kotlinie dolinowej.
	AI_Output(self, hero, "Info_Mod_Bullco_KesselProblem_06_01"); //Placimy za to.
};

INSTANCE Info_Mod_Bullco_Belagerung (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Belagerung_Condition;
	information	= Info_Mod_Bullco_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebujemy najemników.";
};

FUNC INT Info_Mod_Bullco_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungHilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_00"); //Potrzebujemy najemników.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_01"); //Rycerze Demoniczni chca raz na zawsze wydobyc nieumarlych. Nie mamy jednak wystarczajaco duzo mezczyzn, aby zaatakowac ich samotnie.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_02"); //Chcialem prosic o dostarczenie nam kilku najemników.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_03"); //Jest to trudne, poniewaz wiekszosc najemników nie ufa zwolennikom Beliarana. Musisz ich przekonac, aby sie z tym zgodzili.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_04"); //Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_05"); //Oczywiscie z zlotem. Mysle, ze 10. wystarcza 000 zlotych monet.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_06"); //(cynical) Tak, to wlasnie robie.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_07"); //Wiem, ze to duzo, ale nasi ludzie nie beda chcieli Ci pomóc inaczej.
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_08"); //Zwracam sie do Ravena, on bedzie wiedzial skad moge zdobyc zloto.
	AI_Output(self, hero, "Info_Mod_Bullco_Belagerung_06_09"); //Dobrze, zróbmy, bede tu czekac tak dlugo, jak tylko zechcesz!
	AI_Output(hero, self, "Info_Mod_Bullco_Belagerung_15_10"); //Do zobaczenia!

	Mod_GornsSold = 1;
	
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "Bullco powiedzial, ze najemnicy placa pensje w wysokosci 10. Spodziewanych jest 000 zlotych monet. Zobaczmy, co Raven ma do powiedzenia.");
};

INSTANCE Info_Mod_Bullco_Sold (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Sold_Condition;
	information	= Info_Mod_Bullco_Sold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto zloto.";
};

FUNC INT Info_Mod_Bullco_Sold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_SoeldnerSold))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_Sold_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_Sold_15_00"); //Oto zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 10000);

	AI_Output(self, hero, "Info_Mod_Bullco_Sold_06_01"); //Mysle, ze nasi obywatele byliby z tego bardzo zadowoleni. Dzis wieczorem zaatakujemy!
	AI_Output(hero, self, "Info_Mod_Bullco_Sold_15_02"); //Z cala prawda, powiem Ravenowi.

	B_GivePlayerXP	(250);
	
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "najemnicy sa gotowi i dzis wieczorem zaatakuja. Powinienem poinformowac o tym Ravena.");
};

INSTANCE Info_Mod_Bullco_SchlachtFertig (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_SchlachtFertig_Condition;
	information	= Info_Mod_Bullco_SchlachtFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "A wszystko w porzadku?";
};

FUNC INT Info_Mod_Bullco_SchlachtFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_ArgibastDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullco_SchlachtFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_00"); //A wszystko w porzadku?
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_01"); //To byla ciezka walka. Nie sadzilem, ze ci nieumarli beda sie oprzec i sprawiac takie klopoty.
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_02"); //Ale wszystko poszlo dobrze, czyz nie?
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_03"); //Ma pani racje. Co zamierzasz teraz zrobic?
	AI_Output(hero, self, "Info_Mod_Bullco_SchlachtFertig_15_04"); //Musze sie upewnic, ze Khorinis nie zejdzie ponownie z drenazu.
	AI_Output(self, hero, "Info_Mod_Bullco_SchlachtFertig_06_05"); //Tak Cie znam. Powodzenia!

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Bullco_Pickpocket (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_Pickpocket_Condition;
	information	= Info_Mod_Bullco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Bullco_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

	Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_BACK, Info_Mod_Bullco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bullco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bullco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bullco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bullco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bullco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bullco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bullco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bullco_EXIT (C_INFO)
{
	npc		= Mod_779_SLD_Bullco_MT;
	nr		= 1;
	condition	= Info_Mod_Bullco_EXIT_Condition;
	information	= Info_Mod_Bullco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bullco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
