//######################################################
//
//	INTERNAS - �ndern auf eigene Gefahr
//
//######################################################

/* Ben�tigte Konstante */
const INT IT_ONLY_OUT_GAME		= 256;

/* Funktion f�r den Nutzer, die AllowLoading auswertet und umsetzt */
instance talentMenuItem (zCMenuItem);

func void EnforceLoadingPolicy() {
	
	//--------------------------------------
	// Men�item holen:
	//--------------------------------------
	
	var int talentMenuItemPtr;
	talentMenuItemPtr = MEM_GetMenuItemByString ("MENU_ITEM_STATUS_HEADING");
	
	if (!talentMenuItemPtr) {
		//wtf?
		var string err; err = "Egzekwowanie wiodacej polityki: MENU_ITEM_STATUS_HEADING nie znaleziono!";
		Print (err); PrintDebug (err);
		return;
	};
	
	MEM_AssignInst (talentMenuItem, talentMenuItemPtr);
	
	//--------------------------------------
	// Der eigentliche Code:
	//--------------------------------------

	MEM_WriteString(talentMenuItem.m_listLines_array, "TEST");
};
