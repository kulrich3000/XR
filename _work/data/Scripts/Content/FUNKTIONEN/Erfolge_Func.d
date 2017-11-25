FUNC VOID CheckHalluAchievement() {
	if (Spine_OverallSaveGetInt("Hallusz") == 1 && Spine_OverallSaveGetInt("chmur") == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_20);
	};
};

FUNC VOID CheckSexAchievement() {
	if (Spine_OverallSaveGetInt("JudithSex") == 1 && Spine_OverallSaveGetInt("czarownica") == 1 && Spine_OverallSaveGetInt("Sonjaex") == 1) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_38);
	};
};

FUNC VOID CheckMonsterHunterAchievement() {
	var int amount; amount = 0;
	amount += max(0, Spine_OverallSaveGetInt("NieumiejetneOrcWarriorium"));
	amount += max(0, Spine_OverallSaveGetInt("Nieumiarkowany ksiadz"));
	amount += max(0, Spine_OverallSaveGetInt("Luk wodny"));
	amount += max(0, Spine_OverallSaveGetInt("OrcWarrior"));
	amount += max(0, Spine_OverallSaveGetInt("OrcShaman"));
	amount += max(0, Spine_OverallSaveGetInt("OrkElit"));
	amount += max(0, Spine_OverallSaveGetInt("Stoneguardian"));
	amount += max(0, Spine_OverallSaveGetInt("Archguardian"));
	amount += max(0, Spine_OverallSaveGetInt("Cieniec_Fire_Fire"));
	amount += max(0, Spine_OverallSaveGetInt("Razor"));
	amount += max(0, Spine_OverallSaveGetInt("OrcBiter"));
	amount += max(0, Spine_OverallSaveGetInt("Keiler"));
	amount += max(0, Spine_OverallSaveGetInt("Riesenkeiler"));
	amount += max(0, Spine_OverallSaveGetInt("wilk"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Warrior"));
	amount += max(0, Spine_OverallSaveGetInt("Rada Giant_Desert"));
	amount += max(0, Spine_OverallSaveGetInt("krew"));
	amount += max(0, Spine_OverallSaveGetInt("gasienica"));
	amount += max(0, Spine_OverallSaveGetInt("Erznager"));
	amount += max(0, Spine_OverallSaveGetInt("owad"));
	amount += max(0, Spine_OverallSaveGetInt("Alligator"));
	amount += max(0, Spine_OverallSaveGetInt("Zombie"));
	amount += max(0, Spine_OverallSaveGetInt("koza"));
	amount += max(0, Spine_OverallSaveGetInt("Wolf"));
	amount += max(0, Spine_OverallSaveGetInt("Riesenwolf"));
	amount += max(0, Spine_OverallSaveGetInt("szypulka"));
	amount += max(0, Spine_OverallSaveGetInt("Warg"));
	amount += max(0, Spine_OverallSaveGetInt("BlackWolf"));
	amount += max(0, Spine_OverallSaveGetInt("Waran"));
	amount += max(0, Spine_OverallSaveGetInt("Truhe"));
	amount += max(0, Spine_OverallSaveGetInt("Troll_Black"));
	amount += max(0, Spine_OverallSaveGetInt("Troll_Silver"));
	amount += max(0, Spine_OverallSaveGetInt("Troll"));
	amount += max(0, Spine_OverallSaveGetInt("Tygrys_White"));
	amount += max(0, Spine_OverallSaveGetInt("swampshark"));
	amount += max(0, Spine_OverallSaveGetInt("Nieszczescie nieszczescie"));
	amount += max(0, Spine_OverallSaveGetInt("Lindwurm"));
	amount += max(0, Spine_OverallSaveGetInt("larwa"));
	amount += max(0, Spine_OverallSaveGetInt("StoneGlem"));
	amount += max(0, Spine_OverallSaveGetInt("golem"));
	amount += max(0, Spine_OverallSaveGetInt("golem"));
	amount += max(0, Spine_OverallSaveGetInt("pajak"));
	amount += max(0, Spine_OverallSaveGetInt("Spider_Big"));
	amount += max(0, Spine_OverallSaveGetInt("Spider_Queen"));
	amount += max(0, Spine_OverallSaveGetInt("Dalma"));
	amount += max(0, Spine_OverallSaveGetInt("Snapper"));
	amount += max(0, Spine_OverallSaveGetInt("straznica"));
	amount += max(0, Spine_OverallSaveGetInt("Suwak wodny"));
	amount += max(0, Spine_OverallSaveGetInt("Slizgacz cienia"));
	amount += max(0, Spine_OverallSaveGetInt("podklad"));
	amount += max(0, Spine_OverallSaveGetInt("SzkieletMag"));
	amount += max(0, Spine_OverallSaveGetInt("Szkielet_Lord"));
	amount += max(0, Spine_OverallSaveGetInt("Skeleton_Lord_Ghost"));
	amount += max(0, Spine_OverallSaveGetInt("szkielet"));
	amount += max(0, Spine_OverallSaveGetInt("SzkieletWarrior"));
	amount += max(0, Spine_OverallSaveGetInt("Mniejszosc_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("owca"));
	amount += max(0, Spine_OverallSaveGetInt("Hammel"));
	amount += max(0, Spine_OverallSaveGetInt("Cieniec_Skeletonon"));
	amount += max(0, Spine_OverallSaveGetInt("Nightmare_Skeletonon"));
	amount += max(0, Spine_OverallSaveGetInt("Drozdze czarowe"));
	amount += max(0, Spine_OverallSaveGetInt("biegacz"));
	amount += max(0, Spine_OverallSaveGetInt("bieznik"));
	amount += max(0, Spine_OverallSaveGetInt("lodowiec"));
	amount += max(0, Spine_OverallSaveGetInt("koszmar"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger_Iceger"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger_Demon"));
	amount += max(0, Spine_OverallSaveGetInt("Scavenger"));
	amount += max(0, Spine_OverallSaveGetInt("królik"));
	amount += max(0, Spine_OverallSaveGetInt("orkiestra"));
	amount += max(0, Spine_OverallSaveGetInt("Molerat"));
	amount += max(0, Spine_OverallSaveGetInt("Minotaurus"));
	amount += max(0, Spine_OverallSaveGetInt("Minecrawler Warator"));
	amount += max(0, Spine_OverallSaveGetInt("Minecrawler-Warrior_Undadadad_Undad"));
	amount += max(0, Spine_OverallSaveGetInt("RedCrab"));
	amount += max(0, Spine_OverallSaveGetInt("MinecrawlerQueen"));
	amount += max(0, Spine_OverallSaveGetInt("ErznagerQueen"));
	amount += max(0, Spine_OverallSaveGetInt("Minecrawler"));
	amount += max(0, Spine_OverallSaveGetInt("Kristallcrawler"));
	amount += max(0, Spine_OverallSaveGetInt("Meatug"));
	amount += max(0, Spine_OverallSaveGetInt("Lurker"));
	amount += max(0, Spine_OverallSaveGetInt("Kobold"));
	amount += max(0, Spine_OverallSaveGetInt("IceGelemo"));
	amount += max(0, Spine_OverallSaveGetInt("Harpie"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Skeleton"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_GreenGreen"));
	amount += max(0, Spine_OverallSaveGetInt("Gobbo_Black"));
	amount += max(0, Spine_OverallSaveGetInt("Giink_Rada"));
	amount += max(0, Spine_OverallSaveGetInt("czubek"));
	amount += max(0, Spine_OverallSaveGetInt("Giant_Bug"));
	amount += max(0, Spine_OverallSaveGetInt("FireWaran"));
	amount += max(0, Spine_OverallSaveGetInt("Monitorowanie lodu"));
	amount += max(0, Spine_OverallSaveGetInt("FireGlem"));
	amount += max(0, Spine_OverallSaveGetInt("kolos"));
	amount += max(0, Spine_OverallSaveGetInt("Eisdrachensnapper"));
	amount += max(0, Spine_OverallSaveGetInt("Dungeon Harpien"));
	amount += max(0, Spine_OverallSaveGetInt("SmoczySnapper"));
	amount += max(0, Spine_OverallSaveGetInt("Razor szkielet"));
	amount += max(0, Spine_OverallSaveGetInt("DemonstonLord"));
	amount += max(0, Spine_OverallSaveGetInt("Demontaz"));
	amount += max(0, Spine_OverallSaveGetInt("demonstracja"));
	amount += max(0, Spine_OverallSaveGetInt("LessDemon"));
	amount += max(0, Spine_OverallSaveGetInt("Blutgolem"));
	amount += max(0, Spine_OverallSaveGetInt("krwioplyn"));
	amount += max(0, Spine_OverallSaveGetInt("Balrog"));
	amount += max(0, Spine_OverallSaveGetInt("Alraune"));
	amount += max(0, Spine_OverallSaveGetInt("bagno"));
	amount += max(0, Spine_OverallSaveGetInt("SwampGolem"));
	amount += max(0, Spine_OverallSaveGetInt("SwampDron"));
	amount += max(0, Spine_OverallSaveGetInt("Puma"));
	amount += max(0, Spine_OverallSaveGetInt("Kamien Kamien Puma"));
	amount += max(0, Spine_OverallSaveGetInt("Apfelbaum"));
	amount += max(0, Spine_OverallSaveGetInt("StoneGolemerz"));
	amount += max(0, Spine_OverallSaveGetInt("Kristallgolem"));
	amount += max(0, Spine_OverallSaveGetInt("NieumarlyZdrowiecZlogowy"));
	amount += max(0, Spine_OverallSaveGetInt("Hauertroll"));
	amount += max(0, Spine_OverallSaveGetInt("wiatr"));
	amount += max(0, Spine_OverallSaveGetInt("Zombie_ice_ice_fin."));
	amount += max(0, Spine_OverallSaveGetInt("Sniezka"));
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_23, amount);
};

FUNC VOID CheckWorldTravelerAchievement() {
	var int amount; amount = 0;
	amount += max(0, Spine_OverallSaveGetInt("JharkendarWisly"));
	amount += max(0, Spine_OverallSaveGetInt("KhorinisVisWisKhorinis"));
	amount += max(0, Spine_OverallSaveGetInt("Minentalna wizytacja"));
	amount += max(0, Spine_OverallSaveGetInt("OrctempelVis"));
	amount += max(0, Spine_OverallSaveGetInt("KontynuacjaMineVisited."));
	amount += max(0, Spine_OverallSaveGetInt("StaromineVizowana"));
	amount += max(0, Spine_OverallSaveGetInt("OrcGraveyardVisited"));
	amount += max(0, Spine_OverallSaveGetInt("FreeMineVeit"));
	amount += max(0, Spine_OverallSaveGetInt("Rytualowa wyspaVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Skarb WyspaVisited"));
	amount += max(0, Spine_OverallSaveGetInt("OrcCityVisited"));
	amount += max(0, Spine_OverallSaveGetInt("XeresFortressVis"));
	amount += max(0, Spine_OverallSaveGetInt("IrdorathVis"));
	amount += max(0, Spine_OverallSaveGetInt("PatherionVischew"));
	amount += max(0, Spine_OverallSaveGetInt("Swiat GórskiWysokoWyswietlone"));
	amount += max(0, Spine_OverallSaveGetInt("CugettsoVisited"));
	amount += max(0, Spine_OverallSaveGetInt("GelatoVisische"));
	amount += max(0, Spine_OverallSaveGetInt("FlyingIsleVisited"));
	amount += max(0, Spine_OverallSaveGetInt("Wizytowany"));
	amount += max(0, Spine_OverallSaveGetInt("HunterCampVisited"));
	amount += max(0, Spine_OverallSaveGetInt("CloudWorldWorldVis"));
	amount += max(0, Spine_OverallSaveGetInt("HallucynacjaWyswietlone"));
	amount += max(0, Spine_OverallSaveGetInt("Wawóz lesny Odwiedzony"));
	amount += max(0, Spine_OverallSaveGetInt("DragonVisit"));
	amount += max(0, Spine_OverallSaveGetInt("RelendelMineVis"));
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
