INSTANCE Info_Mod_UndeadOrcShamane_OT_Hi (C_INFO)
{
	npc		= Mod_10039_ORC_UndeadShamane_OT;
	nr		= 1;
	condition	= Info_Mod_UndeadOrcShamane_OT_Hi_Condition;
	information	= Info_Mod_UndeadOrcShamane_OT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrcShamane_OT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UndeadOrcShamane_OT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UndeadOrcShamane_OT_Hi_18_00"); //Jestes tu za p�zno.
	AI_Output(self, hero, "Info_Mod_UndeadOrcShamane_OT_Hi_18_01"); //Miecz, kt�ry laczy moc trzech bog�w, jest rozbity na kawalki.... tak jak zgniece wasze cialo.
	AI_Output(hero, self, "Info_Mod_UndeadOrcShamane_OT_Hi_15_02"); //Speczone cialo, takie jak wy, z pewnoscia sie nie uda.... wiecej niz wtedy, gdy spotkalismy sie po raz pierwszy.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
