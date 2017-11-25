INSTANCE Info_Mod_Fester_Hi (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_Hi_Condition;
	information	= Info_Mod_Fester_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj.";
};

FUNC INT Info_Mod_Fester_Hi_Condition()
{
	if (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_15_00"); //Witaj.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_31_01"); //Hej, jestes nowy w obozie. Chcesz szybko podnosic sie do góry i robic z nami róznice.
	AI_Output(hero, self, "Info_Mod_Fester_Hi_15_02"); //Jasne, dlaczego nie.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_31_03"); //Bardzo dobry. Wtedy po prostu musialbys towarzyszyc mi i dwóm innym chlopcom na polowaniu, zabic troche Molerata i Scavengera, wcale nie ciezko. Co mówisz?

	Info_ClearChoices	(Info_Mod_Fester_Hi);

	Info_AddChoice	(Info_Mod_Fester_Hi, "Nah, to dla mnie zbyt nudne.", Info_Mod_Fester_Hi_B);
	Info_AddChoice	(Info_Mod_Fester_Hi, "Oczywiscie, jestem na tym.", Info_Mod_Fester_Hi_A);
};

FUNC VOID Info_Mod_Fester_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_B_15_00"); //Nah, to dla mnie zbyt nudne.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_B_31_01"); //Wiec tak, ale o tym zadecyduje pierwszy, który jawi sie, gdy w obozie nie ma nic do jedzenia. Ose, tse, tse, tse, taki dobry dla niczego.
	
	Info_ClearChoices	(Info_Mod_Fester_Hi);
};

FUNC VOID Info_Mod_Fester_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_A_15_00"); //Oczywiscie, jestem na tym.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_A_31_01"); //Fantastyczne. Engardo i Nodrak mieli juz zaczac biegac i czekac na nas przed obozem. Idzmy tu idzmy.
	
	Info_ClearChoices	(Info_Mod_Fester_Hi);

	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "WAITFORPLAYER");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "WAITFORPLAYER");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITFORPLAYER");

	Mod_SLD_Fester = 1;

	Log_CreateTopic	(TOPIC_MOD_SLD_FESTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_FESTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Biegalem teraz z Festerem do obozu, aby pojechac z nim na polowania, Engardo i Nodrak.");
};

INSTANCE Info_Mod_Fester_VorLager (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_VorLager_Condition;
	information	= Info_Mod_Fester_VorLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_VorLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_Hi))
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21") < 300)
	&& (Mod_SLD_Fester == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_VorLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_VorLager_31_00"); //Chodzcie dalej, odejdzmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SMALLCAVE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "SMALLCAVE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "SMALLCAVE");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_904_SLD_Engardo_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1275_SLD_Nodrak_MT.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Fester_AtSmallCave (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_AtSmallCave_Condition;
	information	= Info_Mod_Fester_AtSmallCave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_AtSmallCave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_VorLager))
	&& (Npc_GetDistToWP(hero, "LOCATION_24_IN") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_AtSmallCave_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_00"); //Ahh, tutaj jest dobre miejsce.
	AI_Output(hero, self, "Info_Mod_Fester_AtSmallCave_15_01"); //Huh, czy bedziemy tu czekac?
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_02"); //Uh, tak, tak, cos takiego.

	CreateInvItems	(self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_03"); //Ahh, piekny.
	AI_Output(hero, self, "Info_Mod_Fester_AtSmallCave_15_04"); //A co jest teraz....?
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_05"); //Och, polowanie. Cóz, widzisz tam te dobrze odzywione padlinozercy i Moleraty? Poluj na nich i przyprowadz mnie po dziesiec padlinozerców i dziesiec Moleratkeulen kazdy. Jakies pytania?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SMOKEPAUSE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "SMOKEPAUSE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "SMOKEPAUSE");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Och, wielki. Podczas gdy trzy z nich sa ukamienowywane, wolno mi zabic dobrze odzywionych padlinozerców i moleratów i przywiezc po dziesiec platków miesa do Fester.");

	Wld_InsertNpc	(Scavenger_Fett_01, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_02, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_03, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_04, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_05, "SPAWN_OW_WARAN_NC_03");

	Wld_InsertNpc	(Molerat_Fett_01, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_02, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_03, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_04, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_05, "OW_PATH_158");
};

INSTANCE Info_Mod_Fester_HabFleisch (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_HabFleisch_Condition;
	information	= Info_Mod_Fester_HabFleisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kazdy z nich ma dziesiec kijów padlinozercy i dziesiec kijów molowych.";
};

FUNC INT Info_Mod_Fester_HabFleisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_AtSmallCave))
	&& (Npc_IsDead(Scavenger_Fett_01))
	&& (Npc_IsDead(Scavenger_Fett_02))
	&& (Npc_IsDead(Scavenger_Fett_03))
	&& (Npc_IsDead(Scavenger_Fett_04))
	&& (Npc_IsDead(Scavenger_Fett_05))
	&& (Npc_IsDead(Molerat_Fett_01))
	&& (Npc_IsDead(Molerat_Fett_02))
	&& (Npc_IsDead(Molerat_Fett_03))
	&& (Npc_IsDead(Molerat_Fett_04))
	&& (Npc_IsDead(Molerat_Fett_05))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_HabFleisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_HabFleisch_15_00"); //Kazdy z nich ma dziesiec kijów padlinozercy i dziesiec kijów molowych.

	B_ShowGivenThings	("20 surowego miesa, które");

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 20);

	AI_Output(self, hero, "Info_Mod_Fester_HabFleisch_31_01"); //Pranie? Oh, mieso. Dobrze zrobione, dzieciak.
	AI_Output(self, hero, "Info_Mod_Fester_HabFleisch_31_02"); //Teraz idziemy nieco dalej, zeby polowac w jaskini cos innego.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GREATCAVE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "GREATCAVE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "GREATCAVE");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Fester_AtGreatCave (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_AtGreatCave_Condition;
	information	= Info_Mod_Fester_AtGreatCave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_AtGreatCave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_HabFleisch))
	&& (Npc_GetDistToWP(hero, "LOCATION_23_CAVE_1_OUT") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_AtGreatCave_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_AtGreatCave_15_00"); //Uh, a co próbujemy tu zabic?
	AI_Output(self, hero, "Info_Mod_Fester_AtGreatCave_31_01"); //Czy powiedzialem strzal? Chodzilo mi o to.
	AI_Output(self, hero, "Info_Mod_Fester_AtGreatCave_31_02"); //Uh, ale tylko minuta. W jaskini osiedlily sie olbrzymie orki. Wejdz do srodka i zadbaj o nia.
	AI_Output(hero, self, "Info_Mod_Fester_AtGreatCave_15_03"); //Uh, wyglada bardziej jak kilka mlodych goblinów do mnie.... oh, nigdy nie przeszkadza.
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITING");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "WAITING");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "WAITING");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Teraz zabic trzech mlodych goblinów w jaskini.");

	Wld_InsertNpc	(Gobbo_Fester_01, "LOCATION_23_CAVE_1_02");
	Wld_InsertNpc	(Gobbo_Fester_02, "LOCATION_23_CAVE_1_02");
	Wld_InsertNpc	(Gobbo_Fester_03, "LOCATION_23_CAVE_1_02");
};

INSTANCE Info_Mod_Fester_GobbosTot (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_GobbosTot_Condition;
	information	= Info_Mod_Fester_GobbosTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_GobbosTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_AtGreatCave))
	&& (Npc_IsDead(Gobbo_Fester_01))
	&& (Npc_IsDead(Gobbo_Fester_02))
	&& (Npc_IsDead(Gobbo_Fester_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_GobbosTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_GobbosTot_31_00"); //Bardzo dobrze, teraz mozemy teraz zrobic troche strzebli.... uh, cwiczymy alchemie. Czekaj minute, az sie skonczy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "POTIONPAUSE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "POTIONPAUSE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "POTIONPAUSE");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Teraz moge czekac na trzy z nich, dopóki nie zrobia nowych lodyg bagiennych.");
};

INSTANCE Info_Mod_Fester_PotionReady (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_PotionReady_Condition;
	information	= Info_Mod_Fester_PotionReady_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_PotionReady_Condition()
{
	if (Mod_SLD_Fester == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_PotionReady_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_PotionReady_31_00"); //Tam mozna wrócic. Idz dalej, podazamy za Toba.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOCAMP");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "FOLLOWTOCAMP");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "FOLLOWTOCAMP");

	Wld_InsertNpc	(Gobbo_Fester_04, "OW_PATH_161");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Grmpf, ostatnia, ale nie mniej wazna sprawa jest to, ze pozwolono mi grac w obozie na eskorte dla pijanych chlopców.");

	Wld_InsertItem	(ItWr_Weisenchronik,	"FP_ITEM_FESTER_WEISENCHRONIK");
};

INSTANCE Info_Mod_Fester_BackAtCamp (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_BackAtCamp_Condition;
	information	= Info_Mod_Fester_BackAtCamp_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_BackAtCamp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_PotionReady))
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_BackAtCamp_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_BackAtCamp_31_00"); //Hej, zrobiles naprawde dobra robote.... na debiutant. Czy Lee i Sylvio poinformuja Cie, ze zrobiles to dosc dobrze.
	AI_Output(self, hero, "Info_Mod_Fester_BackAtCamp_31_01"); //Oto troche chwastów i rudy za Twoja nagrode.

	B_ShowGivenThings	("4 lodygi kapusty bagiennej i 3 rudy konserwowane");

	CreateInvItems	(hero, ItMi_Joint, 4);
	CreateInvItems	(hero, ItMi_Nugget, 3);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "START");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_904_SLD_Engardo_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1275_SLD_Nodrak_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_SetTopicStatus	(TOPIC_MOD_SLD_FESTER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Fester_KesselProblem (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_KesselProblem_Condition;
	information	= Info_Mod_Fester_KesselProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, Fester. Jeszcze dzis wieczorem?";
};

FUNC INT Info_Mod_Fester_KesselProblem_Condition()
{
	if (Mod_NL_TalkesselProblem == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_KesselProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_00"); //Witaj, Fester. Jeszcze dzis wieczorem?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_01"); //Co....? Kim jestes i czego chcesz?
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_02"); //Pytanie brzmi: co mi Pan powie, co mi powie.... o malych firmach.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_03"); //Co....? Damn to! Hej, czlowiek, nie daj mi zadnych klopotów.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_04"); //Po prostu sprzedalem kilka rzeczy na rude.
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_05"); //Pary rzeczy?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_06"); //No tak, cóz, brudny. Czlowiek, co to jest wielki problem?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_07"); //Zaslugiwalem na wiekszosc z innymi rzeczami, na przyklad na futro biegacza cieni.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_08"); //Co, cien biegacza? Wtedy.....

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_09"); //Hej, przyjdz dalej. Nie mówcie o tym, co bagniste.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_10"); //Jesli trzymasz usta zamkniete, nie bedziesz tego zalowal.

	if (Npc_HasItems(hero, ItWr_KesselProblem) == 0)
	{
		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_11"); //Powinienem skonfrontowac sie z Bruce' em.
	};

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Bruce nie zabil zadnych biegaczy cieni. Kupil futro za rude.");
};

INSTANCE Info_Mod_Fester_KesselProblem2 (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_KesselProblem2_Condition;
	information	= Info_Mod_Fester_KesselProblem2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_KesselProblem2_Condition()
{
	if (Mod_NL_TalKesselProblem >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_KesselProblem2_Info()
{
	if (Mod_NL_TalkesselProblem == 5)
	{
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_00"); //Phew, dziekuje ci tak wiele za to, ze nie mówie Lee o ziolach.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_01"); //Ledwo ucieklam czarnym okiem.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_02"); //Cóz, teraz musze byc nieco bardziej ostrozny. Stad..... Tutaj wez ziolo.

		B_ShowGivenThings	("2 czarna droga, 2 zielone nowicjusze, 1 znak snu i 5 lodyg.");

		CreateInvItems	(hero, ItMi_Joint, 5);
		CreateInvItems	(hero, ItMi_Addon_Joint_01, 2);
		CreateInvItems	(hero, ItMi_Addon_Joint_02, 2);
		CreateInvItems	(hero, ItMi_Traumruf, 1);

		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_03"); //I.... er er..... kolejny maly przepis.

		B_GiveInvItems	(self, hero, ItWr_Weisenchronik, 1);

		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_04"); //Preferowane przed snem..... wtedy masz super zrelaksowana noc, a nastepnego ranka rano bedziesz w dobrej formie.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_05"); //Zabawa z tym. Ale nie przesadzajcie, huh?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_06"); //Wspaniale, dzieki Tobie moge pracowac przez kilka tygodni od rana do nocy.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_07"); //Czy naprawde wykonywales swietna prace..... Syn suki!
	};
};

INSTANCE Info_Mod_Fester_Pickpocket (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_Pickpocket_Condition;
	information	= Info_Mod_Fester_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fester_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Joint, 3);
};

FUNC VOID Info_Mod_Fester_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

	Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_BACK, Info_Mod_Fester_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fester_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fester_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
};

FUNC VOID Info_Mod_Fester_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fester_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fester_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fester_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fester_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fester_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fester_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fester_EXIT (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_EXIT_Condition;
	information	= Info_Mod_Fester_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fester_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fester_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
