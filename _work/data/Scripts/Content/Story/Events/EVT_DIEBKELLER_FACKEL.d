FUNC VOID EVT_DIEBKELLER_FACKEL()
{
	Print	("chodzenie");

	Wld_SetMobRoutine (00,00, "FIREPLACE_DIEBKELLER", 1);
	Wld_SetMobRoutine (20,00, "FIREPLACE_DIEBKELLER", 1);
	Wld_SetMobRoutine (05,00, "FIREPLACE_DIEBKELLER", 1);
};
