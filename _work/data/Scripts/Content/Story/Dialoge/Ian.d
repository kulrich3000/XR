INSTANCE Info_Mod_Ian_Hi (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Hi_Condition;
	information	= Info_Mod_Ian_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ian_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ian_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ian_Hi_13_00"); //Ty wciaz zyjesz? Nigdy nie pomyslalem, ze znów cie zobacze.
	AI_Output(hero, self, "Info_Mod_Ian_Hi_15_01"); //Podobnie. Przezyles wiec upadek kopalni?
	AI_Output(self, hero, "Info_Mod_Ian_Hi_13_02"); //Nie doszlo do upadku.
};

INSTANCE Info_Mod_Ian_AlteMine (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine_Condition;
	information	= Info_Mod_Ian_AlteMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wydarzylo sie w starej kopalni?";
};

FUNC INT Info_Mod_Ian_AlteMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine_15_00"); //Co wydarzylo sie w starej kopalni?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_01"); //Bylismy przytuleni. Nie przez dranie z Nowego Obozu, ale przez czarnych wojowników i magów.

	var C_ITEM arm;
	
	arm = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(arm, ItAr_DMB_S) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_XARDAS) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_RAVEN_ADDON) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_SMK_L) == TRUE)
	|| (Hlp_IsItem(arm, Schwarzmagierrobe) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_NOV_DMB_01) == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_02"); //Niektóre z nich nosily tyle samo zbroi, co ty.
	};

	AI_Output(hero, self, "Info_Mod_Ian_AlteMine_15_03"); //Przyczepy Beliaranu przejely kopalnie?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_04"); //Na pewno mozna to powiedziec. Nasi ludzie zostali zabici jak robaki.
};

INSTANCE Info_Mod_Ian_AlteMine2 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine2_Condition;
	information	= Info_Mod_Ian_AlteMine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak przetrwales?";
};

FUNC INT Info_Mod_Ian_AlteMine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine2_15_00"); //Jak przetrwales?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_01"); //Bylem tuz pod platforma przy wejsciu do kopalni, gdy uslyszalem krzyki i ostrzal z góry.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_02"); //Nastepna chwila Drake upadla przed moja stopa, rzucona zakleciem nad balustrada.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_03"); //Dzwonilem na alarm, wzialem nogi w rece i szukalem bezpiecznej kryjówki.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_04"); //Ale wtedy zaczela sie moja odyseja. Najpierw musialem sluchac jednego z nich, który potem zostal zabity, a potem nie wolno mi bylo sie poruszac przez kilka dni.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_05"); //Przezylem tylko dlatego, ze moglem wylizywac wode z muru kopalni. Nigdy nie bylem tak brudny w calym moim zyciu.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_06"); //Oczywiscie planowalem ucieczke. A potem uzylem zmiany wartownika przy bramie, aby mnie wyprowadzic z drogi.
};

INSTANCE Info_Mod_Ian_AlteMine3 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine3_Condition;
	information	= Info_Mod_Ian_AlteMine3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powinienes byl bronic kopalni!";
};

FUNC INT Info_Mod_Ian_AlteMine3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine3_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine3_15_00"); //Powinienes byl bronic kopalni!
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_01"); //Nie udawaj, ze rozumiesz to wszystko. Z nielicznymi rozproszonymi straznikami i Templarami nie moglem stawic skoordynowanego oporu.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_02"); //Zostalismy skazani na zgube.
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine3_15_03"); //Czy sa jeszcze inne ocalale osoby?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_04"); //Nie wiem o tym.
};

INSTANCE Info_Mod_Ian_AlteMine4 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine4_Condition;
	information	= Info_Mod_Ian_AlteMine4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie widze tu zadnego wojska w drodze, kopalni (....). )";
};

FUNC INT Info_Mod_Ian_AlteMine4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine4_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine4_15_00"); //Nie widze zadnych zolnierzy na drodze do odzyskania kopalni.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine4_13_01"); //Thorus uwaza, ze kopalnia nie jest obecnie konieczna. Nie odejde bez jego wsparcia.
};

INSTANCE Info_Mod_Ian_SLDSpy (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_SLDSpy_Condition;
	information	= Info_Mod_Ian_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nowego nalezy zglosic?";
};

FUNC INT Info_Mod_Ian_SLDSpy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	&& (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_15_00"); //Co nowego nalezy zglosic?
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_13_01"); //Hej, nie wiedzialem, ze jestes w cieniu.

	Info_ClearChoices	(Info_Mod_Ian_SLDSpy);

	Info_AddChoice	(Info_Mod_Ian_SLDSpy, "Ja tez nie jestem. Chwytam sie tutaj za Nowy Obóz.", Info_Mod_Ian_SLDSpy_B);
	Info_AddChoice	(Info_Mod_Ian_SLDSpy, "Spedzilem troche czasu z matkami marshów, które szpiegowaly.", Info_Mod_Ian_SLDSpy_A);
};

FUNC VOID Info_Mod_Ian_SLDSpy_C()
{
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_C_13_00"); //No cóz, gdzie bylismy? No cóz, jaka jest ta wiadomosc? Slyszalem, ze facet z Nowego Obozu rzekomo zabil Bullita.
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_C_13_01"); //Thorus jest pod tym wzgledem dosc zdenerwowany. No cóz, jesli nie pachnie jak zemsta.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Ian powiedzial mi, ze straznik Bullit rzekomo zostal zamordowany przez kogos z Nowego Obozu. Thorus móglby rozwazyc wziecie zemsty.");

	Info_ClearChoices	(Info_Mod_Ian_SLDSpy);
};

FUNC VOID Info_Mod_Ian_SLDSpy_B()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_B_15_00"); //Ja tez nie jestem. Chwytam sie tutaj za Nowy Obóz.
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_B_13_01"); //(smiech) Joker. Masz racje.

	Info_Mod_Ian_SLDSpy_C();
};

FUNC VOID Info_Mod_Ian_SLDSpy_A()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_A_15_00"); //Spedzilem troche czasu z matkami marshów, które szpiegowaly. Tutaj wez lodyge.

	B_ShowGivenThings	("Podane mokradlo");

	CreateInvItems	(self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_A_13_01"); //Ach, kapusta bagienna, jestes w porzadku.

	Info_Mod_Ian_SLDSpy_C();
};

INSTANCE Info_Mod_Ian_CutterBad (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_CutterBad_Condition;
	information	= Info_Mod_Ian_CutterBad_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, pomyslalem o czyms, kiedy opowiedziales mi o bullitym morderstwie.";
};

FUNC INT Info_Mod_Ian_CutterBad_Condition()
{
	if (Mod_SLD_Spy == 5)
	&& (Mob_HasItems("CUTTERSTRUHE", ItMw_BloodySword) == 1)
	&& (Mob_HasItems("CUTTERSTRUHE", ItWr_SentenzaForCutter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_CutterBad_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_CutterBad_15_00"); //Hej, pomyslalem o czyms, kiedy opowiedziales mi o bullitym morderstwie.
	AI_Output(self, hero, "Info_Mod_Ian_CutterBad_13_01"); //Tak?
	AI_Output(hero, self, "Info_Mod_Ian_CutterBad_15_02"); //W nocy widzialem, jak Cutter przechadzal sie po obozie z cala gromada smieci Bullita.
	AI_Output(self, hero, "Info_Mod_Ian_CutterBad_13_03"); //To ciekawe. (do siebie) Jestem pewien, ze niektórzy straznicy beda zainteresowani.

	Mod_SLD_Spy = 6;

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Cóz, tak sie stalo. Teraz straznik powinien juz wkrótce przyjrzec sie klatce piersiowej kutra.");
};

INSTANCE Info_Mod_Ian_Woher (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Woher_Condition;
	information	= Info_Mod_Ian_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego dolaczyles do starego obozu?";
};

FUNC INT Info_Mod_Ian_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_Woher_15_00"); //Dlaczego dolaczyles do starego obozu?
	AI_Output(self, hero, "Info_Mod_Ian_Woher_13_01"); //Mieszkalem kiedys w Varant. Kiedy król Varant okupowal Varant i umiescil tam swoich mezczyzn, zaatakowalem gubernatora.
	AI_Output(self, hero, "Info_Mod_Ian_Woher_13_02"); //Oczywiscie rzucili mnie w kolonie za to. Pózniej poszedlem do starego obozu i tam pracowalem jako kopaczka, ale baronowie rudy szybko zorientowali sie, ze ja i Tauge wykorzystuje do nadzorowania starej kopalni.
};

INSTANCE Info_Mod_Ian_PruefungDesVertrauens (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_PruefungDesVertrauens_Condition;
	information	= Info_Mod_Ian_PruefungDesVertrauens_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jaka byla Twoja próba zaufania?";
};

FUNC INT Info_Mod_Ian_PruefungDesVertrauens_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_PruefungDesVertrauens_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_PruefungDesVertrauens_15_00"); //Jaka byla Twoja próba zaufania?
	AI_Output(self, hero, "Info_Mod_Ian_PruefungDesVertrauens_13_01"); //Musialem zlapac orka jako niewolników dla kopalni. Nie bylo to latwe.
};

INSTANCE Info_Mod_Ian_Mine (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Mine_Condition;
	information	= Info_Mod_Ian_Mine_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jak juz nie jestes w kopalni?";
};

FUNC INT Info_Mod_Ian_Mine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_Mine_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_Mine_15_00"); //Jak juz nie jestes w kopalni?
	AI_Output(self, hero, "Info_Mod_Ian_Mine_13_01"); //Po tym, jak Xardas i jego demony zaatakowali kopalnie, zostalem aresztowany jak prawie wszyscy.
	AI_Output(self, hero, "Info_Mod_Ian_Mine_13_02"); //Pewnego dnia jednak udalo mi sie uciec i powiedzialem Thorusowi, który byl wówczas arcybaronem, wszystko.
};

INSTANCE Info_Mod_Ian_Pickpocket (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Pickpocket_Condition;
	information	= Info_Mod_Ian_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ian_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Nugget, 5);
};

FUNC VOID Info_Mod_Ian_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

	Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_BACK, Info_Mod_Ian_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ian_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ian_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
};

FUNC VOID Info_Mod_Ian_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ian_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ian_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ian_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ian_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ian_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ian_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ian_EXIT (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_EXIT_Condition;
	information	= Info_Mod_Ian_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ian_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ian_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
