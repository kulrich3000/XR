FUNC VOID B_EndGame() {
	if (hero.guild == GIL_PAL) {
		Spine_OverallSaveSetInt("PaladinEnde", 1);
	} else if (hero.guild == GIL_KDF) {
		Spine_OverallSaveSetInt("BeliarEnde", 1);
	} else if (hero.guild == GIL_MIL) {
		Spine_OverallSaveSetInt("MerchantEnde", 1);
	} else if (hero.guild == GIL_VLK) {
		Spine_OverallSaveSetInt("InnosEnde", 1);
	} else if (hero.guild == GIL_NOV) {
		Spine_OverallSaveSetInt("AdanosEnde", 1);
	};
	
	var int amount; amount = 0;
	amount += max(Spine_OverallSaveGetInt("PaladinEnde"), 0);
	amount += max(Spine_OverallSaveGetInt("MerchantEnde"), 0);
	amount += max(Spine_OverallSaveGetInt("InnosEnde"), 0);
	amount += max(Spine_OverallSaveGetInt("AdanosEnde"), 0);
	amount += max(Spine_OverallSaveGetInt("BeliarEnde"), 0);
	
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_56, amount);
		
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_7);
	
	if (SomeUnimportantRandomValue == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_73);
	} else if (SomeUnimportantRandomValue == 2) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_73);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_74);
	} else if (SomeUnimportantRandomValue == 3) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_73);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_74);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_75);
	};
	
	Spine_UpdateChapterStatistics(hero, Kapitel + 1);
	
	if (Mod_Xeres_Ende == 3) {
		PlayVideo("Xeres\Extro_ArgezDead.bik");
	} else if (Mod_Xeres_Ende == 4) {
		PlayVideo("Xeres\Extro_ArgezAlive.bik");
	};
	
	PlayVideo("Xeres\Credits.bik");

	ExitSession();
};
