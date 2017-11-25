INSTANCE Info_Mod_Orkjaeger_MT_SindSchonDrin (C_INFO)
{
	npc		= Mod_7245_SLD_Orkjaeger_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_MT_SindSchonDrin_Condition;
	information	= Info_Mod_Orkjaeger_MT_SindSchonDrin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orkjaeger_MT_SindSchonDrin_Condition()
{
	if (Mod_NL_UOS == 2)
	&& (Mod_Gilde == 19)
	&& (Npc_GetDistToWP(hero, "OW_PATH_198_ORCGRAVEYARD6") < 5000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orkjaeger_MT_SindSchonDrin_Info()
{
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_00"); //Jestes kilka minut pózno. Chlopcy juz odeszli. Upewnimy sie, ze nikt z orków nie chce uciekac.
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_01"); //Cóz, cala zabawa bez nas.
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_SindSchonDrin_15_02"); //Zabawa?
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_03"); //Och, wszyscy robimy zielone skóry po lewej stronie. Glupi, smierdzacy orki....
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_SindSchonDrin_15_04"); //No cóz, jesli masz na mysli - -.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orkjaeger_MT_GetZombie_Hi (C_INFO)
{
	npc		= Mod_7245_SLD_Orkjaeger_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_MT_GetZombie_Hi_Condition;
	information	= Info_Mod_Orkjaeger_MT_GetZombie_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, chlopaki, upewnij sie, ze weszliscie.";
};

FUNC INT Info_Mod_Orkjaeger_MT_GetZombie_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rod_OGY_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orkjaeger_MT_GetZombie_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_GetZombie_Hi_15_00"); //Hej, chlopaki, dostac sie tam, moglibysmy wykorzystac jakies kopie zapasowe w srodku.

	AI_StopProcessInfos	(self);
};
