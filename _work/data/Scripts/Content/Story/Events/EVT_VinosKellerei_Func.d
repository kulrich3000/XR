//****************************
// 	EVT_VINOSKELLEREI_FUNC (Funktion, die bei �ffnen der Winde zu Vino Weinkellerei ausgef. wird))
//****************************
var int FoundVinosKellerei;
func void EVT_VINOSKELLEREI_FUNC_S1 ()
{
	if(FoundVinosKellerei == FALSE)
	{
		FoundVinosKellerei = TRUE;
		B_GivePlayerXP (XP_FoundVinosKellerei);
	};
};

func void EVT_VINOSKELLEREI_WINDE_S1 ()
{
	if (Kapitel < 3)
	{
		Print("Powinienem spr�bowac ponownie p�zniej!");
	};
};
