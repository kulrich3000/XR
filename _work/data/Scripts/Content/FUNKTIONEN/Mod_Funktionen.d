var int Mod_Goetterlevel_Adanos;
var int Mod_Goetterlevel_Innos;
var int Mod_Goetterlevel_Beliar;

var int Mod_ErsteGesinnung;

FUNC VOID B_Göttergefallen (var int GefallenArt, var int GefallenCounter)
{
	var string GefallenMeldung;

	GefallenMeldung = ConcatStrings("+", IntToString(GefallenCounter));
	GefallenMeldung = ConcatStrings(GefallenMeldung, " Attitude for ");

	if (GefallenArt == 1)
	{
		Innos_Gefallen += GefallenCounter;

		GefallenMeldung = ConcatStrings(GefallenMeldung, "Innos");
	}
	else if (GefallenArt == 2)
	{
		Adanos_Gefallen += GefallenCounter;

		GefallenMeldung = ConcatStrings(GefallenMeldung, "Adanos");
	}
	else if (GefallenArt == 3)
	{
		Beliar_Gefallen += GefallenCounter;

		GefallenMeldung = ConcatStrings(GefallenMeldung, "Beliar");
	};

	PrintScreen (Gefallenmeldung, -1, YPOS_LevelUp-25, FONT_ScreenSmall, 2);

	if (Mod_ErsteGesinnung == FALSE)
	{
		Mod_ErsteGesinnung = TRUE;

		Log_CreateTopic	(TOPIC_MOD_GESINNUNG, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_GESINNUNG, "My actions seem to change my reputation with the gods. Each of the main guilds belongs to a deity, only the mercenaries seem to be quite independent. Some of the subordinate guilds do not belong to any god. Orders for the guilds belonging to a god will increase my reputation. The rest of my actions, such as thefts, will also be reflected in my reputation.");
		B_LogEntry	(TOPIC_MOD_GESINNUNG, "Depending on my attitude and the external circumstances, a blessing is given to me by the respective deity, which will strengthen me and help me on my way.");
	};

	if (Innos_Gefallen > Beliar_Gefallen)
	&& (Innos_Gefallen > Adanos_Gefallen)
	{
		Mod_Goetterlevel_Beliar = Innos_Gefallen - Beliar_Gefallen;
		Mod_Goetterlevel_Adanos = Innos_Gefallen - Adanos_Gefallen;
		
		if (Mod_Goetterlevel_Beliar >= 100)
		&& (Mod_Goetterlevel_Adanos >= 100)
		{
			Mod_Gottstatus = 9;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 9);
		}
		else if (Mod_Goetterlevel_Beliar >= 50)
		&& (Mod_Goetterlevel_Adanos >= 50)
		{
			Mod_Gottstatus = 10;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 10);
		}
		else if (Mod_Goetterlevel_Beliar >= 20)
		&& (Mod_Goetterlevel_Adanos >= 20)
		{	
			Mod_Gottstatus = 11;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 11);
		}
		else
		{
			if (Mod_Gottstatus == 4)
			|| (Mod_Gottstatus == 8)
			{
				Mod_GottCooldown = 0;
			};

			Mod_Gottstatus = 12;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 12);
		};
	}
	else if (Beliar_Gefallen > Adanos_Gefallen)
	&& (Beliar_Gefallen > Innos_Gefallen)
	{
		Mod_Goetterlevel_Adanos = Beliar_Gefallen - Adanos_Gefallen;
		Mod_Goetterlevel_Innos = Beliar_Gefallen - Innos_Gefallen;
		
		if (Mod_Goetterlevel_Adanos >= 100)
		&& (Mod_Goetterlevel_Innos >= 100)
		{
			Mod_Gottstatus = 1;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 1);
		}
		else if (Mod_Goetterlevel_Innos >= 50)
		&& (Mod_Goetterlevel_Adanos >= 50)
		{
			Mod_Gottstatus = 2;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 2);
		}
		else if (Mod_Goetterlevel_Adanos >= 20)
		&& (Mod_Goetterlevel_Innos >= 20)
		{	
			Mod_Gottstatus = 3;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 3);
		}
		else
		{
			if (Mod_Gottstatus == 8)
			|| (Mod_Gottstatus == 12)
			{
				Mod_GottCooldown = 0;
			};

			Mod_Gottstatus = 4;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 4);
		};
	}
	else
	{
		Mod_Goetterlevel_Beliar = Adanos_Gefallen - Beliar_Gefallen;
		Mod_Goetterlevel_Innos = Adanos_Gefallen - Innos_Gefallen;
		
		if (Mod_Goetterlevel_Beliar >= 100)
		&& (Mod_Goetterlevel_Innos >= 100)
		{
			Mod_Gottstatus = 5;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 5);
		}
		else if (Mod_Goetterlevel_Beliar >= 50)
		&& (Mod_Goetterlevel_Adanos >= 50)
		{
			Mod_Gottstatus = 6;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 6);
		}
		else if (Mod_Goetterlevel_Beliar >= 20)
		&& (Mod_Goetterlevel_Innos >= 20)
		{	
			Mod_Gottstatus = 7;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 7);
		}
		else
		{
			if (Mod_Gottstatus == 4)
			|| (Mod_Gottstatus == 12)
			{
				Mod_GottCooldown = 0;
			};

			Mod_Gottstatus = 8;

			Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 8);
		};
	};
};
