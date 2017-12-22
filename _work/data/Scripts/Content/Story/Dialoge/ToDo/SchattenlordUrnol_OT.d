INSTANCE Info_Mod_Urnol_OT_Schwert (C_INFO)
{
	npc		= Schattenlord_999_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_OT_Schwert_Condition;
	information	= Info_Mod_Urnol_OT_Schwert_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_OT_Schwert_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_OT_Schwert_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_OT_Schwert_14_00"); //You again! I'm not gonna let you get away with it this time.
	AI_Output(self, hero, "Info_Mod_Urnol_OT_Schwert_14_01"); //Get ready for your end, worm!

	self.flags = 0;

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_GuildEnemy, 0);
};
