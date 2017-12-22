INSTANCE Info_Mod_Falin_Hi (C_INFO)
{
	npc		= Mod_7475_SLD_Falin_MT;
	nr		= 1;
	condition	= Info_Mod_Falin_Hi_Condition;
	information	= Info_Mod_Falin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Who are you and what are you doing here?";
};

FUNC INT Info_Mod_Falin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Falin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_00"); //Hello! Who are you and what are you doing here?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_01"); //I am Falin and on my way to the old monastery of the transforming magicians.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_02"); //Then what are you hanging around for?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_03"); //I was curious. I didn't know there was a camp here.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_04"); //This is the Ranger camp. The Druid Cyrco is the leader. We're looking for melee fighters to join us.
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_05"); //Honestly? I might like that. Always the same routine with us. Sitting on guard duty or sitting in the cave.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_06"); //There's more action here. So you want to?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_07"); //I have to take this package to the convent at Ferco.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_08"); //You know something? I'll take this over. You're going to camp. Tell the gatekeeper you're a new guy. He'll send you to Cyrco.
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_09"); //That would be fine by me right now. Here's the package.

	B_GiveInvItems	(self, hero, ItMi_PaketFalin, 1);

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Maybe I've already found a mercenary, so check with Khorinis. Oh, yeah. And the package for the monastery of the transforming mages, which I have to hand over to Ferco....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
};

INSTANCE Info_Mod_Falin_EXIT (C_INFO)
{
	npc		= Mod_7475_SLD_Falin_MT;
	nr		= 1;
	condition	= Info_Mod_Falin_EXIT_Condition;
	information	= Info_Mod_Falin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Falin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Falin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
