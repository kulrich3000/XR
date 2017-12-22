INSTANCE Info_Mod_Cirio_Hi (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_Hi_Condition;
	information	= Info_Mod_Cirio_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cirio_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_00"); //Hej, nieznajomy, co przywoluje Cie do Relendel?
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_01"); //Dlaczego chcesz wiedziec?
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_02"); //Cóz, mam maly problem z szczurami i wyglada na to, ze mozesz sobie z nim poradzic.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_03"); //Co mam dla ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_04"); //Kilka dni temu, kiedy pojechalem do miasta, zeby kupic jedzenie, w moim domu rozeszla sie gromada szczurów.
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_05"); //Te zwariowane stworzenia zjadaja caly mój dom, a dla mnie jest ich zbyt wiele.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_06"); //Mysle, ze moge obchodzic sie z niektórymi szczurami.
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_07"); //Dziekuje, obcy, pokaze Cie do mojego domu.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_08"); //W porzadku, idzmy!

	Log_CreateTopic	(TOPIC_MOD_RATTENQUEST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RATTENQUEST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Cirio ma maly problem z szczurami w swoim domu. Poprosil mnie o pomoc, a teraz prowadzi mnie tam.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");
};

INSTANCE Info_Mod_Cirio_AtHaus (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_AtHaus_Condition;
	information	= Info_Mod_Cirio_AtHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_AtHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cirio_Hi))
	&& (Npc_GetDistToWP(hero, "REL_SURFACE_085") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cirio_AtHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_AtHaus_09_00"); //Cóz, tutaj jestesmy. Powiedziales, ze myslales, ze poradzisz sobie z nimi samodzielnie. Bede tak dlugo trzymac plecy, ze nie bedzie ich wiecej.
	AI_Output(hero, self, "Info_Mod_Cirio_AtHaus_15_01"); //Wszystko w porzadku, ale nie robie tego za darmo.
	AI_Output(self, hero, "Info_Mod_Cirio_AtHaus_09_02"); //Cóz, nie mam zbyt wiele zlota, ale jesli zabijesz za mnie szczury, dostajesz 200 zlota z mojego skarbca. Oto juz 20 zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	AI_Output(hero, self, "Info_Mod_Cirio_AtHaus_15_03"); //200 zlote zloto brzmi dobrze, problem szczurów to historia.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Cirio zabral mnie do domu, a ja zajme sie szczurami.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAIT");

	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
};

INSTANCE Info_Mod_Cirio_RattenErledigt (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_RattenErledigt_Condition;
	information	= Info_Mod_Cirio_RattenErledigt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_RattenErledigt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cirio_AtHaus))
	&& (Npc_IsDead(Giant_Rat_Cirio))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cirio_RattenErledigt_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_RattenErledigt_09_00"); //Wiec zabiles je wszystkie, znaczace. Szkoda tylko, ze teraz za toba stoja.
	AI_Output(hero, self, "Info_Mod_Cirio_RattenErledigt_15_01"); //Co Pan robi, powiedzial Pan, ze ma Pan mój plecy.
	AI_Output(self, hero, "Info_Mod_Cirio_RattenErledigt_09_02"); //Powiedzialem, ze bede ogladac wasze plecy. Mialem nadzieje, ze moi przyjaciele beda w stanie poradzic sobie z Toba samodzielnie, ale teraz nie ma to znaczenia, bo dla mnie jestes po prostu jedzeniem.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");

	Wld_InsertNpc	(Mod_7406_OUT_Mann_REL, "REL_SURFACE_105");
	B_KillNpc	(Mod_7406_OUT_Mann_REL);

	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_098");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_098");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_099");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_100");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_102");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_100");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_102");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
};

INSTANCE Info_Mod_Cirio_EXIT (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_EXIT_Condition;
	information	= Info_Mod_Cirio_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cirio_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cirio_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
