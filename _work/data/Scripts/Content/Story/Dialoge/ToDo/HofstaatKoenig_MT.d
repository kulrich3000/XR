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
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_00"); //It's.... Indescribably beautiful. I would do anything to form an alliance with this proud country.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_MT_AtStrand_15_01"); //All you have to do is give the swamp's proud people absolute financial security.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_02"); //So be it! Flip-flop, you didn't disappoint me. You have made your king happy again!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_AtStrand_06_03"); //Come back at night, we'll have a party like never before!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FEST");

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "The king is thrilled and wants to celebrate. I'm supposed to come back at night.");
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
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_00"); //Sweeping! There you are! Do you see this? All in your honor!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_01"); //We are not only celebrating the alliance of the Brotherhood of the Swamp and the Court.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_02"); //We're also celebrating your promotion! The highest title of the kingdom shall now adorn you.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_03"); //From this day until eternity you shall be known as the royal lifeguard!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_MT_Fest_06_04"); //And now let's celebrate as if there is no tomorrow, here on this beach.... the free beach!

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
