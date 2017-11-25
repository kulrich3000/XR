INSTANCE Info_Mod_Kakos_Hi (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_Hi_Condition;
	information	= Info_Mod_Kakos_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kakos_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kakos_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_10_00"); //Hej, czlowiek. Musiales pochodzic z tawerny.
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_10_01"); //Mozesz tam wrócic i cos do picia. 30 piwa lub 15 jalowców.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	Info_AddChoice	(Info_Mod_Kakos_Hi, "Dlaczego nie dostajesz wlasnego naparu?", Info_Mod_Kakos_Hi_B);
	Info_AddChoice	(Info_Mod_Kakos_Hi, "Z pewnoscia chetnie pomoze.", Info_Mod_Kakos_Hi_A);
};

FUNC VOID Info_Mod_Kakos_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Hi_B_15_00"); //Dlaczego nie dostajesz wlasnego naparu?
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_B_10_01"); //Wtedy bede musial cie rozbic glowe.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Kakos_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Hi_A_15_00"); //Z pewnoscia chetnie pomoze.
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_A_10_01"); //Potem nie tylko stoje, ale wyjde stad, zanim bede musial sprawic, ze poczujesz sie lepiej.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	Mod_NL_Kakos = 1;

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_NL_KAKOS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_KAKOS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_KAKOS, "Mam dostac 30 piwa lub 15 butelek jalowca na giganta, który jest ubrany w Bengar. Moze powinienem zwiekszyc przyjemnosc napojów z kilkoma grzybami muchów agarycznych......");
};

INSTANCE Info_Mod_Kakos_Alkohol (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_Alkohol_Condition;
	information	= Info_Mod_Kakos_Alkohol_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zaczalem gorzej.";
};

FUNC INT Info_Mod_Kakos_Alkohol_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kakos_Hi))
	&& (Mod_NL_Kakos == 1)
	&& ((Npc_HasItems(hero, ItFo_Beer) >= 30)
	|| (Npc_HasItems(hero, ItFo_Booze) >= 15)
	|| ((Npc_HasItems(hero, ItFo_Beer) >= 29)
	&& (Npc_HasItems(hero, ItFo_GiftBooze) == 1))
	|| ((Npc_HasItems(hero, ItFo_Booze) >= 14)
	&& (Npc_HasItems(hero, ItFo_GiftBooze) == 1)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kakos_Alkohol_Info()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_15_00"); //Zaczalem gorzej.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_01"); //Prosze mi to dac.

	B_ShowGivenThings	("alkohol");

	if (Npc_HasItems(hero, ItFo_GiftBooze) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_15_02"); //Hehehehe, przypuszczam, ze ja zalatwie.

		Npc_RemoveInvItems	(hero, ItFo_GiftBooze, 1);

		self.attribute[ATR_HITPOINTS] -= self.attribute[ATR_HITPOINTS_MAX]*6/10;

		if (Npc_HasItems(hero, ItFo_Beer) >= 29)
		{
			Npc_RemoveInvItems	(hero, ItFo_Beer, 29);
		}
		else
		{
			Npc_RemoveInvItems	(hero, ItFo_Booze, 14);
		};

		B_UseItem	(self, ItFo_GiftBooze);
	}
	else
	{
		if (Npc_HasItems(hero, ItFo_Beer) >= 30)
		{
			Npc_RemoveInvItems	(hero, ItFo_Beer, 30);

			B_UseItem	(self, ItFo_Beer);
		}
		else
		{
			Npc_RemoveInvItems	(hero, ItFo_Booze, 15);

			B_UseItem	(self, ItFo_Booze);
		};
	};

	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_03"); //Ahh, to bylo dobre....
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_04"); //A teraz kilka kawalków miesa.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_05"); //Niezaleznie od tego, czy praze, czy nie, nie obchodzi mnie to, ale mój duzy nos mówi mi, ze masz cos z toba.

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Nie mam nic do dyspozycji.", Info_Mod_Kakos_Alkohol_Ende);
	if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "nadac miazsz zombie", Info_Mod_Kakos_Alkohol_MuttonZombie);
	};
	if (Npc_HasItems(hero, ItFo_MuttonRaw) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Dodac surowe mieso", Info_Mod_Kakos_Alkohol_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Podawanie miesa smazonego", Info_Mod_Kakos_Alkohol_Mutton);
	};
};

FUNC VOID B_CheckKakosFleisch ()
{
	if (Mod_NL_KakosFleisch == 30)
	{
		Mod_NL_Kakos = 2;

		AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_00"); //Ahh, to wystarczy, przygotowales mi bardzo bogaty posilek.
		AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_01"); //Pozwole sobie teraz wyrazic podziekowania dla gigantów.

		AI_StopProcessInfos	(self);

		B_Attack	(self, hero, AR_Kill, 0);
	}
	else
	{
		var int Random;
		Random = Hlp_Random(5);
		
		if (Random == 0)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_02"); //Czy to wszystko, co dostales?
		}
		else if (Random == 1)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_03"); //Daj mi to!
		}
		else if (Random == 2)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_04"); //Daj mi ja!
		}
		else if (Random == 3)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_05"); //Wiecej, wiecej, wiecej!
		}
		else if (Random == 4)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_06"); //Jestem daleki od pelnego.
		};		

		Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Nie mam nic do dyspozycji.", Info_Mod_Kakos_Alkohol_Ende);
		if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
		{
			Info_AddChoice	(Info_Mod_Kakos_Alkohol, "nadac miazsz zombie", Info_Mod_Kakos_Alkohol_MuttonZombie);
		};
	if (Npc_HasItems(hero, ItFo_MuttonRaw) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Dodac surowe mieso", Info_Mod_Kakos_Alkohol_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Podawanie miesa smazonego", Info_Mod_Kakos_Alkohol_Mutton);
	};
	};
};

FUNC VOID Info_Mod_Kakos_Alkohol_Ende()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_Ende_15_00"); //Nie mam nic do dyspozycji.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_Ende_10_01"); //Co? Próbujesz mnie oszukac, czy nie?
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_Ende_10_02"); //Bede brac to, czego nie dalbys mi z twojego zlamanego ciala.

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_MuttonZombie()
{
	Npc_RemoveInvItems	(hero, ItFoMuttonZombie, 1);

	Mod_NL_KakosFleisch += 1;

	self.attribute[ATR_HITPOINTS] -= self.attribute[ATR_HITPOINTS]/10;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_MuttonRaw()
{
	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 1);

	Mod_NL_KakosFleisch += 1;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_Mutton()
{
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 1);

	Mod_NL_KakosFleisch += 1;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

INSTANCE Info_Mod_Kakos_EXIT (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_EXIT_Condition;
	information	= Info_Mod_Kakos_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kakos_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kakos_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
