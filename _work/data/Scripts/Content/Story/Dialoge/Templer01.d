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
	AI_Output(self, hero, "Info_Mod_Templer01_Hi_13_00"); //Jestes naszym liderem?
	AI_Output(hero, self, "Info_Mod_Templer01_Hi_15_01"); //Tak wyglada.
	AI_Output(self, hero, "Info_Mod_Templer01_Hi_13_02"); //Wszystko w porzadku, chyba juz zaczynam. Zostan tutaj!

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
	AI_Output(self, hero, "Info_Mod_Templer01_Befehle_13_00"); //Nie spodziewalismy sie tego. Co powinnismy teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Templer01_Befehle_13_01"); //Musimy równiez pomóc Cor Angar, kiedy juz tu pracujemy.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Zamiast zwyklego nieumarlego, pojawily sie nieumarle rekiny bagienne. To nie jest dobre. Kiedy sie tu znajdujemy, powinnismy zatrzymac sie przez oddzial Cor Angara na bagnistym polu Virana.");

	Mod_Sekte_SH_Kampf = 4;

	Mod_1218_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = 1;
	self.aivar[AIV_PARTYMEMBER] = 1;

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Hm, to nie poszlo tak dobrze. Zalózmy najpierw dym, a potem zobaczymy, co sie stanie.", Info_Mod_Templer01_Befehle_Joint);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Damn to! Wyjsc stad, to rekiny bagienne!", Info_Mod_Templer01_Befehle_Flucht);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Chron guru!", Info_Mod_Templer01_Befehle_Gurus);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Zdobadz bestie!", Info_Mod_Templer01_Befehle_Angriff);
	Info_AddChoice	(Info_Mod_Templer01_Befehle, "Sledz mnie, wszystkich!", Info_Mod_Templer01_Befehle_Follow);
};

FUNC VOID Info_Mod_Templer01_Befehle_Joint()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Joint_15_00"); //Hm, to nie poszlo tak dobrze. Zalózmy najpierw dym, a potem zobaczymy, co sie stanie.

	CreateInvItems	(hero, ItMi_Joint, 1);
	CreateInvItems	(self, ItMi_Joint, 1);
	CreateInvItems	(Mod_1218_TPL_Templer_MT, ItMi_Joint, 1);

	B_UseItem	(hero, ItMi_Joint);
	B_UseItem	(self, ItMi_Joint);
	B_UseItem	(Mod_1218_TPL_Templer_MT, ItMi_Joint);
};

FUNC VOID Info_Mod_Templer01_Befehle_Flucht()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Flucht_15_00"); //Damn to! Wyjsc stad, to rekiny bagienne!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FLUCHT");
};

FUNC VOID Info_Mod_Templer01_Befehle_Gurus()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Gurus_15_00"); //Chron guru!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FLUCHT");
};

FUNC VOID Info_Mod_Templer01_Befehle_Angriff()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Angriff_15_00"); //Zdobadz bestie!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, Swampshark_Undead, AR_Kill, 0);
	B_Attack	(Mod_1218_TPL_Templer_MT, Swampshark_Undead, AR_Kill, 0);
};

FUNC VOID Info_Mod_Templer01_Befehle_Follow()
{
	AI_Output(hero, self, "Info_Mod_Templer01_Befehle_Follow_15_00"); //Sledz mnie, wszystkich!

	Info_ClearChoices	(Info_Mod_Templer01_Befehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "FOLLOW");
};
