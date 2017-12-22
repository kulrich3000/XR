INSTANCE Info_Mod_Xeres_Hi (C_INFO)
{
	npc		= Xeres_01;
	nr		= 1;
	condition	= Info_Mod_Xeres_Hi_Condition;
	information	= Info_Mod_Xeres_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xeres_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_00"); //(höhnisch) Ahh, da ist ja mein "emancypatorzy".
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_01"); //Zapraszamy do zlozenia holdu nowemu wladcy swiata i nieba?
	AI_Output(hero, self, "Info_Mod_Xeres_Hi_15_02"); //Tak naprawde nie sadzisz, ze mozesz stanac na wysokosci potegi trzech bogów.
	AI_Output(hero, self, "Info_Mod_Xeres_Hi_15_03"); //Jestem tutaj jej zastepca, aby uchronic cie przed ta szalona dzialalnoscia.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_04"); //Niebianscy bogowie.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_05"); //Usiadz tam i spróbuj okreslic losy swiata, podczas gdy rzeczywista bitwa toczy sie i jest rozstrzygana tutaj....
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_06"); //Ale wystarczajaco duzo plotek. Chcesz mnie zatrzymac?
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_07"); //Prózny glupiec, myslisz, ze mozesz po prostu drapac moja zbroje....
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_08"); //Gdzie..... faktycznie udalo sie wygnac mojego sluge i udaremnic moje plany.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_09"); //Udowodniliscie, ze mozecie byc dla mnie zagrozeniem wsród smiertelników.....
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_10"); //Nie bede wiec podejmowal niepotrzebnego ryzyka i szybko umartwial.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_11"); //Przygotuj sie na wieczna ciemnosc i potepienie.

	AI_StopProcessInfos	(self);

	Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_StartState	(hero, ZS_MagicFreeze, 0, "");

	Wld_PlayEffect("DEMENTOR_FX",  hero, hero, 0, 0, 0, FALSE );
	B_Attack	(self, hero, AR_NONE, 1);

	B_StartOtherRoutine	(Schattenlord_877_Urnol, "TOT");
};

INSTANCE Info_Mod_Xeres_Beliar (C_INFO)
{
	npc		= Xeres_01;
	nr		= 1;
	condition	= Info_Mod_Xeres_Beliar_Condition;
	information	= Info_Mod_Xeres_Beliar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_Beliar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_HabSchwert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_Beliar_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_Beliar_14_00"); //Tam znów pan jest. Masz tym razem wieksza szanse?
	AI_Output(hero, self, "Info_Mod_Xeres_Beliar_15_01"); //Zobaczymy to.
	AI_Output(self, hero, "Info_Mod_Xeres_Beliar_14_02"); //Tym razem nikt nie przyjdzie i nie uratuje cie.
	
	AI_StopProcessInfos	(self);

	if (Mod_TeleportZuFestung == 0)
	{
		Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
		Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

		AI_StartState	(hero, ZS_MagicFreeze, 0, "");
	};

	B_Attack	(self, hero, AR_GuildEnemy, 1);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
