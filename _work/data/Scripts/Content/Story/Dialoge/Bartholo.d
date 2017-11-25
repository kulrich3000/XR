INSTANCE Info_Mod_Bartholo_Hi (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Hi_Condition;
	information	= Info_Mod_Bartholo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartholo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_00"); //Wiem, czyz nie? Jakie znów bylo Twoje nazwisko?
	AI_Output(hero, self, "Info_Mod_Bartholo_Hi_15_01"); //Um.... ....
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_02"); //Co tam jest do popchniecia?
	AI_Output(hero, self, "Info_Mod_Bartholo_Hi_15_03"); //Dawniej wolalem, uh, Ru....
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_04"); //W kazdym razie, niezaleznie od wszystkiego. Co ty tu robisz?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Bartholo_Laber (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Laber_Condition;
	information	= Info_Mod_Bartholo_Laber_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Laber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (Mod_TemplerBeiThorus < 5)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Laber_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Laber_12_00"); //Wyjsc stad!
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bartholo_Verrat (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Verrat_Condition;
	information	= Info_Mod_Bartholo_Verrat_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Verrat_Condition()
{
	if (Mod_TemplerBeiThorus == 5)
	&& (Npc_GetDistToWP(hero, "WP_MT_AL_HEROLERNTFLIEGEN") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Verrat_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Verrat_12_00"); //Powinien pan umrzec dawno temu, a teraz, gdy staje sie pan dla nas niebezpieczny, stracil swoje prawo do zycia.

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "Wydaje sie, ze Bartholo jest mezczyzna na plecach.");

	AI_StopProcessInfos	(self);

	AI_StartState	(hero, ZS_MagicFreeze, 0, "");

	Mod_TemplerBeiThorus = 6;

	hero.flags = 2;

	B_Attack	(self, hero, AR_NONE, 0);

	//Wld_InsertNpc	(Mod_1874_HMG_Makanius_MT, "OC1");

	B_StartOtherRoutine	(Mod_966_GRD_Thorus_MT, "FALLE");
	B_KillNpc	(Mod_966_GRD_Thorus_MT);
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FALLE");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "KASTELL");
};

INSTANCE Info_Mod_Bartholo_KillBuddler (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_KillBuddler_Condition;
	information	= Info_Mod_Bartholo_KillBuddler_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_KillBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bloodwyn_EBR_Belauscht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_KillBuddler_Info()
{
	AI_TurnToNpc	(self, Mod_1440_BUD_Buddler_MT);

	AI_Output(self, hero, "Info_Mod_Bartholo_KillBuddler_12_00"); //Brudny bastard, to znaczy, ze mozesz skontaktowac sie z Alissandro niezauwazony?
	AI_Output(self, hero, "Info_Mod_Bartholo_KillBuddler_12_01"); //Ale wszystko zauwazam i dlatego dostajesz kare.

	AI_StopProcessInfos	(self);

	B_RemoveNpc	(Mod_1440_BUD_Buddler_MT);
};

INSTANCE Info_Mod_Bartholo_Sumpfkraut (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Sumpfkraut_Condition;
	information	= Info_Mod_Bartholo_Sumpfkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Torwache_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Sumpfkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Sumpfkraut_12_00"); //Jestem pewien, ze przywiezie mnie pan ambrozja.

	Snd_Play	("THRILLJINGLE_03.WAV");

	AI_TurnToNpc	(self, Mod_1874_HMG_Makanius_MT);

	AI_Output(self, hero, "Info_Mod_Bartholo_Sumpfkraut_12_01"); //Co teraz stalo sie pieklem?

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_1156_GRD_Gardist_MT, "OCC_BARONS_RIGHT_ROOM_BACK");
	B_StartOtherRoutine	(Mod_1156_GRD_Gardist_MT, "ANGRIFF");
	Mod_1156_GRD_Gardist_MT.flags = 0;

	KillALGardists	();
};

INSTANCE Info_Mod_Bartholo_Eroberung (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Eroberung_Condition;
	information	= Info_Mod_Bartholo_Eroberung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Eroberung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GardistFuerEroberung_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Eroberung_Info()
{
	AI_TurnToNpc	(self, Mod_1156_GRD_Gardist_MT);

	AI_Output(self, Mod_1156_GRD_Gardist_MT, "Info_Mod_Bartholo_Eroberung_12_00"); //Co? Jak to sie stalo w piekle?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bartholo_Anschluss (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Anschluss_Condition;
	information	= Info_Mod_Bartholo_Anschluss_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce do Panstwa dolaczyc.";
};

FUNC INT Info_Mod_Bartholo_Anschluss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Bartholo_Thorus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Anschluss_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_Anschluss_15_00"); //Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_01"); //Aha! Zgubiony syn wraca, a moze co?
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_02"); //Dobrze, porozmawiaj z Thorusem. Nie bedzie sie cieszyl widzac cie, ale teraz ma klopoty.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_03"); //Prawdopodobnie dlatego nie musisz sie martwic o swoje zycie.
	AI_Output(hero, self, "Info_Mod_Bartholo_Anschluss_15_04"); //To brzmi obiecujaco....
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_05"); //To wiecej niz mozna sie spodziewac. Fakt, ze powierzyles sie magikom wody, nie przyniósl ci zadnych wyrazów wspólczucia.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_06"); //Nawiasem mówiac, pamietaj, aby trzymac karabin uwieziony, gdy idziesz do Thorusa. Jesli popelnisz blad i wyciagniesz go, poinformujemy Cie o tym.
};

INSTANCE Info_Mod_Bartholo_Thorus (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Thorus_Condition;
	information	= Info_Mod_Bartholo_Thorus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce po prostu porozmawiac z Thorusem.";
};

FUNC INT Info_Mod_Bartholo_Thorus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Bartholo_Anschluss))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Thorus_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_Thorus_15_00"); //Chce po prostu porozmawiac z Thorusem.
	AI_Output(self, hero, "Info_Mod_Bartholo_Thorus_12_01"); //Jesli chce z Toba porozmawiac, nie powinno to byc problemem.
	AI_Output(self, hero, "Info_Mod_Bartholo_Thorus_12_02"); //Ostrzegaj sie jednak: Jesli narysujesz swoja bron w jego obecnosci, bedziesz umarl wczesniej niz mozesz umrzec.
};

INSTANCE Info_Mod_Bartholo_WarumNochHier (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_WarumNochHier_Condition;
	information	= Info_Mod_Bartholo_WarumNochHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nadal robicie?";
};

FUNC INT Info_Mod_Bartholo_WarumNochHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Anschluss))
	|| (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Thorus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_WarumNochHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_WarumNochHier_15_00"); //Co nadal robicie?
	AI_Output(self, hero, "Info_Mod_Bartholo_WarumNochHier_12_01"); //Jestem wierny Thorusowi. Wkrótce obóz znów ruszy pod góre.
	AI_Output(self, hero, "Info_Mod_Bartholo_WarumNochHier_12_02"); //Poza tym, nie chce sie skonczyc jak Stone tam....
};

INSTANCE Info_Mod_Bartholo_Ende (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Ende_Condition;
	information	= Info_Mod_Bartholo_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_BartholosFlucht))
	&& (Npc_GetDistToWP(self, "WP_MT_OC_BARTHOLO_KERKER") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Ende_12_00"); //Znalazles mnie, wiec teraz jest juz za pózno. Ale nie zamierzam sie poddawac bez walki.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bartholo_Pickpocket (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Pickpocket_Condition;
	information	= Info_Mod_Bartholo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bartholo_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

	Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_BACK, Info_Mod_Bartholo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bartholo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bartholo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bartholo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bartholo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bartholo_EXIT (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_EXIT_Condition;
	information	= Info_Mod_Bartholo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bartholo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartholo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
