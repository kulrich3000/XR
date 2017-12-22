INSTANCE Info_Mod_Velaya_Hi (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_Hi_Condition;
	information	= Info_Mod_Velaya_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jesli chcecie opuscic to miejsce, wlózcie to i podazajcie za mna.";
};

FUNC INT Info_Mod_Velaya_Hi_Condition()
{
	if (Mod_SLD_Nebel == 1)
	&& (Npc_HasItems(hero, ItAr_WomanCape) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_Hi_15_00"); //Jesli chcecie opuscic to miejsce, wlózcie to i podazajcie za mna.

	B_GiveInvItems	(hero, self, ItAr_WomanCape, 1);

	AI_Output(self, hero, "Info_Mod_Velaya_Hi_39_01"); //Wreszcie z tego miejsca? Nic lepszego niz to.

	AI_EquipArmor	(self, ItAr_WomanCape);

	Mod_SLD_Nebel = 2;

	Wld_SendUntrigger	("MT_NEBEL_01");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWOUTOFOC");
};

INSTANCE Info_Mod_Velaya_AusLager (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_AusLager_Condition;
	information	= Info_Mod_Velaya_AusLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_AusLager_Condition()
{
	if (Mod_SLD_Nebel == 2)
	&& (Npc_GetDistToWP(self, "WP_MT_JACKAL_BEFREIUNG") > 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_AusLager_Info()
{
	AI_UnEquipArmor	(self);

	Npc_RemoveInvItems	(self, ItAr_WomanCape, 1);

	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_39_00"); //Szczesliwy) W koncu uciec z tego zakletego obozu, yohoohoo, yohoo! Teraz opusc te doline.
	
	Info_ClearChoices	(Info_Mod_Velaya_AusLager);

	Info_AddChoice	(Info_Mod_Velaya_AusLager, "Oczywiscie, odejdzmy.", Info_Mod_Velaya_AusLager_B);
	Info_AddChoice	(Info_Mod_Velaya_AusLager, "Nie, teraz idziemy do nowego obozu.", Info_Mod_Velaya_AusLager_A);
};

FUNC VOID Info_Mod_Velaya_AusLager_B()
{
	AI_Output(hero, self, "Info_Mod_Velaya_AusLager_B_15_00"); //Oczywiscie, odejdzmy.
	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_B_39_01"); //W porzadku, idzmy. Badzcie blisko mnie.

	Info_ClearChoices	(Info_Mod_Velaya_AusLager);

	Mod_SLD_Velaya = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDING");
};

FUNC VOID Info_Mod_Velaya_AusLager_A()
{
	AI_Output(hero, self, "Info_Mod_Velaya_AusLager_A_15_00"); //Nie, teraz idziemy do nowego obozu.
	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_A_39_01"); //Co? Absolutnie nie.

	Info_ClearChoices	(Info_Mod_Velaya_AusLager);

	Mod_SLD_Velaya = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PASS");
};

INSTANCE Info_Mod_Velaya_Umgehauen (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_Umgehauen_Condition;
	information	= Info_Mod_Velaya_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_AusLager))
	&& (Mod_SLD_Velaya == 2)
	&& (self.attribute[ATR_HITPOINTS] < 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_Umgehauen_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_Umgehauen_39_00"); //Zloczyn sie....
	AI_Output(hero, self, "Info_Mod_Velaya_Umgehauen_15_01"); //Ciagle uparty. Chodzcie dalej, idzcie za mna teraz.

	Mod_SLD_Velaya = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTONL");

	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	B_Göttergefallen (3, 1);
};

INSTANCE Info_Mod_Velaya_Unterwegs (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_Unterwegs_Condition;
	information	= Info_Mod_Velaya_Unterwegs_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_Unterwegs_Condition()
{
	if (Mod_SLD_Velaya == 1)
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Npc_GetDistToWP(self, "OW_PATH_1_16_8") > 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_Unterwegs_Info()
{
	Info_ClearChoices	(Info_Mod_Velaya_Unterwegs);

	Info_AddChoice	(Info_Mod_Velaya_Unterwegs, "Zmienilam zdanie.", Info_Mod_Velaya_Unterwegs_B);
	Info_AddChoice	(Info_Mod_Velaya_Unterwegs, "Idzmy dalej.", Info_Mod_Velaya_Unterwegs_A);
};

FUNC VOID Info_Mod_Velaya_Unterwegs_B()
{
	AI_Output(hero, self, "Info_Mod_Velaya_Unterwegs_B_15_00"); //Zmienilam zdanie. Idziemy do nowego obozu.
	AI_Output(self, hero, "Info_Mod_Velaya_Unterwegs_B_39_01"); //Nigdy nigdy!

	Info_ClearChoices	(Info_Mod_Velaya_Unterwegs);

	Mod_SLD_Velaya = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PASS");
};

FUNC VOID Info_Mod_Velaya_Unterwegs_A()
{
	AI_Output(hero, self, "Info_Mod_Velaya_Unterwegs_A_15_00"); //Idzmy dalej.

	Info_ClearChoices	(Info_Mod_Velaya_Unterwegs);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Velaya_AtPass (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_AtPass_Condition;
	information	= Info_Mod_Velaya_AtPass_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_AtPass_Condition()
{
	if (Mod_SLD_Velaya == 1)
	&& (Npc_GetDistToWP(self, "OW_PATH_1_16_8") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_AtPass_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_00"); //Stad moge to zrobic samodzielnie. Jak moge wam podziekowac? Ale czekam, moge o czyms pomyslec.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_01"); //Poniewaz ktos opróznil wszystkie kasetony w domu arcybaronów, skarby i bogactwa zostaly zlozone w róznych tajnych miejscach w domu.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_02"); //Jeden z nich, jak kiedys zauwazylem, znajduje sie w kominku pokoju Bartholos. Pod prochami znajduje sie mala kryjówka. Powinnas byc w stanie ja znalezc.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_03"); //Nie wpadaj jednak w pulapke. I zadbaj o siebie.

	B_GivePlayerXP	(450);

	MOBNAME_XR_ERZBARONVELAYA = "Ukrywanie sie w kominku";

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	Mod_VelayaFrei = TRUE;

	B_Göttergefallen (1, 1);
};

INSTANCE Info_Mod_Velaya_EXIT (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_EXIT_Condition;
	information	= Info_Mod_Velaya_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velaya_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velaya_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
