INSTANCE Info_Mod_Riddler_Hi (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Hi_Condition;
	information	= Info_Mod_Riddler_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riddler_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Felsenfestung))
	&& (riddle6 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_00"); //Co sie dzieje? Nie pamietam dokladnie.
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_01"); //Cien, smierc i ogromna moc.
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_02"); //Chromanin mnie opuscil?

	B_SetTopicStatus	(TOPIC_MOD_THERIDDLE, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_34);
};

INSTANCE Info_Mod_Riddler_Chromanin (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Chromanin_Condition;
	information	= Info_Mod_Riddler_Chromanin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czym jest chromanina?";
};

FUNC INT Info_Mod_Riddler_Chromanin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Chromanin_Info()
{
	AI_Output(hero, self, "Info_Mod_Riddler_Chromanin_15_00"); //Czym jest chromanina?
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_01"); //Chromanin jest niewyobrazalna potega. Dostalem je dawno temu.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_02"); //Wydaje mi sie, ze mam te moc od jednego z bogów. Dostalem tez miecz.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_03"); //Jest bardzo potezny. Z tym mieczem wygralem wiele walk.
	AI_Output(hero, self, "Info_Mod_Riddler_Chromanin_15_04"); //Jak wiec moze sie zdarzyc, ze umrzesz?
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_05"); //Nie, w ogóle nie umarlem. Ale mroczne sily, którymi wciagnalem sie w gre, ogarnely mnie i rzucily w magiczny swiat.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_06"); //Tam zostalem uwieziony i moglem komunikowac sie z tym swiatem tylko w magiczny sposób.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_07"); //Wiec wypelnilem magiczne ksiazki wskazówkami, które moglyby doprowadzic do wyzwolenia.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_08"); //Jednak ciemne sily staraly sie przycmic ich znaczenie w zagadkach i stworzyly wiele innych przeszkód....

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Riddler powiedzial cos o mieczu, który dostal razem z chromanina.");
};

INSTANCE Info_Mod_Riddler_Schwert (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Schwert_Condition;
	information	= Info_Mod_Riddler_Schwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie stalo z mieczem?";
};

FUNC INT Info_Mod_Riddler_Schwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Chromanin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Schwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Riddler_Schwert_15_00"); //Co sie stalo z mieczem?
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_01"); //Czarna magia przejawiala sie w mrocznych istotach, które wziely ja na siebie. Jeden z nich zabral miecz. Prawdopodobnie jest jeszcze gdzies w jaskiniach pod wieza.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_02"); //Skoro pokonales wszystkie przeszkody na drodze do celu, okazales sie godnym uwagi. Chce, abys zachowal miecz, kiedy go znajdziecie.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_03"); //Nie bylam tym, do czego byla przeznaczona i bede sie bronic przed mocami, których nie mam w przyszlosci.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_04"); //Wiec nie moge ci wiele pomóc w twoim poszukiwaniu, poza czescia mojej mocy.

	Info_ClearChoices	(Info_Mod_Riddler_Schwert);

	Info_AddChoice	(Info_Mod_Riddler_Schwert, "wytrzymalosc", Info_Mod_Riddler_Schwert_C);
	Info_AddChoice	(Info_Mod_Riddler_Schwert, "2 Umiejetnosc", Info_Mod_Riddler_Schwert_B);
	Info_AddChoice	(Info_Mod_Riddler_Schwert, "3 Mana Mana", Info_Mod_Riddler_Schwert_A);
};

FUNC VOID Info_Mod_Riddler_Schwert_D()
{
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_D_09_00"); //Zycze powodzenia w drodze. On okresli przeznaczenie ludzi i bogów.

	Info_ClearChoices	(Info_Mod_Riddler_Schwert);

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Napastnik podejrzewa, ze miecz nadal znajduje sie w Wiezy Mgly. Jeden z szkieletów odebral ja wtedy.....");

	Wld_InsertNpc	(Skeleton_Anführer, "OW_FOGDUNGEON_42");
};

FUNC VOID Info_Mod_Riddler_Schwert_C()
{
	B_BlessAttribute	(hero, ATR_STRENGTH, 2);

	Info_Mod_Riddler_Schwert_D();
};

FUNC VOID Info_Mod_Riddler_Schwert_B()
{
	B_BlessAttribute	(hero, ATR_DEXTERITY, 2);

	Info_Mod_Riddler_Schwert_D();
};

FUNC VOID Info_Mod_Riddler_Schwert_A()
{
	B_BlessAttribute	(hero, ATR_MANA_MAX, 3);

	Info_Mod_Riddler_Schwert_D();
};

INSTANCE Info_Mod_Riddler_EXIT (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_EXIT_Condition;
	information	= Info_Mod_Riddler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riddler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riddler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
