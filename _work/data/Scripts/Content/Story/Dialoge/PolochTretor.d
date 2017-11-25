INSTANCE Info_Mod_Poloch_Hi (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Hi_Condition;
	information	= Info_Mod_Poloch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest problem z Toba?";
};

FUNC INT Info_Mod_Poloch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Poloch_Hi_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_00"); //Czy jest problem z Toba? Nie wygladasz na szczesliwy.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_01"); //Problemem jest jego dziurka. Nie chcial przyznac, ze Tretor silniejszy.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_02"); //Poloch nie smieje sie! Równie oczywiste jest, ze Tretor nie moze konkurowac z Polochiem.
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_03"); //Nastepnie stojmy przeciwko sobie! Maly pojedynek na piesci rozwiaze problemy.
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_04"); //Poloch i Tretor walczyli wczesniej o dwa posilki. Poloch nie wiedzial jak zrobic Tretora, ale nie mógl go pokonac.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_05"); //Jakos go oszukiwac, Tretor nie moze go zlapac. Nastepnie Tretor ucieka z powietrza i musi sie zatrzymac.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_06"); //Poloch równiez potrzebuje przerwy. Ale po wyzdrowieniu powinien pokazac Tretora!

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_07"); //Tretor chce to zobaczyc!
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_08"); //Czy mam racje? Jestes równie silny, ale nie chcesz sie przyznac?
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_09"); //Bez oszustwa Poloch Tretor bylby mocniejszy!

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_10"); //Nie oszukuj Polocha, ale Tretor zawsze ucieka jak tchórzliwy królik.

	TRIA_Finish();

	Log_CreateTopic	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, "Orki Poloch i Tretor znajduja sie posrodku osobistej konfrontacji. Jezeli chce przywrócic spokój w twierdzy górskiej, musze je rozbic.");
};

INSTANCE Info_Mod_Poloch_Egal (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Egal_Condition;
	information	= Info_Mod_Poloch_Egal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ma znaczenie, kto jest silniejszy?";
};

FUNC INT Info_Mod_Poloch_Egal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Egal_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Egal_15_00"); //Czy ma znaczenie, kto jest silniejszy?

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_01"); //Tretor nie mialby znaczenia, ale Poloch chwalilby sie z sila przez caly czas, az Tretor sie denerwuje. Powiedz Polochowi, aby zatrzymal sie, ale nie rób tego.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_02"); //Jeszcze raz klamiesz Tretorowi! Poloch nigdy nie wskazywal, ale Tretor klul, ze poloch cienkie ramiona, a nastepnie poloch pokazac swoja sile.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_03"); //Tretor nie draznil swojego wynalazku Poloch!
	
	AI_TurnAway(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Poloch_Egal_15_04"); //(do samego siebie) Widze, ze dyplomacja nie dotrze mnie tutaj bardzo daleko.
	
	AI_TurnToNpc(hero, self);

	TRIA_Finish();
};

INSTANCE Info_Mod_Poloch_IAmStronger (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_IAmStronger_Condition;
	information	= Info_Mod_Poloch_IAmStronger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czlowiek jest zabawnym czlowiekiem. Oczywiscie jestem najsilniejszy!";
};

FUNC INT Info_Mod_Poloch_IAmStronger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_IAmStronger_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_IAmStronger_15_00"); //Czlowiek jest zabawnym czlowiekiem. Oczywiscie jestem najsilniejszy!
	
	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_01"); //(smiech glosno) Czlowiek równiez zartów.
	AI_Output(hero, self, "Info_Mod_Poloch_IAmStronger_15_02"); //Jestem powazny. W bitwie jestem mocniejszy od Ciebie dwie suki razem.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_03"); //Tretor nie uwaza juz tego za smieszne. Natychmiast zatrzymaj ludzi.
	
	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_04"); //Poloch musi zgodzic sie z Tretorem.

	TRIA_Finish();
};

INSTANCE Info_Mod_Poloch_Noobs (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Noobs_Condition;
	information	= Info_Mod_Poloch_Noobs_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slabe sa tylko bardzo male dzwieki na koncercie (.... )";
};

FUNC INT Info_Mod_Poloch_Noobs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_IAmStronger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Noobs_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Noobs_15_00"); //Wimki to tylko male dzwieki w koncercie wielkich.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Noobs_18_01"); //To wystarczy! Mezczyzna krzyczec do rubla!

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Noobs_18_02"); //Poloch zlamie wszystkie kosci!

	TRIA_Finish();
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 1;
};

INSTANCE Info_Mod_Poloch_Won (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Won_Condition;
	information	= Info_Mod_Poloch_Won_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie przesadzalem, jak panstwo widzieli.";
};

FUNC INT Info_Mod_Poloch_Won_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Noobs))
	&& (Mod_PolochTretor == 3)
	&& (Mod_Poloch_Beat && Mod_Tretor_Beat)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Won_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_00"); //Nie przesadzalem, jak panstwo widzieli.
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_01"); //A teraz zostaw swoje dziecieca zabawke i pomóz przygotowac twierdze górska.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_02"); //Ludzie pokonali Tretora i Polcha. Musisz klaniac sie jego woli.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_03"); //Poloch zdaje sobie z tego sprawe, ze jest glupi na spór z Tretorem. Chce sie godzic.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_04"); //Tretor przyjmuje oferte.
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_05"); //Teraz mozemy teraz przejsc do waznych spraw.

	TRIA_Finish();
	
	B_GivePlayerXP(200);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_SUCCESS);

	CurrentNQ += 1;
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 4;
};

INSTANCE Info_Mod_Poloch_Lost (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Lost_Condition;
	information	= Info_Mod_Poloch_Lost_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Poloch_Lost_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Noobs))
	&& (Mod_PolochTretor == 3)
	&& (Mod_Poloch_Beat == 0 || Mod_Tretor_Beat == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Lost_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_02"); //Duze usta wypelnione przez czlowieka. Tretor dobrze sie spisal.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_01"); //Poloch i Tretor razem niezwyciezeni.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_02"); //Poloch zdaje sobie z tego sprawe, ze jest glupi na spór z Tretorem. Chce sie godzic.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_01"); //Tretor przyjmuje oferte.
	AI_Output(hero, self, "Info_Mod_Poloch_Lost_15_00"); //Teraz mozemy teraz przejsc do waznych spraw.

	TRIA_Finish();
	
	B_GivePlayerXP(100);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_SUCCESS);

	CurrentNQ += 1;
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 4;
};

INSTANCE Info_Mod_Poloch_EXIT (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_EXIT_Condition;
	information	= Info_Mod_Poloch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Poloch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Poloch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
