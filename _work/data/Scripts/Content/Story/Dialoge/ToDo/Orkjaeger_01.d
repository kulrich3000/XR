INSTANCE Info_Mod_Orkjaeger_01 (C_INFO)
{
	npc		= Mod_1268_SLD_Soeldner_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_01_Condition;
	information	= Info_Mod_Orkjaeger_01_Info;
	permanent	= 1;
	description 	= "I could use some support on an orc problem.";
};                       

FUNC INT Info_Mod_Orkjaeger_01_Condition()
{
	if (Mod_Orchunter_Counter < 6)
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	&& (!Npc_IsDead(Mod_10012_ORC_Scout_MT))
	&& (!Npc_IsDead(Mod_10013_ORC_Scout_MT))
	&& (!Npc_IsDead(Mod_10014_ORC_Elite_MT))
	&& (!Npc_IsDead(Mod_10015_ORC_Elite_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orkjaeger_01_Info()
{
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_15_00"); //I could use some support on an orc problem.
	AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_01"); //What's this about?
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_15_02"); //In a cave in the forest near the bandit camp a handful of hairy contemporaries are camping.

	if (Mod_Gilde == 4)
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_03"); //Hmm, that doesn't sound easy. But if you let some ridiculous 200 gold coins jump - you belong to our camp - and find at least one other man for the action, I'll be there.
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_04"); //Hmm, that doesn't sound easy. But if you let 150 gold coins jump - you are one of us - and at least find another man for the action, I'll be there.
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_05"); //Hmm, that doesn't sound easy. But if you, as my boss, pay me 100 gold coins and at least find another man for the action, I'll be there.
	}
	else
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_06"); //Hmm, that doesn't sound easy. But if you jump 250 coins and find at least one more man for the action, I'll be there.
	};

	Info_ClearChoices	(Info_Mod_Orkjaeger_01);

	Info_AddChoice	(Info_Mod_Orkjaeger_01, "No, it's too expensive.", Info_Mod_Orkjaeger_01_B);

	if (Mod_Gilde == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "All right, here's the gold.", Info_Mod_Orkjaeger_01_A);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "All right, here's the gold.", Info_Mod_Orkjaeger_01_A);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "All right, here's the gold.", Info_Mod_Orkjaeger_01_A);
	}
	else if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "All right, here's the gold.", Info_Mod_Orkjaeger_01_A);
	};
};

FUNC VOID Info_Mod_Orkjaeger_01_B()
{
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_B_15_00"); //No, it's too expensive.
	AI_Output(self,hero,"Info_Mod_Orkjaeger_01_B_11_01"); //If you change your mind, you know where to find me.
	
	Info_ClearChoices	(Info_Mod_Orkjaeger_01);
};

FUNC VOID Info_Mod_Orkjaeger_01_A()
{
	AI_Output(hero, self, "Info_Mod_Orkjaeger_01_A_15_00"); //All right, here's the gold.

	if (Mod_Gilde == 4)
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 200);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 150);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 250);
	};

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Orkjaeger_01_A_11_01"); //All right, I'll see you at the passage in front of the forest.
	
	Info_ClearChoices	(Info_Mod_Orkjaeger_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKJAGD");

	self.npctype = NPCTYPE_MT_ORKJAGD;
	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Mod_Orchunter_Counter += 1;
};
