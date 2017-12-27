INSTANCE Info_Mod_Pirat_Hi (C_INFO)
{
	npc		= Mod_7585_PIR_PIRAT_NW;
	nr		= 1;
	condition	= Info_Mod_Pirat_Hi_Condition;
	information	= Info_Mod_Pirat_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pirat_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pirat_Hi_Info()
{
	var C_Item ar;
	ar = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(ar, ItAr_Pir_L_Addon) == TRUE)
	|| (Hlp_IsItem(ar, ItAr_Pir_M_Addon) == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_00"); //Hey, comrade! What kind of current brings you here?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_01"); //Hold it, boy! What are you doing here?
	};

	AI_Output(hero, self, "Info_Mod_Pirat_Hi_15_02"); //I come on behalf of Matteos to trade with you.
	AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_03"); //I guess that old stink's getting too good again, huh? Well, I've got two boxes of grog. He ordered these from me.
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_15_04"); //How much do you charge for the crates?
	AI_Output(self, hero, "Info_Mod_Pirat_Hi_07_05"); //700 indicators are worth it, don't you think?

	Info_ClearChoices	(Info_Mod_Pirat_Hi);

	Info_AddChoice	(Info_Mod_Pirat_Hi, "You've got to be kidding me.", Info_Mod_Pirat_Hi_B);
	Info_AddChoice	(Info_Mod_Pirat_Hi, "No problem, here's the gold.", Info_Mod_Pirat_Hi_A);
};

FUNC VOID Info_Mod_Pirat_Hi_Fertig()
{
	B_GiveInvItems	(self, hero, ItMi_GrogPaket_Matteo, 2);

	B_LogEntry	(TOPIC_MOD_LEHRLING_MATTEO_THREE, "I got the two boxes. Now all I have to do is drop them off at Matteo's.");

	Info_ClearChoices	(Info_Mod_Pirat_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Pirat_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_B_15_00"); //You gotta be kidding me.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_B_07_01"); //Hey, it's okay. Then we'll make it 500.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "You can hardly ask that much!", Info_Mod_Pirat_Hi_D);
		Info_AddChoice	(Info_Mod_Pirat_Hi, "All right.", Info_Mod_Pirat_Hi_C);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_B_07_02"); //Listen, sailor, don't fuck with me, all right? 700 bucks or nothing.

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "No problem, here's the gold.", Info_Mod_Pirat_Hi_A);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_A_15_00"); //No problem, here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 700);

	B_GivePlayerXP	(50);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_D_15_00"); //You can hardly ask that much!

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_D_07_01"); //Okay, okay, okay. 350. But it's not going under.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "That's no way to make a deal.", Info_Mod_Pirat_Hi_F);
		Info_AddChoice	(Info_Mod_Pirat_Hi, "I don't care about him.", Info_Mod_Pirat_Hi_E);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_D_07_02"); //That's a damn good price. Either you pay or you leave.

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "All right.", Info_Mod_Pirat_Hi_C);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_C_15_00"); //All clear.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	B_GivePlayerXP	(150);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_F_15_00"); //That's no way to do business.

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_F_07_01"); //200 gold is really my last offer.

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "Deal. It's a good price now.", Info_Mod_Pirat_Hi_G);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pirat_Hi_F_07_02"); //Do you think you're some kind of Jedi or something that makes you wave your hand like that? I can't do tricks like that!

		Info_ClearChoices	(Info_Mod_Pirat_Hi);

		Info_AddChoice	(Info_Mod_Pirat_Hi, "I don't care about him.", Info_Mod_Pirat_Hi_E);
	};
};

FUNC VOID Info_Mod_Pirat_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_E_15_00"); //I don't care about him.

	B_GiveInvItems	(hero, self, ItMi_Gold, 350);

	B_GivePlayerXP	(300);

	Info_Mod_Pirat_Hi_Fertig();
};

FUNC VOID Info_Mod_Pirat_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Pirat_Hi_G_15_00"); //Deal. It's a good price now.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	B_GivePlayerXP	(600);

	Info_Mod_Pirat_Hi_Fertig();
};
