INSTANCE Info_Mod_Pirat_Hi (C_INFO)
{
	npc		= Mod_7585_PIR_PIRAT_NW;
	nr		= 1;
	condition	= Info_Mod_Pirat_Hi_Condition;
	information	= Info_Mod_Pirat_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pirat_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pirat_Hi_Info()
{
	var C_Item ar;
	ar = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(ar, ItAr_Pir_L_Addon) == TRUE)
	|| (Hlp_IsItem(ar, ItAr_Pir_M_Addon) == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_00"); //Hej, towarzysz! Jaki prad przynosi Ci tutaj?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_01"); //Chwyc, chlopiec! Co Pan tutaj robi?
	};

	AI_Output(hero, self, "Info_Mod_Pirat_Hi_15_02"); //Przyjezdzam w imieniu Matteos, aby handlowac z Panstwem.
	AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_03"); //Wydaje mi sie, ze stary smród znowu staje sie zbyt dobry, huh? No cóz, mam dwa pudelka grogu. Nakazal to ode mnie.
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_15_04"); //Ile wynosi oplata za skrzynki?
	AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_05"); //Warto jest to mierzyc 700 wskazników, czy nie myslisz?

	Info_ClearChoices	(Info_Mod_Pirat_Hi);

	Info_AddChoice	(Info_Mod_Pirat_Hi, "Musisz mnie oszukiwac.", Info_Mod_Pirat_Hi_B);
	Info_AddChoice	(Info_Mod_Pirat_Hi, "Nie ma problemu, tutaj zloto.", Info_Mod_Pirat_Hi_A);
};

FUNC VOID Info_Mod_Pirat_Hi_Fertig()
{
	B_GiveInvItems	(self, hero, ItMi_GrogPaket_Matteo, 2);

	B_LogEntry	(TOPIC_MOD_LEHRLING_MATTEO_THREE, "Dostalem dwa pudelka. Teraz wszystko co musze zrobic, to opuscic je w Matteo' s.");

	Info_ClearChoices	(Info_Mod_Pirat_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Pirat_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_B_15_00"); //Zaczeliscie mnie oszukiwac.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_B_07_01"); //Hej, to w porzadku. Wtedy zrobimy to 500.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Trudno o to zapytac!", Info_Mod_Pirat_Hi_D);
		Info_AddChoice	(Info_Mod_Pirat_Hi, "Wszystko jasne.", Info_Mod_Pirat_Hi_C);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_B_07_02"); //Sluchaj, zeglarzy, czyz nie pierdole? 700 pryczy lub nic.

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Nie ma problemu, tutaj zloto.", Info_Mod_Pirat_Hi_A);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_A_15_00"); //Nie ma problemu, tutaj zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 700);

	B_GivePlayerXP	(50);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_D_15_00"); //Trudno o to zapytac!

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_D_07_01"); //Okay, w porzadku, w porzadku, w porzadku. 350. Ale to sie nie udaje.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Nie jest to zaden sposób, aby zawrzec umowe.", Info_Mod_Pirat_Hi_F);
		Info_AddChoice	(Info_Mod_Pirat_Hi, "Nie obchodze sie z nim.", Info_Mod_Pirat_Hi_E);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_D_07_02"); //To dobra cena. Albo placisz, albo odchodzisz.

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Wszystko jasne.", Info_Mod_Pirat_Hi_C);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_C_15_00"); //Wszystko jasne.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	B_GivePlayerXP	(150);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_F_15_00"); //To nie sposób na prowadzenie dzialalnosci gospodarczej.

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_F_07_01"); //200 zlota to moja ostatnia oferta.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Ladunek. Teraz to dobra cena.", Info_Mod_Pirat_Hi_G);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_F_07_02"); //Czy sadzisz, ze jestes Jedziem lub czyms, co sprawia, ze machasz taka reka? Takich sztuczek nie moge wykonac!

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Nie obchodze sie z nim.", Info_Mod_Pirat_Hi_E);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_E_15_00"); //Nie obchodze sie z nim.

	B_GiveInvItems	(hero, self, ItMi_Gold, 350);

	B_GivePlayerXP	(300);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_G_15_00"); //Ladunek. Teraz to dobra cena.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	B_GivePlayerXP	(600);

	Info_Mod_Pirat_Hi_Fertig();
};
