INSTANCE Info_Mod_Nagur_Hi (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Hi_Condition;
	information	= Info_Mod_Nagur_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_HabTrank))
	|| (Mod_IstLehrling > 0)
	|| (Npc_KnowsInfo(hero, Info_Mod_Ulf_WieGehts))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_00"); //(Sam sie) Jesli moge tylko dostac te zalosna pante pomiedzy palcami....
	AI_Output(hero, self, "Info_Mod_Nagur_Hi_15_01"); //Co?
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_02"); //(do bohatera) Oh, taki tchórzliwie nowicjusz zaciagnal wiele dlugów hazardowych, a nastepnie rozliczyl sie z.... uciekl gdzies w kierunku latarni morskiej.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_03"); //Ale niech placi.... w ten czy inny sposób.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_04"); //Gdyby cos sie z nim stalo, szczodrze wynagrodzilbym osobe, która przynosi mi zawartosc kieszeni.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_05"); //To byloby ostrzezeniem dla innych, aby splacili swoje dlugi w czasie.

	if (Npc_KnowsInfo(hero, Info_Mod_Daron_HabTrank))
	{
		B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "Prawdopodobnie Akahasch jest w kierunku latarni morskiej. Wydaje sie, ze ma dlug. Nagur zyczy smierci i oferuje nagrode za zawartosc torebek.");
	};

	Wld_InsertNpc	(Mod_4016_NOV_Akahasch_NW, "LIGHTHOUSE");
};

INSTANCE Info_Mod_Nagur_AkahaschTot (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_AkahaschTot_Condition;
	information	= Info_Mod_Nagur_AkahaschTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Akahasch mial troche 'wypadek'.....";
};

FUNC INT Info_Mod_Nagur_AkahaschTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& (Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	&& (Npc_HasItems(hero, ItWr_AkahaschNagur) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_AkahaschTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_00"); //Akahasch hatte einen kleinen "wypadek" ...
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_01"); //(oczekiwane) Tak?
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_02"); //Er wird wohl leider nie wieder jemandem "dzwignik" können ...
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_03"); //To brzmi obiecujaco. A co z tym, co mial na nim?
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_04"); //Z jednej strony mial....
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_05"); //Nie, nie, nie w szczególach.... jako dowód jego smierci.
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_06"); //Tutaj jest, Panie Panu.

	B_GiveInvItems	(hero, self, ItWr_AkahaschNagur, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_07"); //Tak, nie ma co do tego watpliwosci. Nie dalby ci go dobrowolnie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 180);

	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_08"); //Jestes dobrym chlopcem. Oto troche zabawy na mojej zakladce.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Nagur_Geschaeft (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Geschaeft_Condition;
	information	= Info_Mod_Nagur_Geschaeft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Geschaeft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_AkahaschTot))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Geschaeft_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_00"); //Dobrze, ze pojawiles sie teraz. Mam dla Ciebie inna prace.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_01"); //Kim jestem tym razem gonna zabic?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_02"); //Traitorowy skum, który kiedys pracowal dla mnie.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_03"); //Dwóch moich chlopców polaczylo niedawno sily z paczka przemytnika, która rozprzestrzenila sie w dzielnicy portowej.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_04"); //Teraz mysla, ze moga dyktowac mi ceny i próbowac stopniowo wyciskac mnie z sklepów.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_05"); //Ale tak sie nie stanie....... poniewaz jestes gonna dac im przyklad.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_06"); //I co dla mnie jest w nim?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_07"); //Cóz, z jednej strony podaje ci 200 zlotych monet, a na tych dranie mozesz miec wszystko, co znajdziesz.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_08"); //A gdzie moge ja znalezc?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_09"); //Pytanie w tym przypadku brzmi: jak. W skrzyniach miedzy magazynem a zurawem zaladunkowym nalezy zlozyc paczke, a nastepnie przejsc do drzewa nad magazynem, aby zobaczyc stamtad wszystko.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_10"); //Jedna z dranie miala podnosic paczke i udac sie na jej straszydlo.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_11"); //Jestes gonna za nim i pozbyc sie dranie. Jakies pytania? Nie? Nastepnie masz pakiet tutaj.

	B_GiveInvItems	(self, hero, ItMi_NagurPaket, 1);

	Log_CreateTopic	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "Nagur ma klopoty z niektórymi konkurentami w dzielnicy portowej. Aby rozwiazac ten problem, musze umiescic paczke w pudelkach pomiedzy magazynem a zurawiem, udac sie na drzewo nad magazyn i obserwowac wszystko. Jak tylko jeden z nich odbierze paczke, bede podazal za nim podazajac za nim i zabieralem je wszystkie tam.");

	var int ptr; ptr = MEM_SearchVobByName("KARDIFINFOTRUHE");

	var zCVob vob; vob = MEM_PtrToInst(ptr);

	vob.trafoObjToWorld[3] = mkf(-289);
	vob.trafoObjToWorld[7] = mkf(-181);
	vob.trafoObjToWorld[11] = mkf(3551);

	VobPositionUpdated(ptr);
};

INSTANCE Info_Mod_Nagur_Geschaeft2 (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Geschaeft2_Condition;
	information	= Info_Mod_Nagur_Geschaeft2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zdrajcy i przemytnicy nie spowoduja juz wiecej klopotów.";
};

FUNC INT Info_Mod_Nagur_Geschaeft2_Condition()
{
	if (Mod_Nagur_Geschaeft == 4)
	|| (Mod_Nagur_Geschaeft == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Geschaeft2_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft2_15_00"); //Zdrajcy i przemytnicy nie spowoduja juz wiecej klopotów.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft2_37_01"); //Doskonaly. Bedzie to ostrzezenie dla wszystkich innych, aby nie balaganili sie ze mna.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft2_37_02"); //Zrealizowales swoja prace dobrze. Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	if (Mod_Nagur_Geschaeft == 4)
	{
		B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "Powiedzialem Nagurowi, ze pozbylem sie chlopców. Teraz wszystko co musze zrobic, to zatrzymac sie przy pubie portowym w ciagu najblizszych kilku dni.");

		B_GivePlayerXP	(150);

		Mod_Nagur_Geschaeft_Tag = Wld_GetDay();
	}
	else
	{
		B_SetTopicStatus	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_SUCCESS);

		B_GivePlayerXP	(350);

		Mod_Nagur_Geschaeft_Tag = Wld_GetDay();
	};
};

INSTANCE Info_Mod_Nagur_Rache (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Rache_Condition;
	information	= Info_Mod_Nagur_Rache_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Rache_Condition()
{
	if (Nagur_KillAkahasch == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Rache_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_00"); //Czy znalazles to, czego szukales?
	AI_Output(hero, self, "Info_Mod_Nagur_Rache_15_01"); //Naga?
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_02"); //Zaskoczony, ze widze?
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_03"); //Tak, zostalem wyjety z obiegu od dluzszego czasu, duszony bylam w lochu od dluzszego czasu..... Mialem duzo czasu, by pomyslec o tym, jak przywrócic laske kazdemu, komu ja zawdzieczam.
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_04"); //Mam nadzieje, ze podoba sie panstwu rezultat..... ladne spotkanie z kolega.

	AI_TurnToNpc	(self, Mod_7780_SNOV_Novize_NW);

	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_05"); //Tak samo jak z Akahaschem!

	AI_TurnToNpc	(self, hero);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7780_SNOV_Novize_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7780_SNOV_Novize_NW, GIL_STRF);

	Mod_7779_ASS_Assassine_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7779_ASS_Assassine_NW, GIL_STRF);
};

INSTANCE Info_Mod_Nagur_Pickpocket (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Pickpocket_Condition;
	information	= Info_Mod_Nagur_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nagur_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

	Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_BACK, Info_Mod_Nagur_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nagur_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nagur_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nagur_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nagur_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nagur_EXIT (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_EXIT_Condition;
	information	= Info_Mod_Nagur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nagur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
