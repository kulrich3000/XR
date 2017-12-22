INSTANCE Info_Mod_FrauRichard_REL_Hi (C_INFO)
{
	npc		= Mod_7719_OUT_Frau_REL;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_REL_Hi_Condition;
	information	= Info_Mod_FrauRichard_REL_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well settled in again?";
};

FUNC INT Info_Mod_FrauRichard_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_REL_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_00"); //Well settled in again?
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_01"); //Things have changed a lot since I left.

	if (Mod_REL_Stadthalter == 1)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_02"); //I never thought it was possible for Theodorus to become governor!
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_03"); //I never thought it was possible that Luke would become governor.
	}
	else if (Mod_REL_Stadthalter == 3)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_04"); //I never thought it was possible for Wendel to become governor!
	};

	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_05"); //But it could only be better than under Anselm.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_06"); //At least there are rules on the use of the giver of joy.
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_07"); //And if I'm not mistaken, have you found another partner?
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_08"); //Shh, not too loud. Officially, we're not a couple, just old school friends.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_09"); //He took me in after I returned.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_10"); //But something seems to be developing there....
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_11"); //Without you all this would not have been possible. Here, I want to give you this gift.

	B_GiveInvItems	(self, hero, ItRi_Dex_01, 1);

	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_12"); //This ring has been handed down in the family for at least three generations. But now I want it to be yours.
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_13"); //Thank you very much.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_14"); //Bye, now!
};

INSTANCE Info_Mod_FrauRichard_REL_EXIT (C_INFO)
{
	npc		= Mod_7719_OUT_Frau_REL;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_REL_EXIT_Condition;
	information	= Info_Mod_FrauRichard_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FrauRichard_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
