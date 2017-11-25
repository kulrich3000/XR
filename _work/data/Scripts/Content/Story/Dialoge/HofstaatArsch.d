INSTANCE Info_Mod_HofstaatArsch_Hi (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Hi_Condition;
	information	= Info_Mod_HofstaatArsch_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Hi_Condition()
{
	if (Mod_Sekte_Verheiratet == 1)
	|| (Mod_Sekte_TraderHaus01 == 1)
	|| (Mod_Sekte_TraderHaus02 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_00"); //(bureaucratic) Yeah?

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_01"); //I'm the king's ass.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_02"); //If you want to make a difference here, don't screw me over.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_03"); //The king loves the opinion of his ass!

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Hi);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Hi, "Then I'm sure you can put in a good word for me.", Info_Mod_HofstaatArsch_Hi_B);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Hi, "It's just hot air!", Info_Mod_HofstaatArsch_Hi_A);
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_C_16_00"); //Be that as it may, cross the room, climb up the ladder and then back to the end of the room.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_C_15_01"); //What?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_C_16_02"); //That's where they'll find the King. Now let me get back to work.

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "The road to the king of the court state is clear. He's on the floor above me.");

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_B_15_00"); //Then I'm sure you can put in a good word for me.

	Info_Mod_HofstaatArsch_Hi_C();
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_A_15_00"); //It's just hot air!

	Info_Mod_HofstaatArsch_Hi_C();
};

INSTANCE Info_Mod_HofstaatArsch_MagierTermin (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_MagierTermin_Condition;
	information	= Info_Mod_HofstaatArsch_MagierTermin_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need an appointment with the court magician.";
};

FUNC INT Info_Mod_HofstaatArsch_MagierTermin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_MagierTermin_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_MagierTermin_15_00"); //I need an appointment with the court magician.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_MagierTermin_16_01"); //The royal court magician will welcome you. Go into the tower.

	B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "MAGIER");

	AI_Teleport	(Mod_7011_HS_Alex_REL, "REL_290");

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "The court magician will see me now.");
};

INSTANCE Info_Mod_HofstaatArsch_Drogenminister (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Drogenminister_Condition;
	information	= Info_Mod_HofstaatArsch_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatDrogenminister_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_00"); //Rank?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_01"); //How?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_02"); //Duty grade!
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_03"); //Um...
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_04"); //Did they fall for it? Wait... You're the royal girl for everything, aren't you?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_05"); //Yeah.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_06"); //Wrong. They are relieved of their office with immediate effect, direct order from above. You've been promoted.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_07"); //So now I'm the woman for everything or what?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_08"); //Sorry, the place is already taken, the king doesn't need another girl of pleasure at the moment. The king spoke, I quote:
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_06_09"); //(voice of the king) Henceforth it shall no longer be the office of the royal maiden for all that adorns your being. You have shown great potential and even greater potency.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_06_10"); //Then, from then on, you will be silenced, since your problems will simply be wiped off the table, known as the royal sweep! Lower your heads... in Pride!
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_11"); //Too much honor. I'm to take these notes to the King.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_12"); //He's not available right now, he cares.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_13"); //In the throne room?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_14"); //No, by the free river, near the farms.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The king cares about the free river near the farms. I should go see him to show him the notes.");
};

INSTANCE Info_Mod_HofstaatArsch_Orakel (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Orakel_Condition;
	information	= Info_Mod_HofstaatArsch_Orakel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Orakel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatRaufbold_KoenigHilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_00"); //What can I do for you?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_15_01"); //I'd like to make an appointment with you at the Oracle.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_02"); //So this can't go on! Have we two been herding sheep together before?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_15_03"); //Not that I know of.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_04"); //Then I find it utterly inappropriate that they should always oppress me! This is now being stopped immediately!

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "You won't stop anything!", Info_Mod_HofstaatArsch_Orakel_B);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Excuse me, butt, I apologize.", Info_Mod_HofstaatArsch_Orakel_A);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_B_15_00"); //You won't stop anything!
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_B_16_01"); //Apologize instantly, ogre!
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "I won't be anything!", Info_Mod_HofstaatArsch_Orakel_D);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Sorry, I just don't like you.", Info_Mod_HofstaatArsch_Orakel_C);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_A_15_00"); //Excuse me, butt, I apologize.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_A_16_01"); //Oh, stick with you, that sounds awful when you try your hand at high-level language.
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_D_15_00"); //I won't be anything!
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_D_16_01"); //This conversation doesn't continue until you apologize!
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Mod_SL_Arsch_Entschuldigung = 1;
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_C_15_00"); //Sorry, I just don't like you.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_C_16_01"); //All right, stay with you.
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);
};

INSTANCE Info_Mod_HofstaatArsch_Entschuldigung (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Entschuldigung_Condition;
	information	= Info_Mod_HofstaatArsch_Entschuldigung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sorry, I just don't like you.";
};

FUNC INT Info_Mod_HofstaatArsch_Entschuldigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Orakel))
	&& (Mod_SL_Arsch_Entschuldigung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Entschuldigung_Info()
{
	Info_Mod_HofstaatArsch_Orakel_C();

	Mod_SL_Arsch_Entschuldigung = 0;
};

INSTANCE Info_Mod_HofstaatArsch_OrakelTermin (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_OrakelTermin_Condition;
	information	= Info_Mod_HofstaatArsch_OrakelTermin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Could I speak to the oracle now?";
};

FUNC INT Info_Mod_HofstaatArsch_OrakelTermin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Orakel))
	&& (Mod_SL_Arsch_Entschuldigung == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_OrakelTermin_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_00"); //Could I speak to the oracle now?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_01"); //Not until you make an appointment.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_02"); //When is the next free appointment?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_03"); //In three minutes.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_04"); //Then I'd like that one.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_05"); //I'm sorry, that was just forgiven.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_06"); //Is there no other appointment?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_07"); //Yes, after the appointment in three minutes always.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_08"); //Always? Anyway, I'd like an appointment.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_09"); //All right, you're listed, but don't miss your appointment.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_10"); //And where can I find the Oracle?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_11"); //In the throne room. He'll be expecting her.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I have an appointment with the Oracle now. It is said to be in the throne room.");
};

INSTANCE Info_Mod_HofstaatArsch_Transportsystem (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Transportsystem_Condition;
	information	= Info_Mod_HofstaatArsch_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a comfortable way into the swamps.";
};

FUNC INT Info_Mod_HofstaatArsch_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Transportsystem_15_00"); //I'm looking for a comfortable way into the swamps.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Transportsystem_16_01"); //Pervert lecher! If you don't vanish into thin air at once, you'll get a kick in the ass. A painful one. An incredibly painful one!
};

INSTANCE Info_Mod_HofstaatArsch_Liste (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Liste_Condition;
	information	= Info_Mod_HofstaatArsch_Liste_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Liste_Condition()
{
	if (Mod_SL_ListeSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Liste_Info()
{
	AI_TurnToNpc	(self, Mod_7285_HS_Koenig_REL);

	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Liste_16_00"); //Here's the list...

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatArsch_Pickpocket (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Pickpocket_Condition;
	information	= Info_Mod_HofstaatArsch_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_HofstaatArsch_Pickpocket_Condition()
{
	C_Beklauen	(59, ItMi_Freudenspender, 2);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatArsch_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatArsch_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatArsch_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatArsch_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatArsch_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatArsch_EXIT (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_EXIT_Condition;
	information	= Info_Mod_HofstaatArsch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatArsch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatArsch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
