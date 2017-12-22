INSTANCE Info_Mod_OrcSchamane_KG_Hi (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_Hi_Condition;
	information	= Info_Mod_OrcSchamane_KG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_OrcSchamane_KG_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_00"); //Ah.... Czlowiek, udalo ci sie dotrzec do miejsc obrzedowych, ale nie ma juz dla ciebie nic pozytecznego.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_01"); //Juz jestem niesmiertelny, wykonany przez czarne serce wypelnione czerwona krwia ludzka.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_02"); //No cóz, pokaze wam, co oznacza sila.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_OrcSchamane_KG_NichtTot (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_NichtTot_Condition;
	information	= Info_Mod_OrcSchamane_KG_NichtTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_NichtTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_Hi))
	&& (Mod_KG_OrkZauber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_OrcSchamane_KG_NichtTot_Info()
{
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_NichtTot_18_01"); //Co.....? Czlowiek wciaz zyje, dziwnie jego. Mocny czlowiek, szamani, szamani trzymaja sie czci i wypuszczaja czlowieka na wolnosc.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(hero, "CASTLE_30");
};

INSTANCE Info_Mod_OrcSchamane_KG_KillYou (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_KillYou_Condition;
	information	= Info_Mod_OrcSchamane_KG_KillYou_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_KillYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trent2))
	&& (Mod_KG_SchwarzerRing == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_OrcSchamane_KG_KillYou_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_OrcSchamane_KG_KillYou_15_00"); //Minela Twoja ostatnia godzina.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_KillYou_18_01"); //Co moja ludzka istota z godzina powinna pokonac cos takiego?
	AI_Output(hero, self, "Info_Mod_OrcSchamane_KG_KillYou_15_02"); //Och, zapomnij, umrzyj!
	AI_Output(self, hero, "DEFAULT"); //

	self.guild = GIL_ORC;
	Npc_SetTrueGuild (self, GIL_ORC);

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_OrcSchamane_KG_EXIT (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_EXIT_Condition;
	information	= Info_Mod_OrcSchamane_KG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_OrcSchamane_KG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_OrcSchamane_KG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
