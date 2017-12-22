// **************
// B_GivePlayerXP
// **************

func void B_PrintErfolg (var string ErfolgName)
{
	var string newText;

	newText = ConcatStrings("Unlocked Achievement: ", ErfolgName);

	PrintScreen (newText, -1, YPOS_LevelUp+25, FONT_Screen, 2);
};

