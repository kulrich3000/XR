INSTANCE Info_Mod_AttraktiveFrau_Hi (C_INFO)
{
	npc		= Mod_7198_HEX_AttraktiveFrau_NW;
	nr		= 1;
	condition	= Info_Mod_AttraktiveFrau_Hi_Condition;
	information	= Info_Mod_AttraktiveFrau_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AttraktiveFrau_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_21_00"); //Witaj, przystojny. Co to jest wspanialy facet, jak to robisz w tym nurkowaniu bez zenskiej eskorty?
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_21_01"); //Czy nie dolaczysz do mnie troche?

	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Nie, jestem zajety i musze jechac dalej.", Info_Mod_AttraktiveFrau_Hi_B);
	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Tak, ale zawsze.", Info_Mod_AttraktiveFrau_Hi_A);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_C_21_00"); //Czuje, ze jestes otoczony wyjatkowa aura.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_C_21_01"); //Nie jestes zwyklym czlowiekiem.... Czy nie pójdziemy do pokoju i nie poznamy sie troche lepiej?
	
	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Naprawde musze zaczac dzialac.", Info_Mod_AttraktiveFrau_Hi_E);
	Info_AddChoice	(Info_Mod_AttraktiveFrau_Hi, "Dlaczego nie, odejdzmy.", Info_Mod_AttraktiveFrau_Hi_D);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_F()
{
	Info_ClearChoices	(Info_Mod_AttraktiveFrau_Hi);

	B_StartOtherRoutine	(self, "ZIMMER");

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "WP_TAVERNE_ZIMMER_07");
	AI_GotoWP	(hero, "WP_TAVERNE_ZIMMER_07");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_B_15_00"); //Nie, jestem zajety i musze jechac dalej.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_B_21_01"); //Ale nie jest jednak sluszne robienie takiej laski kobiecie.
	
	Info_Mod_AttraktiveFrau_Hi_C();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_A_15_00"); //Tak, ale zawsze.
	
	Info_Mod_AttraktiveFrau_Hi_C();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_E_15_00"); //Naprawde musze zaczac dzialac.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_E_21_01"); //Slysze w twoim glosie, ze tylko bawisz sie ze mna. Czy przyjdzie Pan dalej, prosze?

	Mod_AttraktiveFrau = 1;
	
	Info_Mod_AttraktiveFrau_Hi_F();
};

FUNC VOID Info_Mod_AttraktiveFrau_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_AttraktiveFrau_Hi_D_15_00"); //Dlaczego nie, odejdzmy.
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Hi_D_21_01"); //Wtedy pójdz za mna.

	Mod_AttraktiveFrau = 2;
	
	Info_Mod_AttraktiveFrau_Hi_F();
};

INSTANCE Info_Mod_AttraktiveFrau_Sex (C_INFO)
{
	npc		= Mod_7198_HEX_AttraktiveFrau_NW;
	nr		= 1;
	condition	= Info_Mod_AttraktiveFrau_Sex_Condition;
	information	= Info_Mod_AttraktiveFrau_Sex_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AttraktiveFrau_Sex_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AttraktiveFrau_Hi))
	&& (Npc_GetDistToWP(self, "WP_TAVERNE_ZIMMER_07") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AttraktiveFrau_Sex_Info()
{
	AI_Output(self, hero, "Info_Mod_AttraktiveFrau_Sex_21_00"); //Teraz rozebrac sie. Bedzie to dla Ciebie niezapomniana noc.

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_GivePlayerXP	(250);

	hero.attribute[ATR_STRENGTH] -= 10;
	hero.attribute[ATR_DEXTERITY] -= 10;
	hero.attribute[ATR_MANA] -= 10;
	hero.attribute[ATR_MANA_MAX] -= 10;

	if (Mod_AttraktiveFrau == 1)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, wcale nie czuje sie dobrze. Ale po prostu nie bylem w stanie oprzec sie ich woli.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, wcale nie czuje sie dobrze. W co sie zaangazowalem?");
	};

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Zdecydowanie powinienem odwiedzic maga uzdrawiajacego, a nastepnie opowiedziec o tym Saturasowi.");
		
	Spine_OverallSaveSetInt("HexeSex", 1);
	CheckSexAchievement();
};
