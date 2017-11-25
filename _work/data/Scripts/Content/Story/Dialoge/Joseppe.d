INSTANCE Info_Mod_Joseppe_Hi (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Hi_Condition;
	information	= Info_Mod_Joseppe_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Hi_Condition()
{
	if (Mod_Sekte_Karras >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_08_00"); //Pomoc! Potrzebuje pilnej pomocy wykonawczej! Czy jestes milicja, moim dobrym czlowiekiem?

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);

	Info_AddChoice	(Info_Mod_Joseppe_Hi, "Nie.", Info_Mod_Joseppe_Hi_B);
	Info_AddChoice	(Info_Mod_Joseppe_Hi, "Tak.", Info_Mod_Joseppe_Hi_A);
};

FUNC VOID Info_Mod_Joseppe_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Hi_B_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_B_08_01"); //Cudowny. Prosze mi wybaczyc, nazywam sie Joseppe. Jestem czlowiekiem do zadan specjalnych.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_B_08_02"); //Jesli chcesz skorzystac z moich uslug, bede stal kazdej nocy przed swiatynia Adanos. Miec dobre zycie.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Mezczyzna imieniem Joseppe zaoferowal mi jakas sluzbe. Wieczorem stoi w sanktuarium Adanos. Tam powinienem go odwiedzic.");

	Mod_Sekte_Joseppe = 1;

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);
};

FUNC VOID Info_Mod_Joseppe_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Hi_A_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_A_08_01"); //Przepraszam, musialem sie mylic, myslalem, ze ktos ukradl mój portfel. Milego dnia.

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);
};

INSTANCE Info_Mod_Joseppe_Auftrag (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Auftrag_Condition;
	information	= Info_Mod_Joseppe_Auftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Hi))
	&& (Mod_Sekte_Joseppe == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Wld_IsTime(20,30,05,00))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Auftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_00"); //Przyszedles, jak bardzo przyjemnie. Co musisz dla mnie zrobic? Masowe morderstwo, zabójstwo, oszczerstwo, morderstwo bohaterów, jestem specjalista we wszystkim.
	AI_Output(hero, self, "Info_Mod_Joseppe_Auftrag_15_01"); //Czy mozesz dostac ksiazke?
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_02"); //Wydaje sie, ze nie dostrzegasz mojego potencjalu.... ale w potrzebie diabel zjada sie do latania.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_03"); //Jaka ksiazke chcesz i gdzie to jest?
	AI_Output(hero, self, "Info_Mod_Joseppe_Auftrag_15_04"); //Nekronomika. Magicy ognia ukrywaja go w klasztorze.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_05"); //Ksiazka czarnej magii? Panskie zadanie wydaje sie dosc interesujace.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_06"); //Placmy. Podstawowy pakiet kosztuje 10. 000 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_07"); //Otrzymasz znizke, jesli dostaniesz ode mnie sprzet.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_08"); //W zaleznosci od tego, jak bardzo jest to uzyteczne, zejde w dól z cena.

	Mod_Sekte_JoseppePreis = 10000;

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Joseppe jest specjalista we wszystkich rodzajach przestepstw. Do kradziezy ksiazki zada jednak 10. 000 zlotych monet. Ale on zaoferowal mi znizke, kiedy przynosilem mu jakis przydatny sprzet.");
};

INSTANCE Info_Mod_Joseppe_Equipment_Keule (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_Keule_Condition;
	information	= Info_Mod_Joseppe_Equipment_Keule_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tutaj magiczny klub.";
};

FUNC INT Info_Mod_Joseppe_Equipment_Keule_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ItMw_UnconsciousKnueppel) == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_Keule_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Keule_15_00"); //Mam tutaj magiczny klub. Kto zostanie nim pobity, ten natychmiast stanie sie nieprzytomny.

	B_GiveInvItems	(hero, self, ItMw_UnconsciousKnueppel, 1);

	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Keule_15_01"); //Niestety, to dziala tylko raz, potem jest bezwartosciowe.
	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_Keule_08_02"); //Ciekawe, to powinno byc bardzo pomocne. Podam Ci na to znizke w wysokosci dwóch. 500 zlotych monet.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_Equipment_FakeNove (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_FakeNove_Condition;
	information	= Info_Mod_Joseppe_Equipment_FakeNove_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jeszcze mam falszywa próbe nowicjusza ognia.";
};

FUNC INT Info_Mod_Joseppe_Equipment_FakeNove_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ITAR_FAKE_NOV_L) == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_FakeNove_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_FakeNove_15_00"); //Jeszcze mam falszywa próbe nowicjusza ognia.

	B_GiveInvItems	(hero, self, ITAR_FAKE_NOV_L, 1);

	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_FakeNove_08_01"); //Do klasztoru powinienem przyjsc lekko nieuszkodzony. To jest dwa. Worth 500 zlotych monet.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_Equipment_Sumpfkraut (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_Sumpfkraut_Condition;
	information	= Info_Mod_Joseppe_Equipment_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o tym bagiennym pakiecie chwastów?";
};

FUNC INT Info_Mod_Joseppe_Equipment_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Sumpfkraut_15_00"); //Co sadzisz o tym bagiennym pakiecie chwastów?

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_Sumpfkraut_08_01"); //Zwabione jest zawsze dobre, daj mi go. Dam ci dwa. 500 zlotych monet.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_StartAuftrag (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_StartAuftrag_Condition;
	information	= Info_Mod_Joseppe_StartAuftrag_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dobrze, masz zadanie.";
};

FUNC INT Info_Mod_Joseppe_StartAuftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_15_00"); //Dobrze, masz zadanie.

	if (Mod_Sekte_JoseppePreis == 10000)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_01"); //Bedzie to 10 lat. 000 zlotych monet.
	}
	else if (Mod_Sekte_JoseppePreis == 7500)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_02"); //To jest siedem. 500 zlotych monet.
	}
	else if (Mod_Sekte_JoseppePreis == 5000)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_03"); //To jest piec. 000 zlotych monet.
	}
	else if (Mod_Sekte_JoseppePreis == 2500)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_04"); //To dwa. 500 zlotych monet.
	};

	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);

	Info_AddChoice	(Info_Mod_Joseppe_StartAuftrag, "Nie mam tyle zlota.", Info_Mod_Joseppe_StartAuftrag_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= Mod_Sekte_JoseppePreis)
	{
		Info_AddChoice	(Info_Mod_Joseppe_StartAuftrag, "Oto zloto.", Info_Mod_Joseppe_StartAuftrag_A);
	};
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_B()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_B_15_00"); //Nie mam tyle zlota.
	AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_B_08_01"); //Potem wracaj po otrzymaniu.
	
	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_A()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_A_15_00"); //Oto zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, Mod_Sekte_JoseppePreis);

	AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_A_08_01"); //Cóz, wróce jutro, wtedy powinienem miec wasza ksiazke.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Joseppe przejal to zadanie. Jutro poda mi ksiazke.");

	Mod_Sekte_Joseppe = 2;

	Mod_Sekte_JoseppeBuch = Wld_GetDay();
	
	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);
};

INSTANCE Info_Mod_Joseppe_Necronomicum (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Necronomicum_Condition;
	information	= Info_Mod_Joseppe_Necronomicum_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Necronomicum_Condition()
{
	if (Mod_Sekte_Joseppe == 2)
	&& (Wld_GetDay() > Mod_Sekte_JoseppeBuch)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Necronomicum_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Necronomicum_08_00"); //Tam znów pan jest. Dostalem wasza ksiazke. Tutaj ja masz.

	B_GiveInvItems	(self, hero, ItWr_BeliarBook, 1);

	AI_Output(hero, self, "Info_Mod_Joseppe_Necronomicum_15_01"); //Dzieki.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Otrzymalem Neconomicum od Joseppe. Powinienem teraz wrócic do Karrasu.");
};

INSTANCE Info_Mod_Joseppe_Pickpocket (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Pickpocket_Condition;
	information	= Info_Mod_Joseppe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Joseppe_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

	Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_BACK, Info_Mod_Joseppe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joseppe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joseppe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joseppe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joseppe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joseppe_EXIT (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_EXIT_Condition;
	information	= Info_Mod_Joseppe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joseppe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joseppe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
