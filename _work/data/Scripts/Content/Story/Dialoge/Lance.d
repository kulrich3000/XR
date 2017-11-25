INSTANCE Info_Mod_Lance_Kristall (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Kristall_Condition;
	information	= Info_Mod_Lance_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce uczyc magików wody (....). )";
};

FUNC INT Info_Mod_Lance_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Kristall))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) == 1)
	&& (Npc_HasItems(hero, ItWr_TorlofForSaturas) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Lance_Kristall_15_00"); //Chcialbym wniesc ten magiczny krysztal jak i ten list do magów wody.

	B_ShowGivenThings	("Krysztal i list przekazany");

	Npc_RemoveInvItems	(hero, ItWr_TorlofForSaturas, 1);
	Npc_RemoveInvItems	(hero, Mod_PaladinKristall, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Lance_Kristall_03_01"); //Acha, magiczny krysztal.... Oplaty.
	AI_Output(self, hero, "Info_Mod_Lance_Kristall_03_02"); //Wlasciwie oddam obie te rzeczy magikom wody. Wróc jutro.

	Mod_LanceKristall = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_NL_KRISTALL, "Och, wielki. Teraz moge poczekac caly dzien, az Magicysci Wody zgodza sie na zaplate.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lance_KristallEntgelt (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_KristallEntgelt_Condition;
	information	= Info_Mod_Lance_KristallEntgelt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lance_KristallEntgelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lance_Kristall))
	&& (Wld_GetDay() > Mod_LanceKristall)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_KristallEntgelt_Info()
{
	AI_Output(self, hero, "Info_Mod_Lance_KristallEntgelt_03_00"); //Magowie wody byli bardzo zadowoleni z artefaktu.
	AI_Output(self, hero, "Info_Mod_Lance_KristallEntgelt_03_01"); //Dali mi 1000 sztuk zlota i ten zestaw przydatnych magicznych przedmiotów. Przejdzmy teraz do Torlof.

	B_ShowGivenThings	("1000 Otrzymane zloto i paczka");

	CreateInvItems	(hero, ItMi_Gold, 1000);
	CreateInvItems	(hero, ItMi_MagicPaket, 1);

	B_LogEntry	(TOPIC_MOD_NL_KRISTALL, "Mam zaplate magów wody i powinienem ich zabrac do Torlof.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lance_Soeldner (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Soeldner_Condition;
	information	= Info_Mod_Lance_Soeldner_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem najemnikiem.";
};

FUNC INT Info_Mod_Lance_Soeldner_Condition()
{
	if (Mod_Gilde == 4)
	&& (Mod_PortalLance == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_Soeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lance_Soeldner_15_00"); //Jestem najemnikiem.

	var C_ITEM SLDRuessi;
	SLDRuessi = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(SLDRuessi, ItAr_SLD_L) == TRUE)
	|| (Hlp_IsItem(SLDRuessi, ItAr_SLD_M) == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Lance_Soeldner_03_01"); //najemnicy i magowie wody pracowali razem w Dolinie Kopalni, a niektórzy z wojowników wodnych sa bylymi najemnikami. Wszystko w porzadku, mozna wejsc.

		Mod_PortalLance	= TRUE;

		Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

		self.aivar[AIV_PASSGATE] = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lance_Soeldner_03_02"); //Oh, a co tam mi powiedziec?
	};
};

INSTANCE Info_Mod_Lance_RDW (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_RDW_Condition;
	information	= Info_Mod_Lance_RDW_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem z wami.";
};

FUNC INT Info_Mod_Lance_RDW_Condition()
{
	if (Mod_Gilde == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_RDW_Info()
{
	AI_Output(hero, self, "Info_Mod_Lance_RDW_15_00"); //Jestem z wami.
	AI_Output(self, hero, "Info_Mod_Lance_RDW_03_01"); //Nowy. Cóz, wlaczaj sie.

	Mod_PortalLance = TRUE;

	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Lance_Brief (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Brief_Condition;
	information	= Info_Mod_Lance_Brief_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam list do Satur.";
};

FUNC INT Info_Mod_Lance_Brief_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Saturas))
	&& (Mod_LanceXardasBrief == FALSE)
	&& ((Npc_HasItems(hero, XardasLetterForSaturas) == 1)
	|| (Npc_HasItems(hero, XardasLetterForSaturas_Geoeffnet) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_Brief_Info()
{
	AI_Output(hero, self, "Info_Mod_Lance_Brief_15_00"); //Mam tutaj list do Satur.
	AI_Output(self, hero, "Info_Mod_Lance_Brief_03_01"); //Pozwole sobie to zobaczyc.

	Info_ClearChoices	(Info_Mod_Lance_Brief);

	Info_AddChoice	(Info_Mod_Lance_Brief, "Nie, list jest tylko dla Saturas.", Info_Mod_Lance_Brief_Nein);
	Info_AddChoice	(Info_Mod_Lance_Brief, "Tutaj jest, Panie Panu.", Info_Mod_Lance_Brief_Ja);
};

FUNC VOID Info_Mod_Lance_Brief_Nein()
{
	AI_Output(hero, self, "Info_Mod_Lance_Brief_Nein_15_00"); //Nie, list jest tylko dla Saturas.
	AI_Output(self, hero, "Info_Mod_Lance_Brief_Nein_03_01"); //Jesli nie wiem o co chodzi, nie moge Cie wpuscic.

	Info_ClearChoices	(Info_Mod_Lance_Brief);
};

FUNC VOID Info_Mod_Lance_Brief_Ja()
{
	AI_Output(hero, self, "Info_Mod_Lance_Brief_Ja_15_00"); //Tutaj jest, Panie Panu.
	
	if (Npc_HasItems(hero, XardasLetterForSaturas) == 1)
	{
		B_GiveInvItems(hero, self, XardasLetterForSaturas, 1);

		B_GivePlayerXP	(100);
	}
	else
	{
		B_GiveInvItems(hero, self, XardasLetterForSaturas_Geoeffnet, 1);

		B_GivePlayerXP	(75);
	};

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lance_Brief_Ja_03_01"); //Wyglada na wazny. Oto znów litera.

	B_GiveInvItems	(self, hero, XardasLetterForSaturas_Geoeffnet, 1);

	AI_Output(self, hero, "Info_Mod_Lance_Brief_Ja_03_02"); //Mozesz przejsc.

	Mod_PortalLance	= TRUE;
	Mod_LanceXardasBrief = TRUE;

	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	self.aivar[AIV_PASSGATE] = TRUE;

	Info_ClearChoices	(Info_Mod_Lance_Brief);
};

INSTANCE Info_Mod_Lance_Erol (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Erol_Condition;
	information	= Info_Mod_Lance_Erol_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lance_Erol_Condition()
{
	if (Mod_Erol_Fahrender == 8)
	&& (Npc_GetDistToNpc(hero, Mod_521_NONE_Erol_NW) < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lance_Erol_Info()
{
	AI_Output(self, hero, "Info_Mod_Lance_Erol_03_00"); //Zatrzymaj sie! Nie mozna tu przyjechac.
	AI_Output(hero, self, "Info_Mod_Lance_Erol_15_01"); //Nie znów! Czy wolno mi przebijac sie, czy nie?
	AI_Output(self, hero, "Info_Mod_Lance_Erol_03_02"); //Ty to robisz, ale druga nie.
	AI_Output(hero, self, "Info_Mod_Lance_Erol_15_03"); //Brakuje mi czasu. I ten czlowiek musi porozmawiac z Cavalorn. Pozwólcie mu przez niego przejsc, porusze sie po niego.
	AI_Output(self, hero, "Info_Mod_Lance_Erol_03_04"); //Mam problemy z magami.....
	AI_Output(hero, self, "Info_Mod_Lance_Erol_15_05"); //Nonsens. Jestem najblizszym powiernikiem Szatana. To wszystko jest w porzadku.
	AI_Output(self, hero, "Info_Mod_Lance_Erol_03_06"); //Ufam panstwu raz. Ale jesli popadniem w klopoty, nie pozwólcie, ze zobacze Was tutaj ponownie!
	AI_Output(hero, self, "Info_Mod_Lance_Erol_15_07"); //Zazwyczaj i tak korzystam z teleporterów.....
};

const string Lance_Checkpoint	= "NW_TROLLAREA_PORTALTEMPEL_04";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Lance_FirstWarn (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_FirstWarn_Condition;
	information	= Info_Mod_Lance_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Lance_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Lance_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
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

func void Info_Mod_Lance_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lance_FirstWarn_03_00"); //HALT! Nie mozna tu przyjechac.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Lance_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Lance_SecondWarn (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_SecondWarn_Condition;
	information	= Info_Mod_Lance_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lance_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Lance_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Lance_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lance_SecondWarn_03_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat bólu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Lance_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Lance_Attack (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Attack_Condition;
	information	= Info_Mod_Lance_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lance_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Lance_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Lance_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Lance_Attack_03_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Lance_Pickpocket (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_Pickpocket_Condition;
	information	= Info_Mod_Lance_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Lance_Pickpocket_Condition()
{
	C_Beklauen	(73, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Lance_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lance_Pickpocket);

	Info_AddChoice	(Info_Mod_Lance_Pickpocket, DIALOG_BACK, Info_Mod_Lance_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lance_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lance_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lance_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lance_Pickpocket);
};

FUNC VOID Info_Mod_Lance_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lance_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lance_Pickpocket);

		Info_AddChoice	(Info_Mod_Lance_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lance_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lance_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lance_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lance_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lance_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lance_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lance_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lance_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lance_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lance_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lance_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lance_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lance_EXIT (C_INFO)
{
	npc		= Mod_926_RDW_Lance_NW;
	nr		= 1;
	condition	= Info_Mod_Lance_EXIT_Condition;
	information	= Info_Mod_Lance_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lance_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lance_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
