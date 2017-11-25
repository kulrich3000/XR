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
	AI_Output(self, hero, "Info_Mod_Albert_OC_Bridge_32_00"); //Tu musimy skrecic w lewo....

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
	AI_Output(self, hero, "Info_Mod_Albert_OC_Tor_32_00"); //Musimy równiez trzymac sie lewicy.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Tor_32_01"); //W pewnym momencie mijamy duzy pomnik orka, skad jest zaledwie kilka metrów do dolu z bandytami.

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
	AI_Output(self, hero, "Info_Mod_Albert_OC_Hi_32_00"); //Sa tam. Maja one platforme teleportowa.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Hi_32_01"); //Zasile ich magiczna energia przez amulet..... nie powinny sie tu pojawic w krótkim czasie.

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
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_00"); //Przeklety, dzieki temu halasowi orkowie wiedza teraz ponad wszelka watpliwosc o naszej obecnosci. Przeksztalcenia wczesniej kosztowaly mnie wiele magicznej mocy.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_01"); //Móglbym jednak spróbowac wydobyc nas z amuletu, chociaz to wielkie wyzwanie rzucic czar na tak wielu towarzyszy walki jednoczesnie.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Alarm_32_02"); //Co myslisz?

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
	description	= "Tak, uzyj amuletu.";
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
	AI_Output(hero, self, "Info_Mod_Albert_OC_You_15_00"); //Tak, uzyj amuletu.
	AI_Output(self, hero, "Info_Mod_Albert_OC_You_32_01"); //Mam nadzieje, ze moja magiczna moc jest wystarczajaco dobra.

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
	description	= "Nie, bedziemy walczyc o wyjscie.";
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
	AI_Output(hero, self, "Info_Mod_Albert_OC_Fight_15_00"); //Nie, bedziemy walczyc o wyjscie.
	AI_Output(self, hero, "Info_Mod_Albert_OC_Fight_32_01"); //Duze ryzyko, ale wszystko w porzadku. Udowodniles swoje dotychczasowe umiejetnosci walki.

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
