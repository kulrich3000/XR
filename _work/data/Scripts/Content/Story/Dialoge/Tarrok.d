INSTANCE Info_Mod_Tarrok_Hi (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hi_Condition;
	information	= Info_Mod_Tarrok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze widziec, ze jestes zdrowy.";
};

FUNC INT Info_Mod_Tarrok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_00"); //Dobrze widziec, ze jestes zdrowy.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_01"); //Tarrok chce tylko powiedziec to samo.
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_02"); //Ur Shak juz powiedzial mi, co sie stalo.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_03"); //Wtedy Tarrok nie bedzie musial sie powtarzac. Jezyk ludzki zbyt wiele slów dla smaku Tarroka.
};

INSTANCE Info_Mod_Tarrok_AtStonehenge (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_AtStonehenge_Condition;
	information	= Info_Mod_Tarrok_AtStonehenge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos o tym, na czym powinnismy sie skupic?";
};

FUNC INT Info_Mod_Tarrok_AtStonehenge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_AtStonehenge_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_00"); //Czy wiesz cos o tym, na czym powinnismy sie skupic?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_01"); //Ur Shak wyslal Tarrok do Tarroka, aby zapewnil bezpieczenstwo z orków do miasta.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_02"); //Ale Tarrok przyszedl za pózno, by zaoszczedzic.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_03"); //Hosh Pak, zanim nadszedl Tarrok.
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_04"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_05"); //Wróci do Twierdzy Ur Shak w górze.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE,	"Tarrok mial sie skupic na Stonehenge dla Ur Shaka, ale orki w miescie byly szybsze.");

	B_StartOtherRoutine	(self, "ANFELSENFESTUNG");
};

INSTANCE Info_Mod_Tarrok_Fokussuche (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Fokussuche_Condition;
	information	= Info_Mod_Tarrok_Fokussuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje kolejnego Ulu-Mulu.";
};

FUNC INT Info_Mod_Tarrok_Fokussuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ranad_WasHier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_15_00"); //Potrzebuje kolejnego Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_01"); //Przyjaciel potrzebuje znów Ulu-Mulu? Ale przyjaciele wygladaja slabo, zbyt slabo, aby Ulu-Mulu zalatwic sprawy.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_02"); //Ale nie ma innej drogi, trzeba cos szukac. Przyjaciel wciaz wie, czego potrzebuje Tarrok dla Ulu-Mulu?

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "Nie.", Info_Mod_Tarrok_Fokussuche_Nein);
	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "Tak.", Info_Mod_Tarrok_Fokussuche_Ja);
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Nein()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_01"); //Przyjaciele potrzebuja KROTAHK, KHAZ-TAK, DWACHKARR i ORTH-ANTAK.
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_02"); //Co to oznacza?
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_03"); //KROTAHK jego jezyk plomieniowy. Jego jezyk jaszczurki ognia.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_04"); //KHAZ-TAK jest klaksonem biegaczy cieni.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_05"); //DWACHKARR zeby rekina bagiennego.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_06"); //ORTH-ANTAK jego kly z wielkiego trollu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_07"); //Jesli przyjaciele znalezli cos, przywiezie ich do Tarroka.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "Potrzebuje nastepujacych rzeczy dla Ulu-Mulu: jezyk plomieniowy, rogi cienia, zeby z wlosia bagiennego i kly tulowia. Kiedy odbieram rzeczy, zabiore je do Tarroka.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
	Wld_InsertNpc	(Firewaran,	"OW_COAST_SHIPWRECK_WARAN_2");
	Wld_InsertNpc	(Firewaran,	"FP_ROAM_OW_WARAN_SHIPWRECK_2");
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Ja()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Ja_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Ja_18_01"); //No cóz, wtedy chlopaki ida cos dostac i przyniesc do mnie.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "Mam dostac rzeczy do Ulu-Mulu, a nastepnie zabrac do Tarroka. Jesli dobrze pamietam, to byl to plonacy jezyk, rog cienistokrazca, zeby bagienne i tulów.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
};

INSTANCE Info_Mod_Tarrok_HabSachen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_HabSachen_Condition;
	information	= Info_Mod_Tarrok_HabSachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rzeczy.";
};

FUNC INT Info_Mod_Tarrok_HabSachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) > 0)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) > 0)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) > 0)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_HabSachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_HabSachen_15_00"); //Dostalem rzeczy.
	
	Npc_RemoveInvItems	(hero, ItAt_TrollTooth, 1);
	Npc_RemoveInvItems	(hero, ItAt_WaranFiretongue, 1);
	Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, 1);
	Npc_RemoveInvItems	(hero, ItAt_SharkTeeth, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_HabSachen_18_01"); //Bardzo dobry. Tarrok zbuduje Ulu-Mulu. Przyjaciel wraca, kiedy nastepnego dnia.

	Mod_TarrokbautUluMulu	=	Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_ULUMULU, "Tarrok ma wszystko i teraz buduje mi Ulu-Mulu. Chca, abym wrócil jutro.");
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_SUCCESS);
};

INSTANCE Info_Mod_Tarrok_UluMulu_Fertig (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_UluMulu_Fertig_Condition;
	information	= Info_Mod_Tarrok_UluMulu_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tarrok_UluMulu_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_HabSachen))
	&& (Wld_GetDay() > Mod_TarrokbautUluMulu)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_UluMulu_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_00"); //Tarrok jest skonczony. Z Ulu-Mulu mozesz teraz pojechac do Orkstadt.

	CreateInvItems	(self, UluMulu, 1);
	B_GiveInvItems	(self, hero, UluMulu, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_01"); //Przyjaciel musi jednak zwrócic uwage na to, ze zawsze tworzyl Ulu-Mulu w drodze do miasta.

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Mam teraz Ulu-Mulu i moge udac sie do Orku.");

	B_StartOtherRoutine	(Mod_10002_Orc_HoshPak_MT, "TOT");

	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
	B_StartOtherRoutine	(Mod_10006_Orc_Ranad_MT, "TOT");
	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
};

INSTANCE Info_Mod_Tarrok_WasVor (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_WasVor_Condition;
	information	= Info_Mod_Tarrok_WasVor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co zamierzasz tutaj zrobic z malym oddzialem?";
};

FUNC INT Info_Mod_Tarrok_WasVor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_WasVor_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_WasVor_15_00"); //Co zamierzasz tutaj zrobic z malym oddzialem?
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_01"); //Pierwszym celem jest przekonanie pozostalych orków, ze Krushak zlem. Nielatwo, bo orki nie chca rozmawiac z outcastami.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_02"); //Nastepnie musimy przygotowac twierdze. W starym obozie Orki nie moga pozostac, zbyt wiele zlych wspomnien o Krushaku.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_03"); //Dlatego nowe zycie musi zaczac sie tutaj i ponownie modlic do starych bogów.
};

INSTANCE Info_Mod_Tarrok_Hilfe (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hilfe_Condition;
	information	= Info_Mod_Tarrok_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebujesz pomocy?";
};

FUNC INT Info_Mod_Tarrok_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hilfe_15_00"); //Potrzebujesz pomocy?
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_01"); //Niestety, ludzie nie moga pomóc przekonac orków w obozach. Orkowie nie sluchaliby go.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_02"); //Ale tutaj w Twierdzy dosc klopotów. Tarrok slyszy klótnie miedzy przybyszami. Byc moze ludzie potrafia posredniczyc.
};

INSTANCE Info_Mod_Tarrok_Lehrer (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lehrer_Condition;
	information	= Info_Mod_Tarrok_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie nauczyc, jak to osiagnac?";
};

FUNC INT Info_Mod_Tarrok_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lehrer_15_00"); //Czy mozesz mnie nauczyc, jak to osiagnac?
	AI_Output(self, hero, "Info_Mod_Tarrok_Lehrer_18_01"); //Tak, przyjaciele moga pokazac, jak wziac rzeczy z martwych zwierzat.
};

INSTANCE Info_Mod_Tarrok_Lernen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lernen_Condition;
	information	= Info_Mod_Tarrok_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Tarrok_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Lehrer))
	&& ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SHADOWHORN] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FIRETONGUE] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SWAMPSHARKTEETH] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TROLLTEETH] == FALSE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lernen_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Tarrok_Lernen_18_01"); //Czego przyjaciele chca sie nauczyc?

	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);

	Info_AddChoice	(Info_Mod_Tarrok_Lernen, DIALOG_BACK, Info_Mod_Tarrok_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_TrollTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Trollhauer", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TROLLTEETH)), Info_Mod_Tarrok_Lernen_TrollTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_SwampSharkTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("bagienne zeby rekina", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SWAMPSHARKTEETH)), Info_Mod_Tarrok_Lernen_SwampSharkTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ShadowHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Róg toru cieniowego", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ShadowHorn)), Info_Mod_Tarrok_Lernen_ShadowHorn);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_FireTongue] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("jezyk ognia", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)), Info_Mod_Tarrok_Lernen_FireTongue);
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);
};

FUNC VOID Info_Mod_Tarrok_Lernen_TrollTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_TROLLTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_SwampSharkTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SWAMPSHARKTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_ShadowHorn()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SHADOWHORN);
};

FUNC VOID Info_Mod_Tarrok_Lernen_FireTongue()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_FIRETONGUE);
};

INSTANCE Info_Mod_Tarrok_EXIT (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_EXIT_Condition;
	information	= Info_Mod_Tarrok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tarrok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
