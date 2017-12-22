INSTANCE Info_Mod_Cedric_Hi (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Hi_Condition;
	information	= Info_Mod_Cedric_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Cedric_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Cedric_Hi_12_01"); //Jestem Cedrykiem, nauczycielem milicji, rycerzy i paladynów walczacych.
};

INSTANCE Info_Mod_Cedric_Irdorath (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath_Condition;
	information	= Info_Mod_Cedric_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, jak ostatni okret Paladina byl ostatnim dowódca.";
};

FUNC INT Info_Mod_Cedric_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_00"); //Ostatnio uslyszalem, ze okret Paladina byl pod panskim dowództwem...
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_01"); //Tak, to prawda. Dlaczego pytasz....? ale na chwile jestes czlowiekiem, który zostal zarzadzony przez magów, aby opuscic statek....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_02"); //Co moge dla Ciebie zrobic?
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_03"); //Cóz, mozna by jeszcze raz przejac funkcje kapitana na Esmeraldzie i eskortowac mnie na wyspe.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_04"); //Tak, wiec to jest twoja prosba.... Tak, jako bojownik o porzadek publiczny, nie moge nie zastosowac sie do tej prosby.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_05"); //Naprawde?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_06"); //Oczywiscie oczywiscie. Najwyzszym obowiazkiem slugi Paladina i Innosa jest uczynic wszystko, co w jego mocy, aby wyeliminowac ciemnosc i nieszczescie.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_07"); //Niektórzy z moich kolegów bedzie nam towarzyszyc i zapewnic sukces naszej misji.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_08"); //Wielki.....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_09"); //Jest tylko jedna rzecz, która mam dla Ciebie, zanim wyjdziemy.
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath_15_10"); //Tak?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_11"); //Prosimy poprosic co najmniej jednego doswiadczonego maga strazaka, aby towarzyszyl nam w tej podrózy.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_12"); //Nie chce przegapic blogoslawienstwa maga Innosa na naszej wycieczce.....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath_12_13"); //Ide do portu i tam bede czekac.

	Mod_Kapitan = 1;
	Mod_CedricDabei = 1;
	Mod_KerolothDabei = 1;
	Mod_MarcosDabei = 1;
	Mod_GeroldDabei = 1;

	Mod_CrewCount += 4;

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Cedryk plonie z zapalem do misji. Ale wciaz chce na pokladzie maga pozarowego.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
	B_StartOtherRoutine	(Mod_978_RIT_Marcos_NW, "SCHIFF");
	B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "SCHIFF");
	B_StartOtherRoutine	(Mod_502_RIT_Keroloth_NW, "SCHIFF");
};

INSTANCE Info_Mod_Cedric_Irdorath2 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath2_Condition;
	information	= Info_Mod_Cedric_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czarodziej ognia Milten bedzie nam towarzyszyl.";
};

FUNC INT Info_Mod_Cedric_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_MiltenDabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath2_15_00"); //Czarodziej ognia Milten bedzie nam towarzyszyl.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath2_12_01"); //Bardzo dobry. Z blogoslawienstwem Inno spalimy stada przyjaciól.

	Mod_CedricLos = 2;

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Cedric_Irdorath4 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath4_Condition;
	information	= Info_Mod_Cedric_Irdorath4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_JackDabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath4_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_00"); //Co ty robisz?

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_01"); //Zatrudniasz mnie u innego kapitana! Co ty robisz?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_02"); //Podejmij decyzje, kto powinien Ci teraz towarzyszyc! Wlasnie teraz, teraz!
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_03"); //Powinniscie wykonywac nasza misje z taka sama powaga jak ja.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_12_04"); //Nie bede juz dluzej tolerowal..... Nawet jesli wprowadzisz sie do naszej zalogi, bede uwaznie sledzil.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	Info_AddChoice	(Info_Mod_Cedric_Irdorath4, "Przykro mi, ale w tym przypadku wybieram Jack.", Info_Mod_Cedric_Irdorath4_B);
	Info_AddChoice	(Info_Mod_Cedric_Irdorath4, "Wlasciwie chce, zebys byl moim kapitanem.", Info_Mod_Cedric_Irdorath4_A);
};

FUNC VOID Info_Mod_Cedric_Irdorath4_B()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath4_B_15_00"); //Przykro mi, ale w tym przypadku wybieram Jack.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_01"); //(prawie obok siebie) Jak próbujesz mnie wysmiewac....?
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_02"); //(podjete ponownie, surowo) Wszystko w porzadku, jak mówisz,....
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_B_12_03"); //(pól glosno) Obawiam sie, ze magowie powierzyli nasz los zlemu.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_978_RIT_Marcos_NW, "START");
	B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "START");
	B_StartOtherRoutine	(Mod_502_RIT_Keroloth_NW, "START");

	Mod_CedricDabei = 0;
	Mod_KerolothDabei = 0;
	Mod_MarcosDabei = 0;
	Mod_GeroldDabei = 0;

	Mod_CrewCount -= 4;
};

FUNC VOID Info_Mod_Cedric_Irdorath4_A()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath4_A_15_00"); //Wlasciwie chce, zebys byl moim kapitanem.
	AI_Output(self, hero, "Info_Mod_Cedric_Irdorath4_A_12_01"); //Cóz, rozpocznij przygotowania.

	Info_ClearChoices	(Info_Mod_Cedric_Irdorath4);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_586_NONE_Jack_NW, "START");

	Mod_CrewCount -= 1;

	Mod_JackDabei = 0;
};

INSTANCE Info_Mod_Cedric_Irdorath3 (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Irdorath3_Condition;
	information	= Info_Mod_Cedric_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zalózmy, wszystko to jest skonfigurowane.";
};

FUNC INT Info_Mod_Cedric_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Irdorath2))
	&& (Npc_GetDistToWP(self, "SHIP_CREW_CAPTAIN") < 1000)
	&& (Mod_CedricLos == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Irdorath3_15_00"); //Zalózmy, wszystko to jest skonfigurowane.

	if (Mod_BonesDabei > 0)
	|| (Mod_CordDabei > 0)
	|| (Mod_RavenDabei > 0)
	|| (Mod_MyxirDabei > 0 && Mod_MyxirDabei < 4)
	|| (Mod_CassiaDabei > 0)
	|| (Mod_SagittaDabei > 0)
	{
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_01"); //Ach, tak? Wydaje mi sie jednak, ze powinnismy byc w towarzystwie ludzi, którym mówi sie, ze nic nie stracili na misji.

		B_Say	(hero, self, "$WASMEINSTDU");

		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_02"); //Piraci, najemnicy, sludzy Beliara i kobiety nic nie stracili na okrecie Paladynów.
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_03"); //Zagrazalyby one jedynie powodzeniu naszej misji.
		AI_Output(hero, self, "Info_Mod_Cedric_Irdorath3_15_04"); //Jak?

		if (Mod_BonesDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_05"); //Piraci, zlosliwi oszusci, kutroatrzy, mordercy.
		};
		if (Mod_CordDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_06"); //Nabozency, przestepcze bandyci z kolonii, którzy wciaz odmawiaja pójscia za królem.
		};
		if (Mod_RavenDabei > 0)
		|| (Mod_MyxirDabei > 0 && Mod_MyxirDabei < 4)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_07"); //Belianie, sludzy ciemnego Boga, w których nie mozna nawet byc pewnym, ze nie znajduja sie w cieniu sprawcy zlosliwosci.
		};
		if (Mod_CassiaDabei > 0)
		|| (Mod_SagittaDabei > 0)
		{
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_08"); //Dla kobiet takie przedsiewziecie jest po prostu zbyt niebezpieczne i nie moglem ich zabrac dla wlasnego bezpieczenstwa.
			AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_09"); //Poza tym tylko odwróciliby uwage mezczyzn od pilnej misji.... Wiecej
		};

		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_10"); //Wiec upewnij sie, ze natychmiast znikaja.
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_11"); //Wolalbym raczej nie byc gotowy do odejscia.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cedric_Irdorath3_12_12"); //Doskonaly. Do chwalebnych czynów.

		Mod_CedricLos = 3;

		B_GivePlayerXP	(500);
	};
};

INSTANCE Info_Mod_Cedric_Lehrer (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Lehrer_Condition;
	information	= Info_Mod_Cedric_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Cedric_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Hi))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cedric_Lehrer_12_00"); //Potrafie nauczyc Cie obslugiwac ludzi jedna i dwie rece.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Cedric moze nauczyc mnie obslugiwac ludzi jedna i dwie rece.");
};

INSTANCE Info_Mod_Cedric_Lernen (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Lernen_Condition;
	information	= Info_Mod_Cedric_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Cedric_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cedric_Lehrer))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cedric_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Cedric_Lernen);

	Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
};

FUNC VOID Info_Mod_Cedric_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cedric_Lernen);
};

FUNC VOID Info_Mod_Cedric_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cedric_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Lernen);

		Info_AddChoice	(Info_Mod_Cedric_Lernen, DIALOG_BACK, Info_Mod_Cedric_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cedric_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cedric_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cedric_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cedric_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cedric_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Cedric_Pickpocket (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_Pickpocket_Condition;
	information	= Info_Mod_Cedric_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cedric_Pickpocket_Condition()
{
	C_Beklauen	(130, ItMi_Gold, 69);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

	Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_BACK, Info_Mod_Cedric_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cedric_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cedric_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cedric_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cedric_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cedric_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cedric_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cedric_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cedric_EXIT (C_INFO)
{
	npc		= Mod_569_RIT_Cedric_NW;
	nr		= 1;
	condition	= Info_Mod_Cedric_EXIT_Condition;
	information	= Info_Mod_Cedric_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cedric_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
