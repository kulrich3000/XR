INSTANCE Info_Mod_Karras_GDG_Kreis1	(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis1_Condition;
	information	= Info_Mod_Karras_GDG_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the first circle of magic.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Hallo))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis1_15_00"); //Teach me the first circle of magic.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis1_36_01"); //The first circle allows you to use the runes you have created.
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis1_36_02"); //You can now learn the spell formulas to create your own runes.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_GDG_Kreis2		(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis2_Condition;
	information	= Info_Mod_Karras_GDG_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the second circle of magic.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis2_15_00"); //Teach me the second circle of magic.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis2_36_01"); //Step into the second circle and learn to cast even more powerful spells.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis2_36_02"); //The time has not yet come.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_GDG_Kreis3		(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis3_Condition;
	information	= Info_Mod_Karras_GDG_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the third circle of magic.";
};
FUNC INT Info_Mod_Karras_GDG_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis3_15_00"); //Teach me the third circle of magic.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis3_36_01"); //Yes, the time has come. Enter the third circle of magic. New spells await you.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis3_36_02"); //It's not yet time for you to learn the third circle.
	};
};		

INSTANCE Info_Mod_Karras_GDG_Kreis4 (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis4_Condition;
	information	= Info_Mod_Karras_GDG_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fourth circle of magic.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_GDG_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis4_15_00"); //I want to learn the fourth circle of magic.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis4_36_01"); //Good. All characters are fulfilled. Now step into the fourth circle so that you have the power of the new spells.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis4_36_02"); //It's not yet.
	};
};

INSTANCE Info_Mod_Karras_GDG_Kreis5 (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis5_Condition;
	information	= Info_Mod_Karras_GDG_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fifth circle of magic.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_GDG_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis5_15_00"); //I want to learn the fifth circle of magic.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis5_36_01"); //Then join the fifth circle of magic. You will now master more powerful spells than ever before.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis5_36_02"); //The time has not yet come.
	};
};

INSTANCE Info_Mod_Karras_GDG_Kreis6	(C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_Kreis6_Condition;
	information	= Info_Mod_Karras_GDG_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the last circle of magic.";
};

FUNC INT Info_Mod_Karras_GDG_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_GDG_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_GDG_Kreis6_15_00"); //Teach me the last circle of magic.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_01"); //A lot of time has passed since you made the covenant with Beliar. Much has happened and we find no peace.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_02"); //You are the chosen Beliars. And as such, you will need all the strength to survive your battles.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_03"); //I dedicate you now, elect. You're entering the sixth circle.
			AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_04"); //You can now learn the spells of the last circle from Andokai if you wish.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_GDG_Kreis6_36_05"); //It's not the time yet. If you have walked a little further on the way Beliar shows you, then I will instruct you.
	};
};

INSTANCE Info_Mod_Karras_GDG_EXIT (C_INFO)
{
	npc		= Mod_6008_DMB_Karras_GDG;
	nr		= 1;
	condition	= Info_Mod_Karras_GDG_EXIT_Condition;
	information	= Info_Mod_Karras_GDG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karras_GDG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_GDG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
