// ***************
// B_Preach_Idrico
// ***************

func void B_Preach_Idrico(var int satz)
{
	if (Mod_REL_IdricoDorn == 6)
	{
		if (satz == 0) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_00"); //Oh, how unfair the world is!
		};
		if (satz == 1) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_01"); //The hissing snake is eating the innocent squirrel.
		};
		if (satz == 2) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_02"); //O woe, I am wrong!
		};
	}
	else
	{
		if (satz == 0) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_03"); //Turn back, you poor sinners!
		};
		if (satz == 1) 	
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_04"); //Adanos stretches his arms around his sheep, protecting them.
		};
		if (satz == 2)
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_05"); //Listen to Elvira's blasphemy!
		};
		if (satz == 3)
		{	
			AI_Output (self, self, "Info_Mod_Idrico_Preach_08_06"); //Come to me and you will be enlightened.
		};
	};
};
