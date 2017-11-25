FUNC VOID B_EndGame() {
	if (hero.guild == GIL_PAL) {
		Spine_OverallSaveSetInt("Paladin End", 1);
	} else if (hero.guild == GIL_KDF) {
		Spine_OverallSaveSetInt("BeliarEnd", 1);
	} else if (hero.guild == GIL_MIL) {
		Spine_OverallSaveSetInt("MerchantEnd", 1);
	} else if (hero.guild == GIL_VLK) {
		Spine_OverallSaveSetInt("InnosEnd", 1);
	} else if (hero.guild == GIL_NOV) {
		Spine_OverallSaveSetInt("AdanosEnd", 1);
	};
	
	var int amount; amount = 0;
	amount += Spine_OverallSaveGetInt("Paladin End");
	amount += Spine_OverallSaveGetInt("MerchantEnd");
	amount += Spine_OverallSaveGetInt("InnosEnd");
	amount += Spine_OverallSaveGetInt("AdanosEnd");
	amount += Spine_OverallSaveGetInt("BeliarEnd");
	
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_56, amount);
		
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_7);
	
	if (SomeUnimportantRandomValue == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_72);
	} else if (SomeUnimportantRandomValue == 2) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_72);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_73);
	} else if (SomeUnimportantRandomValue == 3) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_72);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_73);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_74);
	};
	
	if (Mod_Xeres_Ende == 3) {
		PlayVideo("Xeres\Extro_ArgezDead.bik");
	} else if (Mod_Xeres_Ende == 4) {
		PlayVideo("Xeres\Extro_ArgezAlive.bik");
	};
	
	PlayVideo("Xeres\Credits.bik");

	ExitSession();
};
