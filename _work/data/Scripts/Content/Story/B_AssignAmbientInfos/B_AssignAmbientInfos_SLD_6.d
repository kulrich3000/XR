// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_SLD_6_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_SLD_6_EXIT_Condition;
	information	= DIA_SLD_6_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_SLD_6_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_SLD_6_EXIT_Info()
{	
	AI_Output(self, hero, "DIA_SLD_6_EXIT_06_00"); //Nie umieraj na nas!

	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_SLD_6_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_SLD_6_JOIN_Condition;
	information	= DIA_SLD_6_JOIN_Info;
	permanent	= TRUE;
	description = "Chce do Ciebie dolaczyc!";
};                       

FUNC INT DIA_SLD_6_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_SLD_6_JOIN_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_JOIN_15_00"); //Chce do Ciebie dolaczyc!
	AI_Output(self, hero, "DIA_SLD_6_JOIN_06_01"); //Wtedy po co do mnie mówisz? Porozmawiaj z Laresem i udowodnij sie.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_SLD_6_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_SLD_6_PEOPLE_Condition;
	information	= DIA_SLD_6_PEOPLE_Info;
	permanent	= TRUE;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT DIA_SLD_6_PEOPLE_Condition()
{
	if (other.guild != GIL_SLD)
	&& (other.guild != GIL_DJG)
	{
		return TRUE;
	};
};

FUNC VOID DIA_SLD_6_PEOPLE_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_PEOPLE_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_01"); //Gospodarstwo nalezy do Onar, jesli to wlasnie masz na mysli. Ale naszym liderem jest Lee.
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_02"); //Byl niegdys generalem w wojsku królewskim. Ale teraz nie jest juz tak dobry mówic o królu (smiech).
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_03"); //Pamietaj jego nazwisko. Jesli zaslepisz sie, jest on prawdopodobnie jedynym, który poradzi sobie z tym dla Ciebie. Wszyscy inni po prostu ciagnij za uszy futro.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_SLD_6_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_SLD_6_LOCATION_Condition;
	information	= DIA_SLD_6_LOCATION_Info;
	permanent	= TRUE;
	description = "Czy pilnujesz chlopów?";
};                       

FUNC INT DIA_SLD_6_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_SLD_6_LOCATION_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_LOCATION_15_00"); //Czy pilnujesz chlopów?
	AI_Output (self, other, "DIA_SLD_6_LOCATION_06_01"); //Nie jestesmy tutaj po to, aby kogos chronic, jestesmy po to, aby rekrutowac nowych czlonków.
};

INSTANCE Info_Mod_SLD_6_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SLD_6_Pickpocket_Condition;
	information	= Info_Mod_SLD_6_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_SLD_6_Pickpocket_Condition()
{
	C_Beklauen	(90 + r_max(30), ItMi_Gold, 35 + r_max(10));
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);

	Info_AddChoice	(Info_Mod_SLD_6_Pickpocket, DIALOG_BACK, Info_Mod_SLD_6_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SLD_6_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SLD_6_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);

		Info_AddChoice	(Info_Mod_SLD_6_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SLD_6_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SLD_6_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SLD_6_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SLD_6_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SLD_6_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SLD_6_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SLD_6_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};


// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SLD_6 (var c_NPC slf)
{
	DIA_SLD_6_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_SLD_6_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_SLD_6_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_SLD_6_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_SLD_6_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
