INSTANCE Info_Mod_Alissandro_Hi (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Hi_Condition;
	information	= Info_Mod_Alissandro_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Alissandro_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alissandro_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Alissandro_Hi_23_01"); //Jestem nowym baronem i doradca Thorusa.
};

INSTANCE Info_Mod_Alissandro_Dieb (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Dieb_Condition;
	information	= Info_Mod_Alissandro_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o zlodziejstwie?";
};

FUNC INT Info_Mod_Alissandro_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Thorus_Pruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Dieb_15_00"); //Co wiesz o zlodziejstwie?
	AI_Output(self, hero, "Info_Mod_Alissandro_Dieb_23_01"); //C�z, zazwyczaj jest to miedzy 11:00 a 6:00, kiedy trafia. Cztery strazniczki pelnia w tym czasie dyzury, kt�re powinny byc tego swiadome:
	AI_Output(self, hero, "Info_Mod_Alissandro_Dieb_23_02"); //Bullit, redaktor, Jackal i Bloodwyn. To, ze do tej pory nie zauwazyli niczego, wzbudza u mnie podejrzliwosc. Co najmniej jeden z nich bedzie mial palec w piersiach.
	AI_Output(hero, self, "Info_Mod_Alissandro_Dieb_15_03"); //Dobrze, zapytam.

	B_LogEntry	(TOPIC_MOD_PDV, "Podejrzewa sie o kradziez bulli, kutra, szakala i krwi. Mysle, ze odwiedze ich.");
};

INSTANCE Info_Mod_Alissandro_Unbekannter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Unbekannter_Condition;
	information	= Info_Mod_Alissandro_Unbekannter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Unbekannter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorus_Verloren))
	&& (Mod_GorKarantoSchwach == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Unbekannter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Unbekannter_23_00"); //Zostales poinstruowany przez Thorusa, aby udowodnic oszustwo w nieznane.
	AI_Output(hero, self, "Info_Mod_Alissandro_Unbekannter_15_01"); //Tak, i?
	AI_Output(self, hero, "Info_Mod_Alissandro_Unbekannter_23_02"); //Wiem, w kt�rym domku zasypial nieznajomy. Po wyjsciu z zamku i skreceniu w prawo w kierunku areny, kabina obok stoiska Scatty' ego.
	AI_Output(hero, self, "Info_Mod_Alissandro_Unbekannter_15_03"); //Dzieki.

	B_LogEntry	(TOPIC_MOD_AL_ARENA, "Alissandro powiedzial mi, gdzie znalezc chate nieznanego. To kabina tuz obok stoiska Scatty' ego. Moze powinienem sie rozejrzec.");

	Mod_GorKarantoSchwach = 6;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Alissandro_ThorusTot (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ThorusTot_Condition;
	information	= Info_Mod_Alissandro_ThorusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ThorusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_ThorusTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ThorusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_00"); //Damn, nie moglem nic zrobic.
	AI_Output(hero, self, "Info_Mod_Alissandro_ThorusTot_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_02"); //Ten brudny swinka Bartholo poprowadzil nas do tej jaskini, powiedzial Buddler podni�sl sie.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_03"); //Kiedy bylismy tam, okradal nas horda straznik�w. On zabil Thorusa, Arto i ja walczylismy, az zorientowalismy sie, ze nie mozemy wygrac przeciwko wiekszej liczbie.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_04"); //Wiec Arto rzucil na mnie zaklecie snu, abym wygladal jak umarly. Udalo mu sie uciec. Powiedzial, ze spotkamy sie na starym twierdzy, na g�rze.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_05"); //Zaproponowal zaplanowac stamtad nasz kontratak, poniewaz Bartholo przejal ob�z.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_06"); //Prowadze Cie tam.

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "Alissandro powiedzial mi, ze Bartholo przejal ob�z. Makanius chce zaoferowac Bartholo swoja pomoc, aby m�c lepiej go obserwowac, ale przylacze sie do Alissandro i zaplanuje z nim kontratak.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELLPARTONE");
};

INSTANCE Info_Mod_Alissandro_ZwischenstationA (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ZwischenstationA_Condition;
	information	= Info_Mod_Alissandro_ZwischenstationA_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ZwischenstationA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThorusTot))
	&& (Npc_GetDistToWP(self, "OC_ROUND_18") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ZwischenstationA_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ZwischenstationA_23_00"); //Hm, droga jest tu dobrze strzezona, powinnismy wziac kolejna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELLPARTTWO");
};

INSTANCE Info_Mod_Alissandro_ZwischenstationB (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ZwischenstationB_Condition;
	information	= Info_Mod_Alissandro_ZwischenstationB_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ZwischenstationB_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ZwischenstationA))
	&& (Npc_GetDistToWP(self, "OW_PATH_001") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ZwischenstationB_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ZwischenstationB_23_00"); //Stad droga nie powinna byc juz zbyt trudna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELL");
};

INSTANCE Info_Mod_Alissandro_Kastell (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Kastell_Condition;
	information	= Info_Mod_Alissandro_Kastell_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Kastell_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ZwischenstationB))
	&& (Npc_GetDistToWP(self, "CASTLE_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Kastell_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Kastell_23_00"); //Oto jestesmy. Tutaj przygotujemy sie do kontr-blowa.
	AI_Output(self, hero, "Info_Mod_Alissandro_Kastell_23_01"); //Skonsultuje sie z Arto. Wr�c jutro.

	B_SetTopicStatus	(TOPIC_MOD_AL_SCHMUGGLER, LOG_SUCCESS);

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Mod_AtKastell = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KASTELL");

	B_GivePlayerXP	(1000);

	B_G�ttergefallen(2, 2);
};

INSTANCE Info_Mod_Alissandro_Botschafter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Botschafter_Condition;
	information	= Info_Mod_Alissandro_Botschafter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Botschafter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Kastell))
	&& (Mod_AtKastell < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Botschafter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_00"); //Jest problem i chce, zebyscie go rozwiazali.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_01"); //Widze, co musze zrobic?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_02"); //Wyslalismy ambasador�w do wszystkich oboz�w, aby poprosic o pomoc w walce z Bartholo. Ambasador jednak nie wr�cil.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_03"); //Gdzie go wyslales?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_04"); //Do obozu bandyt�w kolo Troll Gorge.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_05"); //I zastanawiasz sie dlaczego nie wr�cil?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_06"); //Tak, rzeczywiscie. Bandyci nie zabiliby go bez ostrzezenia. Gdyby byli zainteresowani zabiciem go, pr�bowaliby odebrac mu okup za niego.

	Log_CreateTopic	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Alissandro wyslal mnie do obozu bandyt�w, aby wyjasnic ambasadorowi, co sie stalo.");

	Wld_InsertNpc	(Mod_1875_GRD_Botschafter_MT, "OC1");
	B_KillNpc	(Mod_1875_GRD_Botschafter_MT);
};

INSTANCE Info_Mod_Alissandro_BanditenDabei (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BanditenDabei_Condition;
	information	= Info_Mod_Alissandro_BanditenDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do nas dolaczaja bandyci.";
};

FUNC INT Info_Mod_Alissandro_BanditenDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Feuerregen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BanditenDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_BanditenDabei_15_00"); //Do nas dolaczaja bandyci.
	AI_Output(self, hero, "Info_Mod_Alissandro_BanditenDabei_23_01"); //Wszyscy maja racje, wiec mamy jeszcze jednego sojusznika.
	AI_Output(self, hero, "Info_Mod_Alissandro_BanditenDabei_23_02"); //Tutaj wez nagrode.

	CreateInvItems	(self, ItMi_Nugget, 5);
	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	B_GivePlayerXP	(500);

	B_G�ttergefallen(2, 1);

	Mod_AlissandroBanditen_GetDay	= Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Alissandro jest z mnie zadowolony, teraz mamy po naszej stronie kolejny ob�z.");
	B_SetTopicStatus	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Alissandro_EigentlichBereit (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_EigentlichBereit_Condition;
	information	= Info_Mod_Alissandro_EigentlichBereit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_EigentlichBereit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BanditenDabei))
	&& (Wld_GetDay() > Mod_AlissandroBanditen_GetDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_EigentlichBereit_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_00"); //Mamy teraz wystarczajaco duzo ludzi, aby szturmowac stary ob�z, ale nadal istnieje problem.
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_01"); //Nie znamy listy straznik�w. I tu wlasnie lezy Twoje nastepne zadanie.
	AI_Output(hero, self, "Info_Mod_Alissandro_EigentlichBereit_15_02"); //Wszystko w porzadku, co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_03"); //Chce, zebyscie wlamali sie do obozu i kradzili mape z skladem.
	AI_Output(hero, self, "Info_Mod_Alissandro_EigentlichBereit_15_04"); //Jak mam sie dostac do obozu?
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_05"); //Mam jakies zaklecia od mag�w transformacji, wiec dostaniesz sie do obozu.

	CreateInvItems	(self, ItSc_TrfRabbit, 3);
	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 3);

	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_06"); //Nie mozesz zawr�cic, dop�ki nie znajdziesz sie w pokoju Bartholo, miejscu, w kt�rym mieszkal Gomez.

	B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "SMALLTALK");
	B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "SMALLTALK");

	Log_CreateTopic	(TOPIC_MOD_AL_KARTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_KARTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_KARTE, "Alissandro polecil mi ukrasc plan zakladania straznik�w. Ale dal mi jakies role transformacyjne. To powinno mnie poprowadzic do pokoju Bartholo.");
};

INSTANCE Info_Mod_Alissandro_HierPlan (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_HierPlan_Condition;
	information	= Info_Mod_Alissandro_HierPlan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam plan.";
};

FUNC INT Info_Mod_Alissandro_HierPlan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_EigentlichBereit))
	&& (Npc_HasItems(hero, AL_Aufstellung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_HierPlan_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_HierPlan_15_00"); //Mam plan.
	
	B_GiveInvItems	(hero, self, AL_Aufstellung, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_HierPlan_23_01"); //No c�z, wtedy wkr�tce bedziemy mogli zaatakowac ob�z.

	B_GivePlayerXP	(500);

	B_G�ttergefallen(2, 1);

	Mod_AlissandroBanditen_GetDay	= Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_AL_KARTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Alissandro_GotoJackal (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_GotoJackal_Condition;
	information	= Info_Mod_Alissandro_GotoJackal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_GotoJackal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_HierPlan))
	&& (Wld_GetDay() > Mod_AlissandroBanditen_GetDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_GotoJackal_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_00"); //Bald k�nnen wir das Lager angreifen, aber einen Schritt haben wir noch zu machen.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_01"); //Und der w�re?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_02"); //Dem Plan nach sind Bartholos Leute sehr gut geordnet, so dass das Lager kaum verwundbar ist.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_03"); //Und wie soll ich dieses Problem l�sen?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_04"); //Der Mann, der dich gerettet hat, hat den Auftrag, die wichtigen Mitglieder des Lagers zu t�ten. Allerdings hat Bloodwyn ein Auge auf ihn geworfen, Bartholo sch�pft vermutlich Verdacht.
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_05"); //Nun musst du seinen Auftrag �bernehmen.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_06"); //Wer war der Kerl eigentlich?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_07"); //Der Gardist Jackal. Wenn du mehr Fragen hast, unterhalte dich mit ihm.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_08"); //Wie soll ich in das Lager kommen?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_09"); //Ich habe eine Teleportrune von den Heilmagiern bekommen, du kommst damit in das Haus der Magier.

	B_GiveInvItems	(self, hero, ItRu_TeleportOldcamp, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_10"); //Au�erdem bekommst du eine Liste mit den Leuten, die du t�ten sollst. 

	B_GiveInvItems	(self, hero, ItWr_Alissandro_KillList, 1);

	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "TREFFEN");
	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "WACHE");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "KILLMISSION");
	B_StartOtherRoutine	(Mod_1025_KGD_Cathran_MT, "KILLMISSION");

	Log_CreateTopic	(TOPIC_MOD_AL_KillMission, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_KillMission, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Alissandro wyslal mnie do obozu, aby zabic niekt�rych czlonk�w. Dal mi liste.");
};

INSTANCE Info_Mod_Alissandro_WarnungLagerEntdeckt (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WarnungLagerEntdeckt_Condition;
	information	= Info_Mod_Alissandro_WarnungLagerEntdeckt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Straznicy znaja nasza kryj�wke, musimy uciec.";
};

FUNC INT Info_Mod_Alissandro_WarnungLagerEntdeckt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_BloodwynDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WarnungLagerEntdeckt_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_WarnungLagerEntdeckt_15_00"); //Straznicy znaja nasza kryj�wke, musimy uciec.
	AI_Output(self, hero, "Info_Mod_Alissandro_WarnungLagerEntdeckt_23_01"); //Damn to, rozpadamy sie. W drodze do jaskini goblinowej po drodze do obozu bagiennego.
	AI_Output(self, hero, "Info_Mod_Alissandro_WarnungLagerEntdeckt_23_02"); //Nie korzystaj z przepustki, zaznaczylem sciezke na mapie.

	B_GiveInvItems	(self, hero, ItWr_MapToGobboHoehle, 1);

	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Ostrzezono Alissandro. Rozejmiemy sie. Powinienem udac sie do starej goblinskiej jaskini, gdzie ukryto almanach. Na mapie narysowal mnie trase.");

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "WAITATKASTELL");

	// Zufluchten f�llen
	Wld_InsertNpc	(Mod_1917_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1918_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1919_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1920_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1921_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1922_GRD_Gardist_MT, "OC1");
	//Wld_InsertNpc	(Mod_1923_GRD_Gardist_MT, "OC1"); //Kommt sp�ter wegen Gefangennahme
};

INSTANCE Info_Mod_Alissandro_ThanksForRettung (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ThanksForRettung_Condition;
	information	= Info_Mod_Alissandro_ThanksForRettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ThanksForRettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_InOC))
	&& (Mod_AL_AlissandroBefreit == 1)
	&& (Npc_GetDistToWP(self, "GOBBO_MASTERCAVE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ThanksForRettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ThanksForRettung_23_00"); //Ciesze sie, ze mogles mi pom�c. Tutaj zarobiles.
	
	CreateInvItems	(self, Grd_Armor_H, 1);
	B_GiveInvItems	(self, hero, Grd_Armor_H, 1);

	Mod_AL_AlissandroBefreit = 2;

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Jestesmy bezpieczni. Alissandro dalo mi ciezka szafe.");
	B_SetTopicStatus	(TOPIC_MOD_AL_WhereAlissandro, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "ALIWACHEZUFLUCHT");
	B_StartOtherRoutine	(self, "ATZUFLUCHT");

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_GotoZufluchten (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_GotoZufluchten_Condition;
	information	= Info_Mod_Alissandro_GotoZufluchten_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_GotoZufluchten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThanksForRettung))
	&& (Mod_AL_AlissandroBefreit == 2)
	&& (Npc_GetDistToWP(self, "GOBBO_MASTERCAVE9") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_GotoZufluchten_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_00"); //Teraz nadszedl czas na odzyskanie obozu. Chce, zebys poszedl do innych schronisk naszych ludzi i wyslal ich do obozu kultowego, gdzie bedziemy mieli konsultacje.
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_01"); //Jackal bedzie na czas szukal sojusznik�w i przekaze im te wiadomosc.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoZufluchten_15_02"); //Gdzie sa inne schroniska?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_03"); //Otrzymujecie ode mnie te karte.
	
	CreateInvItems	(self, ItWrWorldmapZufluchten, 1);
	B_GiveInvItems	(self, hero, ItWrWorldmapZufluchten, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_04"); //Jesli byles na wszystkich siedmiu schroniskach, udaj sie do obozu sekty na przedpolu swiatyni.

	Mod_AL_AlissandroBefreit = 3;

	Log_CreateTopic	(TOPIC_MOD_AL_EROBERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_EROBERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Alissandro polecil mi odwiedzic schroniska naszych ludzi i wyslac je na dziedziniec swiatynny sekty. Na mapie zaznaczonych jest 7 pozycji.");

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_761_BDT_Dexter_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_1016_KGD_Hymir_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_106_TPL_Angar_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "INPSICAMP");
	B_StartOtherRoutine	(self, "INPSICAMP");

	Wld_InsertNpc	(Mod_1923_GRD_Gardist_MT, "OC1");
};

INSTANCE Info_Mod_Alissandro_Eroberung_01 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_01_Condition;
	information	= Info_Mod_Alissandro_Eroberung_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtPC))
	&& (Npc_GetDistToWP(hero, "PSI_TEMPLE_IN_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_01_23_00"); //Opracowalismy plan, w jaki spos�b prowadzimy ob�z.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alissandro_Eroberung_08 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_08_Condition;
	information	= Info_Mod_Alissandro_Eroberung_08_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Eroberung_07))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_08_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_08_23_00"); //Nie interesuje nas walka na zewnatrz, szukamy Bartholo.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alissandro_Eroberung_10 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_10_Condition;
	information	= Info_Mod_Alissandro_Eroberung_10_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Eroberung_09))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_10_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_00"); //No c�z, prosze pozwolic mi ja wyprostowac:
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_01"); //1. Krok: Wchodzimy do obozu przebranego jak kupcy ziela bagiennego. Jestesmy eskortowani przez dw�ch Templariuszy.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_02"); //2. Krok: Makanius daje naszemu narodowi w obozie znak otwarcia bramy.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_03"); //3. Krok: Do nas dolaczaja bandyci z jednej bramy i straznik�w z drugiej, walcza z straznikami.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_04"); //4. Krok: Nasza misja jest zabic Bartholo, a magowie uzdrawiajacy pomagaja nam to zrobic.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_05"); //Zr�bmy wszystko dobrze, ruszajmy z miejsca. Podazaj za mna, idz za mna.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Wyjasnil mi ten plan, to sie nazywa:");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "1. Krok: Wchodzimy do obozu przebranego jak kupcy ziela bagiennego. Jestesmy eskortowani przez dw�ch Templariuszy.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "2. Krok: Makanius daje naszemu narodowi w obozie znak otwarcia bramy.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "3. Krok: Do nas dolaczaja bandyci z jednej bramy i straznik�w z drugiej, walcza z straznikami.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "4. Krok: Nasza misja jest zabic Bartholo, a magowie uzdrawiajacy pomagaja nam to zrobic.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOTOTEMPELVORPLATZ");
	
	Wld_InsertNpc(Mod_9999_HMG_Heilungsmagier_MT, "PSI_TEMPLE_STAIRS_1");
};

INSTANCE Info_Mod_Alissandro_BeiBartholo (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BeiBartholo_Condition;
	information	= Info_Mod_Alissandro_BeiBartholo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_BeiBartholo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GardistFuerEroberung_Hi_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BeiBartholo_Info()
{
	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, EBR_ARMOR_H2);

	AI_Output(self, hero, "Info_Mod_Alissandro_BeiBartholo_23_00"); //Atakuj!

	AI_StopProcessInfos	(self);
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Jestesmy teraz z Bartholo i Makanius dal sygnal dla bandyt�w i straznik�w kr�lewskich, ale Bartholo uciekl i ustanowil straznika na naszych plecach.");
	
	Mod_1106_EBR_Bartholo_MT.aivar[AIV_ToughGuy] = TRUE;
	B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "FLUCHTINKERKER");

	Wld_SendTrigger	("EVT_KERKERGATE_01");

	B_Attack	(self, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
	B_Attack	(Mod_1924_TPL_GorNaMon_MT, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
	B_Attack	(Mod_1925_TPL_GorNaKar_MT, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Alissandro_WacheTotWoBartholo (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WacheTotWoBartholo_Condition;
	information	= Info_Mod_Alissandro_WacheTotWoBartholo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_WacheTotWoBartholo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BeiBartholo))
	&& (Npc_IsDead(Mod_1156_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WacheTotWoBartholo_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_WacheTotWoBartholo_23_00"); //Teraz musimy znalezc Bartholo. Nie m�gl opuscic obozu.
	
	B_StartOtherRoutine	(self, "GOTOMAKANIUS");
	B_StartOtherRoutine	(Mod_1924_TPL_GorNaMon_MT, "STAYATOC");
	B_StartOtherRoutine	(Mod_1925_TPL_GorNaKar_MT, "STAYATOC");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "WAITFORPLAYER");
};

INSTANCE Info_Mod_Alissandro_BartholoTot (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BartholoTot_Condition;
	information	= Info_Mod_Alissandro_BartholoTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Magazyn jest teraz znowu w naszych rekach.";
};

FUNC INT Info_Mod_Alissandro_BartholoTot_Condition()
{
	if (Npc_IsDead(Mod_1106_EBR_Bartholo_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BartholoTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_BartholoTot_15_00"); //Magazyn jest teraz znowu w naszych rekach.
	AI_Output(self, hero, "Info_Mod_Alissandro_BartholoTot_23_01"); //Wszystko w porzadku, teraz walka sie skonczyla. W takim przypadku zasluguje pan na nagrode.
	AI_Output(self, hero, "Info_Mod_Alissandro_BartholoTot_23_02"); //Przyjdz jutro do sali tronowej.

	AI_StopProcessInfos	(self);
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Znalazlem Bartholo w lochach i zabilem go. Nastepnego dnia przyjde na sale tronowa.");

	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "ALTESLAGER");
	B_StartOtherRoutine	(self, "BOSS");

	Mod_AL_BelohnungFuerEroberung = Wld_GetDay();
};

INSTANCE Info_Mod_Alissandro_BelohnungFuerEroberung (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BelohnungFuerEroberung_Condition;
	information	= Info_Mod_Alissandro_BelohnungFuerEroberung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_BelohnungFuerEroberung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BartholoTot))
	&& (Wld_GetDay() > Mod_AL_BelohnungFuerEroberung)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BelohnungFuerEroberung_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_00"); //No c�z, teraz zostal pan tutaj wezwany do objecia najwyzszej rangi w obozie.
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_01"); //Wezcie te zbroje i powt�rzcie za mna:

	CreateInvItems	(hero, Ebr_Armor_H2, 1);

	B_ShowGivenThings	("Zbroja baronowa ciezka rudy otrzymana");

	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_02"); //Przysiegam w imieniu kazdego czlonka obozu,
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_03"); //Przysiegam w imieniu kazdego czlonka obozu,
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_04"); //... Buddler, Cien lub Baron,....
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_05"); //... Buddler, Cien lub Baron,....
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_06"); //... ze prowadze i chronie ob�z sprawiedliwie.
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_07"); //... ze prowadze i chronie ob�z sprawiedliwie.
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_08"); //Teraz jestes juz baronem Starego Obozu.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Zostalem powolany przez Alissandro do Erzbaronu.");
	B_SetTopicStatus	(TOPIC_MOD_AL_EROBERUNG, LOG_SUCCESS);

	B_GivePlayerXP	(2500);

	B_G�ttergefallen(2, 3);
};

INSTANCE Info_Mod_Alissandro_WasTunAlsErzbaron (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WasTunAlsErzbaron_Condition;
	information	= Info_Mod_Alissandro_WasTunAlsErzbaron_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaka jest moja rola Erzbarona?";
};

FUNC INT Info_Mod_Alissandro_WasTunAlsErzbaron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BelohnungFuerEroberung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WasTunAlsErzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_00"); //Jaka jest moja rola Erzbarona?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_01"); //C�z, zajmiemy sie problemami obozu i postaramy sie zwiekszyc jego wplyw.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_02"); //Jak mam sie przyczynic?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_03"); //Naszym aktualnym celem jest zwiekszenie wplywu na khoryne.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_04"); //A co moge z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_05"); //Wejdz do miasta i porozmawiaj z gubernatorem Lariusem.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_06"); //Paladynamika zajely stanowiska Lariusa.
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_07"); //Damn, tego nie wiedzialem.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_08"); //A co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_09"); //Shadow Whistler jest juz w drodze do miasta. Porozmawiaj z nim.

	Log_CreateTopic	(TOPIC_MOD_AL_AUSBREITUNGK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_AUSBREITUNGK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_AUSBREITUNGK, "Alissandro chce, abysmy rozszerzyli wplyw obozu na miasto Khorini. Mam sie spotkac z Whistlerem poza brama miasta.");

	B_StartOtherRoutine	(Mod_1161_STT_Whistler_MT, "TOT");
	AI_Teleport	(Mod_1161_STT_Whistler_MT, "TOT");

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");
};

INSTANCE Info_Mod_Alissandro_Daemonenritter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Daemonenritter_Condition;
	information	= Info_Mod_Alissandro_Daemonenritter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Daemonenritter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Daemonen))
	&& (Npc_IsDead(Mod_1935_DMR_Daemonenritter_MT))
	&& (Npc_IsDead(Mod_1936_DMR_Daemonenritter_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Daemonenritter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Daemonenritter_23_00"); //Kim sa ci ludzie? Czego od nas chca?
	AI_Output(hero, self, "Info_Mod_Alissandro_Daemonenritter_15_01"); //To dluga historia, ale teraz nie mamy na to czasu. Wkr�tce otrzymamy kopie zapasowa. Powinnismy sie z tego wycofac, zanim wiecej tych mezczyzn dotrze tutaj.
	AI_Output(self, hero, "Info_Mod_Alissandro_Daemonenritter_23_02"); //Wszystko w porzadku, podazaj za mna!

	B_LogEntry	(TOPIC_MOD_AL_MINE, "Jest juz za p�zno, rycerze demon�w sa juz z Alissandro. Bylismy w stanie je pokonac, ale wkr�tce nadejda wzmocnienia. Powinnismy dzialac.");

	B_StartOtherRoutine	(self, "TOCAVALORN");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "TOCAVALORN");
};

INSTANCE Info_Mod_Alissandro_AtCavalorn (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_AtCavalorn_Condition;
	information	= Info_Mod_Alissandro_AtCavalorn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_AtCavalorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Daemonenritter))
	&& (Npc_GetDistToWP(self, "OW_SAWHUT_GREENGOBBO_SPAWN") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_AtCavalorn_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_00"); //Powinnismy tu byc bezpieczni. Teraz powiedz mi, czego oczekuja od nas ludzie w czarnej zbroi.
	AI_Output(hero, self, "Info_Mod_Alissandro_AtCavalorn_15_01"); //Ci mezczyzni pracuja dla Gomeza, kt�ry chce powr�cic do obozu. Poszedlem do Rycerzy Demonicznych, jak poprosilem ich o zlozenie oferty na temat Starej Kopalni.
	AI_Output(hero, self, "Info_Mod_Alissandro_AtCavalorn_15_02"); //Bylo kilka drobnych problem�w w negocjacjach, kt�re doprowadzily do tego, ze Rycerze Demoniczni teraz chca podbic stary ob�z, aby Gomez, Raven i Scar mogli ponownie zajac swoje miejsce.
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_03"); //Teraz powinnismy zaplanowac kolejny krok.
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_04"); //Zastanowie sie nad tym, o tym bedziemy rozmawiac jutro.

	Mod_AL_AtCavalorn = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_MINE, "Ucieklem z Alissandro do starej chaty Cavalorn. Tutaj mozemy opracowac kolejny krok.");
	B_SetTopicStatus	(TOPIC_MOD_AL_MINE, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(self, "ATCAVALORN");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "ATCAVALORN");

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_Flucht (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Flucht_Condition;
	information	= Info_Mod_Alissandro_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co teraz?";
};

FUNC INT Info_Mod_Alissandro_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_AtCavalorn))
	&& (Wld_GetDay() > Mod_AL_AtCavalorn)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_00"); //Co teraz?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_01"); //Nie bedziemy tu dlugo bezpieczni, prawdopodobnie do tej pory beda nas szukac.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_02"); //Potem kopiemy tylek tych, kt�rzy nas szukaja.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_03"); //Jest ich zbyt wiele i nie mozemy wezwac do tworzenia kopii zapasowych. Musimy uciec i prosic o wsparcie, a ja mam plan.... Wiecej
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_04"); //Jak to wyglada?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_05"); //Paladynowie sa wrogami ludu Gomeza i sa silnym gildia, wiec mozemy miec nadzieje na ich wsparcie.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_06"); //Dlaczego Paladynowie maja nam pom�c?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_07"); //Och, mam z nimi zadziwiajaco dobre polaczenie....
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_08"); //Jak to zrobic?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_09"); //Wlasciwie uwazam, ze powinienem panstwu powiedziec.... Zanim osiadlem na Khorinis jako kupiec, bylem Paladinem w Myrtanie i przyjaci�lmi z Hagenem.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_10"); //Wsp�lnie walczylismy z Ishtarem, kiedy byl okupowany przez nas i przyw�dca Asasyna Zuben chcial odzyskac miasto.... Wiecej C�z, od tamtego czasu walczylismy z atakiem, ale dzis zab�jcy odzyskali wladze w Varant.... Wiecej
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_11"); //Ale to nie ma znaczenia. W kazdym razie zaprzyjazniam sie z Lordem Hagenem i mysle, ze on nam pomoze.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_12"); //No c�z, jak mam sie wydostac z Minentala? Ludzie Gomeza strzega wszystkich wyjsc.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_13"); //To prawda i sprawia, ze jest to trudniejsze. Tylko straznicy na gieldzie odkryli to, co sprzedawali w Khorata..... Co sie powt�rzylo? Frustracyjny darczynca?
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_14"); //Przyjemnosc dla dawcy..... Rozumiem. Postaram sie dotrzec do Lorda Hagena.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_15"); //C�z, szczescie!

	Wld_InsertNpc	(DemonKnight_01,	"START");
	Wld_InsertNpc	(DemonKnight_02,	"START");
	Wld_InsertNpc	(Mod_7065_DMR_Daemonenritter_MT,	"START");
	Wld_InsertNpc	(Mod_7066_DMR_Daemonenritter_MT,	"START");

	Log_CreateTopic	(TOPIC_MOD_AL_FLUCHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_FLUCHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Alissandro wyslalo mnie do paladyn�w. Aby opuscic Minental, powinienem go zabrac na miejsce wymiany.");
};

INSTANCE Info_Mod_Alissandro_Hagen (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Hagen_Condition;
	information	= Info_Mod_Alissandro_Hagen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lord Hagen zapewnil nas o pomocy paladyna.";
};

FUNC INT Info_Mod_Alissandro_Hagen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Alissandro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Hagen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Hagen_15_00"); //Lord Hagen zapewnil nas o pomocy paladyna.
	AI_Output(self, hero, "Info_Mod_Alissandro_Hagen_23_01"); //Bardzo dobry. Teraz czekamy, az przyjda jego mezczyzni.

	B_GivePlayerXP	(500);

	Mod_AL_Alissandro_WaitForOric = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Powiedzialem Alissandro o pomocy Lorda Hagena.");
	B_SetTopicStatus	(TOPIC_MOD_AL_FLUCHT, LOG_SUCCESS);

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_OricDa (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_OricDa_Condition;
	information	= Info_Mod_Alissandro_OricDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oczekiwalem troche wiecej paladyn�w.";
};

FUNC INT Info_Mod_Alissandro_OricDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hagen))
	&& (Mod_AL_Alissandro_WaitForOric < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_OricDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_00"); //Oczekiwalem troche wiecej paladyn�w.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_01"); //To jest wlasnie ten oddzial, kt�rym zamierzamy postawic pierwsze kroki. Dla wyzwolenia kopalni przyjdzie do nas i oblezenia wiecej.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_02"); //Z oricowskim zespolem przemierzamy sciezki z doliny Kopalni. Od razu odejdziemy i zdobedziemy Star�wke Kopalni oraz miejsce wymiany.
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_03"); //Co mamy zamiar zrobic z bialoruskimi kapliczkami?
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_04"); //Orki w Orc City sa wrogami wszystkich ludzi. Ci, kt�rzy znajduja sie w twierdzy maja relacje z czarnym magikiem, kt�ry prowadzi demon�w rycerzy i przywolywaczy... Wiecej
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_05"); //... Ale on nie popiera plan�w Gomeza i zamknal oltarze rycerzom, kt�rzy wsp�lpracuja z Gomezem.
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_06"); //To nieco ulatwia sprawy.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_07"); //Dobre. Zr�bmy to teraz. Idzmy za Oricem.

	Log_CreateTopic	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Pierwsza rzecza, kt�ra powinnismy zrobic jest zabranie wejsc do Minentala. Niekt�re paladyny pod Oricem obok nas.");

	B_StartOtherRoutine	(self, "TOVM");
	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7042_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7043_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7044_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7045_RIT_Ritter_MT, "TOVM");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7039_PAL_Oric_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7040_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7041_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7042_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7043_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7044_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7045_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Mod_7051_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7052_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7053_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7054_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7055_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7056_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7057_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7058_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7059_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7060_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7061_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7062_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7063_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7064_DMR_Daemonenritter_MT, "OC1");

	Wld_SendTrigger	("EVT_AM_LOB_GATE_BIG");
};

INSTANCE Info_Mod_Alissandro_Lockvogel (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Lockvogel_Condition;
	information	= Info_Mod_Alissandro_Lockvogel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dzieje sie teraz?";
};

FUNC INT Info_Mod_Alissandro_Lockvogel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_MineUns))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Lockvogel_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Lockvogel_15_00"); //Co dzieje sie teraz?

	if (Npc_HasItems(hero, ITRU_TELEPORTOLDCAMP) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_01"); //Nadal masz teleport w magazynie....
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_02"); //Tutaj masz teleport w obozie.....

		B_GiveInvItems	(self, hero, ITRU_TELEPORTOLDCAMP, 1);

		Wld_RemoveItem	(ITRU_TELEPORTOLDCAMP);
	};

	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_03"); //Ona zabierze Cie do Domu Uzdrawiajacych Mag�w. Sa uwiezione w domu, pod straza.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_04"); //Sa one jednak po naszej stronie. Wiec nie zdradza ciebie, jesli teleportujesz do swojego budynku.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_05"); //Razem z magami uzdrawiajacymi zabijesz straznika domu i wezmiesz ich zbroje.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_06"); //Idz z tym razem do Gomeza i spr�buj zwabic go i jego ludzi z obozu do lasu w poblizu chaty.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_07"); //Tam przygotujemy zasadzke.
	AI_Output(hero, self, "Info_Mod_Alissandro_Lockvogel_15_08"); //Dzwieki niebezpieczne. Skad mam wiedziec, ze inni rycerze demon�w nie zostana ostrzezeni, jesli zabije straznika u uzdrawiajacych mag�w?
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_09"); //Pozostaw je Makaniemu. Wydaje sie, ze ma plan. Teraz idz i wykonaj swoja prace..... szczescie.

	Log_CreateTopic	(TOPIC_MOD_AL_LOCKVOGEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_LOCKVOGEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Alissandro ma plan wyeliminowania Gomeza, wiec musze sie najpierw teleportowac do Domu Nauczycieli Uzdrawiania. Makanius wyjasni reszte.");
};

INSTANCE Info_Mod_Alissandro_Ende (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Ende_Condition;
	information	= Info_Mod_Alissandro_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Raven))
	&& (!Npc_IsInState(Mod_680_DMB_Xardas_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Ende_23_00"); //To oklad. Teraz nic nie stoi na przeszkodzie obozowi. Doprowadzimy ja do pomyslnej przyszlosci!
	
	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Ob�z jest nasz i tak pozostaje!");
	B_SetTopicStatus	(TOPIC_MOD_AL_LOCKVOGEL, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "TOT");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "ALTESLAGER");

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_Erzbaron (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Erzbaron_Condition;
	information	= Info_Mod_Alissandro_Erzbaron_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak zostales Erzbaronem?";
};

FUNC INT Info_Mod_Alissandro_Erzbaron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Erzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Erzbaron_15_00"); //Jak zostales Erzbaronem?
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_01"); //Bylem wczesniej kupcem w Khorinis, kupowalem i sprzedawalem rude. Po upadku zapory przyszedlem wiec do Minentala, zeby zobaczyc jak to bylo z ruda.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_02"); //Moje zapytania poprowadzily mnie do Starego Obozu.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_03"); //Kiedy przez jakis czas rozmawialem z Thorusem, zapytal mnie, czy nie moge mu pom�c w moich umiejetnosciach handlowych.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_04"); //No c�z, poniewaz mialem r�wniez perspektywe na rude, oczywiscie zgodzilem sie.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_05"); //I tak wiec pracujemy tu teraz razem i jestem jego gl�wnym doradca.
};

INSTANCE Info_Mod_Alissandro_Pickpocket (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Pickpocket_Condition;
	information	= Info_Mod_Alissandro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Alissandro_Pickpocket_Condition()
{
	C_Beklauen	(169, ItMi_Gold, 92);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

	Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_BACK, Info_Mod_Alissandro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alissandro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alissandro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alissandro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alissandro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alissandro_EXIT (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_EXIT_Condition;
	information	= Info_Mod_Alissandro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alissandro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alissandro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
