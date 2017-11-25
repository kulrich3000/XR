var int Mod_BeliarBibScene_Counter;

FUNC VOID BeliarBibScene()
{
	if (Mod_BeliarBibScene_Counter == 1)
	{
		Wld_SendTrigger	("BELIARBIBSCENECAM");

		CutsceneAn = TRUE;
	};

	if (Mod_BeliarBibScene_Counter == 3)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_00"); //How did this happen? Who is responsible for this mischief?
	};

	if (Mod_BeliarBibScene_Counter == 9)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_01"); //It was Brother Mors, Master.
	};

	if (Mod_BeliarBibScene_Counter == 15)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_02"); //What did that stupid fool do?
	};

	if (Mod_BeliarBibScene_Counter == 21)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_03"); //He opened one of the books closed with heavy chains.
	};

	if (Mod_BeliarBibScene_Counter == 27)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_04"); //He has blown up the sealant with a spell, even though we advised against it.
	};

	if (Mod_BeliarBibScene_Counter == 33)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_05"); //The moment the chains loosened, there was an explosion and Morse was hurled through the library in a high arch.
	};

	if (Mod_BeliarBibScene_Counter == 39)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_06"); //Then crawled.... Things from the book. We just took our legs in our hands.
	};

	if (Mod_BeliarBibScene_Counter == 45)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_BeliarBibScene_15_07"); //A cursed book?
	};

	if (Mod_BeliarBibScene_Counter == 51)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_08"); //You never know with an old ham like that. And that's why you stay away from it if you're just a little novice and have no idea!
	};

	if (Mod_BeliarBibScene_Counter == 57)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_BeliarBibScene_15_09"); //Shouldn't somebody better check the library?
	};

	if (Mod_BeliarBibScene_Counter == 63)
	{
		AI_Output(Mod_7756_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_10"); //I don't want to go back. Everybody's dead there!
	};

	if (Mod_BeliarBibScene_Counter == 69)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_11"); //So we would already have a first volunteer.
	};

	if (Mod_BeliarBibScene_Counter == 75)
	{
		AI_Output(Mod_7756_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_12"); //You can't do this!
	};

	if (Mod_BeliarBibScene_Counter == 81)
	{
		Mod_BeliarBibScene = 2;

		Wld_SendUnTrigger	("BELIARBIBSCENECAM");

		CutsceneAn = FALSE;
	};

	Mod_BeliarBibScene_Counter += 1;
};
