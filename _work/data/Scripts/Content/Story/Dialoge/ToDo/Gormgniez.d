INSTANCE Info_Mod_Gormgniez_Hi (C_INFO)
{
	npc		= Gormgniez_11007_FM;
	nr		= 1;
	condition	= Info_Mod_Gormgniez_Hi_Condition;
	information	= Info_Mod_Gormgniez_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gormgniez_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gormgniez_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_00"); //Co? Ty tu, czlowiek! Nigdy nie zatrzymasz mnie i przyjdziesz do mojej rudy.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_01"); //Tak wiec to wy, male dziecko, jestescie odpowiedzialni za te haniebna dzialalnosc. Zakoncze to teraz.
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_02"); //Daj mi przerwe.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_03"); //Dlaczego bym to zrobil? Bez wzgledu na to, czy smok czy goblin, zniszcze takich winowajców jak ty.
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_04"); //Smoki, które znasz? Potrafie powiedziec panu sekret, który moze panu pomóc.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_05"); //O czym Pan mówi?
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_06"); //Wielki smok mówi we snie.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_07"); //Tak, ale co to jest? oh, zwariowac.

	B_LogEntry_More	(TOPIC_MOD_NL_DRACHEN, TOPIC_MOD_NL_CRAWLER, "Damn, odszedl ode mnie. Co mial na mysli 'Wielki Smok mówi we snie'? 'Czy Xardas moze mi o tym opowiedziec wiecej?", "Wiec ten goblin jest odpowiedzialny za cala groze w mojej kopalni.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1582_SFB_Bert_FM, "GERETTET");
	
	B_RemoveNpc	(Zombie_11015_FM);
	B_RemoveNpc	(Zombie_11016_FM);
	B_RemoveNpc	(Zombie_11017_FM);
	B_RemoveNpc	(Zombie_11018_FM);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};
