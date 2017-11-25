INSTANCE Info_Mod_Kobold_Dieb_Hi (C_INFO)
{
	npc		= Kobold_11000_NW;
	nr		= 1;
	condition	= Info_Mod_Kobold_Dieb_Hi_Condition;
	information	= Info_Mod_Kobold_Dieb_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kobold_Dieb_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Kobold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kobold_Dieb_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_00"); //Co! Ty tu, mezczyzna? Nie osmielisz sie mi zaszkodzic.
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_01"); //Nie bedziesz mial nic do przeciwstawienia sie polaczonej mocy nieumarlego maga i smoków - których slugami jestem.
	AI_Output(hero, self, "Info_Mod_Kobold_Dieb_Hi_15_02"); //Nie przeszkadza mi to w odzyskaniu zlota, zlodziejskiego brudu.
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_03"); //Ciezki czlowiek, bedziesz tego zalowal. Pewnego razu powtórze moje zloto.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Wszakze mam zloto na plecach. Jednak goblin opowiadal o polaczonej mocy nieumarlego maga i smoka.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};
