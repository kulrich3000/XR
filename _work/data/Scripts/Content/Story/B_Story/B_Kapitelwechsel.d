// **************
// Kapitelwechsel
// **************

FUNC VOID B_Kapitelwechsel (VAR INT neues_Kapitel, VAR INT aktuelles_Level_Zen)
{
	Kapitel = neues_Kapitel;

	Mod_Kardif_Info = 0;

	//***************************************************************************
	//	KAPITEL 1
	//***************************************************************************
	if (neues_Kapitel == 1)
	{
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_1,"Zagrozenie","chapter1.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_1);
	}
	
	//***************************************************************************
	//	KAPITEL 2
	//***************************************************************************
	else if	(neues_Kapitel == 2)
	{
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_2,"Foki","chapter2.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_2);
	}
	
	//***************************************************************************
	//	KAPITEL 3
	//***************************************************************************
	else if (neues_Kapitel == 3)
	{	
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_3,"Xeres","chapter3.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_3);
	}
	
	//***************************************************************************
	//	KAPITEL 4
	//***************************************************************************
	else if (neues_Kapitel == 4)
	{
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_4,"Moc 3 Bog�w","chapter4.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_4);
	}
	
	//***************************************************************************
	//	KAPITEL 5
	//***************************************************************************
	else if (neues_Kapitel == 5)
	{		
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_5,"Uriziel","chapter5.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_5);
	}
	
	//***************************************************************************
	//	KAPITEL 6
	//***************************************************************************
	else if (neues_Kapitel == 6)
	{
		// ------ Bild einblenden ------
		IntroduceChapter (KapWechsel_6,"Arena","chapter6.tga","chapter_01.wav", 6000);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_6);
	};
	
	//***************************************************************************
	//	SONSTIGE
	//***************************************************************************
 
 	B_CheckLog ();
	
	CheckRespawns();
};
