INSTANCE Info_Mod_Albert_OC_Bridge (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_Bridge_Condition;
	information	= Info_Mod_Albert_OC_Bridge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OC_Bridge_Condition()
{
	if (Npc_GetDistToWP(self, "WP_OCC_203") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_Bridge_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OC_Bridge_32_00"); //Here we have to turn left....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_OC_Tor (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_Tor_Condition;
	information	= Info_Mod_Albert_OC_Tor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OC_Tor_Condition()
{
	if (Npc_GetDistToWP(self, "WP_OCC_56") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_Tor_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OC_Tor_32_00"); //Here we must also keep to the left.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Tor_32_01"); //At some point we pass a large statue of an orc, from where it is only a few meters to the pit with the bandits.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_OC_Hi (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_Hi_Condition;
	information	= Info_Mod_Albert_OC_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OC_Hi_Condition()
{
	if (Npc_GetDistToWP(self, "WP_OCC_258") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OC_Hi_32_00"); //They're down there. They have a teleport platform.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Hi_32_01"); //I will feed them with some magical energy via the amulet.... they should be up here in no time.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RETTUNG");
};

INSTANCE Info_Mod_Albert_OC_Alarm (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_Alarm_Condition;
	information	= Info_Mod_Albert_OC_Alarm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albert_OC_Alarm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_OC_Hi))
	&& (Npc_GetDistToWP(hero, "WP_OCC_106") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_Alarm_Info()
{
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_00"); //Cursed, thanks to this noise the orcs now know beyond doubt about our presence. The transformations before have cost me a lot of magical power.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_01"); //However, I could still try to get us out of here with the amulet, although it is a great challenge to cast the spell on so many combat companions at the same time.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_02"); //What do you think?

	Mod_AlbertTransforms = 4;
};

INSTANCE Info_Mod_Albert_OC_You (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_You_Condition;
	information	= Info_Mod_Albert_OC_You_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yes, use the amulet.";
};

FUNC INT Info_Mod_Albert_OC_You_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_OC_Alarm))
	&& (Mod_AlbertTransforms == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_You_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_OC_You_15_00"); //Yes, use the amulet.
	AI_Output(self, hero, "Info_Mod_Albert_OC_You_32_01"); //All right, I hope my magic power is good enough.

	Mod_AlbertTransforms = 5;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORMTORABBIT");
};

INSTANCE Info_Mod_Albert_OC_Fight (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_Fight_Condition;
	information	= Info_Mod_Albert_OC_Fight_Info;
	permanent	= 0;
	important	= 0;
	description	= "No, we'll fight our way out.";
};

FUNC INT Info_Mod_Albert_OC_Fight_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_OC_Alarm))
	&& (Mod_AlbertTransforms == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_Fight_Info()
{
	AI_Output(hero, self, "Info_Mod_Albert_OC_Fight_15_00"); //No, we'll fight our way out.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Fight_32_01"); //Big risk, but all right. You've proven your fighting skills so far.

	Mod_AlbertTransforms = 5;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Albert_OC_EXIT (C_INFO)
{
	npc		= Mod_7178_VMG_Albert_OC;
	nr		= 1;
	condition	= Info_Mod_Albert_OC_EXIT_Condition;
	information	= Info_Mod_Albert_OC_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Albert_OC_EXIT_Condition()
{
	if (Mod_AlbertTransforms != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albert_OC_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
