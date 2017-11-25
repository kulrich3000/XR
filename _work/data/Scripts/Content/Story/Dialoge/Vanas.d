INSTANCE Info_Mod_Vanas_Hi (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_Hi_Condition;
	information	= Info_Mod_Vanas_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, I brought you ore and bogweed from Engardo.";
};

FUNC INT Info_Mod_Vanas_Hi_Condition()
{
	if (Mod_SLD_Engardo == 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 12)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vanas_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_15_00"); //Hello, I brought you ore and bogweed from Engardo.

	B_ShowGivenThings	("12 lumps of ore and 12 stems of swamp herb added");

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 12);
	Npc_RemoveInvItems	(hero, ItMi_Joint, 12);

	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_01"); //Ahh, excellent. I recently used up my supply of magical energy. It's convenient for me.
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_15_02"); //You got something for me?
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_03"); //Ohh, yeah, the payment.

	B_GiveInvItems	(self, hero, ItMi_VanasPaket, 1);

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_04"); //(slightly quieter) I don't have everything. Five pieces of cheese, an ice dart roll and six beers are missing in the package.
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_05"); //But for someone who is gifted in the art of ore forging, I might have something interesting for you.

	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Info_AddChoice	(Info_Mod_Vanas_Hi, "It arouses my curiosity. What's this about?", Info_Mod_Vanas_Hi_B);
	Info_AddChoice	(Info_Mod_Vanas_Hi, "Not interested. Give me back a part of the ore and the marsh herb.", Info_Mod_Vanas_Hi_A);
};

FUNC VOID Info_Mod_Vanas_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_B_15_00"); //It arouses my curiosity. What's this about?
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_B_06_01"); //My water warrior colleague Everaldo has translated a forging plan of the old culture. Go to him and tell him you're coming from me.
	
	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Mod_SLD_Engardo = 2;

	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "Vanas didn't have all the goods. The water warrior Everaldo has an interesting plan for me.");
};

FUNC VOID Info_Mod_Vanas_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_A_15_00"); //Not interested. Give me back a part of the ore and the marsh herb.
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_A_06_01"); //Too bad. You're missing something. Here you have four ore and four swampweed each.

	B_ShowGivenThings	("4 chunks of ore and 4 stems of bogweed preserved");

	CreateInvItems	(hero, ItMi_Nugget, 4);
	CreateInvItems	(hero, ItMi_Joint, 4);
	
	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Mod_SLD_Engardo = 3;

	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "Vanas didn't have all the goods. I have reclaimed and received a part of the marsh herb and the ore.");
};

INSTANCE Info_Mod_Vanas_Pickpocket (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_Pickpocket_Condition;
	information	= Info_Mod_Vanas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Vanas_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

	Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_BACK, Info_Mod_Vanas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vanas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vanas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vanas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vanas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vanas_EXIT (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_EXIT_Condition;
	information	= Info_Mod_Vanas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vanas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vanas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
