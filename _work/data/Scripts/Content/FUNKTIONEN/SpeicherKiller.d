//######################################################
//
//	Speicherkontrolle
//
//######################################################

/* Von Dir auszuf�llende Funktion!
 * Entscheide ob man gerade Speichern darf oder nicht.
 * Gibt den entsprechenden Wert zur�ck. */
func int AllowSaving()
{
	if (Mod_QuatschtNichtCounter < 2)
	{
		//return FALSE;
	};
	if (CutsceneAn == TRUE)
	{
		return FALSE;
	};
	if (Mod_KampfLaeuft)
	{
		//return FALSE;
	};

	return TRUE;
};

/* Wird aufgerufen, wenn Speichern verboten war,
 * jetzt aber gerade wieder erlaubt wurde. */
func void OnAllowSaving() {
	//Print ("Speichern ab jetzt erlaubt!");
};

/* Wird aufgerufen, wenn Speichern erlaubt war,
 * jetzt aber gerade wieder verboten wurde. */
func void OnDisallowSaving() {
	//Print ("Speichern ab jetzt verboten!");
};

//######################################################
//
//	INTERNAS - �ndern auf eigene Gefahr
//
//######################################################

/* War speichern beim letzten Check erlaubt? F�r Benachrichtigungsfunktionen. */
var int SavingDisabled_LastCheck;

/* Hier steht ob Quicksaves an sind: */
const int s_bUseQuickSave_address = 9118160; //0x8B21D0

/* Funktion f�r den Nutzer, die AllowSaving auswertet und umsetzt */
instance saveMenuItem (zCMenuItem);

func void EnforceSavingPolicy() {
	
	//--------------------------------------
	// Men�item holen:
	//--------------------------------------
	
	var int saveMenuItemPtr;
	saveMenuItemPtr = MEM_GetMenuItemByString ("MENUITEM_MAIN_SAVEGAME_SAVE");
	
	if (!saveMenuItemPtr) {
		//wtf?
		var string err; err = "EnforceSavingPolicy: MENUITEM_MAIN_SAVEGAME_SAVE not found!?";
		Print (err); PrintDebug (err);
		return;
	};
	
	MEM_AssignInst (saveMenuItem, saveMenuItemPtr);
	
	//--------------------------------------
	// Der eigentliche Code:
	//--------------------------------------
	
	if (!AllowSaving()) {
		saveMenuItem.m_parItemFlags = saveMenuItem.m_parItemFlags | IT_ONLY_OUT_GAME;
		
		/* Scripter benachrichten, falls wirkliche �nderung */
		if (!SavingDisabled_LastCheck) {
			SavingDisabled_LastCheck = TRUE;
			OnDisallowSaving();
			
			//Quicksave aus.
			MEM_WriteInt (s_bUseQuickSave_address, 0);
		};
	} else {
		/* Speichern ist erlaubt */
		saveMenuItem.m_parItemFlags = saveMenuItem.m_parItemFlags &~ IT_ONLY_OUT_GAME;
		
		/* Scripter benachrichten, falls wirkliche �nderung */
		if (SavingDisabled_LastCheck) {
			SavingDisabled_LastCheck = 0;
			OnAllowSaving();
			
			//Quicksave an:
			MEM_WriteInt (s_bUseQuickSave_address, 1);
		};
	};
};
