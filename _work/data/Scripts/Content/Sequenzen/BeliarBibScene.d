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
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_00"); //Jak do tego doszlo? Kto jest odpowiedzialny za to zlosliwosc?
	};

	if (Mod_BeliarBibScene_Counter == 9)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_01"); //To byl brat Mors, Mistrz.
	};

	if (Mod_BeliarBibScene_Counter == 15)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_02"); //Co zrobil ten glupi glupi glupiec?
	};

	if (Mod_BeliarBibScene_Counter == 21)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_03"); //Otworzyl jedna z ksiazek zamknietych ciezkimi lancuchami.
	};

	if (Mod_BeliarBibScene_Counter == 27)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_04"); //On wysadzil uszczelniacz z zakleciem, nawet jesli odradzilismy mu to.
	};

	if (Mod_BeliarBibScene_Counter == 33)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_05"); //W momencie rozluznienia sie lancuchów doszlo do eksplozji, a Morse zostal rzucony przez biblioteke w wysokim luku.
	};

	if (Mod_BeliarBibScene_Counter == 39)
	{
		AI_Output(Mod_7755_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_06"); //Potem pelzanie...... Rzeczy z ksiazki. Wlasnie wzielismy nogi w rece.
	};

	if (Mod_BeliarBibScene_Counter == 45)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_BeliarBibScene_15_07"); //Przekleta ksiazka?
	};

	if (Mod_BeliarBibScene_Counter == 51)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_08"); //Nigdy nie znasz takiej starej szynki. I dlatego trzymasz sie z dala od niego, jesli jestes tylko troche nowicjuszem i nie masz pojecia!
	};

	if (Mod_BeliarBibScene_Counter == 57)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_BeliarBibScene_15_09"); //Czy ktos nie powinien lepiej sprawdzic biblioteki?
	};

	if (Mod_BeliarBibScene_Counter == 63)
	{
		AI_Output(Mod_7756_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_10"); //Nie chce wracac. Tam wszyscy umarli!
	};

	if (Mod_BeliarBibScene_Counter == 69)
	{
		AI_Output(Mod_473_DMB_Andokai_MT, NULL, "Info_Mod_Hero_BeliarBibScene_12_11"); //Tak wiec mielibysmy juz pierwszego wolontariusza.
	};

	if (Mod_BeliarBibScene_Counter == 75)
	{
		AI_Output(Mod_7756_KDS_SchwarzerMagier_MT, NULL, "Info_Mod_Hero_BeliarBibScene_03_12"); //Nie mozesz tego zrobic!
	};

	if (Mod_BeliarBibScene_Counter == 81)
	{
		Mod_BeliarBibScene = 2;

		Wld_SendUnTrigger	("BELIARBIBSCENECAM");

		CutsceneAn = FALSE;
	};

	Mod_BeliarBibScene_Counter += 1;
};
