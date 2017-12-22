INSTANCE Info_Mod_RitterVorStadt_Lich_Hi (C_INFO)
{
	npc		= Mod_1243_RIT_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_RitterVorStadt_Lich_Hi_Condition;
	information	= Info_Mod_RitterVorStadt_Lich_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RitterVorStadt_Lich_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RitterVorStadt_Lich_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_RitterVorStadt_Lich_Hi_12_00"); //You better not be walking around out here.
	AI_Output(self, hero, "Info_Mod_RitterVorStadt_Lich_Hi_12_01"); //A sinister magician carries out his evil deeds, abducts people, desecrates graves and awakens corpses to being undead.
	AI_Output(self, hero, "Info_Mod_RitterVorStadt_Lich_Hi_12_02"); //Three of our brothers went to the tomb of the Paladins near Orlan to place him there.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1243_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1244_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1245_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1246_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1247_RIT_Ritter_NW, "START");
};
