INSTANCE Info_Mod_Engardo_Hi (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Hi_Condition;
	information	= Info_Mod_Engardo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Engardo_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_BackAtCamp))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Engardo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_00"); //Czlowiek, pokazales, ze jestes niezawodny. Mam dla Ciebie prace do wykonania, gdzie mozesz rozciagnac nogi i zarobic zloto, rude i ambrozje.
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_15_01"); //Dobrze mi brzmi.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_02"); //Byc moze wiesz juz, ze niektórzy z Wojowników Wodnych sa dawnymi najemnikami. Jednym z nich jest Vanas.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_03"); //Musisz tylko przyniesc mu cos do niego i przyniesc to, co on ci daje.

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Engardo_Hi);

	Info_AddChoice	(Info_Mod_Engardo_Hi, "Nah, to dluga droga do przebycia.", Info_Mod_Engardo_Hi_B);
	Info_AddChoice	(Info_Mod_Engardo_Hi, "Z pewnoscia, ja pójde w lewo.", Info_Mod_Engardo_Hi_A);
};

FUNC VOID Info_Mod_Engardo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_B_15_00"); //Nah, to dluga droga do przebycia.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_B_13_01"); //Zbyt zle. Bardzo rozczarowujace. Znalazlam kogos, kto by to zrobil.
	
	Info_ClearChoices	(Info_Mod_Engardo_Hi);
};

FUNC VOID Info_Mod_Engardo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_A_15_00"); //Z pewnoscia, ja pójde w lewo.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_A_13_01"); //Bardzo dobry. Tutaj masz dwanascie kawalków dziedzicznych ziól i dwanascie lodyg bagiennych dla Vanasa.

	B_ShowGivenThings	("12 grudek rudy rudy i 12 lodyg zakonserwowanych ziól bagiennych");

	CreateInvItems	(hero, ItMi_Nugget, 12);
	CreateInvItems	(hero, ItMi_Joint, 12);

	Mod_SLD_Engardo = 1;

	Log_CreateTopic	(TOPIC_MOD_SLD_ENGARDO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_ENGARDO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "Do wodnego wojownika Vanasa mam przywiezc po dwanascie lodyg i bagnistych lodyg, a nastepnie przewiezc je do Engardo w Minentalu.");
	
	Info_ClearChoices	(Info_Mod_Engardo_Hi);
};

INSTANCE Info_Mod_Engardo_Vanas (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Vanas_Condition;
	information	= Info_Mod_Engardo_Vanas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem z Vanasem. Ale on nie mial wszystkiego.";
};

FUNC INT Info_Mod_Engardo_Vanas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Engardo_Hi))
	&& (((Mod_SLD_Engardo == 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 4)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 4))
	|| (Npc_KnowsInfo(hero, Info_Mod_Everaldo_Hi)))
	&& (Npc_HasItems(hero, ItMi_VanasPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Engardo_Vanas_Info()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_15_00"); //Bylem z Vanasem. Ale on nie mial wszystkiego.

	if (Mod_SLD_Engardo == 3)
	{
		AI_Output(hero, self, "Info_Mod_Engardo_Vanas_15_01"); //Oddal mi czesc rudy i bagna.

		B_ShowGivenThings	("Opakowanie, 4 rudy i 4 lodygi kapusty bagiennej podanej");

		Npc_RemoveInvItems	(hero, ItMi_VanasPaket, 1);
		Npc_RemoveInvItems	(hero, ItMi_Nugget, 4);
		Npc_RemoveInvItems	(hero, ItMi_Joint, 4);

		AI_Output(self, hero, "Info_Mod_Engardo_Vanas_13_02"); //Pozwólcie mi widziec.... No cóz, co najmniej cos w porzadku. Tutaj masz cztery bagienne lodygi i trzy rudy jako nagrode.

		B_ShowGivenThings	("3 ruda i 4 lodygi chwastu konserwowanego na mokradlo");

		CreateInvItems	(hero, ItMi_Nugget, 3);
		CreateInvItems	(hero, ItMi_Joint, 4);

		B_GivePlayerXP	(350);

		Mod_SLD_Engardo = 5;
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_VanasPaket, 1);

		AI_Output(self, hero, "Info_Mod_Engardo_Vanas_13_03"); //Pozwólcie mi widziec.... A co dostaje w zamian?

		Info_ClearChoices	(Info_Mod_Engardo_Vanas);

		Info_AddChoice	(Info_Mod_Engardo_Vanas, "Nic nie ma nic.", Info_Mod_Engardo_Vanas_F);

		if (Npc_HasItems(hero, ItFo_Beer) >= 14)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Czternascie piw.", Info_Mod_Engardo_Vanas_E);
		};
		if (Npc_HasItems(hero, ItFo_Cheese) >= 14)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "14 kawalków sera.", Info_Mod_Engardo_Vanas_D);
		};
		if (Npc_HasItems(hero, ItMi_Gold) >= 250)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "250 zlotych monet.", Info_Mod_Engardo_Vanas_C);
		};
		if (Npc_HasItems(hero, ItMi_Joint) >= 12)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Dwanascie lodyg bagna.", Info_Mod_Engardo_Vanas_B);
		};
		if (Npc_HasItems(hero, ItMi_Nugget) >= 6)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Szesc rudy.", Info_Mod_Engardo_Vanas_A);
		};
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_ENGARDO, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Engardo_Vanas_G()
{
	AI_Output(self, hero, "Info_Mod_Engardo_Vanas_G_13_00"); //No cóz, to wszystko dobrze. Tutaj masz piec bagiennych lodyg i cztery rudy jako nagrode.

	B_ShowGivenThings	("4 ruda i 5 lodyg chwastu konserwowanego na mokradlo");

	CreateInvItems	(hero, ItMi_Nugget, 4);
	CreateInvItems	(hero, ItMi_Joint, 5);

	B_GivePlayerXP	(400);

	Mod_SLD_Engardo = 5;

	Info_ClearChoices	(Info_Mod_Engardo_Vanas);
};

FUNC VOID Info_Mod_Engardo_Vanas_F()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_F_15_00"); //Nic nie ma nic.
	AI_Output(self, hero, "Info_Mod_Engardo_Vanas_F_13_01"); //Co? Zrobilem targowanie sie o straty z powodu ciebie, zderzaków. Wychodzic z moich oczu!

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Engardo_Vanas);
};

FUNC VOID Info_Mod_Engardo_Vanas_E()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_E_15_00"); //Czternascie piw.

	B_GiveInvItems	(hero, self, ItFo_Beer, 14);
	
	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_D()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_D_15_00"); //14 kawalków sera.

	B_GiveInvItems	(hero, self, ItFo_Cheese, 14);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_C()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_C_15_00"); //250 zlotych monet.

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_B()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_B_15_00"); //Dwanascie lodyg bagna.

	B_GiveInvItems	(hero, self, ItMi_Joint, 12);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_A()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_A_15_00"); //Szesc rudy.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 6);

	Info_Mod_Engardo_Vanas_G();
};

INSTANCE Info_Mod_Engardo_Pickpocket (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Pickpocket_Condition;
	information	= Info_Mod_Engardo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Engardo_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

	Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_BACK, Info_Mod_Engardo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Engardo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Engardo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Engardo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Engardo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Engardo_EXIT (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_EXIT_Condition;
	information	= Info_Mod_Engardo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Engardo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Engardo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
