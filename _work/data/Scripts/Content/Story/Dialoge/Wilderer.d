INSTANCE Info_Mod_Wilderer_Hi (C_INFO)
{
	npc		= Mod_7588_OUT_Wilderer_NW;
	nr		= 1;
	condition	= Info_Mod_Wilderer_Hi_Condition;
	information	= Info_Mod_Wilderer_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilderer_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilderer_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_00"); //Cóz, kto tu mamy.... oh, a raczej co.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_01"); //Spójrzcie na to, chlopcy! Smukla lzawka z blyszczaca skórka.... musza byc warte pomyslnosci.
	AI_Output(hero, self, "Info_Mod_Wilderer_Hi_15_02"); //Hej, nie otrzymujcie zadnych pomyslów.
	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_03"); //Glupi? Glupi jest Twoja twarz. Chodz, chlopaki, dzis trafiamy w jackpota.

	AI_StopProcessInfos	(self);
};
