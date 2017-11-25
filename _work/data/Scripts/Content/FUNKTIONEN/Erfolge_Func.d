FUNC VOID CheckHalluAchievement() {
	if (Spine_OverallSaveGetInt("HalluHS") == 1 && Spine_OverallSaveGetInt("cloud world") == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_20);
	};
};

FUNC VOID CheckSexAchievement() {
	if (Spine_OverallSaveGetInt("JudithSex") == 1 && Spine_OverallSaveGetInt("witch sex") == 1 && Spine_OverallSaveGetInt("SonjaSex") == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_38);
	};
};

FUNC VOID CheckMonsterHunterAchievement() {
	var int amount; amount = 0;
	amount += max(0, Spine_OverallSaveGetInt("UndeadOrcWarrior"));
	amount += max(0, Spine_OverallSaveGetInt("UndeadOrcPriest"));
	amount += max(0, Spine_OverallSaveGetInt("WaterOrc"));
	amount += max(0, Spine_OverallSaveGetInt("OrcWarrior"));
	amount += max(0, Spine_OverallSaveGetInt("OrcShaman"));
	amount += max(0, Spine_OverallSaveGetInt("OrcElite"));
	amount += max(0, Spine_OverallSaveGetInt("Stoneguardian"));
	amount += max(0, Spine_OverallSaveGetInt("Archguardian"));
	amount += max(0, Spine_OverallSaveGetInt("Shadowbeast_Fire"));
	amount += max(0, Spine_OverallSaveGetInt("Razor"));
	amount += max(0, Spine_OverallSaveGetInt("OrcBiter"));
	amount += max(0, Spine_OverallSaveGetInt("Keiler"));
	amount += max(0, Spine_OverallSaveGetInt("Riesenkeiler"));
	amount += max(0, Spine_OverallSaveGetInt("ice wolf"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Warrior"));
	amount += max(0, Spine_OverallSaveGetInt("Giant_Desert Council"));
	amount += max(0, Spine_OverallSaveGetInt("Bloodhound"));
	amount += max(0, Spine_OverallSaveGetInt("foliar crawler"));
	amount += max(0, Spine_OverallSaveGetInt("Erznager"));
	amount += max(0, Spine_OverallSaveGetInt("insect"));
	amount += max(0, Spine_OverallSaveGetInt("Alligator"));
	amount += max(0, Spine_OverallSaveGetInt("Zombie"));
	amount += max(0, Spine_OverallSaveGetInt("goat"));
	amount += max(0, Spine_OverallSaveGetInt("Wolf"));
	amount += max(0, Spine_OverallSaveGetInt("Riesenwolf"));
	amount += max(0, Spine_OverallSaveGetInt("wisp"));
	amount += max(0, Spine_OverallSaveGetInt("Warg"));
	amount += max(0, Spine_OverallSaveGetInt("BlackWolf"));
	amount += max(0, Spine_OverallSaveGetInt("Waran"));
	amount += max(0, Spine_OverallSaveGetInt("Truhe"));
	amount += max(0, Spine_OverallSaveGetInt("Troll_Black"));
	amount += max(0, Spine_OverallSaveGetInt("Troll_Silver"));
	amount += max(0, Spine_OverallSaveGetInt("Troll"));
	amount += max(0, Spine_OverallSaveGetInt("Tiger_White"));
	amount += max(0, Spine_OverallSaveGetInt("Swampshark"));
	amount += max(0, Spine_OverallSaveGetInt("Swampshark_Undead"));
	amount += max(0, Spine_OverallSaveGetInt("Lindwurm"));
	amount += max(0, Spine_OverallSaveGetInt("maggot"));
	amount += max(0, Spine_OverallSaveGetInt("StoneGolem"));
	amount += max(0, Spine_OverallSaveGetInt("ore golem"));
	amount += max(0, Spine_OverallSaveGetInt("iron golem"));
	amount += max(0, Spine_OverallSaveGetInt("spider"));
	amount += max(0, Spine_OverallSaveGetInt("Spider_Big"));
	amount += max(0, Spine_OverallSaveGetInt("Spider_Queen"));
	amount += max(0, Spine_OverallSaveGetInt("Dalma"));
	amount += max(0, Spine_OverallSaveGetInt("Snapper"));
	amount += max(0, Spine_OverallSaveGetInt("Fire snapper"));
	amount += max(0, Spine_OverallSaveGetInt("Water snapper"));
	amount += max(0, Spine_OverallSaveGetInt("Shadow snapper"));
	amount += max(0, Spine_OverallSaveGetInt("sleeper"));
	amount += max(0, Spine_OverallSaveGetInt("SkeletonMage"));
	amount += max(0, Spine_OverallSaveGetInt("Skeleton_Lord"));
	amount += max(0, Spine_OverallSaveGetInt("Skeleton_Lord_Ghost"));
	amount += max(0, Spine_OverallSaveGetInt("skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("SkeletonWarrior"));
	amount += max(0, Spine_OverallSaveGetInt("Lesser_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("sheep"));
	amount += max(0, Spine_OverallSaveGetInt("Hammel"));
	amount += max(0, Spine_OverallSaveGetInt("Shadowbeast_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("Nightmare_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("Shadowbeast"));
	amount += max(0, Spine_OverallSaveGetInt("runner"));
	amount += max(0, Spine_OverallSaveGetInt("water runner"));
	amount += max(0, Spine_OverallSaveGetInt("ice skater"));
	amount += max(0, Spine_OverallSaveGetInt("nightmare"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger_Ice"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger_Demon"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger"));
	amount += max(0, Spine_OverallSaveGetInt("rabbit"));
	amount += max(0, Spine_OverallSaveGetInt("orcdog"));
	amount += max(0, Spine_OverallSaveGetInt("Molerat"));
	amount += max(0, Spine_OverallSaveGetInt("Minotaurus"));
	amount += max(0, Spine_OverallSaveGetInt("Minecrawler Warrior"));
	amount += max(0, Spine_OverallSaveGetInt("MinecrawlerWarrior_Undad"));
	amount += max(0, Spine_OverallSaveGetInt("RedCrab"));
	amount += max(0, Spine_OverallSaveGetInt("MinecrawlerQueen"));
	amount += max(0, Spine_OverallSaveGetInt("ErznagerQueen"));
	amount += max(0, Spine_OverallSaveGetInt("Minecrawler"));
	amount += max(0, Spine_OverallSaveGetInt("Kristallcrawler"));
	amount += max(0, Spine_OverallSaveGetInt("Meatbug"));
	amount += max(0, Spine_OverallSaveGetInt("Lurker"));
	amount += max(0, Spine_OverallSaveGetInt("Kobold"));
	amount += max(0, Spine_OverallSaveGetInt("IceGolem"));
	amount += max(0, Spine_OverallSaveGetInt("Harpie"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Green"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Black"));
	amount += max(0, Spine_OverallSaveGetInt("Giant_Council"));
	amount += max(0, Spine_OverallSaveGetInt("tip"));
	amount += max(0, Spine_OverallSaveGetInt("Giant_Bug"));
	amount += max(0, Spine_OverallSaveGetInt("FireWaran"));
	amount += max(0, Spine_OverallSaveGetInt("Ice monitor"));
	amount += max(0, Spine_OverallSaveGetInt("FireGolem"));
	amount += max(0, Spine_OverallSaveGetInt("earth giant"));
	amount += max(0, Spine_OverallSaveGetInt("Eisdrachensnapper"));
	amount += max(0, Spine_OverallSaveGetInt("Dungeon Harpie"));
	amount += max(0, Spine_OverallSaveGetInt("DragonSnapper"));
	amount += max(0, Spine_OverallSaveGetInt("Razor skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("DemonLord"));
	amount += max(0, Spine_OverallSaveGetInt("DemonHigh"));
	amount += max(0, Spine_OverallSaveGetInt("demo"));
	amount += max(0, Spine_OverallSaveGetInt("LessDemon"));
	amount += max(0, Spine_OverallSaveGetInt("Blutgolem"));
	amount += max(0, Spine_OverallSaveGetInt("bloodfly"));
	amount += max(0, Spine_OverallSaveGetInt("Balrog"));
	amount += max(0, Spine_OverallSaveGetInt("Alraune"));
	amount += max(0, Spine_OverallSaveGetInt("swamprat"));
	amount += max(0, Spine_OverallSaveGetInt("SwampGolem"));
	amount += max(0, Spine_OverallSaveGetInt("SwampDron"));
	amount += max(0, Spine_OverallSaveGetInt("Puma"));
	amount += max(0, Spine_OverallSaveGetInt("Stone Puma"));
	amount += max(0, Spine_OverallSaveGetInt("Apfelbaum"));
	amount += max(0, Spine_OverallSaveGetInt("StoneGolemerz"));
	amount += max(0, Spine_OverallSaveGetInt("Kristallgolem"));
	amount += max(0, Spine_OverallSaveGetInt("UndeadOrcWarriorHorn"));
	amount += max(0, Spine_OverallSaveGetInt("Hauertroll"));
	amount += max(0, Spine_OverallSaveGetInt("shadow wind"));
	amount += max(0, Spine_OverallSaveGetInt("Zombie_ice_snow"));
	amount += max(0, Spine_OverallSaveGetInt("SnowHare"));
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_23, amount);
};

FUNC VOID CheckWorldTravelerAchievement() {
	var int amount; amount = 0;
	amount += max(0, Spine_OverallSaveGetInt("JharkendarVisited"));
	amount += max(0, Spine_OverallSaveGetInt("KhorinisVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Minental Visited"));
	amount += max(0, Spine_OverallSaveGetInt("OrctempelVisited"));
	amount += max(0, Spine_OverallSaveGetInt("DiscontinuedMineVisited"));
	amount += max(0, Spine_OverallSaveGetInt("OldMineVisited"));
	amount += max(0, Spine_OverallSaveGetInt("OrcGraveyardVisited"));
	amount += max(0, Spine_OverallSaveGetInt("FreeMineVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Ritual IslandVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Treasure IslandVisited"));
	amount += max(0, Spine_OverallSaveGetInt("OrcCityVisited"));
	amount += max(0, Spine_OverallSaveGetInt("XeresFortressVisited"));
	amount += max(0, Spine_OverallSaveGetInt("IrdorathVisited"));
	amount += max(0, Spine_OverallSaveGetInt("PatherionVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Mountain worldVisited"));
	amount += max(0, Spine_OverallSaveGetInt("TugettsoVisited"));
	amount += max(0, Spine_OverallSaveGetInt("GelatoVisited"));
	amount += max(0, Spine_OverallSaveGetInt("FlyingIsleVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Relendel Visited"));
	amount += max(0, Spine_OverallSaveGetInt("HunterCampVisited"));
	amount += max(0, Spine_OverallSaveGetInt("CloudWorldVisited"));
	amount += max(0, Spine_OverallSaveGetInt("HallucinationVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Forest Gorge Visited"));
	amount += max(0, Spine_OverallSaveGetInt("DragonVisited"));
	amount += max(0, Spine_OverallSaveGetInt("RelendelMineVisited"));
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_42, amount);
};

FUNC VOID Erfolge_Func() {
	// Erfolge auswerten
	// Helferlein
	if (CurrentNQ >= ((80 * MaxNQ) / 100)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_11);
	};
	// Rattenjäger
	if (Mod_REL_Wettstreit_Hero > 20) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_13);
	};
	if (Npc_HasItems(hero, ItMi_GreatPearl)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_35);
	};
	if (Npc_HasItems(hero, ItBe_GuertelDerEhre) && Npc_HasItems(hero, ItAm_HalskettederEhre) && Npc_HasItems(hero, ItRi_LinkerRingDerEhre) && Npc_HasItems(hero, ItRi_RechterRingDerEhre)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_37);
	};
	
	if (CurrentLevel == BERGWELT_ZEN) {
		if (Npc_HasItems(hero, ITAR_SleeperMask)) {
			Spine_UnlockAchievement(SPINE_ACHIEVEMENT_32);
		};
	};
};
