INSTANCE Info_Mod_Raven_Irdorath (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_Irdorath_Condition;
	information	= Info_Mod_Raven_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze zabrac statek na wyspe w porcie.";
};

FUNC INT Info_Mod_Raven_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_00"); //Musze zabrac statek na wyspe w porcie.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_01"); //A co?
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_02"); //Czy dolaczysz do zalogi?
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_03"); //Dlaczego bym to zrobil?
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_04"); //Na statku Paladynów, a potem wykuc cala wyprawe z mojej duszy!
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_05"); //No 10 trollów moze mnie tam dostac.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_06"); //Jak nawet dostajesz absurdalny pomysl, ze moge przyjsc z wami?
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_07"); //No cóz, uh, wiec Xardas powiedzial, ze....
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_08"); //Damn, to zamówienie od Xardas.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_09"); //Niechetnie do bohatera) Wszystko w prawo, zobacze cie w porcie.
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_10"); //Cóz, to byla szybka zmiana nastroju.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Mimo pewnego oporu udalo mi sie 'wygrac' Raven na wycieczke.");

	B_GivePlayerXP	(100);

	Mod_RavenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Raven_Irdorath3 (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_Irdorath3_Condition;
	information	= Info_Mod_Raven_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze jest nas zbyt wiele.";
};

FUNC INT Info_Mod_Raven_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_RavenDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze jest nas zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath3_03_01"); //Co? No cóz, wyciagnijmy z tego piekla pieklo....
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath3_03_02"); //Nie, ze zmieni zdanie.

	Mod_RavenDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RAT");
};

INSTANCE Info_Mod_Raven_NW_EXIT (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_NW_EXIT_Condition;
	information	= Info_Mod_Raven_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raven_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
