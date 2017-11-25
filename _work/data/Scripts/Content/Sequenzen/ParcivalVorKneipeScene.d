var int Mod_ParcivalVorKneipeScene_Counter;

FUNC VOID ParcivalVorKneipeScene()
{
	if (Mod_ParcivalVorKneipeScene_Counter == 0)
	{
		Wld_SendTrigger	("EVT_CAMERA_PARCIVAL_VORKNEIPE");

		AI_TurnToNpc	(Mod_504_PAL_Parcival_REL, hero);
		AI_TurnToNpc	(hero, Mod_504_PAL_Parcival_REL);

		CutsceneAn = TRUE;
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 2)
	{
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_00"); //Tak, dziekuje Ci Innos, bariera jest z powrotem na swoim miejscu.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 8)
	{
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_01"); //Moja sluzba tutaj nie jest juz potrzebna i moge jak najszybciej powr�cic do Khorinis.... Wiecej z tego zgnilego srodowiska.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 14)
	{
		Wld_InsertNpc	(Mod_7673_MIL_Miliz_REL,	"REL_MOOR_141");

		AI_TurnToNpc	(Mod_7673_MIL_Miliz_REL, Mod_504_PAL_Parcival_REL);
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 16)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_02"); //Jestem tutaj w imieniu dow�dcy Garonda.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 22)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_03"); //Dowiedzial sie o nowej sytuacji na torfowisku.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 28)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_04"); //Teraz, gdy okolicznosci na to pozwola, stara osada zostanie odbudowana (....) pod Panstwa kierunkiem i we wsp�lpracy z wykwalifikowanymi ludzmi z tego obszaru.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 34)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_05"); //Za Kr�la!
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 40)
	{
		B_RemoveNpc	(Mod_7673_MIL_Miliz_REL);

		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_06"); //Co? Nie, to nie jest mozliwe.... czekanie!
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 46)
	{
		AI_Output(hero, NULL, "Info_Mod_ParcivalVorKneipeScene_15_07"); //(jednak samemu) No c�z, wydaje sie, ze jeszcze przez jakis czas ma tu do wykonania sw�j obowiazek.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 52)
	{
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_08"); //(entusiastyczny) Nr..... to za duzo.....
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 58)
	{
		B_StartOtherRoutine	(Mod_504_PAL_Parcival_REL, "INKNEIPE");

		Wld_SendUnTrigger	("EVT_CAMERA_PARCIVAL_VORKNEIPE");

		Mod_Parcival_VorKneipe = 2;

		CutsceneAn = FALSE;
	};

	Mod_ParcivalVorKneipeScene_Counter += 1;
};
