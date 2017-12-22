INSTANCE Info_Mod_AlligatorJack_Hi (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Hi_Condition;
	information	= Info_Mod_AlligatorJack_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec samotnie w sali?";
};

FUNC INT Info_Mod_AlligatorJack_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_00"); //Wiec samotnie w sali?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_01"); //Mysliwi sa zazwyczaj sami. Ale moi przyjaciele sa niedaleko.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_02"); //Wracam tam, gdzie widze palisady?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_03"); //Dokladnie. Jest tam nasz obóz piratów.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_04"); //statek piracki ciekawy. Co masz na mysli, czy oni mogliby do ciebie dolaczyc?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_05"); //Mozliwe. Musisz zapytac kapitana Greg. Nawiasem mówiac, nazywam sie Alligator Jack.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_06"); //Przyjemnosc spotkania. Zobacze.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_AlligatorJack_Beerdigung (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Beerdigung_Condition;
	information	= Info_Mod_AlligatorJack_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_00"); //Co, jak, gdzie jestem? W koncu bandyci i potem wszystko ciemne.

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_01"); //A co sie stalo z Toba? Stan tutaj i spogladaj, jakbys widzial duch.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_02"); //I drzewa, kwiaty, króliki? Co sie tutaj stalo z syrena?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_03"); //Jak tylko przez godzine jestem nieprzytomny, obóz wydaje sie zupelnie zepsuc.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_AlligatorJack_Sweetwater (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Sweetwater_Condition;
	information	= Info_Mod_AlligatorJack_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes specjalista od aligatorów?";
};

FUNC INT Info_Mod_AlligatorJack_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_00"); //Jestes specjalista od aligatorów?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_01"); //Tak, to ja. I jestem mysliwy. Pirat, przede wszystkim.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_02"); //A co z aligatorami?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_03"); //Jest ich po prostu zbyt wiele. Musza tam byc zwierzeta matki.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_04"); //Co zrobic, jesli cie wspieram?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_05"); //Wtedy moglibysmy to zrobic, jak sadze.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_06"); //Potem pozostancie blisko mnie. Nie nalezy sie naladowywac ani cos ladowac.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_07"); //Powiedz mi o tym, przyjacielu.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_08"); //Hmm.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ALLIGATOREN");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Alligator_AJ_01, "ADW_PIRATECAMP_INSEL_01");
	Wld_InsertNpc	(Alligator_AJ_02, "ADW_PIRATECAMP_INSEL_01");
	Wld_InsertNpc	(Alligator_AJ_03, "ADW_PIRATECAMP_WATERHOLE_06");
	Wld_InsertNpc	(Alligator_AJ_04, "ADW_PIRATECAMP_WATERHOLE_06");
	Wld_InsertNpc	(Alligator_AJ_05, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_06, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_07, "ADW_PIRATECAMP_WATERHOLE_08");
	Wld_InsertNpc	(Alligator_AJ_08, "ADW_PIRATECAMP_WATERHOLE_08");
	Wld_InsertNpc	(Alligator_AJ_09, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_10, "ADW_PIRATECAMP_WATERHOLE_08");

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Jack mówi o hordzie zwierzat w dolinie. Mozliwe, ze równiez zwierzeta matki.");
};

INSTANCE Info_Mod_AlligatorJack_Sweetwater2 (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Sweetwater2_Condition;
	information	= Info_Mod_AlligatorJack_Sweetwater2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_Sweetwater2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Sweetwater))
	&& (Npc_IsDead(Alligator_AJ_01))
	&& (Npc_IsDead(Alligator_AJ_02))
	&& (Npc_IsDead(Alligator_AJ_03))
	&& (Npc_IsDead(Alligator_AJ_04))
	&& (Npc_IsDead(Alligator_AJ_05))
	&& (Npc_IsDead(Alligator_AJ_06))
	&& (Npc_IsDead(Alligator_AJ_07))
	&& (Npc_IsDead(Alligator_AJ_08))
	&& (Npc_IsDead(Alligator_AJ_09))
	&& (Npc_IsDead(Alligator_AJ_10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Sweetwater2_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_00"); //Phew, twarde dranie.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater2_15_01"); //Zwierzeta matka to robi. Mial pan jednak racje. Jestes tez dobrym mysliwym.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_02"); //Dziekujemy za pochwale. Tutaj nie slyszysz tak czesto.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater2_15_03"); //Wszystkie sluszne, wszystkie sluszne. Dajmy znac Gregowi. I ma sie upewnic, ze czarodzieje otrzymaja swieza wode. Musze isc dalej.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_04"); //Zrobi to. Jeszcze raz dziekuje.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Tu znów jedziemy. Ludzie maja swieza wode. Zastanawiam sie, co mówi Saturas.....");
};

INSTANCE Info_Mod_AlligatorJack_Todesangst (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Todesangst_Condition;
	information	= Info_Mod_AlligatorJack_Todesangst_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, Jack. Jak wyglada polowanie?";
};

FUNC INT Info_Mod_AlligatorJack_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Heimweh))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Todesangst_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_00"); //Witaj, Jack. Jak wyglada polowanie?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_01"); //Wszystkie sluszne, wszystkie sluszne. Chcesz isc do obozu?
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_02"); //Dokladnie. Dlaczego pytasz?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_03"); //Bedziesz zaskoczony. Stary mezczyzna odszedl szalony.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_04"); //Kapitan?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_05"); //Tak. Henry prawdopodobnie nie wpusci Cie. Dowiesz sie.
};

INSTANCE Info_Mod_AlligatorJack_Todesangst2 (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Todesangst2_Condition;
	information	= Info_Mod_AlligatorJack_Todesangst2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce, zebyscie przyjechali ze mna do obozu. Prawdopodobnie opiekujac sie nim.";
};

FUNC INT Info_Mod_AlligatorJack_Todesangst2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Todesangst2_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst2_15_00"); //Chce, zebyscie przyjechali ze mna do obozu. Prawdopodobnie opiekujac sie nim.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst2_03_01"); //Czy nie powiedzialem ci tego? Szef jest szalony. Chodzcie dalej, odejdzmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_AlligatorJack_Pickpocket (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Pickpocket_Condition;
	information	= Info_Mod_AlligatorJack_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_AlligatorJack_Pickpocket_Condition()
{
	C_Beklauen	(88, ItAt_AlligatorClaw, 4);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

	Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_BACK, Info_Mod_AlligatorJack_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_AlligatorJack_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_AlligatorJack_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_AlligatorJack_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_AlligatorJack_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_AlligatorJack_EXIT (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_EXIT_Condition;
	information	= Info_Mod_AlligatorJack_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_AlligatorJack_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AlligatorJack_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
