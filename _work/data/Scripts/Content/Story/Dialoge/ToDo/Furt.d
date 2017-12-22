INSTANCE Info_Mod_Furt_Hi (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Hi_Condition;
	information	= Info_Mod_Furt_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie jest Twoje imie?";
};

FUNC INT Info_Mod_Furt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furt_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_15_00"); //Jakie jest Twoje imie?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_03_01"); //Nie wiem, co to dla Ciebie znaczy.

	Info_ClearChoices	(Info_Mod_Furt_Hi);

	Info_AddChoice	(Info_Mod_Furt_Hi, "Masz racje, masz racje. Bede wiec jechal.", Info_Mod_Furt_Hi_B);
	Info_AddChoice	(Info_Mod_Furt_Hi, "Co pieklo jest z toba zle?", Info_Mod_Furt_Hi_A);
};

FUNC VOID Info_Mod_Furt_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_B_15_00"); //Masz racje, masz racje. Bede wiec jechal.
	AI_Output(self, hero, "Info_Mod_Furt_Hi_B_03_01"); //To równiez lepiej dla Ciebie.

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

FUNC VOID Info_Mod_Furt_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_A_15_00"); //Co pieklo jest z toba zle?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_A_03_01"); //Utrzymaj dobra prace.....

	Info_ClearChoices	(Info_Mod_Furt_Hi);

	Info_AddChoice	(Info_Mod_Furt_Hi, "Nie masz wielu przyjaciól, czy?", Info_Mod_Furt_Hi_D);
	Info_AddChoice	(Info_Mod_Furt_Hi, "Powiedzmy, czy jak wlaczasz kazdego nowego faceta?", Info_Mod_Furt_Hi_C);
};

FUNC VOID Info_Mod_Furt_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_D_15_00"); //Nie masz wielu przyjaciól, czy?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_D_03_01"); //Prawdopodobnie wiecej niz Ty. Teraz wyjdz z tego miejsca!
	AI_Output(hero, self, "Info_Mod_Furt_Hi_D_15_02"); //Jeszcze nie skonczylem.
	AI_Output(self, hero, "Info_Mod_Furt_Hi_D_03_03"); //Lepiej wyjedz z tego miejsca, zanim trafie cie do ust!

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

FUNC VOID Info_Mod_Furt_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_00"); //Powiedzmy, czy jak wlaczasz kazdego nowego faceta?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_01"); //Tak.
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_02"); //Nie jestes czlowiekiem wielkich slów, prawda?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_03"); //Nie.
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_04"); //Wszystko, co jeszcze chcesz mi powiedziec?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_05"); //Tak. Hau ab!

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

INSTANCE Info_Mod_Furt_Faice (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice_Condition;
	information	= Info_Mod_Furt_Faice_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Furt_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice_Info()
{
	AI_Output(self, hero, "Info_Mod_Furt_Faice_03_00"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Furt_Faice_15_01"); //Slysze, ze wiedza Panstwo cos o zatruciu rola zaklecia.
	AI_Output(self, hero, "Info_Mod_Furt_Faice_03_02"); //Co? Nie! Nic nie wiem!
};

INSTANCE Info_Mod_Furt_Faice02 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice02_Condition;
	information	= Info_Mod_Furt_Faice02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiem, ze to Ty. Odmowa jest daremna.";
};

FUNC INT Info_Mod_Furt_Faice02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Hermy_Faice01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Hermy_Faice03)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice02_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_00"); //Wiem, ze to Ty. Odmowa jest daremna.
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_01"); //Jak? Kto ci to powiedzial?
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_02"); //Nie ma to znaczenia. Wyznac, a nie bedzie rozlewu krwi.
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_03"); //Dobrze, dobrze, dobrze, dobrze! Przyznaje sie! zatrulem role czaru.
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_04"); //Idziesz tam, tam idziesz. Dlaczego tak sie stalo?
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_05"); //Nie zdradze pracodawcy!
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_06"); //Co mam z Toba zrobic?
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_07"); //Pozwól mi tylko odejsc. Daje ci 500 zlotych monet i role "Transformacyjnego Laby".

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Odkrylem, ze Furt zatruwal role czaru.");
};

INSTANCE Info_Mod_Furt_Faice03 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice03_Condition;
	information	= Info_Mod_Furt_Faice03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestes tak zdenerwowany?";
};

FUNC INT Info_Mod_Furt_Faice03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice03_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice03_15_00"); //Dlaczego jestes tak zdenerwowany?
	AI_Output(self, hero, "Info_Mod_Furt_Faice03_03_01"); //l-- Wciaz nie moge uwierzyc, ze Faice's zostal zatruty.
	AI_Output(hero, self, "Info_Mod_Furt_Faice03_15_02"); //(ironiczne) Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Furt_Faice03_03_03"); //Ale.... Naprawde nic nie wiem!
};

INSTANCE Info_Mod_Furt_Faice04 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice04_Condition;
	information	= Info_Mod_Furt_Faice04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze, daj mi rzeczy i wyjdz stad.";
};

FUNC INT Info_Mod_Furt_Faice04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& ((Mod_VMG_FaiceGifty_Gift == 10)
	|| (Mod_VMG_FaiceGifty_Gift == 11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice04_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice04_15_00"); //Dobrze, daj mi rzeczy i wyjdz stad.
	AI_Output(self, hero, "Info_Mod_Furt_Faice04_03_01"); //Tutaj. Zadbaj teraz o to teraz.

	CreateInvItems	(hero, ItMi_Gold, 500);
	CreateInvItems	(hero, ItSc_TrfKeiler, 1);

	B_ShowGivenThings	("500 Zloto i rola otrzymanej 'Rady Przeksztalcen");

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Prowadzilem Furt i dostawalem od niego jakies przedmioty. Nie pojawi sie ponownie.");

	Mod_VMG_FaiceGifty_Gift = 12;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_Furt_Faice05 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice05_Condition;
	information	= Info_Mod_Furt_Faice05_Info;
	permanent	= 0;
	important	= 0;
	description	= "To nie wystarczy.";
};

FUNC INT Info_Mod_Furt_Faice05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice05_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice05_15_00"); //To nie wystarczy.
	AI_Output(self, hero, "Info_Mod_Furt_Faice05_03_01"); //Dam ci kolejny zaklecie. To wszystko, co jest.
	
	Mod_VMG_FaiceGifty_Gift = 11;
};

INSTANCE Info_Mod_Furt_Faice06 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice06_Condition;
	information	= Info_Mod_Furt_Faice06_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gonna powiedziec Turndilowi, ze zatrules czesc czaru.";
};

FUNC INT Info_Mod_Furt_Faice06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& ((Mod_VMG_FaiceGifty_Gift == 10)
	|| (Mod_VMG_FaiceGifty_Gift == 11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice06_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice06_15_00"); //Jestem gonna powiedziec Turndilowi, ze zatrules czesc czaru.
	AI_Output(self, hero, "Info_Mod_Furt_Faice06_03_01"); //Zrób to, czego nie mozesz zawiesc.
	AI_Output(hero, self, "Info_Mod_Furt_Faice06_15_02"); //Tak, pójde do Turendilu.
	AI_Output(self, hero, "Info_Mod_Furt_Faice06_03_03"); //Tak wlasnie jest. Pozegnanie pozegnania.

	Mod_VMG_FaiceGifty_Gift = 13;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Opowiem Turendilowi, ze Furt zatrul Fa czescia opowiesci.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Furt_Pickpocket (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Pickpocket_Condition;
	information	= Info_Mod_Furt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Furt_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Furt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

	Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_BACK, Info_Mod_Furt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Furt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Furt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
};

FUNC VOID Info_Mod_Furt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Furt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Furt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Furt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Furt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Furt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Furt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Furt_EXIT (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_EXIT_Condition;
	information	= Info_Mod_Furt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Furt_EXIT_Condition()
{
	if (Mod_VMG_FaiceGifty_Gift < 10)
	|| (Mod_VMG_FaiceGifty_Gift > 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
