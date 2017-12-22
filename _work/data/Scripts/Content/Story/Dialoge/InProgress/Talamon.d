INSTANCE Info_Mod_Talamon_Hi (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Hi_Condition;
	information	= Info_Mod_Talamon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Talamon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talamon_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	if (Kapitel < 5)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Hi_16_01"); //Jestem Talamonem, straznikiem biblioteki.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Hi_16_02"); //Jestem Talamonem, zastepca Pyrokara.
	};
};

INSTANCE Info_Mod_Talamon_Patherion (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Patherion_Condition;
	information	= Info_Mod_Talamon_Patherion_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talamon_Patherion_Condition()
{
	if (Npc_GetDistToWP(self, "NW_MONASTERY_THRONE_01") < 1000)	
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	&& (Npc_KnowsInfo(hero, Info_Mod_Talamon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talamon_Patherion_Info()
{
	AI_Output(self, hero, "Info_Mod_Talamon_Patherion_16_00"); //Dobrze, bracie! Garan wyslal mnie poslannikiem. Pana obecnosc w Patherionie jest mile widziana.
	AI_Output(hero, self, "Info_Mod_Talamon_Patherion_15_01"); //Bede w drodze od razu.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Talamon_Befoerderung (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Befoerderung_Condition;
	information	= Info_Mod_Talamon_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotów byc kaplanem zakonu.";
};

FUNC INT Info_Mod_Talamon_Befoerderung_Condition()
{
	if (Mod_Gilde == 7)
	&& (Kapitel > 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talamon_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Talamon_Befoerderung_15_00"); //Jestem gotów byc kaplanem zakonu.
	AI_Output(self, hero, "Info_Mod_Talamon_Befoerderung_16_01"); //Udowodniles swoja lojalnosc wobec Innosa i odkad Pyrokar upowaznil mnie do tego, niniejszym oswiadczam, ze jestes ksiedzem zakonu Innos ".
	AI_Output(self, hero, "Info_Mod_Talamon_Befoerderung_16_02"); //Mam nadzieje, ze nie naduzywacie wladzy, która zdobyles w tej randze.
	AI_Output(self, hero, "Info_Mod_Talamon_Befoerderung_16_03"); //Oto Twoja nowa szata.

	CreateInvItems	(hero, ItAr_Kdf_H, 1);

	B_ShowGivenThings	("Zakon kaplan zakonserwowac zachowany");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Kdf_H);

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(400);

	Mod_Gilde = 8;

	B_Göttergefallen(1, 5);
};

INSTANCE Info_Mod_Talamon_Ruestung (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Ruestung_Condition;
	information	= Info_Mod_Talamon_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge uzyskac lepsza szate?";
};

FUNC INT Info_Mod_Talamon_Ruestung_Condition()
{
	if ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7))
	&& (Npc_KnowsInfo(hero, Info_Mod_Talamon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talamon_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Talamon_Ruestung_15_00"); //Czy moge uzyskac lepsza szate?

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_16_02"); //Slysze, ze na Minentalowym Przeleczy jest zapalaczka. Z jego skóra, z pewnoscia móglbym troche poprawic wasze rekolekcje ognia.
	
		Mod_ErsteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuersnapper,	"NW_PASS_06");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "Na Minentalowej przeleczy znajduje sie podobno straznica, której skóra Talamon moze uzyc do poprawy mojej nowicjuszowej sukni.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_16_03"); //Slyszalem, ze w drodze do wykopaliska mówi sie, ze magik wodny jest strazakiem. Z jego futrem z pewnoscia móglbym troche poprawic wasza magiczna szate ognista.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuerlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "W drodze do wodnego miejsca wykopalisk maga znajduje sie strazak, którego futro Talamon moze wykorzystac do poprawy mojej szaty przeciwpozarowej.");
	};

	Info_ClearChoices	(Info_Mod_Talamon_Ruestung);
	Info_AddChoice	(Info_Mod_Talamon_Ruestung, DIALOG_BACK, Info_Mod_Talamon_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& (Mod_Gilde == 6)
	{
		Info_AddChoice	(Info_Mod_Talamon_Ruestung, "Ulepszenie próby próbki ognia", Info_Mod_Talamon_Ruestung_NOV_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 7)
	{
		Info_AddChoice	(Info_Mod_Talamon_Ruestung, "Poprawa ochrony przeciwpozarowej Robe", Info_Mod_Talamon_Ruestung_KDF_S);
	};
};

FUNC VOID Info_Mod_Talamon_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Talamon_Ruestung);
};

FUNC VOID Info_Mod_Talamon_AllesKlar() {
	AI_Output(self, hero, "Info_Mod_Talamon_AllesKar_16_00"); //Wszystko jasne.
};

FUNC VOID Info_Mod_Talamon_Ruestung_NOV_S ()
{
	AI_Output(hero, self, "Info_Mod_Talamon_Ruestung_NOV_S_15_00"); //Popracuje rekolekcje zwiazane z ogniem.

	if (Npc_HasItems(hero, ItAt_FeuersnapperHaut) == 1)
	&& (Npc_HasItems(hero, ItAr_NOV_L) == 1)
	{
		Info_Mod_Talamon_AllesKlar();

		Npc_RemoveInvItems	(hero, ItAt_FeuersnapperHaut, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_NOV_L, 1);

		CreateInvItems	(self, ItAr_NOV_M, 1);

		B_GiveInvItems	(self, hero, ItAr_NOV_M, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_Nov_M);
	
		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_NOV_L) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_NOV_S_16_02"); //Musisz miec cwiczenie przeciwpozarowe lub nie bede w stanie naprawic go dla Ciebie.
	}
	else if (Npc_HasItems(hero, ItAt_Feuersnapperhaut) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_NOV_S_16_03"); //Jesli nie masz na sobie skóry, nie moge poprawic sukienki.
	};

	Info_ClearChoices	(Info_Mod_Talamon_Ruestung);
};

FUNC VOID Info_Mod_Talamon_Ruestung_KDF_S ()
{
	AI_Output(hero, self, "Info_Mod_Talamon_Ruestung_KDF_S_15_00"); //Ulepsz moja magiczna szate pozarowa.

	if (Npc_HasItems(hero, ItAt_FireShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_KDF_L) == 1)
	{
		Info_Mod_Talamon_AllesKlar();

		Npc_RemoveInvItems	(hero, ItAt_FireShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_KDF_L, 1);

		CreateInvItems	(self, ItAr_KDF_L_FEUER, 1);

		B_GiveInvItems	(self, hero, ItAr_KDF_L_FEUER, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_KDF_L_Feuer);
	
		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_KDF_L_FEUER) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_KDF_S_16_02"); //Musisz miec czarodziejska szate lub nie bede w stanie naprawic jej dla ciebie.
	}
	else if (Npc_HasItems(hero, ItAt_FireShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Talamon_Ruestung_KDF_S_16_03"); //Jesli nie masz futra do petardu, nie moge poprawic szaty.
	};

	Info_ClearChoices	(Info_Mod_Talamon_Ruestung);
};

const string Talamon_Checkpoint	= "NW_MONASTERY_SEALROOM_01";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Talamon_FirstWarn (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_FirstWarn_Condition;
	information	= Info_Mod_Talamon_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Talamon_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Talamon_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};

	if (Kapitel >= 4) //NICHT von hinten!
	{
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Talamon_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Talamon_FirstWarn_16_00"); //Nie mozesz pójsc dalej. Odwrócic!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Talamon_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Talamon_SecondWarn (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_SecondWarn_Condition;
	information	= Info_Mod_Talamon_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Talamon_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Talamon_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Talamon_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Talamon_SecondWarn_16_00"); //Innos osadzi na ciebie jego zlosc, jesli nie zawrócisz!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Talamon_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Talamon_Attack (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Attack_Condition;
	information	= Info_Mod_Talamon_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Talamon_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Talamon_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Talamon_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Talamon_Pickpocket (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_Pickpocket_Condition;
	information	= Info_Mod_Talamon_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Talamon_Pickpocket_Condition()
{
	C_Beklauen	(167, ItMi_Gold, 94);
};

FUNC VOID Info_Mod_Talamon_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);

	Info_AddChoice	(Info_Mod_Talamon_Pickpocket, DIALOG_BACK, Info_Mod_Talamon_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Talamon_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Talamon_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Talamon_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);
};

FUNC VOID Info_Mod_Talamon_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);

		Info_AddChoice	(Info_Mod_Talamon_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Talamon_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Talamon_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Talamon_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Talamon_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Talamon_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Talamon_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Talamon_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Talamon_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Talamon_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Talamon_EXIT (C_INFO)
{
	npc		= Mod_925_KDF_Talamon_NW;
	nr		= 1;
	condition	= Info_Mod_Talamon_EXIT_Condition;
	information	= Info_Mod_Talamon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Talamon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talamon_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Talamon_EXIT_16_00"); //Czcic magie!

	AI_StopProcessInfos	(self);
};
