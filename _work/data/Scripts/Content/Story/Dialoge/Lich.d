INSTANCE Info_Mod_Lich_Hi (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Hi_Condition;
	information	= Info_Mod_Lich_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lich_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_00"); //Hahahaha, inny gosc, który moze dolaczyc do moich nieumarlych zwolenników.
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_01"); //Zabijcie mnie! To bardzo wiele.... a jednak tak malo.
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_02"); //Ale juz za kilka sekund nie musisz sie o to martwic.

	Wld_SendTrigger	("LICHDUNGEON");

	AI_StopProcessInfos	(self);

	Mod_7290_PAL_Athos_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7290_PAL_Athos_NW, GIL_STRF);

	Mod_7291_PAL_Aramis_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7291_PAL_Aramis_NW, GIL_STRF);

	Mod_7292_PAL_Porthos_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7292_PAL_Porthos_NW, GIL_STRF);

	Npc_SendPassivePerc	(hero, PERC_ASSESSPLAYER, hero, hero);

	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
};

INSTANCE Info_Mod_Lich_PalasTot (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_PalasTot_Condition;
	information	= Info_Mod_Lich_PalasTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_PalasTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Hi))
	&& (Npc_IsDead(Mod_7290_PAL_Athos_NW))
	&& (Npc_IsDead(Mod_7291_PAL_Aramis_NW))
	&& (Npc_IsDead(Mod_7292_PAL_Porthos_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_PalasTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_PalasTot_10_00"); //Zadziwiasz mnie. I tym bardziej cieszy mnie to, ze moge zadzwonic do wojownika jak ty, mój sluga.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Blutgolem, "LICH");
};

INSTANCE Info_Mod_Lich_Blutgolem (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Blutgolem_Condition;
	information	= Info_Mod_Lich_Blutgolem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Blutgolem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_PalasTot))
	&& (Npc_IsDead(Blutgolem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Blutgolem_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Blutgolem_10_00"); //Zjawiasz sie w moich nerwach. Wtedy sam bede musial to zrobic.

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Lich_Unbesiegbar (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Unbesiegbar_Condition;
	information	= Info_Mod_Lich_Unbesiegbar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Unbesiegbar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Blutgolem))
	&& (Mod_NL_Lich == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Unbesiegbar_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Unbesiegbar_10_00"); //(smiertelnie) Ha, glupiec myslisz, ze mozesz mnie pokonac prosta bronia?
	AI_Output(self, hero, "Info_Mod_Lich_Unbesiegbar_10_01"); //Gralam z Toba wystarczajaco dlugo, teraz jestem powazna.
	AI_Output(hero, self, "Info_Mod_Lich_Unbesiegbar_15_02"); //Damn, jestem bezsilny. Uciekajmy sie tutaj.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Shit, wydaje mi sie, ze nie moge dotknac tego swiatla. Co on przez to znaczyl, zeby go pokonac, potrzebowalbys duzo, a jednak troche...? Powinienem ponownie skonsultowac sie z Xarda......");

	AI_StopProcessInfos	(self);

	self.flags = 2;

	AI_GotoWP	(hero, "NW_TROLLAREA_RITUALFOREST_04_MONSTER");
};

INSTANCE Info_Mod_Lich_Kamm (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Kamm_Condition;
	information	= Info_Mod_Lich_Kamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Kamm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Unbesiegbar))
	&& (Mod_NL_HasKamm == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Kamm_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_00"); //Jak? Jak? Co Pan tutaj robi? To z pewnoscia to ty zniszczyles mój grzebien.
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_01"); //Bedziesz tego zalowal jeszcze bardziej, pewnego dnia wróce do domu....
	AI_Output(hero, self, "Info_Mod_Lich_Kamm_15_02"); //Tak myslisz.
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_03"); //(koniec w stanie spoczynku) Ahhhhhhh.....

	AI_StopProcessInfos	(self);
};
