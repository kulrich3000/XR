INSTANCE Info_Mod_PaladinHafen_Hi (C_INFO)
{
	npc		= Mod_1257_PAL_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_PaladinHafen_Hi_Condition;
	information	= Info_Mod_PaladinHafen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_PaladinHafen_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Steinmonster))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PaladinHafen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Hi_04_00"); //Hej, Ty? Masz papierosy? Nie mialem nic do czynienia od wieków, a nieustanne czekanie tutaj w porcie powoli sprawia, ze jestem zmeczony!
};

INSTANCE Info_Mod_PaladinHafen_Trent (C_INFO)
{
	npc		= Mod_1257_PAL_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_PaladinHafen_Trent_Condition;
	information	= Info_Mod_PaladinHafen_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oczywiscie, nie ma problemu. Wszystko co musisz zrobic, to powiedziec mi, gdzie moge znalezc paladyn Trent.";
};

FUNC INT Info_Mod_PaladinHafen_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PaladinHafen_Hi))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PaladinHafen_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_00"); //Oczywiscie, nie ma problemu. Wszystko co musisz zrobic, to powiedziec mi, gdzie moge znalezc paladyn Trent.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_01"); //Rzeczy? Nie, przepraszam, nigdy wczesniej nie slyszalem tego imienia.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_02"); //.... Dziwne, znam wlasciwie kazda paladyne nahorynie. Masz na mysli nowa Paladyne Wysp Poludniowych?
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_03"); //Tak, przypuszczam, ze to on.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_04"); //No cóz, wtedy przynajmniej wiem, gdzie on jest.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_05"); //Ok.... i gdzie on jest?
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_06"); //Wskoczyl do morza.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_07"); //Co?
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_08"); //Tak, zapytal nas tam, gdzie sa niezbadane miejsca.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_09"); //Rycerz wskazal wyspe naprzód. Powinien byles to zobaczyc, ja nawet nie widzialem i on wskoczyl do zatoki.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_10"); //Wiec on jest wciaz na wyspie?
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_11"); //Przypuszczam, ze tak.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_12"); //Dziekuje! To wszystko, co chcialem wiedziec.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent wydaje sie byc na malej wyspie u wybrzezy Khorinis. Jesli mam szczescie, znajde go tam.");

	Wld_InsertNpc	(Mod_7629_RIT_Trent_NW, "WAYTOPORT_07");

	Wld_InsertNpc	(Shadowbeast_Trent, "WAYTOPORT_09");
};
