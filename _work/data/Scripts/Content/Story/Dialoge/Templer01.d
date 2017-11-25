INSTANCE Info_Mod_Templer01_Hi (C_INFO)
{
	npc		= Mod_1219_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Templer01_Hi_Condition;
	information	= Info_Mod_Templer01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Templer01_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Namib))
	&& (!Npc_IsInState(Mod_106_TPL_Angar_MT, ZS_Talk))
	&& (Npc_GetDistToWP(self, "WP_MT_SUMPF_TEMPLER_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Templer01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Templer01_Hi_13_00"); //So you're our squad leader?
	AI_Output(hero, self, "Info_Mod_Templer01_Hi_15_01"); //Looks that way.
	AI_Output(self, hero, "Info_Mod_Templer01_Hi_13_02"); //All right, I guess it's about to start. Stay here!

	Mod_Sekte_SH_Kampf = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Templer01_Befehle (C_INFO)
{
	npc		= Mod_1219_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Templer01_Befehle_Condition;
	information	= Info_Mod_Templer01_Befehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Templer01_Befehle_Condition()
{
	if (Mod_Sekte_SH_Kampf == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Templer01_Befehle_Info()
{
	AI_Output(self, hero, "Info_Mod_Templer01_Befehle_13_00"); //We didn't expect that. What should we do now?
	AI_Output(self, hero, "Info_Mod_Templer01_Befehle_13_01"); //We also have to go help Cor Angar when we're done here.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Instead of normal undead, undead swamp sharks have appeared. That's not good. When we're done here, we should stop by Cor Angar's troop at Viran's swamp weed field.");

	Mod_Sekte_SH_Kampf = 4;

	Mod_1218_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = 1;
	self.aivar[AIV_PARTYMEMBER] = 1;

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Hm, that didn't go so well. Let's have a smoke first, then we'll see what happens.", Info_Mod_Templer01_Befehle_Joint);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Damn it! Get out of here, they're swamp sharks!", Info_Mod_Templer01_Befehle_Flucht);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Protect the gurus!", Info_Mod_Templer01_Befehle_Gurus);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Get the beasts!", Info_Mod_Templer01_Befehle_Angriff);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Follow me, everyone!", Info_Mod_Templer01_Befehle_Follow);
};

FUNC VOID Info_Mod_Templer01_Befehle_Joint()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Joint_15_00"); //Hm, that didn't go so well. Let's have a smoke first, then we'll see what happens.

	CreateInvItems	(hero, ItMi_Joint, 1);
	CreateInvItems	(self, ItMi_Joint, 1);
	CreateInvItems	(Mod_1218_TPL_Templer_MT, ItMi_Joint, 1);

	B_UseItem	(hero, ItMi_Joint);
	B_UseItem	(self, ItMi_Joint);
	B_UseItem	(Mod_1218_TPL_Templer_MT, ItMi_Joint);
};

FUNC VOID Info_Mod_Templer01_Befehle_Flucht()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Flucht_15_00"); //Damn it! Get out of here, they're swamp sharks!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FLUCHT");
};

FUNC VOID Info_Mod_Templer01_Befehle_Gurus()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Gurus_15_00"); //Protect the gurus!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FLUCHT");
};

FUNC VOID Info_Mod_Templer01_Befehle_Angriff()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Angriff_15_00"); //Get the beasts!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, Swampshark_Undead, AR_Kill, 0);
	B_Attack	(Mod_1218_TPL_Templer_MT, Swampshark_Undead, AR_Kill, 0);
};

FUNC VOID Info_Mod_Templer01_Befehle_Follow()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Follow_15_00"); //Follow me, everyone!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FOLLOW");
};
