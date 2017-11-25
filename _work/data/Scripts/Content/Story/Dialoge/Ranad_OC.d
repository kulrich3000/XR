INSTANCE Info_Mod_Ranad_OC_Hi (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_Hi_Condition;
	information	= Info_Mod_Ranad_OC_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_OC_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_Hi_18_00"); //Badz przyjacielem. Wejscie do duzego pokoju z powrotem do miasta.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_Hi_15_01"); //Jak do tego dojsc?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_Hi_18_02"); //Zostan przyjacielem.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ranad czekal na mnie przy wejsciu do Orc City i poprowadzi mnie do Hosha Pak.");
};

INSTANCE Info_Mod_Ranad_OC_AtHoshPak (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_AtHoshPak_Condition;
	information	= Info_Mod_Ranad_OC_AtHoshPak_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_AtHoshPak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_Hi))
	&& (Npc_GetDistToWP(self, "WP_OCC_35") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_OC_AtHoshPak_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_00"); //Lubie przyjaciela do celu. Czeka tu Ranad.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_AtHoshPak_15_01"); //Gdzie powinienem sie udac?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_02"); //Jego pokój przed nami. Hosh Pak trzyma sie tam rytualu. Czlowiek musi zabic Hosha Paka.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_AtHoshPak_15_03"); //Jestem na drodze.
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_04"); //Dobre.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITING");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ranad nie moze mnie juz zdobyc. Ale droga nie jest az tak dluga.");
};

INSTANCE Info_Mod_Ranad_OC_HoshPakTot (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_HoshPakTot_Condition;
	information	= Info_Mod_Ranad_OC_HoshPakTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_HoshPakTot_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_HoshPak_OC_Hi))
	|| (Npc_IsDead(Mod_10005_Orc_HoshPak_OC)))
	&& (Npc_GetDistToWP(self, "WP_OCC_35") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_OC_HoshPakTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_00"); //Przyjaciele dobrze sobie poradzili. Hosh Pak nie zyje.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_HoshPakTot_15_01"); //Co dzieje sie teraz?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_02"); //Przyjaciel musi szukac pozostalej ostrosci i wypelniac swoje zadanie.
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_03"); //Ranad zatrzyma sie tu i spróbuje zdobyc sojusz miedzy orkami w miescie a nami.

	AI_StopProcessInfos	(self);
};
