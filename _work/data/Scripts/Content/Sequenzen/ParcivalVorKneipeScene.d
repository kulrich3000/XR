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
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_00"); //Yes, thank you Innos, the barrier is back in place.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 8)
	{
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_01"); //My service here is no longer necessary and I can return to Khorinis as soon as possible... out of this rotten environment.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 14)
	{
		Wld_InsertNpc	(Mod_7673_MIL_Miliz_REL,	"REL_MOOR_141");

		AI_TurnToNpc	(Mod_7673_MIL_Miliz_REL, Mod_504_PAL_Parcival_REL);
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 16)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_02"); //I'm here on behalf of Commander Garond.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 22)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_03"); //He has learned of the new situation on the moor.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 28)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_04"); //Now that the circumstances allow it, the old settlement will be rebuilt... under your guidance and in cooperation with the knowledgeable people of this area.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 34)
	{
		AI_Output(Mod_7673_MIL_Miliz_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_06_05"); //For the King!
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 40)
	{
		B_RemoveNpc	(Mod_7673_MIL_Miliz_REL);

		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_06"); //What?! No, this is not possible... wait!
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 46)
	{
		AI_Output(hero, NULL, "Info_Mod_ParcivalVorKneipeScene_15_07"); //(to himself) Well, it seems that he still has to do his duty here for a while.
	};

	if (Mod_ParcivalVorKneipeScene_Counter == 52)
	{
		AI_Output(Mod_504_PAL_Parcival_REL, NULL, "Info_Mod_ParcivalVorKneipeScene_13_08"); //(enthusiastic) No.... that's too much...
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
