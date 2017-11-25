var int Mod_FortunoSumpfmensch_Scene_Counter;

FUNC VOID FortunoSumpfmensch_Scene()
{
	if (Mod_FortunoSumpfmensch_Scene_Counter == 1)
	{
		Wld_SendTrigger	("EVT_CAMERA_FORTUNO_SUMPFMENSCH");

		CutsceneAn = TRUE;

		AI_GotoWP	(hero, "PSI_PLACE");

		AI_PlayAni	(hero, "T_STAND_2_SIT");
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 3)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_00"); //Long before the first brothers of our community entered this swamp to cultivate the fallow and dead land and to create a new home for themselves, a human being lived in the confused depths of the mud.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 9)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_01"); //Long before the first brothers of our community entered this swamp to cultivate the fallow and dead land and to create a new home for themselves, a human being lived in the confused depths of the mud.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 15)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_02"); //No one knows why he renounced the world. Some say he was a changeling or half-breed.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 21)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_03"); //The mother of a human being and the father of one of the dark creatures that inhabited this area so many times in the past.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 27)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_04"); //Others believe that he was once a ruler, righteous and sincere towards the people and the law, loyal to his friends and faithful to his wife.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 33)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_05"); //However, when the confused paths of fate forced him to execute his mistress by law because she had broken his marriage, he could no longer bear to see his face mirrored.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 39)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_06"); //He pricked both eyes and the wind drove him into the rotten depths of the swamp.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 45)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_07"); //Yet others claim that this creature was never a human being but a homunculus, a creature created from the dark arts of alchemy, which could not sustain its own existence immortally and escaped from its creators.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 51)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_08"); //Whoever or whatever this creature is, over the decades and centuries it became part of the swamp, ate with the marsh sharks and hunted with the swamp rats.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 57)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_09"); //Whoever or whatever this creature is, over the decades and centuries it became part of the swamp, ate with the marsh sharks and hunted with the swamp rats.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 63)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_10"); //But this peace is now over. Not only the sleeper has been awakened, but also this nasty creature that lurks in the swamp, lurking, hating, murdering, suffering and wanting to share his pain with this world.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 69)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_11"); //From afar you can hear his whimpering and whoever hears it, does well to walk fast and far, because these sounds come from the sad mouth of the wailing swamp people!
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 75)
	{
		// ToDo: Chor, der schreit, wie bei Balor
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 81)
	{
		Mod_Fortuno_Sumpfmensch_Scene = 2;

		Wld_SendUnTrigger	("EVT_CAMERA_FORTUNO_SUMPFMENSCH");

		CutsceneAn = FALSE;

		AI_PlayAni	(hero, "T_SIT_2_STAND");

		B_StartOtherRoutine	(Mod_2008_PSINOV_Ghorim_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1339_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1337_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1336_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1338_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_951_PSINOV_Fortuno_MT, "SUMPFMENSCH2");
	};

	Mod_FortunoSumpfmensch_Scene_Counter += 1;
};
