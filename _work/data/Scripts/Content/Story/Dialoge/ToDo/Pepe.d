INSTANCE Info_Mod_Pepe_Hallo (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Hallo_Condition;
	information	= Info_Mod_Pepe_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Pepe_Hallo_Condition ()
{
	return 1;
};

FUNC VOID Info_Mod_Pepe_Hallo_Info ()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output (self, hero, "Info_Mod_Pepe_Hallo_02_01"); //Zadbaj o owce! Jesli to mozliwe, unikaj problemów.
};

INSTANCE Info_Mod_Pepe_Daemonisch (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Daemonisch_Condition;
	information	= Info_Mod_Pepe_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pepe_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_00"); //Co Pan tutaj robi, czego chce? Jestes tez jednym z cieni czarnych?
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_01"); //Teraz po prostu spokojny. Co masz na mysli, czarne cienie?
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_02"); //(zaklócony) Mam na mysli potwory, które noca pakowaly najemników w lasach.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_03"); //Powstaly one znikad znikad.... glosne pekanie.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_04"); //najemnicy wyciagneli swoja bron i próbowali ich napadac.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_05"); //Ale wszyscy oni zostali przejeci i przeniknieci przez nich.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_06"); //Krzyczeli, krzyczeli i rzucali sie na ziemie.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_07"); //Jeden z nich przebil sie nawet wlasnym pistoletem.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_08"); //l-- Nie moglem sie ruszyc i pozostawalem calkowicie nieruchomy siedzac przy ognisku, bezradnie obserwujac straszne widowisko.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_09"); //Nawet, gdy wszyscy lezeli na podlodze i nikt nie ruszal sie, bylem sparalizowany (....). przez wiele godzin.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_10"); //Ale potem nagle zaczely sie krecic i jeki.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_11"); //Nic juz nie moglo mnie powstrzymac, panikowalem i wzialem lot. I ukrywam sie tu od tego czasu.
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_12"); //Hmm, to bardzo interesujace, co mi mówisz.
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_13"); //Mysle, ze dobrze sie tu schowacie.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_02_14"); //(nieco spokojniejszy) Tak..... Tak, tak, tak, ja bede.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Pepe utrzymuje sie w ukryciu i obawy o swoje zycie. Wedlug niego zostali zaatakowani noca przez czarne cienie, a wszyscy najemnicy zostali poderwani na ziemie. Ktos powiedzial, ze przeszyl sie wlasnym pistoletem. Pepe pozostal sparalizowany na ognisku i nie wzial lotu, dopóki po wielu godzinach migotania najemnicy nie podniesli sie ponownie.");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Pepe_Unheil (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Unheil_Condition;
	information	= Info_Mod_Pepe_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio widziales cos dziwnego lub niezwyklego - oprócz potworów w otoczeniu?";
};

FUNC INT Info_Mod_Pepe_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Pepe_Unheil_15_00"); //Czy ostatnio widziales cos dziwnego lub niezwyklego - oprócz potworów w otoczeniu?
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_02_01"); //Tak, rzeczywiscie. Ta paczka czarnych wilków sprawia, ze moja glowa sie kreci. najemnicy szukali ich juz w lesie, ale nie mogli niczego znalezc.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_02_02"); //I problemy zdrowotne moich owiec.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_02_03"); //Zawsze wydaje sie, ze cos ich startuje, kiedy wypasaja sie na skraju lasu w zakrecie do mysliwego Grom.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_02_04"); //Jeszcze nic nie widzialem, ale kiedys mialem wrazenie, ze slyszalem lagodny jek od skal nad nimi.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_02_05"); //Hmm, inaczej wydawalo mi sie, jakbym widzial, ze figury kilka razy wieczorem podchodza do lasu. Bardzo pelzanie.
};

INSTANCE Info_Mod_Pepe_Hexen (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Hexen_Condition;
	information	= Info_Mod_Pepe_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pepe_Hexen_Condition()
{
	if (Mod_WM_PepeAtSheep == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Pepe_Hexen_02_00"); //Te straszne bestie zabily cale moje stado i powinienem byl zostac zabity przez cala szerokosc wlosów.
	AI_Output(self, hero, "Info_Mod_Pepe_Hexen_02_01"); //Jak mam to wyjasnic Onar? Gdzie jest Innosowe blogoslawienstwo, kiedy tego potrzebujesz?
};

INSTANCE Info_Mod_Pepe_PICKPOCKET (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_PICKPOCKET_Condition;
	information	= Info_Mod_Pepe_PICKPOCKET_Info;
	permanent	= 1;
	description	= Pickpocket_30;
};                       

FUNC INT Info_Mod_Pepe_PICKPOCKET_Condition()
{
	C_Beklauen (15, ItMi_Gold, 11);
};
 
FUNC VOID Info_Mod_Pepe_PICKPOCKET_Info()
{	
	Info_ClearChoices	(Info_Mod_Pepe_PICKPOCKET);
	Info_AddChoice		(Info_Mod_Pepe_PICKPOCKET, DIALOG_BACK 		,Info_Mod_Pepe_PICKPOCKET_BACK);
	Info_AddChoice		(Info_Mod_Pepe_PICKPOCKET, DIALOG_PICKPOCKET	,Info_Mod_Pepe_PICKPOCKET_DoIt);
};

FUNC VOID Info_Mod_Pepe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pepe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pepe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pepe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
FUNC VOID Info_Mod_Pepe_PICKPOCKET_BACK()
{
	Info_ClearChoices (Info_Mod_Pepe_PICKPOCKET);
};

INSTANCE Info_Mod_Pepe_EXIT   (C_INFO)
{
	npc         = Mod_793_BAU_Pepe_NW;
	nr          = 1;
	condition   = Info_Mod_Pepe_EXIT_Condition;
	information = Info_Mod_Pepe_EXIT_Info;
	permanent   = 1;
	description = DIALOG_ENDE;
};

FUNC INT Info_Mod_Pepe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pepe_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
