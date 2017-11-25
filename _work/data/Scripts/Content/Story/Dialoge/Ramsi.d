INSTANCE Info_Mod_Ramsi_Hi (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Hi_Condition;
	information	= Info_Mod_Ramsi_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, are you one of the crooks here?";
};

FUNC INT Info_Mod_Ramsi_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_00"); //Hi, are you one of the crooks here?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_01"); //Yeah, I'm one of the crooks. My name is Ramsi.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_02"); //What's your job here?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_03"); //Together with Yussuf and Zeki, I take care of the hunting of animals in order to always have enough meat here.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_04"); //Isn't that a little dangerous?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_05"); //Yeah, it's always been dangerous, but lately hunting has become a suicide mission.
};

INSTANCE Info_Mod_Ramsi_Aufgabe (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Aufgabe_Condition;
	information	= Info_Mod_Ramsi_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why is hunting so dangerous?";
};

FUNC INT Info_Mod_Ramsi_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_00"); //Why is hunting so dangerous?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_01"); //Well, some time ago everything was fine, but lately there are more and more creatures like Warge proliferating and populating the forest.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_02"); //That's why everything has become so dangerous and nobody wants to go hunting.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_03"); //In addition, an association of hunters is causing us more and more problems because we are invading their hunting grounds.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_04"); //Those guys already killed one of us. Everything has gone crazy.
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_05"); //You want me to help you hunt?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_06"); //That's what you'd do? Wait, why would you risk your life willingly?
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_07"); //Well, I'd like to join the crooks, but I need your votes to do that.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_08"); //Is that the way it is? Well, for my sake.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_09"); //If you kill ten boar with me and see that nobody dies, I will give you my vote. So ready to roll?

	Log_CreateTopic	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "The crook Ramsi and two other crooks take care of the provision of meat, which can only be done by hunting. Since hunting is getting more and more dangerous because of monsters and some crazy hunters, I have to go hunting with Ramsi. When we have killed ten boar and brought their flesh into the camp, Ramsi will give me his voice.");
};

INSTANCE Info_Mod_Ramsi_AufgabeLos (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_AufgabeLos_Condition;
	information	= Info_Mod_Ramsi_AufgabeLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready.";
};

FUNC INT Info_Mod_Ramsi_AufgabeLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_AufgabeLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_AufgabeLos_15_00"); //I'm ready.
	AI_Output(self, hero, "Info_Mod_Ramsi_AufgabeLos_08_01"); //Then follow me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGD");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Ramsi_KeilerWarnung (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerWarnung_Condition;
	information	= Info_Mod_Ramsi_KeilerWarnung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerWarnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Aufgabe))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_36") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerWarnung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_00"); //Be extremely careful now. The boars are usually on the move with up to three animals and they can be really deadly.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerWarnung_15_01"); //Thanks for letting me know.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_02"); //Follow me, then.

	self.flags = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGDETAPPE");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
};

INSTANCE Info_Mod_Ramsi_KeilerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerTot_Condition;
	information	= Info_Mod_Ramsi_KeilerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerWarnung))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_80_1_MOVEMENT8_M3") < 500)
	&& (Npc_IsDead(Keiler_Ramsi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_00"); //(laughs) This used to be a hunting session. Let's go....
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerTot_15_01"); //What is it?
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_02"); //Those sons of bitches! Watch it. Hunters attack!

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "After we killed and gutted all the boar, we were attacked by hunters. We have to stop them, or those lunatics will kill us.");

	self.flags = 0;

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX]/3;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS]/3 + 1;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7368_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7366_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7367_JG_Jaeger_NW,	"LIGHTHOUSE");
};

INSTANCE Info_Mod_Ramsi_KeilerFleischWeg (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerFleischWeg_Condition;
	information	= Info_Mod_Ramsi_KeilerFleischWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerFleischWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerTot))
	&& (Npc_IsDead(Mod_7366_JG_Jaeger_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerFleischWeg_Info()
{
	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);

	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_00"); //(screams) Those fucking MISTKERLE! They stole all our collected supplies, stole them!
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_01"); //Do you know where they went?
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_02"); //There was only one left. I think he escaped towards the lighthouse.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_03"); //We're running out of supplies.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_04"); //All clear. Go to the camp already. I'll come after I hunt the son of a bitch down.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_05"); //I see. I wish you all the best.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "One of the hunters knocked Ramsi out and stole all the meat for the assassins. He ran towards the lighthouse. I have to stop this guy before he can get away from me. Meanwhile Ramsi returns to the Assassin camp and expects me back soon.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	self.flags = 2;

	Mod_7368_JG_Jaeger_NW.flags = 0;

	B_StartOtherRoutine	(Mod_7368_JG_Jaeger_NW, "LAGER");
};

INSTANCE Info_Mod_Ramsi_JaegerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_JaegerTot_Condition;
	information	= Info_Mod_Ramsi_JaegerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I caught the thief and on top of that, I also caught the thief (.... )";
};

FUNC INT Info_Mod_Ramsi_JaegerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerFleischWeg))
	&& (Npc_IsDead(Mod_7368_JG_Jaeger_NW))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_JaegerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_00"); //I caught the thief, and I was able to kill another hunter.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_01"); //Good work, but do you have the meat?
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_02"); //Sure, here it is.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 20);

	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_03"); //Thanks for doing this for me. Here are 100 gold coins as a reward and of course you get my vote.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_04"); //Thank you very much.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_05"); //Don't mention it. I'll fry the meat. See you around.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "After I got rid of these damned hunters and secured the meat, I went straight back to Ramsi. He paid me 100 gold coins and I'm one vote richer. If that's not good.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	self.flags = 0;
};

INSTANCE Info_Mod_Ramsi_Pickpocket (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Pickpocket_Condition;
	information	= Info_Mod_Ramsi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ramsi_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_BACK, Info_Mod_Ramsi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ramsi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ramsi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ramsi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ramsi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ramsi_EXIT (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_EXIT_Condition;
	information	= Info_Mod_Ramsi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ramsi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
