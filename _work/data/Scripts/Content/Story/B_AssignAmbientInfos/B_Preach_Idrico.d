// ***************
// B_Preach_Idrico
// ***************

func void B_Preach_Idrico(var int satz)
{
	if (Mod_REL_IdricoDorn == 6)
	{
		if (satz == 0) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_00"); //O, jak niesprawiedliwy jest swiat!
		};
		if (satz == 1) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_01"); //Syczacy waz zjada niewinna wiewiórke.
		};
		if (satz == 2) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_02"); //O biada, myle sie!
		};
	}
	else
	{
		if (satz == 0) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_03"); //Wróccie, biednych grzeszników!
		};
		if (satz == 1) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_04"); //Adanos rozciaga ramiona wokól owiec, chroniac je.
		};
		if (satz == 2)
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_05"); //Posluchajmy bluznierstwa Elwirze!
		};
		if (satz == 3)
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_06"); //Przyjdzcie do mnie i bedziecie oswieceni.
		};
	};
};
