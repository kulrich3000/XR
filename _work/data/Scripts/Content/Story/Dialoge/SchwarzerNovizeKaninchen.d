INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Hi (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Hi_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So you're responsible for the excessive rabbit population....";
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Hi_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_15_00"); //So you're responsible for the excessive rabbit population....
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_24_01"); //Yeah, I'm on a mission from the demon magicians to test Pest spells.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_24_02"); //And what are you gonna do about it?

	B_GivePlayerXP	(250);

	Mod_WM_Plage_PartHase = 1;

	B_LogEntry	(TOPIC_MOD_ADANOS_PLAGE, "Ok, the origin of the rabbits is now known to me.");

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Hi, "Spank your butt if you don't stop.", Info_Mod_SchwarzerNovizeKaninchen_Hi_B);
	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Hi, "Nothing at all. The information on this is all I needed.", Info_Mod_SchwarzerNovizeKaninchen_Hi_A);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_B_15_00"); //Spank your butt if you don't stop.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_B_24_01"); //Well, come over here.

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_A_15_00"); //Nothing at all. The information on this is all I needed.

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Umgehauen (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, now get the hell out of here.";
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovizeKaninchen_Hi))
	&& (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_15_00"); //So, now get the hell out of here.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_04_01"); //You'll regret this.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Pickpocket (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 350);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);

	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket, DIALOG_BACK, Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_EXIT (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_EXIT_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
