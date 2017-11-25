INSTANCE Info_Mod_HeroBot_Gelaber (C_INFO)
{
	npc		= HeroBot_NW;
	nr		= 1;
	condition	= Info_Mod_HeroBot_Gelaber_Condition;
	information	= Info_Mod_HeroBot_Gelaber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes robotem walki Kolama!";
};

FUNC INT Info_Mod_HeroBot_Gelaber_Condition()
{
	if (Mod_PAL_HeroBot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HeroBot_Gelaber_Info()
{
	AI_Output(hero, self, "Info_Mod_HeroBot_Gelaber_15_00"); //Jestes robotem bitewnym Kolama!
	AI_Output(self, hero, "Info_Mod_HeroBot_Gelaber_33_01"); //"Zagrozenie przemoca wobec jednostki lub ogólu spoleczenstwa jako takie jest przestepstwem karnym."
	AI_Output(hero, self, "Info_Mod_HeroBot_Gelaber_15_02"); //Koniec tego raz na zawsze.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Szalony guru zostal zabity przez robota Kolama. Teraz bede go raz na zawsze miazdzyc.");
};

INSTANCE Info_Mod_HeroBot_Weg (C_INFO)
{
	npc		= HeroBot_NW;
	nr		= 1;
	condition	= Info_Mod_HeroBot_Weg_Condition;
	information	= Info_Mod_HeroBot_Weg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HeroBot_Weg_Condition()
{
	if (Mod_PAL_HeroBot == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HeroBot_Weg_Info()
{
	AI_Output(self, hero, "Info_Mod_HeroBot_Weg_33_00"); //Misja zostala zrealizowana. Rozpoczeto wyszukiwanie.
	
	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Robot zniknal. Nie moglem jej nawet dotknac.");

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
