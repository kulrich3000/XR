INSTANCE Info_Mod_Seraphia_Hi (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_Hi_Condition;
	information	= Info_Mod_Seraphia_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcecie opuscic to miejsce? Nastepnie wlóz to do mnie i podazaj za mna.";
};

FUNC INT Info_Mod_Seraphia_Hi_Condition()
{
	if (Mod_SLD_Nebel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Seraphia_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Seraphia_Hi_15_00"); //Chcecie opuscic to miejsce? Nastepnie wlóz to do mnie i podazaj za mna.
	AI_Output(self, hero, "Info_Mod_Seraphia_Hi_16_01"); //Czego od mnie oczekujesz? Odejdz, zostaw mnie sam na sam.
};

INSTANCE Info_Mod_Seraphia_Lagermusik (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_Lagermusik_Condition;
	information	= Info_Mod_Seraphia_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz wspierac nowa grupe muzyczna Gravo?";
};

FUNC INT Info_Mod_Seraphia_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Seraphia_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Seraphia_Lagermusik_15_00"); //Chcesz wspierac nowa grupe muzyczna Gravo?
	AI_Output(self, hero, "Info_Mod_Seraphia_Lagermusik_16_01"); //Dlaczego nie? Thorus pokazuje mi po prostu swoje zimne ramie, tego pieknego faceta, wiec nie mam nic do zrobienia.
	AI_Output(self, hero, "Info_Mod_Seraphia_Lagermusik_16_02"); //Mala muzyka to mile widziana zmiana.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRAVO");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Seraphia_EXIT (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_EXIT_Condition;
	information	= Info_Mod_Seraphia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Seraphia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Seraphia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
