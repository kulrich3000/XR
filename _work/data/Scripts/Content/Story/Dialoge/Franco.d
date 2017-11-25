INSTANCE Info_Mod_Franco_Hi (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Hi_Condition;
	information	= Info_Mod_Franco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Franco_Hi_Condition()
{
	if (Npc_GetDistToWP(hero, "NW_FARM2_TO_TAVERN_02") < Npc_GetDistToWP(hero, "NW_FARM2_TO_TAVERN_03"))
	&& (!Npc_RefuseTalk(self))
	{
		return 1;
	}
	else
	{
		Npc_SetRefuseTalk (self, 30);
	};
};

FUNC VOID Info_Mod_Franco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_00"); //Po prostu uciekaj wesolo do zguby.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_01"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_02"); //Wypróbuj to. Nadal mozna przejsc przez most, ale zanim dotrzesz do Orlanu, masz strzalke na twarzy.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_03"); //Masz przyjaciól po drugiej stronie mostu?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_04"); //Pah, przyjaciele! Glupi idioty z Minentala.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_05"); //Cala kisc z nich, glupi jak kanapka. Prawdziwe dziury.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_06"); //Spacerujac za kilka dni temu i zakladajac obóz tuz obok mnie.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_07"); //Wyjasnilam im, ze jest to Mój Mój Mój lokal, ale nie moga myslec o niczym lepszym niz glosnym smiechem.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_08"); //A teraz jestes tak uprzejmy, ze ostrzegasz kazdego, kto przychodzi obok?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_09"); //Porozmawiaj z wlóczkami, aby powoli odpowietrzaly sie. Jesli nie maja kogos do zaatakowania, wyciagaja sie ponownie.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_10"); //Masz zloto lub cos wartosciowego?
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_11"); //(nieco ironiczny) Nie, przepraszam.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_12"); //Nastepnie wyciagnac.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Franco_Warnung (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Warnung_Condition;
	information	= Info_Mod_Franco_Warnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam Ci ostrzec o milicji.";
};

FUNC INT Info_Mod_Franco_Warnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Hi))
	&& (Mod_Tom_Boese == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Warnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Warnung_15_00"); //Mam Ci ostrzec o milicji.
	AI_Output(self, hero, "Info_Mod_Franco_Warnung_25_01"); //Mówi kto kogo?
	AI_Output(hero, self, "Info_Mod_Franco_Warnung_15_02"); //Tomek mnie poslal.
	AI_Output(self, hero, "Info_Mod_Franco_Warnung_25_03"); //No cóz, wtedy ja w to wierze. Jestem poza nim. Powiedz Tomkowi I jestem z Edgorem.

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "Franco odchodzi teraz. Mam powiedziec Tomkowi, ze jest z Edgorem.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEIFRANCO");

	B_Göttergefallen(3, 1);

	Npc_SetRefuseTalk	(self, 60);
};

INSTANCE Info_Mod_Franco_Scorpio (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Scorpio_Condition;
	information	= Info_Mod_Franco_Scorpio_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nawiasem mówiac, bandyci znikneli.";
};

FUNC INT Info_Mod_Franco_Scorpio_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Hi))
	&& (Mod_Tom_Boese == FALSE)
	&& (Npc_IsDead(Mod_7600_GRD_Scorpio_NW))
	&& (Npc_IsDead(Mod_7601_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7602_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7603_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7604_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7605_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7606_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7607_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7608_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7609_STT_Schatten_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Scorpio_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Scorpio_15_00"); //Nawiasem mówiac, bandyci znikneli.
	AI_Output(self, hero, "Info_Mod_Franco_Scorpio_25_01"); //Co? Masz juz? (smiech) Mówie "glupi jak chleb".

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Franco_Allein (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Allein_Condition;
	information	= Info_Mod_Franco_Allein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestescie naprawde sami?";
};

FUNC INT Info_Mod_Franco_Allein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Allein_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Allein_15_00"); //Czy jestescie naprawde sami?
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_01"); //Jestem tylko harcerzem. Moi ludzie chca, abym z tego miejsca ogladal kupców. I to wlasnie robie.
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_02"); //Ale i tak wolalbym zostac dla mnie.
	AI_Output(hero, self, "Info_Mod_Franco_Allein_15_03"); //Samotny, huh?
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_04"); //Nah. Jedyna rzecza, której nie mozesz zrobic z innymi idiotami, jest niehumanna ". Bede szczesliwy, jesli nic o nich nie zauwazylem.
};

INSTANCE Info_Mod_Franco_AtEdgor (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_AtEdgor_Condition;
	information	= Info_Mod_Franco_AtEdgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan robi w ten sposób?";
};

FUNC INT Info_Mod_Franco_AtEdgor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Warnung))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_AtEdgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_AtEdgor_15_00"); //Co Pan robi w ten sposób?
	AI_Output(self, hero, "Info_Mod_Franco_AtEdgor_25_01"); //Zastanowie sie, jak zabic Edgora. Mezczyzna po prostu denerwuje sie glupimi rozkazami.
};

INSTANCE Info_Mod_Franco_AtEdgor2 (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_AtEdgor2_Condition;
	information	= Info_Mod_Franco_AtEdgor2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dowodzi Edgor?";
};

FUNC INT Info_Mod_Franco_AtEdgor2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_AtEdgor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_AtEdgor2_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_AtEdgor2_15_00"); //Co dowodzi Edgor?
	AI_Output(self, hero, "Info_Mod_Franco_AtEdgor2_25_01"); //"Przed jedzeniem umyc rece!" "Nie irytuj sie tak glosno!" "Zwróc sie do mnie wlasciwie!" So einen Scheiß halt.
};

INSTANCE Info_Mod_Franco_Pickpocket (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Pickpocket_Condition;
	information	= Info_Mod_Franco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Franco_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Franco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

	Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_BACK, Info_Mod_Franco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Franco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Franco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
};

FUNC VOID Info_Mod_Franco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Franco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Franco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Franco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Franco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Franco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Franco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Franco_EXIT (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_EXIT_Condition;
	information	= Info_Mod_Franco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Franco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Franco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
