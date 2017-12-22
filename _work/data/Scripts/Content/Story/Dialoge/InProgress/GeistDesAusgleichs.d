INSTANCE Info_Mod_GeistDesAusgleichs_Hi (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_Hi_Condition;
	information	= Info_Mod_GeistDesAusgleichs_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GeistDesAusgleichs_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_00"); //I am the spirit of compensation. To those who are worthy of me, I will impose the test.
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Hi_15_01"); //Exam? Not so fast! What's this all about?
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_02"); //It's about understanding certain virtues. I'll give you up on riddles.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_03"); //If you will be able to answer all of them correctly, you will receive a reward.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_04"); //But know that no one has ever passed.
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Hi_15_05"); //Is there any danger if I fail?
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_06"); //Only those that you have to start the test anew, if you want to pass it. So, dare you?
};

FUNC VOID B_SetRaetsel()
{
	Mod_Raetsel01 = Hlp_Random(10);

	var int ptr; ptr = MEM_StackPos.position;

	if (Mod_Raetsel02 == Mod_Raetsel01)
	{	
		Mod_Raetsel02 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel03 == Mod_Raetsel01)
	|| (Mod_Raetsel03 == Mod_Raetsel02)
	{	
		Mod_Raetsel03 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel04 == Mod_Raetsel01)
	|| (Mod_Raetsel04 == Mod_Raetsel02)
	|| (Mod_Raetsel04 == Mod_Raetsel03)
	{	
		Mod_Raetsel04 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel05 == Mod_Raetsel01)
	|| (Mod_Raetsel05 == Mod_Raetsel02)
	|| (Mod_Raetsel05 == Mod_Raetsel03)
	|| (Mod_Raetsel05 == Mod_Raetsel04)
	{	
		Mod_Raetsel05 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};
};

FUNC VOID B_Raetseln(var int raetsel)
{
	Mod_GdG_Frage += 1;

	Info_ClearChoices	(Info_Mod_GeistDesAusgleichs_Raetsel);

	if (raetsel == 0)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_01_22_00"); //Who fell victim to the powerful hammer?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The daring one.", Info_Mod_GeistDesAusgleichs_Raetsel_01_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The animal.", Info_Mod_GeistDesAusgleichs_Raetsel_01_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The demon.", Info_Mod_GeistDesAusgleichs_Raetsel_01_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The undead.", Info_Mod_GeistDesAusgleichs_Raetsel_01_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The guard.", Info_Mod_GeistDesAusgleichs_Raetsel_01_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The Golem.", Info_Mod_GeistDesAusgleichs_Raetsel_01_A);
	}
	else if (raetsel == 1)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_02_22_01"); //What burden did the last one suffer?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Greed.", Info_Mod_GeistDesAusgleichs_Raetsel_02_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The darkness.", Info_Mod_GeistDesAusgleichs_Raetsel_02_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The poison.", Info_Mod_GeistDesAusgleichs_Raetsel_02_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The rot.", Info_Mod_GeistDesAusgleichs_Raetsel_02_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The blood.", Info_Mod_GeistDesAusgleichs_Raetsel_02_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The plague.", Info_Mod_GeistDesAusgleichs_Raetsel_02_A);
	}
	else if (raetsel == 2)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_03_22_02"); //What fought those two, who were so alike in their nature?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Around the earth.", Info_Mod_GeistDesAusgleichs_Raetsel_03_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The estate.", Info_Mod_GeistDesAusgleichs_Raetsel_03_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "About life.", Info_Mod_GeistDesAusgleichs_Raetsel_03_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "About rebirth.", Info_Mod_GeistDesAusgleichs_Raetsel_03_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The Force.", Info_Mod_GeistDesAusgleichs_Raetsel_03_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "About the gold.", Info_Mod_GeistDesAusgleichs_Raetsel_03_A);
	}
	else if (raetsel == 3)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_04_22_03"); //The invader believed to be surrounded by the divine and yet he fell to what power?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The animal.", Info_Mod_GeistDesAusgleichs_Raetsel_04_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The lust.", Info_Mod_GeistDesAusgleichs_Raetsel_04_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Greed.", Info_Mod_GeistDesAusgleichs_Raetsel_04_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Demonic.", Info_Mod_GeistDesAusgleichs_Raetsel_04_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The damnation.", Info_Mod_GeistDesAusgleichs_Raetsel_04_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The darkness.", Info_Mod_GeistDesAusgleichs_Raetsel_04_A);
	}
	else if (raetsel == 4)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_05_22_04"); //Two from days long gone. One of them took the burden of stone. For what?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Throne for the second.", Info_Mod_GeistDesAusgleichs_Raetsel_05_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "As his burden.", Info_Mod_GeistDesAusgleichs_Raetsel_05_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "As his prison.", Info_Mod_GeistDesAusgleichs_Raetsel_05_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "As his servant.", Info_Mod_GeistDesAusgleichs_Raetsel_05_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Carrying his power.", Info_Mod_GeistDesAusgleichs_Raetsel_05_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "As a testimony to his origin.", Info_Mod_GeistDesAusgleichs_Raetsel_05_A);
	}
	else if (raetsel == 5)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_06_22_05"); //He came from outside and entered the hall of the community. What was it permeated by?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the divine.", Info_Mod_GeistDesAusgleichs_Raetsel_06_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the stone.", Info_Mod_GeistDesAusgleichs_Raetsel_06_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Of doubts.", Info_Mod_GeistDesAusgleichs_Raetsel_06_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the water.", Info_Mod_GeistDesAusgleichs_Raetsel_06_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From infamy.", Info_Mod_GeistDesAusgleichs_Raetsel_06_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the fire.", Info_Mod_GeistDesAusgleichs_Raetsel_06_A);
	}
	else if (raetsel == 6)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_07_22_06"); //The enemy entered the shore of God. What was he struck down by?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the guard.", Info_Mod_GeistDesAusgleichs_Raetsel_07_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the servant.", Info_Mod_GeistDesAusgleichs_Raetsel_07_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From his own image.", Info_Mod_GeistDesAusgleichs_Raetsel_07_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the lightning.", Info_Mod_GeistDesAusgleichs_Raetsel_07_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the lance.", Info_Mod_GeistDesAusgleichs_Raetsel_07_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "From the sword.", Info_Mod_GeistDesAusgleichs_Raetsel_07_A);
	}
	else if (raetsel == 7)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_08_22_07"); //He granted him shelter, food and drink, ignorant that he did not quite create it. Because what was his guest looking for?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "After his kid.", Info_Mod_GeistDesAusgleichs_Raetsel_08_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "To his knowledge.", Info_Mod_GeistDesAusgleichs_Raetsel_08_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "After his wife.", Info_Mod_GeistDesAusgleichs_Raetsel_08_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "After his possession.", Info_Mod_GeistDesAusgleichs_Raetsel_08_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "To his soul.", Info_Mod_GeistDesAusgleichs_Raetsel_08_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "After his life.", Info_Mod_GeistDesAusgleichs_Raetsel_08_A);
	}
	else if (raetsel == 8)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_09_22_08"); //He had shown great courage, worthy of a heavenly one. What was the instrument of his deeds?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The ignorance.", Info_Mod_GeistDesAusgleichs_Raetsel_09_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The bare hands.", Info_Mod_GeistDesAusgleichs_Raetsel_09_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The potion.", Info_Mod_GeistDesAusgleichs_Raetsel_09_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Magic.", Info_Mod_GeistDesAusgleichs_Raetsel_09_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "His will.", Info_Mod_GeistDesAusgleichs_Raetsel_09_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The sword.", Info_Mod_GeistDesAusgleichs_Raetsel_09_A);
	}
	else if (raetsel == 9)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_10_22_09"); //He snatched from the other's possessions, unaware that his own destiny was sealed with it. For what evil was hidden therein?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The plague.", Info_Mod_GeistDesAusgleichs_Raetsel_10_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The poison.", Info_Mod_GeistDesAusgleichs_Raetsel_10_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The madness.", Info_Mod_GeistDesAusgleichs_Raetsel_10_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The infirmity.", Info_Mod_GeistDesAusgleichs_Raetsel_10_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "The demon.", Info_Mod_GeistDesAusgleichs_Raetsel_10_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Death by fire.", Info_Mod_GeistDesAusgleichs_Raetsel_10_A);
	};
};

FUNC VOID B_RaetselAuswertung()
{
	if (Mod_GdG_Richtig == 5)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_00"); //You answered wisely and rightly.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_01"); //You have understood the meaning of humor, and I will increase your ability to influence other people.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_02"); //My job is done with that. Farewell.

		B_GivePlayerXP	(1500);

		B_ShowGivenThings	("Rune of oblivion, 3 spell rolls of fear and 5 spell rolls of sleep");

		CreateInvItems	(hero, ItRu_Charm, 1);
		CreateInvItems	(hero, ItSc_Fear, 3);
		CreateInvItems	(hero, ItSc_Sleep, 5);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_03"); //Your answers were flawed. You either lack knowledge or lack understanding.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_04"); //Come back when you're ready.
	};

	Info_ClearChoices	(Info_Mod_GeistDesAusgleichs_Raetsel);
};

FUNC VOID B_Raetseln2()
{
	if (Mod_GdG_Frage == 1)
	{
		B_Raetseln(Mod_Raetsel02);
	}
	else if (Mod_GdG_Frage == 2)
	{
		B_Raetseln(Mod_Raetsel03);
	}
	else if (Mod_GdG_Frage == 3)
	{
		B_Raetseln(Mod_Raetsel04);
	}
	else if (Mod_GdG_Frage == 4)
	{
		B_Raetseln(Mod_Raetsel05);
	}
	else
	{
		B_RaetselAuswertung();
	};
};

INSTANCE Info_Mod_GeistDesAusgleichs_Raetsel (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_Raetsel_Condition;
	information	= Info_Mod_GeistDesAusgleichs_Raetsel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to take your test.";
};

FUNC INT Info_Mod_GeistDesAusgleichs_Raetsel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GeistDesAusgleichs_Hi))
	&& (Mod_GdG_Richtig != 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_Info()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_15_00"); //I want to take your test.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_22_01"); //So be it. Listen and answer with caution.

	Mod_GdG_Frage = 0;

	Mod_GdG_Richtig = 0;

	// Auswürfeln der 5 Fragen

	B_SetRaetsel();

	B_Raetseln(Mod_Raetsel01);
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_F_15_00"); //The daring one.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_E_15_00"); //The animal.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_D_15_00"); //The demon.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_C_15_00"); //The undead.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_B_15_00"); //The guard.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_A_15_00"); //The Golem.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_F_15_00"); //Greed.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_E_15_00"); //The darkness.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_D_15_00"); //The poison.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_C_15_00"); //The rot.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_B_15_00"); //The blood.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_A_15_00"); //The plague.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_F_15_00"); //Around the earth.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_E_15_00"); //The estate.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_D_15_00"); //About life.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_C_15_00"); //About rebirth.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_B_15_00"); //The Force.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_A_15_00"); //About the gold.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_F_15_00"); //The animal.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_E_15_00"); //The lust.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_D_15_00"); //Greed.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_C_15_00"); //Demonic.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_B_15_00"); //The damnation.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_A_15_00"); //The darkness.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_F_15_00"); //Throne for the second.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_E_15_00"); //As his burden.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_D_15_00"); //As his prison.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_C_15_00"); //As his servant.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_B_15_00"); //Carrying his power.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_A_15_00"); //As a testimony to his origin.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_F_15_00"); //From the divine.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_E_15_00"); //From the stone.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_D_15_00"); //Of doubts.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_C_15_00"); //From the water.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_B_15_00"); //From infamy.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_A_15_00"); //From the fire.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_F_15_00"); //From the guard.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_E_15_00"); //From the servant.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_D_15_00"); //From his own image.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_C_15_00"); //From the lightning.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_B_15_00"); //From the lance.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_A_15_00"); //From the sword.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_F_15_00"); //After his kid.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_E_15_00"); //To his knowledge.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_D_15_00"); //After his wife.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_C_15_00"); //After his possession.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_B_15_00"); //To his soul.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_A_15_00"); //After his life.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_F_15_00"); //The ignorance.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_E_15_00"); //The bare hands.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_D_15_00"); //The potion.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_C_15_00"); //Magic.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_B_15_00"); //His will.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_A_15_00"); //The sword.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_F_15_00"); //The plague.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_E_15_00"); //The poison.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_D_15_00"); //The madness.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_C_15_00"); //The infirmity.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_B_15_00"); //The demon.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_A_15_00"); //Death by fire.

	B_Raetseln2();
};

INSTANCE Info_Mod_GeistDesAusgleichs_EXIT (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_EXIT_Condition;
	information	= Info_Mod_GeistDesAusgleichs_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GeistDesAusgleichs_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GeistDesAusgleichs_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
