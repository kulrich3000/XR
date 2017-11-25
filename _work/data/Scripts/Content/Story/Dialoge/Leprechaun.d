INSTANCE Info_Mod_Leprechaun_Hi (C_INFO)
{
	npc		= Monster_11073_Leprechaun_AW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_Hi_Condition;
	information	= Info_Mod_Leprechaun_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leprechaun_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_00"); //Prosto do pulapki.
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_02"); //Mistrz zdecydowal, ze teraz nadszedl czas, aby zabrac cie do niego.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_03"); //Jego sila jest teraz wystarczajaco silna, aby przyjac cie na siebie.

	Info_ClearChoices	(Info_Mod_Leprechaun_Hi);

	Info_AddChoice	(Info_Mod_Leprechaun_Hi, "Dlaczego ja?", Info_Mod_Leprechaun_Hi_B);
	Info_AddChoice	(Info_Mod_Leprechaun_Hi, "Kim jest Twój pan?", Info_Mod_Leprechaun_Hi_A);
};

FUNC VOID Info_Mod_Leprechaun_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_C_20_00"); //Przypuszczam, ze oznacza to, ze Leprechaun trzyma niewlasciwa osobe w niewoli.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_C_20_01"); //Ta wiadomosc nie spodoba mu sie jego pan.

	Info_ClearChoices	(Info_Mod_Leprechaun_Hi);

	Log_CreateTopic	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Wlasnie przybylem do Jharkendend, zostalem juz ujety przez tajemnicza postac. Ona twierdzila, ze jest sluga Xeres, ale prawie z wdziecznoscia pozwolila mi isc, kiedy udawalem, ze nie jest ta, której ona szuka.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leprechaun_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_00"); //Dlaczego ja?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_01"); //Zabiles ulubionego zwierzaka mistrza. Przez wiele dni szalal przez sale.

	if (hero.guild == GIL_MIL)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_02"); //Oto ja! Jestem tylko najemnikiem!
	}
	else if (hero.guild == GIL_PAL)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_03"); //Oto ja! Jestem po prostu prostym zolnierzem milicji!
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_04"); //Oto ja! Jestem tylko prosta nowicjuszka!
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_05"); //Oto ja! Jestem po prostu czarnym nowicjuszem!
	}
	else if (hero.guild == GIL_VLK)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_06"); //Oto ja! Jestem tylko prostym nowicjuszem!
	};

	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_07"); //Miejmy nadzieje, ze nie jestes wiec kim oni nazywaja wybranego?
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_08"); //Nigdy wczesniej o tym nie slyszalem.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_09"); //No cóz, co jest rzecza. Mistrz byl pewien, ze jako pierwszy przejdzie przez portal, a nie jeden z niewaznych popleczników.

	Mod_Leprechaun_Choices += 1;

	if (Mod_Leprechaun_Choices == 2)
	{
		Info_Mod_Leprechaun_Hi_C();
	};
};

FUNC VOID Info_Mod_Leprechaun_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_A_15_00"); //Kim jest Twój pan?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_A_20_01"); //Xeres jest Panem i Panem. Rodzina Leprechauna sluzyla mu od ponad stu pokolen.

	Mod_Leprechaun_Choices += 1;

	if (Mod_Leprechaun_Choices == 2)
	{
		Info_Mod_Leprechaun_Hi_C();
	};
};

INSTANCE Info_Mod_Leprechaun_EXIT (C_INFO)
{
	npc		= Monster_11073_Leprechaun_AW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_EXIT_Condition;
	information	= Info_Mod_Leprechaun_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leprechaun_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
