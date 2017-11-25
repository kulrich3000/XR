INSTANCE Info_Mod_Orkjaeger_01 (C_INFO)
{
	npc		= Mod_1268_SLD_Soeldner_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_01_Condition;
	information	= Info_Mod_Orkjaeger_01_Info;
	permanent	= 1;
	description 	= "Móglbym skorzystac z pewnego wsparcia przy rozwiazywaniu problemów orkowych.";
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
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_15_00"); //Móglbym skorzystac z pewnego wsparcia przy rozwiazywaniu problemów orkowych.
	AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_01"); //Co o tym chodzi?
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_15_02"); //W jaskini w lesie kolo obozu bandytów biwakuje garsc owlosionych wspólczesnych.

	if (Mod_Gilde == 4)
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_03"); //Hmm, to nie brzmi latwo. Ale jesli pozwolisz, aby jakies smieszne 200 zlote monety skoczyly - nalezysz do naszego obozu - i znalazles co najmniej jednego innego mezczyzne na akcje, bede tam.
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_04"); //Hmm, to nie brzmi latwo. Ale jesli pozwolisz skoczyc 150 zlotych monet - jestes jednym z nas - i przynajmniej znajde innego mezczyzne na akcje, bede tam.
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_05"); //Hmm, to nie brzmi latwo. Ale jesli, jako mój szef, zaplaci mi 100 zlotych monet i przynajmniej znajdzie sie inny mezczyzna do akcji, bede tam.
	}
	else
	{
		AI_Output(self,hero,"Info_Mod_Orkjaeger_01_11_06"); //Hmm, to nie brzmi latwo. Ale jesli skoczysz 250 monet i znajdziesz co najmniej jednego innego czlowieka na akcje, bede tam.
	};

	Info_ClearChoices	(Info_Mod_Orkjaeger_01);

	Info_AddChoice	(Info_Mod_Orkjaeger_01, "Nie, to jest zbyt drogie.", Info_Mod_Orkjaeger_01_B);

	if (Mod_Gilde == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "Wszystko dobrze, tutaj zloto.", Info_Mod_Orkjaeger_01_A);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "Wszystko dobrze, tutaj zloto.", Info_Mod_Orkjaeger_01_A);
	}
	else if ((Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "Wszystko dobrze, tutaj zloto.", Info_Mod_Orkjaeger_01_A);
	}
	else if (Npc_HasItems(hero, ItMi_Gold) >= 250)
	{
		Info_AddChoice	(Info_Mod_Orkjaeger_01, "Wszystko dobrze, tutaj zloto.", Info_Mod_Orkjaeger_01_A);
	};
};

FUNC VOID Info_Mod_Orkjaeger_01_B()
{
	AI_Output(hero,self,"Info_Mod_Orkjaeger_01_B_15_00"); //Nie, to jest zbyt drogie.
	AI_Output(self,hero,"Info_Mod_Orkjaeger_01_B_11_01"); //Jesli zmienisz zdanie, wiesz, gdzie mnie znalezc.
	
	Info_ClearChoices	(Info_Mod_Orkjaeger_01);
};

FUNC VOID Info_Mod_Orkjaeger_01_A()
{
	AI_Output(hero, self, "Info_Mod_Orkjaeger_01_A_15_00"); //Wszystko dobrze, tutaj zloto.

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

	AI_Output(self, hero, "Info_Mod_Orkjaeger_01_A_11_01"); //Na prawo widze cie na przejsciu przed lasem.
	
	Info_ClearChoices	(Info_Mod_Orkjaeger_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKJAGD");

	self.npctype = NPCTYPE_MT_ORKJAGD;
	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Mod_Orchunter_Counter += 1;
};
