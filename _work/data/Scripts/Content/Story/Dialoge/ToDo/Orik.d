INSTANCE Info_Mod_Orik_Hi (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Hi_Condition;
	information	= Info_Mod_Orik_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Orik_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orik_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Orik_Hi_08_01"); //Jestem Orikiem. Sprzedaje zbroje najemnikom.
};

INSTANCE Info_Mod_Orik_Florentius (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Florentius_Condition;
	information	= Info_Mod_Orik_Florentius_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orik_Florentius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orik_Hi))
	&& (Mod_NL_HatFlorentiusGekillt == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Orik_Niedergeschlagen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Florentius_Info()
{
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_00"); //Hej, jestes na drodze duzo w Minental. Czy spotkales sie z kupcem o imieniu Florentius?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_01"); //Spodziewam sie od niego czegos, a on jest juz dawno spózniony.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_02"); //Spotkalem tak wiele osób.... co mial ci dostac?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_03"); //Um, cóz, obiecal mi ksiazke.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_04"); //I jaka to ksiazke?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_05"); //.... No cóz, w nim powinny byc zdjecia..... kobiet.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_06"); //Cóz, znam wiele ilustrowanych ksiazek, w których przedstawia sie kobiety.
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_07"); //.... Dobrze, zdjecia,......

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_08"); //(nieco cichszy) kobiety lekko ubrane.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_09"); //Ahh, du meinst "akty".
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_10"); //Shh, nie tak glosne. Nie musi znac wszystkich.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_11"); //Wiec dobrze, zobacze, czy gdzies znajde Twoja ksiazke.
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_12"); //Tak, zróbcie, nie zalujecie, ze mnie to nie przyniesiecie.
};

INSTANCE Info_Mod_Orik_JuanBuch (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_JuanBuch_Condition;
	information	= Info_Mod_Orik_JuanBuch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wymagana ksiazke.";
};

FUNC INT Info_Mod_Orik_JuanBuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orik_Florentius))
	&& (Npc_HasItems(hero, ItWr_JuanBook) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_JuanBuch_Info()
{
	AI_Output(hero, self, "Info_Mod_Orik_JuanBuch_15_00"); //Mam wymagana ksiazke.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_01"); //Co naprawde mi pokazcie.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_02"); //Tak, wlasciwie, tak.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_03"); //(znów bohaterowi) Uh, i tak zrobiles naprawde dobra robote.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_04"); //Oto 20 rudy i 100 zlota.... 30 rudy i 200 zlota....

	B_ShowGivenThings	("200 zlota i 30 zlota uzyskanego z rudy");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 30);

	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_05"); //Ale zachowajmy to miedzy soba....
};

INSTANCE Info_Mod_Orik_Niedergeschlagen (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Niedergeschlagen_Condition;
	information	= Info_Mod_Orik_Niedergeschlagen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orik_Niedergeschlagen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_OrikDa))
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Niedergeschlagen_Info()
{
	AI_Output(self, hero, "Info_Mod_Orik_Niedergeschlagen_08_00"); //Cóz za fuck, syn suk, teraz nadeszla Twoja ostatnia godzina.
	AI_Output(hero, self, "Info_Mod_Orik_Niedergeschlagen_15_01"); //Przyjezdzacie ze mna. Nie bedziecie mogli wiele zrobic bez broni palnej.
	AI_Output(self, hero, "Info_Mod_Orik_Niedergeschlagen_08_02"); //Fucking dranie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOAL");

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);

	B_LogEntry	(TOPIC_MOD_AL_ORIK, "Przed jaskinia zasadzilismy Orika i upuscilismy go w dól. Teraz musi przyjechac do mnie.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Orik_Ruestung (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Ruestung_Condition;
	information	= Info_Mod_Orik_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge uzyskac od Ciebie lepsza zbroje?";
};

FUNC INT Info_Mod_Orik_Ruestung_Condition()
{
	if ((Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Orik_Hi))
	&& (Mod_ZweiteVerbesserung < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_15_00"); //Czy moge uzyskac od Ciebie lepsza zbroje?

	if (Mod_Gilde == 4)
	&& (Mod_HasSLDH == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_01"); //Mam tu ciezka najemnicza pancerz.
	};

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_02"); //Slyszalem, ze szczególnie duzy Orkhund podobno jest na Minental Pass. Z jego futrem z pewnoscia móglbym nieco poprawic twoja ciezka pancerz najemników.
	
		Mod_ErsteVerbesserung = TRUE;

		Wld_InsertNpc	(Orcdog_Big,	"OW_PATH_1_16_8");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "Na przeleczy w Minentalu powinien byc duzy Orkhund, którego plaszcz Orik moze posluzyc do poprawy mojego ciezkiego pancerza najemnika.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_03"); //Slyszalem, ze na Stonehenge jest Wyvern. Z jego buda z pewnoscia móglbym nieco poprawic pancerz mysliwski Orka.
	
		Mod_ZweiteVerbesserung = TRUE;

		Wld_InsertNpc	(Wyver,	"OW_PATH_276");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "Mówi sie, ze Stonehenge ma skowronek z szopa, która Orik moze wykorzystac do poprawy mojego zbroi Orkjäger.");
	};

	if (Mod_HasSLDH == TRUE)
	&& ((Kapitel == 1)
	|| ((Kapitel <= 3)
	&& (Mod_ErsteVerbesserung == 2))
	|| (Mod_ZweiteVerbesserung == 2))
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_04"); //Nie w tej chwili, wróc pózniej.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
	Info_AddChoice	(Info_Mod_Orik_Ruestung, DIALOG_BACK, Info_Mod_Orik_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& (Mod_Gilde == 4)
	&& (Npc_HasItems(hero, ItAr_SLD_S) == 0)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Ulepszenie ciezkiego pancerza najemnika", Info_Mod_Orik_Ruestung_SLD_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 19)
	&& (Npc_HasItems(hero, ItAr_OJG_S) == 0)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Poprawa wyposazenia mysliwskiego", Info_Mod_Orik_Ruestung_OJG_S);
	};

	if (Mod_Gilde == 4)
	&& (Mod_HasSLDH == FALSE)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Uzbrojenie najemnika ciezkiego (koszt: 2500)", Info_Mod_Orik_Ruestung_SLD_M);
	};
};

FUNC VOID Info_Mod_Orik_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_SLD_S ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_SLD_S_15_00"); //Poprawic moja ciezka najemnicza pancerz.

	if (Npc_HasItems(hero, ItAt_BigOrcDogFur) == 1)
	&& (Npc_HasItems(hero, ItAr_SLD_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_BigOrcDogFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_SLD_M, 1);

		CreateInvItems	(self, ItAr_SLD_S, 1);

		B_GiveInvItems	(self, hero, ItAr_SLD_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_SLD_S);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_SLD_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_02"); //Musisz miec jakas ciezka pancerz najemnika lub nie bede w stanie go dla ciebie naprawic.
	}
	else if (Npc_HasItems(hero, ItAt_BigOrcDogFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_03"); //Jesli nie masz Orkhundfell, nie moge poprawic swojej zbroi.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_OJG_S ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_OJG_S_15_00"); //Udoskonal mój orkowy pancerz zabójczy.

	if (Npc_HasItems(hero, ItAt_Wyverschuppen) == 5)
	&& (Npc_HasItems(hero, ItAr_SLD_H) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_Wyverschuppen, 5);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_SLD_H, 1);

		CreateInvItems	(self, ItAr_OJG_S, 1);

		B_GiveInvItems	(self, hero, ItAr_OJG_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_OJG_S);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_SLD_H) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_02"); //Musisz miec pancerz mysliwego orka, bo nie bede mógl go dla ciebie naprawic.
	}
	else if (Npc_HasItems(hero, ItAt_Wyverschuppen) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_03"); //Jesli nie masz Wy Verschuppen, nie moge poprawic swojej zbroi.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_SLD_M ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_SLD_M_15_00"); //Zabiore ciezka najemnicza pancerz.

	if (Npc_HasItems(hero, ItMi_Gold) >= 2500)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_M_08_01"); //Wszystko jasne.

		B_GiveInvItems	(hero, self, ItMi_Gold, 2500);

		CreateInvItems	(self, ItAr_SLD_M, 1);

		B_GiveInvItems	(self, hero, ItAr_SLD_M, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_SLD_M);

		Mod_HasSLDH = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_M_08_02"); //Bez zlota, bez zbroi.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

INSTANCE Info_Mod_Orik_Pickpocket (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Pickpocket_Condition;
	information	= Info_Mod_Orik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Orik_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Gold, 44);
};

FUNC VOID Info_Mod_Orik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

	Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_BACK, Info_Mod_Orik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Orik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Orik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
};

FUNC VOID Info_Mod_Orik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Orik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Orik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Orik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Orik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Orik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Orik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Orik_EXIT (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_EXIT_Condition;
	information	= Info_Mod_Orik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
