INSTANCE Info_Mod_Atalante_Hi (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Hi_Condition;
	information	= Info_Mod_Atalante_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Atalante_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Atalante_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_16_00"); //Rozerwam cie!
	AI_Output(hero, self, "Info_Mod_Atalante_Hi_15_01"); //Relaks, nie chce Ci krzywdzic.
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_16_02"); //(grunty grozace)
};

INSTANCE Info_Mod_Atalante_Bosper (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Bosper_Condition;
	information	= Info_Mod_Atalante_Bosper_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze Ci wiadomosc od Bosper.";
};

FUNC INT Info_Mod_Atalante_Bosper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Atalante_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Atalante_Bosper_Info()
{
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_00"); //Przynosze Ci wiadomosc od Bosper.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_01"); //Nie chce o tym slyszec! Wyslij go tutaj, a ja zajme sie nim.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_02"); //On chce ci przebaczyc.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_03"); //Wybaczcie mi! Na kolanach bedzie czolgal sie i blagal o przebaczenie!
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_04"); //Co Bosper zrobil dla Ciebie?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_05"); //Przestan dzwonic do tej nazwy! Przynosil mi tylko cierpienie.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_06"); //Czy nie sadzisz, ze mozesz o tym porozmawiac?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_07"); //Nie, nie musze juz mówic. Wszystko, czego nie lubie, zostanie zabite i zjedzone.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_08"); //I nie lubie ciebie, woski czlowiek. Szukasz rzeczy, które nie sa Twoim biznesem!

	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Nie udalo mi sie rozsadnie porozmawiac z Atalante. Zaatakowala mnie, wiec nie mialem innego wyboru niz ja zabic. Powiedziano mi, ze przyniesli mi smutna wiadomosc do Bosper.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};
