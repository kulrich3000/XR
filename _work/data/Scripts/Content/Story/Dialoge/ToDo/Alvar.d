INSTANCE Info_Mod_Alvar_Hi (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Hi_Condition;
	information	= Info_Mod_Alvar_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Mod_AlvarKristall < 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Hi_01_00"); //Nie teraz, nie. Jestem zajety.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alvar_Unbekannt (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt_Condition;
	information	= Info_Mod_Alvar_Unbekannt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt_Condition()
{
	if (Mod_AlvarKristall == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_00"); //To byla ostatnia minuta. Czy masz racje?
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt_15_01"); //Nie, nie sadze, ze tak nie jest. Tylko troche zawroty glowy. Kim jestes?
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_02"); //Nie chce, aby mialo to znaczenie wlasnie teraz. Dostales krysztal? Pózniej spiesz sie z powrotem do wioski.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_03"); //Siostry Eris nie sa dobre.... Cos jest w niebezpieczenstwie. Czas jest nacisniety.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Mdl_ApplyOverlayMDSTimed	(hero, "HUMANS_DRUNKEN.MDS", 60000);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Mam krysztal. Spotkanie z czarownica prawie mnie kosztowalo. Moje fizyczne samopoczucie zawdzieczam temu obcemu. Wrócmy teraz do wioski. Siostry Eris chca Thysa na skórze.");

	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_7559_OUT_Serra_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "KO");
};

INSTANCE Info_Mod_Alvar_Unbekannt2 (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt2_Condition;
	information	= Info_Mod_Alvar_Unbekannt2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt2_Condition()
{
	if (Mod_AlvarKristall == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt2_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_00"); // ...
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt2_15_01"); //Du schon wieder? Zum zweiten mal hast du mir das Leben gerettet.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_02"); //Nun, und du hast durch deinen Einsatz das ganze Dorf gerettet.
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt2_15_03"); //Wer bist du? Warum versteckst du dich hinter dem Umhang? Zeig endlich dein Gesicht.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_04"); //Nun, jetzt da die Schwestern der Täuschung tot sind ...

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ITAR_Eisgebiet_02);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "THYS");

	B_KillNpc	(Mod_7560_OUT_Malfama_EIS);
	B_KillNpc	(Mod_7559_OUT_Serra_EIS);
};

INSTANCE Info_Mod_Alvar_Unbekannt3 (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt3_Condition;
	information	= Info_Mod_Alvar_Unbekannt3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt3_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_00"); //Nie do konca. Byla to góra lodowa, która ocalilem ze starego cmentarza.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_01"); //Obronilem ja w zbroi, zeby podrobic swoja smierc. Nie bylo innej drogi.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_02"); //Byl to jedyny sposób, w jaki moglem dzialac bez zaklócen i nie dopuscic do tego, by nasza wioska padla ofiara siostry Eris.
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt3_15_03"); //I to równiez w ostatniej sekundzie.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_04"); //Tak, i bez waszej pomocy wszystko i tak zostaloby utracone.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_05"); //Znalazlem ich istote i otrzymalem potwierdzenie w starozytnych pismach i ksiazkach.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_06"); //Niestety, oboje rozwineli juz zbyt duza wladze i wplywy, ale nie moglem znalezc slyszenia wsród mieszkanców wsi.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_07"); //Zamiast tego, Siostry Eris dostrzegly dla nich niebezpieczenstwo, jakie stwarzalem i zdolaly odwrócic wioske przeciwko mnie.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_08"); //Równiez w zyciu nie moglem czuc sie bezpiecznie..... ale caly koszmar sie ostatecznie skonczyl.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alvar_EXIT (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_EXIT_Condition;
	information	= Info_Mod_Alvar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alvar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alvar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
