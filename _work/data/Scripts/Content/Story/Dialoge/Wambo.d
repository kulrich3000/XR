INSTANCE Info_Mod_Wambo_Hi (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Hi_Condition;
	information	= Info_Mod_Wambo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes instruktorem tutaj, prawda?";
};

FUNC INT Info_Mod_Wambo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wambo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Hi_15_00"); //Jestes instruktorem tutaj, prawda?
	AI_Output(self, hero, "Info_Mod_Wambo_Hi_03_01"); //Prawo. Rekrutowani ucza sie u mnie podstaw jed- i dwurecznosci.

	if (Mod_Schwierigkeit != 4)
	{
		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Wambo moze nauczyc mnie obslugiwac ludzi jedna i dwie rece.");
	};
};

INSTANCE Info_Mod_Wambo_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_AndreVermaechtnis_Condition;
	information	= Info_Mod_Wambo_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_AndreVermaechtnis))
	&& (Mod_PAL_Diebesgilde == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_AndreVermaechtnis_03_00"); //Huh, tak kryminalista wciaz dostaje sprawiedliwy wyrok.
	AI_Output(self, hero, "Info_Mod_Wambo_AndreVermaechtnis_03_01"); //Chlopcy wreszcie zobaczyli, po co ta stal jest.

	B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "Moge powiedziec Hagenowi, ze zlodzieje sa skonczeni.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_583_NONE_Hanna_NW, "KNAST");

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "START");
	B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "START");
};

INSTANCE Info_Mod_Wambo_Asylanten (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Asylanten_Condition;
	information	= Info_Mod_Wambo_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze wr�cic do Minentala.";
};

FUNC INT Info_Mod_Wambo_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Lehrer))
	&& (Mod_Wambo_Freund == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Asylanten_15_00"); //Musze wr�cic do Minentala.
	AI_Output(self, hero, "Info_Mod_Wambo_Asylanten_03_01"); //Jesli widzisz Angar, daj mu to. To wszystko, co moglem znalezc po jego zonie.

	B_GiveInvItems	(self, hero, ItMi_AngarHalskette, 1);

	AI_Output(hero, self, "Info_Mod_Wambo_Asylanten_15_02"); //Wlasciwie, bede.
	AI_Output(self, hero, "Info_Mod_Wambo_Asylanten_03_03"); //Do zobaczenia dookola.

	Log_CreateTopic	(TOPIC_MOD_WAMBO_ANGAR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WAMBO_ANGAR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_WAMBO_ANGAR, "Wambo dal mi naszyjnik dla Angara, aby przypomniec mu o swojej zonie.");
};

INSTANCE Info_Mod_Wambo_Angar (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Angar_Condition;
	information	= Info_Mod_Wambo_Angar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Angar zdobyl naszyjnik.";
};

FUNC INT Info_Mod_Wambo_Angar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Wambo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Angar_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Angar_15_00"); //Angar zdobyl naszyjnik.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_01"); //A co? Co powiedzial?
	AI_Output(hero, self, "Info_Mod_Wambo_Angar_15_02"); //Byl przygnebiony, jak sie spodziewano. Nie wydaje sie jednak, by pociagal Cie do odpowiedzialnosci.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_03"); //Musze go gdzies spotkac.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_04"); //Mam nadzieje, ze kiedys wr�ci tu z powrotem.
};

INSTANCE Info_Mod_Wambo_TurnierSieg (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_TurnierSieg_Condition;
	information	= Info_Mod_Wambo_TurnierSieg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_TurnierSieg_Condition()
{
	if (Mod_MilizTurnier == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_TurnierSieg_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierSieg_03_00"); //Jestes twardym psem, jesli sam uslyszysz Gidana.
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierSieg_03_01"); //Potrzebujemy tutaj kogos takiego jak Ty.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_TurnierNiederlage (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_TurnierNiederlage_Condition;
	information	= Info_Mod_Wambo_TurnierNiederlage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_TurnierNiederlage_Condition()
{
	if (Mod_MilizTurnier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_TurnierNiederlage_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierNiederlage_03_00"); //Twoja technika walki moze wymagac drobnego dostrajania.
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierNiederlage_03_01"); //Z pewnoscia moge panstwu pokazac cos innego.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Paladin (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Paladin_Condition;
	information	= Info_Mod_Wambo_Paladin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_Paladin_Condition()
{
	if (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Paladin_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_Paladin_03_00"); //C�z, teraz jestes paladyna.
	AI_Output(self, hero, "Info_Mod_Wambo_Paladin_03_01"); //Nie pamietam, zeby ktokolwiek wzrastal szybciej niz ty.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Hauptmann (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Hauptmann_Condition;
	information	= Info_Mod_Wambo_Hauptmann_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_Hauptmann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Hauptmann_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_Hauptmann_03_00"); //Teraz musze przyzwyczaic sie do tego, by Cie uslyszec.
	AI_Output(hero, self, "Info_Mod_Wambo_Hauptmann_15_01"); //60 popychaczy dla tej glupiej linii pickup!
	AI_Output(self, hero, "Info_Mod_Wambo_Hauptmann_03_02"); //Tak, panie posle!
	AI_Output(hero, self, "Info_Mod_Wambo_Hauptmann_15_03"); //To juz dziala.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Lehrer (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Lehrer_Condition;
	information	= Info_Mod_Wambo_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Wambo_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_03_01"); //Jestes z Minentalu, czyz nie jestes?

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);

	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "Nie. Jestem tu po prostu nowa.", Info_Mod_Wambo_Lehrer_B);
	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "Tak.", Info_Mod_Wambo_Lehrer_A);
};

FUNC VOID Info_Mod_Wambo_Lehrer_B()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_B_15_00"); //Nie. Jestem tu po prostu nowa.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_B_03_01"); //Widze. Jesli nie masz milicji i powinienem cie nauczyc, kosztuje to 50 sztuk zlota.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

FUNC VOID Info_Mod_Wambo_Lehrer_A()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_A_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_01"); //Wtedy naucze cie, jesli zechcesz.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_A_15_02"); //Jak moge zdobyc ten zaszczyt?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_03"); //To dluga historia.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_04"); //Czuje sie zobowiazany do udzielenia zatrzymanym jak najlepszej pomocy.

	Mod_Wambo_Freund = 1;

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);

	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "Wszystkie sluszne, wszystkie sluszne. Ale lepiej pokazcie mi jak walczyc.", Info_Mod_Wambo_Lehrer_D);
	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "Jaka jest ta historia?", Info_Mod_Wambo_Lehrer_C);
};

FUNC VOID Info_Mod_Wambo_Lehrer_D()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_D_15_00"); //Wszystkie sluszne, wszystkie sluszne. Ale lepiej pokazcie mi jak walczyc.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

FUNC VOID Info_Mod_Wambo_Lehrer_C()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_00"); //Jaka jest ta historia?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_01"); //Raz mialem dobrego przyjaciela.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_02"); //Byl bojownikiem, nie tylko na polu cwiczen, ale i w sercu.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_03"); //Od dawna jednak mial kontakt z niedowierzajaca sekta, kt�rej tresc wiary miala cos wsp�lnego z piratami.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_04"); //Po utworzeniu bariery nagle uznano ja za zbrodnie i skazano go na niewole.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_05"); //Czy Tw�j przyjaciel mial nazwisko?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_06"); //Angar byl jego imieniem.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_07"); //Obiecalem mu, ze bede opiekowal sie zona przez czas, kiedy byl wieziony.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_08"); //Jesli dotrzymam obietnicy, moze ona jeszcze zyje.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_09"); //Oh.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_10"); //Znam okolicznosci, w jakich niekt�rzy z zatrzymanych stali sie przestepcami.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_11"); //Chociaz nie zrobilem nic aktywnie w tej sprawie, chce wniesc sw�j wklad w przywr�cenie spolecznosci lokalnej.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_12"); //Jesli kiedykolwiek powinienes wr�cic do Minental, bylbym wdzieczny, gdybys o tym wczesniej poinformowal.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_13"); //Bez problemu.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_14"); //Nastepnie wr�cmy teraz do Twojej woli.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

INSTANCE Info_Mod_Wambo_Lernen (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Lernen_Condition;
	information	= Info_Mod_Wambo_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie jak obslugiwac ludzi jedna i dwie rece.";
};

FUNC INT Info_Mod_Wambo_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lernen_15_00"); //Naucz mnie jak obslugiwac ludzi jedna i dwie rece.

	if (Mod_Wambo_Freund == 0)
	{
		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);

			Mod_Wambo_Freund = 2;

			Info_ClearChoices	(Info_Mod_Wambo_Lernen);

			Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Wambo_Lernen_03_00"); //Bez zlota nie bede Cie trenowal.
		};
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Wambo_Lernen);
};

FUNC VOID Info_Mod_Wambo_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Wambo_Pickpocket (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Pickpocket_Condition;
	information	= Info_Mod_Wambo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Wambo_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

	Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_BACK, Info_Mod_Wambo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wambo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wambo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wambo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wambo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wambo_EXIT (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_EXIT_Condition;
	information	= Info_Mod_Wambo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wambo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wambo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
