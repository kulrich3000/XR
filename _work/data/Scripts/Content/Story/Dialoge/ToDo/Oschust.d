INSTANCE Info_Mod_Oschust_Hi (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Hi_Condition;
	information	= Info_Mod_Oschust_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, I'm new at the camp.";
};

FUNC INT Info_Mod_Oschust_Hi_Condition()
{
	if (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Hi_15_00"); //Hi, I'm new at the camp. What are you doing forging and alchemy tables?
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_01"); //Ahh, a new face. Just come closer and see a master counterfeiter and alchemist in his craft.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_02"); //I redo rusty blades, mint counterfeit money and gold inferior metals. Our camp doesn't earn badly from my frauds.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_03"); //If you have silver rings, I will also gild them for a small fee of 10 coins so that you can sell them to any dealer for a much higher price of their actual value.
	AI_Output(self, hero, "Info_Mod_Oschust_Hi_04_04"); //Also rusty swords I will renew you for only 2 gold coins with my special acid mixture in no time.
};

INSTANCE Info_Mod_Oschust_Amulett_A (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Amulett_A_Condition;
	information	= Info_Mod_Oschust_Amulett_A_Info;
	permanent	= 0;
	important	= 0;
	description	= "The amulet turned out to be a fake.";
};

FUNC INT Info_Mod_Oschust_Amulett_A_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Amulett_A_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_00"); //The amulet turned out to be a fake. Can you tell me anything about it?
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_01"); //What? It's a fake? So the whole effort was completely wasted?
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_02"); //Can't you tell me more about it?
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_03"); //Why, what do you mean? That's all I can say.
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_04"); //The magician could still clearly feel the aura of the real amulet. So it must have been close to here a short while ago.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_05"); //Um, I really can't help you with that. I just polished it a little bit, gave it a new shine. I had nothing else to do with it.
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_A_15_06"); //You understand the art of counterfeiting and had the amulet with you for some time.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_A_04_07"); //What?! I don't have to listen to that. Don't bother me.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Oschust_Amulett_B (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Amulett_B_Condition;
	information	= Info_Mod_Oschust_Amulett_B_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me where to find the right amulet...";
};

FUNC INT Info_Mod_Oschust_Amulett_B_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Amulett_B_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Amulett_B_15_00"); //Tell me where the real amulet is, or I'll knock your teeth in.
	AI_Output(self, hero, "Info_Mod_Oschust_Amulett_B_04_01"); //What?! Don't bother me. I don't know what you want.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Oschust_Umgehauen (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Umgehauen_Condition;
	information	= Info_Mod_Oschust_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you now tell me where the amulet is, or do I have to...";
};

FUNC INT Info_Mod_Oschust_Umgehauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B)))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_00"); //Do you now tell me where the amulet is, or do I have to...

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_01"); //Wait, I want to say everything.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_02"); //I hear....

	AI_RemoveWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_03"); //Yes, I'm sorry, I got the real amulet and made the copy of it.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_04"); //There, there you go. And for remorse, it's a little late. Where is the amulet now?
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_05"); //I hid it in a cave not far from here. Below the camp a few meters towards the mine and you won't miss it.
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_06"); //The only problem is that a group of orcs and their dogs have settled there.
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_07"); //l-- otherwise I would have already retrieved the amulet and made up for my mistake.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_08"); //Yeah, sure. Well, I guess I'll have to deal with the orcs somehow...
	AI_Output(self, hero, "Info_Mod_Oschust_Umgehauen_04_09"); //If you really want to try to get the amulet, you have to hack the bottom of the cave with a pickaxe to find it.
	AI_Output(hero, self, "Info_Mod_Oschust_Umgehauen_15_10"); //All right, I'll take a look.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I have learned from Oschust that he buried the amulet in a cave at the very back, which is located below the camp in the direction of the mine. However, some orcs are said to have settled there as well. I should now inform Dexter.");
		
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Oschust_WegenRingen (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_WegenRingen_Condition;
	information	= Info_Mod_Oschust_WegenRingen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Because of the rings...";
};

FUNC INT Info_Mod_Oschust_WegenRingen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenRingen_15_00"); //Because of the rings...

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);

	Info_AddChoice	(Info_Mod_Oschust_WegenRingen, DIALOG_BACK, Info_Mod_Oschust_WegenRingen_BACK);

	if (Npc_HasItems(hero, ItRi_SkinnersRing) > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 35)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "What about that weathered orc ring?", Info_Mod_Oschust_WegenRingen_Skinner_C);
	};

	if (Npc_HasItems(hero, ItMi_SilverRing) > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 5)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "All silver rings gold plated", Info_Mod_Oschust_WegenRingen_Silber_B);
		Info_AddChoice	(Info_Mod_Oschust_WegenRingen, "Gold plating a silver ring", Info_Mod_Oschust_WegenRingen_Silber_A);
	};
};

FUNC VOID Info_Mod_Oschust_WegenRingen_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Skinner_C()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenRingen_Skinner_C_15_00"); //What about that weathered orc ring?

	B_GiveInvItems	(hero, self, ItRi_SkinnersRing, 1);

	Npc_RemoveInvItems	(self, ItRi_SkinnersRing, 1);

	AI_Output(self, hero, "Info_Mod_Oschust_WegenRingen_Skinner_C_04_01"); //Hmm, in very bad shape. It will take a little longer and cost a little more.
	AI_Output(self, hero, "Info_Mod_Oschust_WegenRingen_Skinner_C_04_02"); //But for 35 gold coins, it'll be as good as new tomorrow.

	B_GiveInvItems	(hero, self, ItMi_Gold, 35);

	Mod_OschustMachtOrkring = 1;
	Mod_OschustRingDay = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Silber_B()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMi_Silverring)*5)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 5*Npc_HasItems(hero, ItMi_SilverRing));
		CreateInvItems	(hero, ItMi_GoldRing, Npc_HasItems(hero, ItMi_SilverRing));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMi_SilverRing)), " Silver rings gold-plated"));

		Npc_RemoveInvItems	(hero, ItMi_SilverRing, Npc_HasItems(hero, ItMi_SilverRing));
	}
	else
	{
		var int GoldForRinge;

		GoldForRinge = Npc_HasItems(hero, ItMi_Gold) / 5;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 5*GoldForRinge);
		CreateInvItems	(hero, ItMi_GoldRing, GoldForRinge);
		Npc_RemoveInvItems	(hero, ItMi_SilverRing, GoldForRinge);

		Print	(ConcatStrings(IntToString(GoldForRinge), " Silver rings gold-plated"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

FUNC VOID Info_Mod_Oschust_WegenRingen_Silber_A()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 5);
	CreateInvItems	(hero, ItMi_GoldRing, 1);
	Npc_RemoveInvItems	(hero, ItMi_SilverRing, 1);

	Print	("Gold plated silver ring");

	Info_ClearChoices	(Info_Mod_Oschust_WegenRingen);
};

INSTANCE Info_Mod_Oschust_WegenSchwertern (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_WegenSchwertern_Condition;
	information	= Info_Mod_Oschust_WegenSchwertern_Info;
	permanent	= 1;
	important	= 0;
	description	= "Because of the swords...";
};

FUNC INT Info_Mod_Oschust_WegenSchwertern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_WegenSchwertern_15_00"); //Because of the swords...

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);

	Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, DIALOG_BACK, Info_Mod_Oschust_WegenSchwertern_BACK);

	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derust all sharpened rusty two-handed hands", Info_Mod_Oschust_WegenSchwertern_H);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derusting a sharpened rusty two-handed hand", Info_Mod_Oschust_WegenSchwertern_G);
	};
	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derust all rusty two-handed people", Info_Mod_Oschust_WegenSchwertern_F);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derusting a rusty two-handed person", Info_Mod_Oschust_WegenSchwertern_E);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "All sharpened rusted swords derust", Info_Mod_Oschust_WegenSchwertern_D);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derusting a sharpened rusty sword", Info_Mod_Oschust_WegenSchwertern_C);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derust all rusted swords", Info_Mod_Oschust_WegenSchwertern_B);
		Info_AddChoice	(Info_Mod_Oschust_WegenSchwertern, "Derusting a rusty sword", Info_Mod_Oschust_WegenSchwertern_A);
	};
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_H()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
		CreateInvItems	(hero, ItMw_Zweihaender_Geschaerft, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft)), " Two-handed unrusted"));

		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01_Geschaerft, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_Zweihaender_Geschaerft, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01_Geschaerft, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Two-handed unrusted"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_G()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_Zweihaender, 1);
	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, 1);

	Print	("Derusting a two-handed man");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_F()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_2H_Sword_M_01)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_2H_Sword_M_01));
		CreateInvItems	(hero, ItMw_Zweihaender, Npc_HasItems(hero, ItMw_2H_Sword_M_01));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01)), " Two-handed unrusted"));

		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Npc_HasItems(hero, ItMw_2H_Sword_M_01));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_Zweihaender, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Two-handed unrusted"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_E()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_Zweihaender, 1);
	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, 1);

	Print	("Derusting a two-handed man");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_D()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft)), " Swords derusted"));

		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Swords derusted"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_C()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01_Geschaerft, 1);
	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, 1);

	Print	("A sword rusted out");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_B()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= Npc_HasItems(hero, ItMw_1h_MISC_Sword)*2)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*Npc_HasItems(hero, ItMw_1h_MISC_Sword));
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, Npc_HasItems(hero, ItMw_1h_MISC_Sword));

		Print	(ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword)), " Swords derusted"));

		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Npc_HasItems(hero, ItMw_1h_MISC_Sword));
	}
	else
	{
		var int GoldForSchwerter;

		GoldForSchwerter = Npc_HasItems(hero, ItMi_Gold) / 2;

		Npc_RemoveInvItems	(hero, ItMi_Gold, 2*GoldForSchwerter);
		CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, GoldForSchwerter);
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, GoldForSchwerter);

		Print	(ConcatStrings(IntToString(GoldForSchwerter), " Swords derusted"));
	};

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

FUNC VOID Info_Mod_Oschust_WegenSchwertern_A()
{
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2);
	CreateInvItems	(hero, ItMw_1H_quantarie_Schwert_01, 1);
	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, 1);

	Print	("A sword rusted out");

	Info_ClearChoices	(Info_Mod_Oschust_WegenSchwertern);
};

INSTANCE Info_Mod_Oschust_OrkringFertig (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_OrkringFertig_Condition;
	information	= Info_Mod_Oschust_OrkringFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_OrkringFertig_Condition()
{
	if (Mod_OschustMachtOrkring == 1)
	&& (Mod_OschustRingDay < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_OrkringFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_00"); //The ring is finished and has become a real gem.
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_01"); //I worked on it for hours and even managed to work out strange runic signs that were engraved in the ring.
	AI_Output(self, hero, "Info_Mod_Oschust_OrkringFertig_04_02"); //Here, his value must have gone up a lot by now.

	B_GiveInvItems	(self, hero, ItRi_SkinnersRing_Gold, 1);
};

INSTANCE Info_Mod_Oschust_Piraten (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Piraten_Condition;
	information	= Info_Mod_Oschust_Piraten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you fix this saber?";
};

FUNC INT Info_Mod_Oschust_Piraten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufgabe))
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) == 1)
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Piraten_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Piraten_15_00"); //Can you fix this saber?
	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_01"); //Let me see that...

	B_GiveInvItems	(hero, self, ItMw_Piratensaebel_Greg, 1);

	AI_UnequipWeapons	(self);
	EquipItem	(self, ItMw_Piratensaebel_Greg);
	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);
	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_02"); //That looks like a good saber.
	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_03"); //Tomorrow's as good as new.

	AI_Output(self, hero, "Info_Mod_Oschust_Piraten_04_05"); //Since you're one of us, it won't cost you anything.

	Mod_MachtSäbel = 1;
	
	Mod_SäbelReparieren = Wld_GetDay();
};

INSTANCE Info_Mod_Oschust_Saebel (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Saebel_Condition;
	information	= Info_Mod_Oschust_Saebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the saber ready?";
};

FUNC INT Info_Mod_Oschust_Saebel_Condition()
{
	if (Mod_MachtSäbel == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Oschust_Piraten))
	&& (Wld_GetDay() > Mod_SäbelReparieren)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_Saebel_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_Saebel_15_00"); //Is the saber ready?
	AI_Output(self, hero, "Info_Mod_Oschust_Saebel_04_01"); //Yeah, he's as good as new. Here he is, sir.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg_Gut, 1);
};

INSTANCE Info_Mod_Oschust_Pickpocket (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_Pickpocket_Condition;
	information	= Info_Mod_Oschust_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Oschust_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMiSwordRaw, 18);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

	Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_BACK, Info_Mod_Oschust_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Oschust_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Oschust_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Oschust_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Oschust_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Oschust_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Oschust_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Oschust_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Oschust_EXIT (C_INFO)
{
	npc		= Mod_7022_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_EXIT_Condition;
	information	= Info_Mod_Oschust_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Oschust_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oschust_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
