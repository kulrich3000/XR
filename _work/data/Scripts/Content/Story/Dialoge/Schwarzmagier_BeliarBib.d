INSTANCE Info_Mod_Schwarzmagier_BeliarBib_Hi (C_INFO)
{
	npc		= Mod_7756_KDS_SchwarzerMagier_MT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_BeliarBib_Hi_Condition;
	information	= Info_Mod_Schwarzmagier_BeliarBib_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Schwarzmagier_BeliarBib_Hi_Condition()
{
	if (Mod_BeliarBibScene == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schwarzmagier_BeliarBib_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_BeliarBib_Hi_03_00"); //Przynajmniej sprawisz, ze czuje sie troche bezpieczniej. Prosze jednak ruszyc naprzód!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Schwarzmagier_BeliarBib_Erledigt (C_INFO)
{
	npc		= Mod_7756_KDS_SchwarzerMagier_MT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_BeliarBib_Erledigt_Condition;
	information	= Info_Mod_Schwarzmagier_BeliarBib_Erledigt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Schwarzmagier_BeliarBib_Erledigt_Condition()
{
	if (Mod_BeliarBibScene == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schwarzmagier_BeliarBib_Erledigt_Info()
{
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_BeliarBib_Erledigt_03_00"); //Swiete posladki Beliara! To bylo po prostu w porzadku!
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_BeliarBib_Erledigt_03_01"); //Lepiej bym sie tu zatrzymal, zanim Andokai znów sie zlosci.

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Schwarzmagier_BeliarBib_EXIT (C_INFO)
{
	npc		= Mod_7756_KDS_SchwarzerMagier_MT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_BeliarBib_EXIT_Condition;
	information	= Info_Mod_Schwarzmagier_BeliarBib_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Schwarzmagier_BeliarBib_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Schwarzmagier_BeliarBib_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
