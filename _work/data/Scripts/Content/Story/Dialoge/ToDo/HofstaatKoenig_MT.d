INSTANCE Info_Mod_HofstaatKoenig_MT_AtStrand (C_INFO)
{
	npc		= Mod_7331_HS_Koenig_MT;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_MT_AtStrand_Condition;
	information	= Info_Mod_HofstaatKoenig_MT_AtStrand_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_MT_AtStrand_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatKoenig_MT_AtStrand_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_00"); //To..... Niepoznawalne piekne. Zrobie wszystko, aby zawrzec sojusz z tym dumnym krajem.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_MT_AtStrand_15_01"); //Wystarczy dac dumnym mieszkancom bagna absolutne bezpieczenstwo finansowe.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_02"); //Wiec niech tak bedzie! Flip-flop, nie zawiódles mnie. Uszczesliwiles sie ponownie!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_03"); //Wracajac w nocy, bedziemy mieli impreze jak nigdy wczesniej!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FEST");

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "Król jest zachwycony i chce swietowac. Wracam w nocy.");
};

INSTANCE Info_Mod_HofstaatKoenig_MT_Fest (C_INFO)
{
	npc		= Mod_7331_HS_Koenig_MT;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_MT_Fest_Condition;
	information	= Info_Mod_HofstaatKoenig_MT_Fest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_MT_Fest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_MT_AtStrand))
	&& (Wld_IsTime(21,00,07,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_MT_Fest_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_00"); //Zrzuty! Jestes! Widzisz to? Wszystko na Twoja czesc!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_01"); //Nie tylko swietujemy sojusz Braterskiego Bractwa Swamp i Sadu.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_02"); //Swietujemy równiez Twoja promocje! Najwyzszy tytul królestwa zdobi cie teraz.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_03"); //Od tego dnia do wiecznosci bedziesz znany jako królewski ratownik!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_04"); //A teraz swietujmy jak gdyby nie bylo jutro, tu na tej plazy..... Bezplatna plaza!

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_SUCCESS);
	B_GivePlayerXP	(1500);
};

INSTANCE Info_Mod_HofstaatKoenig_MT_EXIT (C_INFO)
{
	npc		= Mod_7331_HS_Koenig_MT;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_MT_EXIT_Condition;
	information	= Info_Mod_HofstaatKoenig_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatKoenig_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatKoenig_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
