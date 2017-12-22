// ***************
// B_Teach_Andre
// ***************

func void B_Teach_Andre(var int satz)
{
	if (satz == 0) 	
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_00"); //Dobry zolnierz milicji zawsze chroni slabych.
	};
	if (satz == 1) 	
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_01"); //Zagrozenie przemoca wobec jednostki lub ogólu spoleczenstwa jako takie jest przestepstwem karnym.
	};
	if (satz == 2)
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_02"); //Milicja nie moze wykonywac nieuczciwych czynów w swojej wzorcowej roli.
	};
	if (satz == 3)
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_03"); //Prawo i porzadek to chleb i powietrze prawdziwego zolnierza milicji.
	};
	if (satz == 4)
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_04"); //Zolnierz milicji walczy o miasto, kraj, króla i wolnosc.
	};
	if (satz == 5)
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_05"); //Zolnierz milicji nie walczy o jego wynagrodzenie, walczy z przekonaniem.
	};
	if (satz == 6)
	{	
		AI_Output (self, self, "Info_Mod_Andre_Teach_Kodex_40_06"); //Zolnierz milicji pod zadnym pozorem nie podnosi miecza przeciwko bratu-broni.
	};
};
