// ***************
// B_Preach_Vatras
// ***************

func void B_Announce_Richter_Anna (var int satz)
{
	AI_TurnToNpc	(self, Mod_7376_OUT_Anna_REL);

	if (satz == 0) 	
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_00"); //After ample consideration and consideration, We have reached the following verdict:
	};
	if (satz == 1) 	
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_01"); //The defendant Anna Weinschmäckerin is found guilty of 26 crimes of black magic.
	};
	if (satz == 2)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_02"); //During the use of the third degree of torture, the accused confessed to the heinous crimes reported by the witnesses.
	};
	if (satz == 3)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_03"); //These include in detail:
	};
	if (satz == 4)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_04"); //The poisoning of the urban lake, the excavation of dead children and the consumption of these same, Beliar's homage, the application of magic ointment to the flight with a broom, deliberate false recipes and evil glances, which have led to illness and death.
	};
	if (satz == 5)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_05"); //The confession of the witnesses and the comprehensive confession are sufficient proof of the conviction of the accused.
	};
	if (satz == 6)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_06"); //For the protection of our society and blabla, We shorten the time somewhat, we decide, appointed by the sublime governor of Khoratas and granted by Adanos, the God of justice, that Anna Weinschmäckerin is to be handed over publicly to the fire this afternoon.
	};
	if (satz == 7)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_07"); //Since the defendant shows remorse and has repented, We have in Our infinite grace that she should be strangled to death before being burned.
	};
	if (satz == 8)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_08"); //May Adanos protect her soul.
	};
	if (satz == 9)
	{		
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_09"); //The hearing is hereby closed. Anything to eat now?

		Mod_AnnaQuest = 8;

		B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7373_OUT_Schoeppe_REL, AR_NONE, 0);
	};
};
