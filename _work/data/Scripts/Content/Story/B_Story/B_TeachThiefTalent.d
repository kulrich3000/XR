// ***************************************
// B_TeachThiefTalent
// ------------------
// Picklock, Pickpocket, Sneak und Acrobat
// ***************************************

func int B_TeachThiefTalent (var C_NPC slf, var C_NPC oth, var int talent)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, talent, 1);
	
	
	//EXIT IF...
	
	// ------ falscher Parameter ------
	if (talent!=NPC_TALENT_PICKLOCK) 
	&& (talent!=NPC_TALENT_SNEAK) 
	&& (talent!=NPC_TALENT_ACROBAT) 
	&& (talent!=NPC_TALENT_PICKPOCKET)
	{
		Print ("BLEDNOSC: Zly parametr ***");
		return FALSE;
	};
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	&& (Mod_Schwierigkeit != 4)
	{
		PrintScreen	(PRINT_NotEnoughLearnPoints, -1,-1, FONT_ScreenSmall, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		
		return FALSE;
	}
	else if (Npc_HasItems(hero, ItMi_Gold) < kosten)
	&& (Mod_Schwierigkeit == 4)
	{
		PrintScreen	(PRINT_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNGOLD");
		
		return FALSE;
	};
	
		
	// FUNC
				
	// ------ Lernpunkte abziehen ------	
	if (Mod_Schwierigkeit != 4)
	{
		oth.lp = oth.lp - kosten;
	}
	else
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, kosten);
	};
	
	// ------ Talent vergeben ------
	if (talent == NPC_TALENT_PICKLOCK)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_PICKLOCK, 1);
		PrintScreen			(PRINT_LearnPicklock, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_SNEAK)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_SNEAK, 1);
		PrintScreen			(PRINT_LearnSneak, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_ACROBAT)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_ACROBAT, 1);
		PrintScreen	(PRINT_LearnAcrobat, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_PICKPOCKET)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_PICKPOCKET, 1);	
		PrintScreen	(PRINT_LearnPickpocket, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
};
	
	
	
	
	




	
	
	
	
	
	
	
	
	
	



	
	
	


		
	
	
	

	
	
	
	
	

	
	
	

