INSTANCE Info_Mod_Khorgor_Hi (C_INFO)
{
	npc		= Mod_7554_OUT_Khorgor_DT;
	nr		= 1;
	condition	= Info_Mod_Khorgor_Hi_Condition;
	information	= Info_Mod_Khorgor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Khorgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Khorgor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_00"); //Krok w góre, wojownik. Oczekiwalem Ciebie.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_01"); //Przeszedles dluga droge. Ale tutaj konczy sie Twoja sciezka.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_02"); //Blagam do róznicowania sie. Moja droga konczy sie, kiedy kladziesz sie przed mna w kurzu.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_03"); //Co spotkalo cie przeciwko mnie?
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_04"); //Sledzisz ludzi drewna i magów wody. Po co?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_05"); //Jestes na drodze! Ingeruja one w moje plany.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_06"); //Jakie projekty?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_07"); //Chce stworzyc chaos i kontrolowac go.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_08"); //Biedny szalenczy. W najlepszym razie masz chaos w glowie.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_09"); //Jak mówisz o mnie, robakach?
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_10"); //Borm, mój tylek. Wkrótce bede straznikiem pierwszego stopnia. I ty?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_11"); //Jestem wasza smiercia. Twoja szybka smierc.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_12"); //Chodz dalej, dranie!

	AI_StopProcessInfos	(hero);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Znalazlem Khorgora, a on skoczyl do mnie. Teraz wreszcie koncze.");
};
