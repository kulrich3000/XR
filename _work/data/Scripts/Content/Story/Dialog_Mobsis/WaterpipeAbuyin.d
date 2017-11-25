FUNC VOID WaterpipeAbuyin_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_WaterpipeAbuyin;
		Ai_ProcessInfos (her);
	};
}; 

INSTANCE PC_WaterpipeAbuyin_Tabak (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_WaterpipeAbuyin_Tabak_Condition;
	information	= PC_WaterpipeAbuyin_Tabak_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wybierz tyton";
};

FUNC INT PC_WaterpipeAbuyin_Tabak_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_WaterpipeAbuyin)
	{
		return 1;
	};
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_Info()
{
	Info_ClearChoices	(PC_WaterpipeAbuyin_Tabak);
	
	Info_AddChoice 	(PC_WaterpipeAbuyin_Tabak, DIALOG_BACK, PC_WaterpipeAbuyin_Tabak_BACK);	
	
	if (Npc_HasItems (hero, ItMi_HonigTabak) >= 1) {
		Info_AddChoice 	(PC_Waterpipe_Tabak, "Honigtabak", PC_Waterpipe_Tabak_Honey);
	} else {
		Info_AddChoice 	(PC_WaterpipeAbuyin_Tabak, "Tyton miodowy (250 zloty)", PC_WaterpipeAbuyin_Tabak_Honey);
	};
	if (Npc_HasItems (hero, ItMi_SumpfTabak) >= 1) {
		Info_AddChoice 	(PC_Waterpipe_Tabak, "Krauttabak", PC_Waterpipe_Tabak_Swampherb);
	} else {
		Info_AddChoice 	(PC_WaterpipeAbuyin_Tabak, "Tyton (250 zloty)", PC_WaterpipeAbuyin_Tabak_Swampherb);
	};
	if (Npc_HasItems (hero, ItMi_PilzTabak) >= 1) {
		Info_AddChoice 	(PC_Waterpipe_Tabak, "Pilztabak", PC_Waterpipe_Tabak_Mushroom_01);
	} else {
		Info_AddChoice 	(PC_WaterpipeAbuyin_Tabak, "Tyton grzybniowy (250 zloty)", PC_WaterpipeAbuyin_Tabak_Mushroom_01);
	};
	if (Npc_HasItems (hero, ItMi_Apfeltabak) >= 1)
	{
		Info_AddChoice 	(PC_Waterpipe_Tabak, "Apfeltabak", PC_Waterpipe_Tabak_Apple);
	};
	Info_AddChoice 	(PC_WaterpipeAbuyin_Tabak, "Tyton jablkowy (250 zl)", PC_WaterpipeAbuyin_Tabak_Apple);
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_BACK()
{
	Info_ClearChoices (PC_WaterpipeAbuyin_Tabak);
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_Honey()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 250);

		Honey_Bonus += 10;

		if (Honey_Bonus >= 25)  
		{
			Print (PRINT_Eat23);
			B_RaiseAttribute_Rest (self, ATR_DEXTERITY, 1);
			Snd_Play	("LevelUp");
			Honey_Bonus -= 25;
		}
		else if (Honey_Bonus >= 15)  
		{
			Print (PRINT_Eat22);
		}
		else if (Honey_Bonus >= 7)  
		{
			Print	(PRINT_Eat21);
		};
	}
	else
	{
		Print	(Print_NotEnoughGold);
	};

	B_ENDPRODUCTIONDIALOG();	
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_Swampherb()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 250);

		Krauttabak_Bonus = 1;

		Krauttabak_Bonustime += 600;
	}
	else
	{
		Print	(Print_NotEnoughGold);
	};

	B_ENDPRODUCTIONDIALOG();	
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_Mushroom_01()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 250);

		Dunkelpilz_Bonus += 20;

		if (Honey_Bonus >= 100)  
		{
			B_RaiseAttribute_Rest	(hero, ATR_MANA_MAX, 5);
			Npc_ChangeAttribute	(hero, ATR_MANA, 5);
			Snd_Play	("LevelUp");
			Dunkelpilz_Bonus -= 100;
		};
	}
	else
	{
		Print	(Print_NotEnoughGold);
	};

	B_ENDPRODUCTIONDIALOG();		
};

FUNC VOID PC_WaterpipeAbuyin_Tabak_Apple()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 250);

		Apple_Bonus += 10;

		if (Apple_Bonus >= 25)  
		{
			Print (PRINT_Eat3);
			B_RaiseAttribute_Rest (hero, ATR_STRENGTH, 1);
			Snd_Play	("LevelUp");
			Apple_Bonus -= 25;
		}
		else if (Apple_Bonus >= 15)  
		{
			Print (PRINT_Eat2);
		}
		else if (Apple_Bonus >= 7)  
		{
			Print	(PRINT_Eat1);
		};
	}
	else
	{
		Print	(Print_NotEnoughGold);
	};

	B_ENDPRODUCTIONDIALOG();	
};

INSTANCE PC_WaterpipeAbuyin_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_WaterpipeAbuyin_EXIT_Condition;
	information	= PC_WaterpipeAbuyin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_WaterpipeAbuyin_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_WaterpipeAbuyin)
	{
		return 1;
	};
};

FUNC VOID PC_WaterpipeAbuyin_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
