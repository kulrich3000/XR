INSTANCE Info_Mod_Danae_Hi (C_INFO)
{
	npc		= GardeInnos_4098_Danae;
	nr		= 1;
	condition	= Info_Mod_Danae_Hi_Condition;
	information	= Info_Mod_Danae_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Danae_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Danae_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_00"); //Prosze spojrzec, kto jest tutaj. Beliars, który zabil juz jednego z nas.
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_01"); //Jestes za pózno! Inni sa juz po drugiej stronie i pobieraja miecz Innosa. Twoja kara jest zapieczetowana.
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_02"); //Kiedy cie zabije, wezmiemy khoryne.
	AI_Output(hero, self, "Info_Mod_Danae_Hi_15_03"); //Zacznijmy mówic i zejdzmy do mosieznych kluczy!
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_04"); //Dopasuj sie do siebie!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
