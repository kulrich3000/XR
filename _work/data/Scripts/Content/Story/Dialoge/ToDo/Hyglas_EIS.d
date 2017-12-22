INSTANCE Info_Mod_Hyglas_EIS_Feuersbrunst (C_INFO)
{
	npc		= Mod_7793_KDF_Hyglas_EIS;
	nr		= 1;
	condition	= Info_Mod_Hyglas_EIS_Feuersbrunst_Condition;
	information	= Info_Mod_Hyglas_EIS_Feuersbrunst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_EIS_Feuersbrunst_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hyglas_EIS_Feuersbrunst_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_00"); //Was in Innos Namen?! T�uschen mich meine Sinne? Du hier?! Ich war mir sicher, du seiest durch das Portal entkommen ... 
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_01"); //Meister Hyglas?! Wie ist das m�glich? Wir dachten alle, du seiest tot.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_02"); //Was, aber ... dann wurdest du von den Magiern geschickt, um mich hier rauszuholen?
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_03"); //�hhm, nicht direkt. Andere Ereignisse f�hrten mich �ber die Steinkreise in diese Gegend ...
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_04"); //Die Steinkreise ... ich verstehe, ihr habt gelernt euch dieser Portale zu bedienen.
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_05"); //Ja, gewisserma�en. Aber wie kommt es, dass du jetzt in dieser H�hle weilst?
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_06"); //Nachdem ich alle meine Magie konzentriert hatte, und die H�hle mit einer Feuerbrunst zum Einsturz brachte, fand ich mich pl�tzlich im Freien wieder.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_07"); //Die Decke der H�hle �ber mir war nur wenig massiv gewesen und die Hitze schmolz den Schnee augenblicklich.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_08"); //Ich irrte nur kurz durch die Gegend, als ich schon auf wilde Tiere stie�, und erneut von meiner Magie Gebrauch machen musste, wie noch oft, seit damals ... zum Gl�ck wurde ich vor meiner Mission mit vielen Manatr�nken eingedeckt.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_09"); //Jedenfalls war ich in dieser unwirklichen Gegend recht desorientiert und da ein starker Schneesturm aufzuziehen begann, suchte ich mir die n�chste H�hle, und lie� mich in ihr nieder.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_10"); //Und diese ist seitdem mein Zuhause ...
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_11"); //Verstehe. Und da diese Gegend nicht so dicht besiedelt ist, bist du auch noch keinem Einheimischen begegnet.
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_12"); //Wie dem auch sei, auf alle F�lle bin ich froh, dich hier lebend anzutreffen.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_13"); //Glaub mir, meine Freude dar�ber ist nicht minder gering. Und du sagtest, diese trostlose Ein�de sei besiedelt?
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_14"); //Ja, nicht weit von hier im Nordwesten liegt ein Dorf. Gleich dahinter ist auch der Steinkreis, �ber welchen ich hierher gelangt bin und �ber welchen auch die R�ckreise nach Khorinis m�glich ist.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_15"); //Es freut mich ungemein, dass zu h�ren. Die letzten Tage und Wochen standen ausschlie�lich gebratene Wildtiere auf meinem Speiseplan und der Komfort in der H�hle war auch nicht gerade gro�.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst_14_16"); //Wenn es dir nichts ausmacht, w�rde ich gerne ohne Verzug zum Dorf aufbrechen.
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst_15_17"); //Nat�rlich. Folge mir!
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	B_LogEntry	(TOPIC_MOD_FM_FEUERSBRUNST, "Rzekomy demon okazal sie byc mistrzem Hyglasem, kt�ry utknal w tym miejscu po zawaleniu sie jaskini lodowej. Zabiore go do wioski.");
};

INSTANCE Info_Mod_Hyglas_EIS_Feuersbrunst2 (C_INFO)
{
	npc		= Mod_7793_KDF_Hyglas_EIS;
	nr		= 1;
	condition	= Info_Mod_Hyglas_EIS_Feuersbrunst2_Condition;
	information	= Info_Mod_Hyglas_EIS_Feuersbrunst2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hyglas_EIS_Feuersbrunst2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hyglas_EIS_Feuersbrunst))
	&& (Npc_GetDistToWP(hero, "EIS_76") < 1000)
	&& (Mod_FM_Hyglas_Eisgebiet == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hyglas_EIS_Feuersbrunst2_Info()
{
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst2_14_00"); //Tak to jest wioska....
	AI_Output(hero, self, "Info_Mod_Hyglas_EIS_Feuersbrunst2_15_01"); //Tak. Wies starsza wioska Thys znajduje sie w domu z tylu. Bedzie w stanie Ci pom�c we wszystkim innym.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst2_14_02"); //Nie wiem, jak wam podziekowac.
	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst2_14_03"); //Niewielkim poczatkiem moga byc niekt�re z moich ostatnich eliksir�w do many, kt�rych juz nie potrzebuje..... Prawdopodobnie mniej interesuje Cie mieso wieprzowe.

	CreateInvItems	(hero, ItPo_Mana_03, 5);
	CreateInvItems	(hero, ItPo_Mana_Addon_04, 1);

	B_ShowGivenThings	("5 Mieszaniny i 1 Czysta Mana uzyskana");

	AI_Output(self, hero, "Info_Mod_Hyglas_EIS_Feuersbrunst2_14_04"); //W kazdym razie skontaktuje sie bezposrednio z Thysem i om�wie z nim wszystko inne. Innos jest z toba.

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTHYS");
	B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "ATTHYS");

	Mod_FM_Hyglas_Eisgebiet = 1;
	Mod_FM_Hyglas_Eisgebiet_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Hyglas_EIS_EXIT (C_INFO)
{
	npc		= Mod_7793_KDF_Hyglas_EIS;
	nr		= 1;
	condition	= Info_Mod_Hyglas_EIS_EXIT_Condition;
	information	= Info_Mod_Hyglas_EIS_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hyglas_EIS_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hyglas_EIS_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
