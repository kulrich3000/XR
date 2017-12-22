INSTANCE Info_Mod_Iwan_Hi (C_INFO)
{
	npc		= Mod_7206_NONE_Iwan_NW;
	nr		= 1;
	condition	= Info_Mod_Iwan_Hi_Condition;
	information	= Info_Mod_Iwan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Iwan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Iwan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_00"); //What, what happened?
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_01"); //The blade in the back of my neck and my headless body are the last thing I remember, then only shreds of perceptions, body and head, as if trapped, that gradual dwindling of my physical and magical powers.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_02"); //And now I'm standing here alive again.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_03"); //It was your merit, I can feel it.
	AI_Output(hero, self, "Info_Mod_Iwan_Hi_15_04"); //Yes, I certainly did my part.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_05"); //You must be a gifted warrior and mage for goodness, and you must receive my support before I continue to hunt down and destroy demons and undead.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_06"); //Here, take this recipe and these containers.

	CreateInvItems	(hero, ItWr_Rezept_Iwan, 1);
	CreateInvItems	(hero, ItMi_Salpeter, 5);

	B_ShowGivenThings	("5 bottles and recipe received");

	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_07"); //They will hopefully help you to realize your aspiration for righteousness and goodness.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_08"); //Who knows, maybe one day our paths will cross again. The gods may keep you safe.

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
