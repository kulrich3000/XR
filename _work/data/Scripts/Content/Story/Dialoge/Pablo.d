INSTANCE Info_Mod_Pablo_Hi (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Hi_Condition;
	information	= Info_Mod_Pablo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Pablo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pablo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Pablo_Hi_12_01"); //Hi.
};

INSTANCE Info_Mod_Pablo_Mortis (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Mortis_Condition;
	information	= Info_Mod_Pablo_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mortis sent me.";
};

FUNC INT Info_Mod_Pablo_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mortis_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Mortis_15_00"); //Mortis sent me. I'm supposed to ask you if everything's okay.
	AI_Output(self, hero, "Info_Mod_Pablo_Mortis_12_01"); //Bring me some bread, cheese and a bottle of water.
};

INSTANCE Info_Mod_Pablo_Infos (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Infos_Condition;
	information	= Info_Mod_Pablo_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Got your food.";
};

FUNC INT Info_Mod_Pablo_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Mortis))
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Infos_15_00"); //Got your food.

	Npc_RemoveInvItems	(hero, ItFo_Water, 1);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);

	B_ShowGivenThings	("Water, cheese and bread added");

	AI_Output(self, hero, "Info_Mod_Pablo_Infos_12_01"); //Thanks.
	AI_Output(hero, self, "Info_Mod_Pablo_Infos_15_02"); //Are you gonna tell me if everything's okay?
	AI_Output(self, hero, "Info_Mod_Pablo_Infos_12_03"); //Everything's fine with me.

	B_LogEntry	(TOPIC_MOD_MORTIS_KONTROLLE, "There's nothing wrong with Pablo.");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Pablo_RLMord (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_RLMord_Condition;
	information	= Info_Mod_Pablo_RLMord_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_RLMord_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_12_00"); //Unauthorized persons have no... Oh, you're one of us.
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_12_01"); //Andre already told me he was gonna send you. We're just interrogating those present. Body's upstairs on the second floor. room.

	Info_ClearChoices	(Info_Mod_Pablo_RLMord);

	Info_AddChoice	(Info_Mod_Pablo_RLMord, "Which one of the prostitutes was Jason with?", Info_Mod_Pablo_RLMord_C);
	Info_AddChoice	(Info_Mod_Pablo_RLMord, "Who was present at the time of the murder?", Info_Mod_Pablo_RLMord_B);
	Info_AddChoice	(Info_Mod_Pablo_RLMord, "When did the murder take place?", Info_Mod_Pablo_RLMord_A);
};

FUNC VOID Info_Mod_Pablo_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_C_15_00"); //Which one of the prostitutes was Jason with?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_C_12_01"); //By Giselle, the one with the blue dress.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_B_15_00"); //Who was present at the time of the murder?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_B_12_01"); //Well, on the one hand, Giselle, who... three other prostitutes and two suitors.
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_B_12_02"); //The other two couples are being interrogated, but apparently they were in... when the murder was committed.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

FUNC VOID Info_Mod_Pablo_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Pablo_RLMord_A_15_00"); //When did the murder take place?
	AI_Output(self, hero, "Info_Mod_Pablo_RLMord_A_12_01"); //This morning, about 4:00.

	Mod_PAL_RLChoices += 1;

	if (Mod_PAL_RLChoices == 5)
	{
		Info_ClearChoices	(Info_Mod_Pablo_RLMord);
	};
};

INSTANCE Info_Mod_Pablo_Giselle (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Giselle_Condition;
	information	= Info_Mod_Pablo_Giselle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_Giselle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_Giselle_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_12_00"); //Find out anything yet?
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_15_01"); //There's something weird about this place that's--

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);

	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... the murderer's weapon.", Info_Mod_Pablo_Giselle_E);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... the victim's weapon.", Info_Mod_Pablo_Giselle_D);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... the wound.", Info_Mod_Pablo_Giselle_C);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... the room.", Info_Mod_Pablo_Giselle_B);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "... the location of the body.", Info_Mod_Pablo_Giselle_A);
};

FUNC VOID Info_Mod_Pablo_Giselle_F()
{
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_F_12_00"); //No, it all seems to fit the picture.

	Mod_PAL_Pablo_FirstRaetsel += 1;
};

FUNC VOID Info_Mod_Pablo_Giselle_E()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_E_15_00"); //... the murderer's weapon.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_D()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_D_15_00"); //... the victim's weapon.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_D_12_01"); //You're right... something's not right.... but what?

	if (Mod_PAL_Pablo_FirstRaetsel == 0)
	{
		B_GivePlayerXP	(1500);
	}
	else if (Mod_PAL_Pablo_FirstRaetsel == 1)
	{
		B_GivePlayerXP	(500);
	}
	else if (Mod_PAL_Pablo_FirstRaetsel == 2)
	{
		B_GivePlayerXP	(100);
	};

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);

	Info_AddChoice	(Info_Mod_Pablo_Giselle, "The gun is drawn.", Info_Mod_Pablo_Giselle_I);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "The weapon is blunt.", Info_Mod_Pablo_Giselle_H);
	Info_AddChoice	(Info_Mod_Pablo_Giselle, "That's not his gun.", Info_Mod_Pablo_Giselle_G);
};

FUNC VOID Info_Mod_Pablo_Giselle_C()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_C_15_00"); //... the wound.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_B()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_B_15_00"); //... the room.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_A()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_A_15_00"); //... the body's bearings.

	Info_Mod_Pablo_Giselle_F();
};

FUNC VOID Info_Mod_Pablo_Giselle_I()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_I_15_00"); //The gun is drawn.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_I_12_01"); //You're right... Giselle said he was killed without warning.

	if (Mod_PAL_Pablo_SecondRaetsel == 0)
	{
		B_GivePlayerXP	(1000);
	}
	else if (Mod_PAL_Pablo_SecondRaetsel == 1)
	{
		B_GivePlayerXP	(250);
	};

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Jason had pulled out his gun. So he couldn't have died unexpectedly. I should talk to Giselle again.");

	Info_ClearChoices	(Info_Mod_Pablo_Giselle);
};

FUNC VOID Info_Mod_Pablo_Giselle_H()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_H_15_00"); //The weapon is blunt.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_H_12_01"); //She's sharp as a razor.

	Mod_PAL_Pablo_SecondRaetsel += 1;
};

FUNC VOID Info_Mod_Pablo_Giselle_G()
{
	AI_Output(hero, self, "Info_Mod_Pablo_Giselle_G_15_00"); //That's not his gun.
	AI_Output(self, hero, "Info_Mod_Pablo_Giselle_G_12_01"); //Yes, it belongs to him. Service weapon.

	Mod_PAL_Pablo_SecondRaetsel += 1;
};

INSTANCE Info_Mod_Pablo_GiselleFlucht (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GiselleFlucht_Condition;
	information	= Info_Mod_Pablo_GiselleFlucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Giselle's keeping something from us.";
};

FUNC INT Info_Mod_Pablo_GiselleFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Jason))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GiselleFlucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Pablo_GiselleFlucht_15_00"); //Giselle's keeping something from us. She locked herself in the owner's chamber and refuses to come out.
	AI_Output(self, hero, "Info_Mod_Pablo_GiselleFlucht_12_01"); //Always those hysterical chicks. It's like she's getting away from us. I will instruct Neron to solve the problem. Until then, you can find some more evidence or whatever.

	Wld_InsertNpc	(Mod_7235_NONE_Galf_NW, "NW_CITY_HABOUR_PUFF_NADJA");

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Pablo will see to it that Giselle comes to her senses. Meanwhile, I'm supposed to look around a bit and look for evidence.");
};

INSTANCE Info_Mod_Pablo_GalfKo (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GalfKo_Condition;
	information	= Info_Mod_Pablo_GalfKo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GalfKo_Condition()
{
	if (Mod_PAL_Galf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GalfKo_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_GalfKo_12_00"); //I said look for evidence and don't throw people in the lobby! That's what you call investigative work? Who is this guy anyway?
	AI_Output(hero, self, "Info_Mod_Pablo_GalfKo_15_01"); //His name is Galf. That's all I know.
	AI_Output(self, hero, "Info_Mod_Pablo_GalfKo_12_02"); //All right, I'll try waking him up.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pablo_GalfCall (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GalfCall_Condition;
	information	= Info_Mod_Pablo_GalfCall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GalfCall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_GalfKo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GalfCall_Info()
{
	AI_TurnToNpc	(self, Mod_7235_NONE_Galf_NW);

	AI_Output(self, hero, "Info_Mod_Pablo_GalfCall_12_00"); //Galf! Wake up!
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7234_OUT_Giselle_NW, "GALF");
};

INSTANCE Info_Mod_Pablo_GiselleGeknackt (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_GiselleGeknackt_Condition;
	information	= Info_Mod_Pablo_GiselleGeknackt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pablo_GiselleGeknackt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Galf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pablo_GiselleGeknackt_Info()
{
	AI_Output(self, hero, "Info_Mod_Pablo_GiselleGeknackt_12_00"); //Well done. Now report to Lord Andre on what happened here.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pablo_Pickpocket (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_Pickpocket_Condition;
	information	= Info_Mod_Pablo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Pablo_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

	Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_BACK, Info_Mod_Pablo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pablo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pablo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pablo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pablo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pablo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pablo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pablo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pablo_EXIT (C_INFO)
{
	npc		= Mod_744_MIL_Pablo_NW;
	nr		= 1;
	condition	= Info_Mod_Pablo_EXIT_Condition;
	information	= Info_Mod_Pablo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pablo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pablo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
