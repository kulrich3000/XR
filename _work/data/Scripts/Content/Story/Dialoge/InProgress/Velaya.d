INSTANCE Info_Mod_Velaya_Hi (C_INFO)
{
	npc		= Mod_1621_EBR_Velaya_MT;
	nr		= 1;
	condition	= Info_Mod_Velaya_Hi_Condition;
	information	= Info_Mod_Velaya_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "If you want to leave this place, put this on and follow me.";
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
	AI_Output(hero, self, "Info_Mod_Velaya_Hi_15_00"); //If you want to leave this place, put this on and follow me.

	B_GiveInvItems	(hero, self, ItAr_WomanCape, 1);

	AI_Output(self, hero, "Info_Mod_Velaya_Hi_39_01"); //Finally out of here? Nothing better than that.

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

	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_39_00"); //(lucky) Finally escape from this cursed camp, yoo-hoo, yoo-hoo! And now leave this valley.
	
	Info_ClearChoices	(Info_Mod_Velaya_AusLager);

	Info_AddChoice	(Info_Mod_Velaya_AusLager, "Of course, let's go.", Info_Mod_Velaya_AusLager_B);
	Info_AddChoice	(Info_Mod_Velaya_AusLager, "No, now we go to the new camp.", Info_Mod_Velaya_AusLager_A);
};

FUNC VOID Info_Mod_Velaya_AusLager_B()
{
	AI_Output(hero, self, "Info_Mod_Velaya_AusLager_B_15_00"); //Of course, let's go.
	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_B_39_01"); //All right, let's go. But stay close to me.

	Info_ClearChoices	(Info_Mod_Velaya_AusLager);

	Mod_SLD_Velaya = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDING");
};

FUNC VOID Info_Mod_Velaya_AusLager_A()
{
	AI_Output(hero, self, "Info_Mod_Velaya_AusLager_A_15_00"); //No, now we go to the new camp.
	AI_Output(self, hero, "Info_Mod_Velaya_AusLager_A_39_01"); //What?! Absolutely not.

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
	AI_Output(self, hero, "Info_Mod_Velaya_Umgehauen_39_00"); //You villain...
	AI_Output(hero, self, "Info_Mod_Velaya_Umgehauen_15_01"); //Still stubborn. Come on, you follow me now.

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

	Info_AddChoice	(Info_Mod_Velaya_Unterwegs, "I've changed my mind.", Info_Mod_Velaya_Unterwegs_B);
	Info_AddChoice	(Info_Mod_Velaya_Unterwegs, "Let's keep going.", Info_Mod_Velaya_Unterwegs_A);
};

FUNC VOID Info_Mod_Velaya_Unterwegs_B()
{
	AI_Output(hero, self, "Info_Mod_Velaya_Unterwegs_B_15_00"); //I've changed my mind. We're going to the new camp.
	AI_Output(self, hero, "Info_Mod_Velaya_Unterwegs_B_39_01"); //Never ever!

	Info_ClearChoices	(Info_Mod_Velaya_Unterwegs);

	Mod_SLD_Velaya = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PASS");
};

FUNC VOID Info_Mod_Velaya_Unterwegs_A()
{
	AI_Output(hero, self, "Info_Mod_Velaya_Unterwegs_A_15_00"); //Let's keep going.

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
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_00"); //From here I can do it on my own. How can I thank you... But wait, I can think of something.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_01"); //Since someone has emptied all the coffers in the house of the arch-barons, the treasures and riches have been deposited in various secret places in the house.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_02"); //One of them - as I once observed - is in the fireplace of Bartholos room. There's a little hiding place under the ashes. You should be able to find it.
	AI_Output(self, hero, "Info_Mod_Velaya_AtPass_39_03"); //But don't get caught. And take care of yourself.

	B_GivePlayerXP	(450);

	MOBNAME_XR_ERZBARONVELAYA = "Hiding in the fireplace";

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
