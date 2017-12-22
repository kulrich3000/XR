INSTANCE Info_Mod_Axon_Hi (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Hi_Condition;
	information	= Info_Mod_Axon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Axon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Axon_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_01"); //Hmm..... Pozwólcie mi pomyslec o tym.....
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_02"); //Czy pytanie to jest skomplikowane?
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_03"); //Jakie pytanie chcialbys najpierw odpowiedziec?
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_04"); //Przyjmijmy jeden po drugim.
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_05"); //Co najpierw mnie zapytales?
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_06"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_07"); //Ktos powinien zrozumiec, ze.....
};

INSTANCE Info_Mod_Axon_Plagenquest (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_Condition;
	information	= Info_Mod_Axon_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes chyba Axonem?";
};

FUNC INT Info_Mod_Axon_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_04))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_04))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_00"); //Jestes chyba Axonem?
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_01"); //Hej, skad to tak szybko wiedziales?
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_02"); //.... pistolet, który nosisz na pasku..... Widzialem ja juz wczesniej.
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_03"); //No cóz, tak, tak, prawo...... No cóz, zaczynamy.....
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_04"); //Cóz, moja intuicja mówi mi, ze musimy isc w nastepujacym kierunku...... (dluga pauza)
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_05"); //Tak!
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_06"); //Psst, musze sie zebrac..... (dluga pauza)
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_07"); //Hmph.....
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_09"); //Shh, powiedzialem, ze.... Cóz, powiedzialbym, ze idziemy do.... po lewej stronie. Podazaj za mna, idz za mna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
};

INSTANCe Info_Mod_Axon_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_02_Condition;
	information	= Info_Mod_Axon_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Axon_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_117") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_00"); //Tak wiec.... teraz.... isc jakas droga...... slupek hmm..... er er.....
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_02_15_01"); //Czy nie moze pójsc troche szybciej?
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_02"); //Panie Jezu Chryste, skupilem sie, powiedzialem.
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_03"); //Ale ok..... wtedy pójdziemy teraz...... th Ignorancki.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BUG");

	Wld_InsertNpc	(Riesenbug, "REL_SURFACE_120");
};

INSTANCe Info_Mod_Axon_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_03_Condition;
	information	= Info_Mod_Axon_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Axon_Plagenquest_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_120") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_03_06_00"); //Mysle, ze go dostalismy. Zacznijmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PAUSE");
};

INSTANCE Info_Mod_Axon_EXIT (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_EXIT_Condition;
	information	= Info_Mod_Axon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Axon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Axon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
