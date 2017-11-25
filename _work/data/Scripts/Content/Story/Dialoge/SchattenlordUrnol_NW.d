INSTANCE Info_Mod_Urnol_Hi (C_INFO)
{
	npc		= Mod_7036_NONE_Pilger_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_Hi_Condition;
	information	= Info_Mod_Urnol_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erol_DunklerPilger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_Hi_Info()
{
	Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_UnequipArmor	(self);
	Npc_RemoveInvItems	(self, ItAr_Dementor, 1);
	CreateInvItems	(self, ItAr_Pal_Skel, 1);
	AI_EquipBestArmor	(self);

	Mod_UrnolBS = TRUE;
	
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_00"); //Ach, tam jestescie. Oczekiwalem Ciebie.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_01"); //Co? Kim jestes?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_02"); //Ja jestem Urnol, poslaniec mojego Mistrza, który przyjdzie cie zabic.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_03"); //Kim jest twój pan? Nie sypialnia?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_04"); //Spiacy nie jest moim panem, byl tylko jednym ze swoich slug.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_05"); //Ale kto jest twoim panem? Bóg ciemnosci, Beliar!
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_06"); //(smiech) Nie, mylisz sie, czlowiek. Ale szybko sie dowiesz!
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_07"); //Ale dlaczego twój mistrz chce mnie zabic?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_08"); //Wy wygnaliscie jednego z jego pracowników, a takze zniszczyliscie magiczne wiezienie, w którym chcial uzyc rudy do stworzenia pod jego kontrola armii, aby zniewolic wszystkie Khorini.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_09"); //A dlaczego nie jest tu Twój pan? Dlaczego i tak cie wyslal?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_10"); //(smiech) Wiele pytan masz, czlowiek.... a niektóre z nich pozostaja na razie bez odpowiedzi.
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_11"); //(smieje sie zlosliwie) Hahahahaha, umrzesz, czlowiek.

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Urnol_WerBistDu (C_INFO)
{
	npc		= Mod_7036_NONE_Pilger_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_WerBistDu_Condition;
	information	= Info_Mod_Urnol_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "ENDE";
};

FUNC INT Info_Mod_Urnol_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_WerBistDu_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");

	Wld_StopEffect	("DEMENTOR_FX");

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "Pewien pan cieni Urnol powiedzial mi, ze jego pan wróci z królestwa, aby mnie zabic. Uzasadnia to mówiac, ze zabilem sypialnia, jednego z jego slug. Powinienem o tym powiedziec Xardasowi.");
	B_SetTopicStatus	(TOPIC_MOD_DUNKLERPILGER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Urnol_Daemonisch (C_INFO)
{
	npc		= Mod_7422_NONE_Frau_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_Daemonisch_Condition;
	information	= Info_Mod_Urnol_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_Daemonisch_Condition()
{
	if (Mod_HQ_Daemonisch == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_00"); //Co pan tutaj? Przeklety, mój kamuflaz wysadzil mnie w powietrze, dreczyciele duszy prawie wszyscy wygnani, opetani uzdrowieni. Placimy za to.
	AI_Output(hero, self, "Info_Mod_Urnol_Daemonisch_15_01"); //Cóz, wydaje sie, ze plany pana mistrza znów zawiodly.
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_02"); //Tak, tylko osmieszaj sie. Podbój Khorinisa moze zostac odlozony na pózniej..... co wiecej, ale nie w ogóle.
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_03"); //Xeres ma wystarczajaco duzo srodków i sposobów, aby osiagnac swój cel...... I bede dowodzil jego armiami. Zobaczymy sie ponownie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Oslona Urnola zostala zdmuchnieta..... nawet jesli podejrzewalem kogos innego. Z pewnoscia znowu musial udac sie do Minentala, a ja moge powiedziec Xardasowi o moim sukcesie.");
};
