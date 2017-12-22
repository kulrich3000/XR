INSTANCE Info_Mod_Richter_Hi (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Hi_Condition;
	information	= Info_Mod_Richter_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Richter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richter_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_01"); //We are the supreme court of Khorata.
	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_02"); //We decide on wealth and poverty, hatred and revenge, life and death.
	AI_Output(self, hero, "Info_Mod_Richter_Hi_10_03"); //But right now, we decide only on the next course of our meal.
};

INSTANCE Info_Mod_Richter_UlrichVerpetzen (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_UlrichVerpetzen_Condition;
	information	= Info_Mod_Richter_UlrichVerpetzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ulrich intends to sabotage Anna's trial.";
};

FUNC INT Info_Mod_Richter_UlrichVerpetzen_Condition()
{
	if (Mod_AnnaQuest == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Richter_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_UlrichVerpetzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_00"); //Ulrich intends to sabotage Anna's trial.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_01"); //Yes? He can certainly be trusted. What's he gonna do?
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_02"); //He wants to kill you all if you should condemn Anna.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_03"); //Hmm... Then you will stop him.
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_04"); //Why me?
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_05"); //We are not trained in fighting.... We have more important things to do.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_06"); //So if Ulrich really tries to become violent, you will defeat him with the help of Our Guards.
	AI_Output(self, hero, "Info_Mod_Richter_UlrichVerpetzen_10_07"); //Did you hear that?
	AI_Output(hero, self, "Info_Mod_Richter_UlrichVerpetzen_15_08"); //Yeah. See you around.

	Mod_AnnaQuestRichter = 1;

	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "The judge ordered me to suppress Ulrich's insurrection. I have to choose one side...");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Richter_UlrichKO (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_UlrichKO_Condition;
	information	= Info_Mod_Richter_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_UlrichKO_10_00"); //Adanos was kind to us. Pick up your reward from the governor.

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7370_OUT_Ulrich_REL, "TOT");
	B_StartOtherRoutine	(Mod_7365_OUT_Margarethe_REL, "START");
	B_StartOtherRoutine	(Mod_7376_OUT_Anna_REL, "TOT");
	B_StartOtherRoutine	(Mod_7374_OUT_Gerichtswache_01, "START");
	B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "START");

	AI_Teleport	(Mod_7370_OUT_Ulrich_REL, "TOT");

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Richter_Plagenquest (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Plagenquest_Condition;
	information	= Info_Mod_Richter_Plagenquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Plagenquest_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_00"); //You violated the laws of our city.
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_01"); //Excuse me?! What have I done wrong?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_02"); //You hunted insects before our eyes.
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_03"); //But why did I violate the city charter?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_04"); //In our law books it is written that hunting of insects within the city limits is only allowed with the hammers provided for this purpose.
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_05"); //Since you are not a resident of the city, you cannot possess such a hammer at all... otherwise you would have been guilty of theft.
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_06"); //Do you have something to say in your defense?
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_07"); //l--
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_08"); //The laws are interpreted with rigour and the sentence is immediately enforced. You will receive....

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_09"); //... the death penalty. Bailiff!
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_10"); //Ohh, stop, I slipped a few lines.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_11"); //Um, well, the verdict is... damn it, I can't read that, too old and washed out...
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_12"); //Hmm, in that case, the arbitrary paragraph allows me to decide that you, uh...
	AI_Output(hero, self, "Info_Mod_Richter_Plagenquest_15_13"); //Now I'm starting to get too colorful.... What is this nonsense about hammers and insect hunting anyway?
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_14"); //Wrong-doers, do not mock our townspeople. The town hammer law has been in existence for almost as long as our town has been in existence....
	AI_Output(self, hero, "Info_Mod_Richter_Plagenquest_10_15"); //And now.... Oh, hell, you got me off my rocker. Get out of my sight.

	if (Mod_REL_Stadthalter == 1)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Well, this is another spinning mill... City Hammer Act... and the insects are back. I should go see Theodorus and see if he's found anything new.");
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Well, this is another spinning mill... City Hammer Act... and the insects are back. I should go see Wendel and see if he's found anything new.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Well, this is another spinning mill... City Hammer Act... and the insects are back. I should go see lucas and see if he's found out anything new.");
	};

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);

	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_340");
};

INSTANCE Info_Mod_Richter_Unfrieden (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Unfrieden_Condition;
	information	= Info_Mod_Richter_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to hand you this.";
};

FUNC INT Info_Mod_Richter_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_LeonhardRichter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Unfrieden_15_00"); //I'm supposed to hand you this.

	B_GiveInvItems	(hero, self, ItWr_LeonhardRichter, 1);

	AI_Output(self, hero, "DEFAULT"); //
	
	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Richter_Unfrieden_10_01"); //O Adanos, protect us! He can't be serious!
	AI_Output(hero, self, "Info_Mod_Richter_Unfrieden_15_02"); //Will you release the men?
	AI_Output(self, hero, "Info_Mod_Richter_Unfrieden_10_03"); //(nervous) Immediately! We are sure that further complicaciones can be avoided!

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "I delivered the message to the judge. Then I should get my paycheck now.");

	Wld_InsertNpc	(Mod_7420_OUT_Michael_REL, "REL_CITY_001");
	Wld_InsertNpc	(Mod_7421_OUT_Philipp_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Richter_Endres (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Endres_Condition;
	information	= Info_Mod_Richter_Endres_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm trying to find out who killed Endres.";
};

FUNC INT Info_Mod_Richter_Endres_Condition()
{
	if (Mod_EndresIndizien == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_15_00"); //I'm trying to find out who killed Endres.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_01"); //Yes? We have learned of this bloodthirsty event. What could you find out?
	AI_Output(hero, self, "Info_Mod_Richter_Endres_15_02"); //There are three suspects I've all interrogated.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_03"); //What conclusions do the interviews lead you to? Just lay down and think before you answer.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_10_04"); //We are spared the court proceedings today because we feel a slight tiredness.

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "I don't know yet.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana is innocent.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "The healer is innocent.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel is innocent.", Info_Mod_Richter_Endres_A);
	};
};

FUNC VOID Info_Mod_Richter_Endres_E()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_E_10_00"); //How do you know that?
};

FUNC VOID Info_Mod_Richter_Endres_H()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_H_10_00"); //And who else is innocent?

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "I don't know yet.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana is innocent.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "The healer is innocent.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel is innocent.", Info_Mod_Richter_Endres_A);
	};
};

FUNC VOID Info_Mod_Richter_Endres_I()
{
	AI_Output(self, hero, "Info_Mod_Richter_Endres_I_10_00"); //Then the healer could be the culprit?
	AI_Output(hero, self, "Info_Mod_Richter_Endres_I_15_01"); //That's how it is.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_I_10_02"); //Then go and find evidence!

	Mod_EndresIndizien = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I'm supposed to find evidence that the healer is the culprit.");

	Info_ClearChoices	(Info_Mod_Richter_Endres);
};

FUNC VOID Info_Mod_Richter_Endres_D()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_D_15_00"); //I don't know yet.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_D_10_01"); //Then find out!

	Info_ClearChoices	(Info_Mod_Richter_Endres);
};

FUNC VOID Info_Mod_Richter_Endres_C()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_C_15_00"); //Juliana is innocent.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	if (Npc_KnowsInfo(hero, Info_Mod_Roman_REL_Hi))
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "The culprit is male.", Info_Mod_Richter_Endres_G);
	};
	Info_AddChoice	(Info_Mod_Richter_Endres, "It makes me feel good.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_B_15_00"); //The healer is innocent.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "It makes me feel good.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_A_15_00"); //Wendel is innocent.

	Info_Mod_Richter_Endres_E();

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	if (Npc_KnowsInfo(hero, Info_Mod_Monteur_Endres))
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "He's got an alibi.", Info_Mod_Richter_Endres_J);
	};
	Info_AddChoice	(Info_Mod_Richter_Endres, "It makes me feel good.", Info_Mod_Richter_Endres_F);
};

FUNC VOID Info_Mod_Richter_Endres_G()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_G_15_00"); //The culprit is male.

	Mod_RichterEndres_Juliana = 1;

	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_Mod_Richter_Endres_H();
	}
	else
	{
		Info_Mod_Richter_Endres_I();
	};
};

FUNC VOID Info_Mod_Richter_Endres_J()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_J_15_00"); //He's got an alibi.

	Mod_RichterEndres_Wendel = 1;

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_Mod_Richter_Endres_H();
	}
	else
	{
		Info_Mod_Richter_Endres_I();
	};
};

FUNC VOID Info_Mod_Richter_Endres_F()
{
	AI_Output(hero, self, "Info_Mod_Richter_Endres_F_15_00"); //It makes me feel good.
	AI_Output(self, hero, "Info_Mod_Richter_Endres_F_10_01"); //You don't feel good enough!

	Info_ClearChoices	(Info_Mod_Richter_Endres);

	Info_AddChoice	(Info_Mod_Richter_Endres, "I don't know yet.", Info_Mod_Richter_Endres_D);

	if (Mod_RichterEndres_Juliana == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Juliana is innocent.", Info_Mod_Richter_Endres_C);
	};
	if (Mod_RichterEndres_Arzt == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "The healer is innocent.", Info_Mod_Richter_Endres_B);
	};
	if (Mod_RichterEndres_Wendel == 0)
	{
		Info_AddChoice	(Info_Mod_Richter_Endres, "Wendel is innocent.", Info_Mod_Richter_Endres_A);
	};
};

INSTANCE Info_Mod_Richter_Endres02 (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Endres02_Condition;
	information	= Info_Mod_Richter_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richter_Endres02_Condition()
{
	if (Mod_EndresIndizien == 4)
	|| (Mod_EndresIndizien == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richter_Endres02_Info()
{
	if (Mod_EndresIndizien == 4)
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_00"); //You may have been a criminal, but you didn't show any instinct.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_01"); //We must thank you for your help in this case. This horrible thing must not happen again.
	};

	AI_Output(hero, self, "Info_Mod_Richter_Endres02_15_02"); //What happens to the healer?
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_03"); //We will have it cut in four, hanging or beheaded, depending on our mood.
	AI_Output(hero, self, "Info_Mod_Richter_Endres02_15_04"); //Must he be punished with death?
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_05"); //People want it that way, believe us. How dissatisfied they would be if they could not see the guilty party atoned.
	AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_06"); //Now let's not talk about this any more.

	if (Mod_EndresIndizien == 4)
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_07"); //The gossips will do it in detail.

		B_GivePlayerXP	(200);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I brought down the healer on my own.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Richter_Endres02_10_08"); //There are more pleasing things. Anselm has decreed that you should receive this potion as a reward for your service.

		B_GiveInvItems	(self, hero, ItPo_Perm_Health, 1);

		B_GivePlayerXP	(400);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I handed over the murderous healer to the judiciary.");
	};

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ENDRES, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Richter_Glorie (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Glorie_Condition;
	information	= Info_Mod_Richter_Glorie_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Richter_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Richter_Glorie_10_00"); //Ahh, nice to meet you, scholar. I really wanted to discuss something with you guys.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CASSIA");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "RICHTER");
};

INSTANCE Info_Mod_Richter_Freudenspender (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Freudenspender_Condition;
	information	= Info_Mod_Richter_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Feel like giving joy?";
};                       

FUNC INT Info_Mod_Richter_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Richter_Freudenspender_15_00"); //Feel like giving joy?
	AI_Output(self, hero, "Info_Mod_Richter_Freudenspender_10_01"); //We'd rather have a good meal and an exciting negotiation.
};

var int Richter_LastPetzCounter;
var int Richter_LastPetzCrime;

INSTANCE Info_Mod_Richter_PMSchulden (C_INFO)
{
	npc         	= Mod_7371_OUT_Richter_REL;
	nr          	= 1;
	condition   	= Info_Mod_Richter_PMSchulden_Condition;
	information 	= Info_Mod_Richter_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Richter_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Richter_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Richter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Richter_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_02"); //Apparently, it's not the latest accusations!

		if (Richter_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Richter_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Richter_LastPetzCounter);
		
			if (diff > 0)
			{
				Richter_Schulden = Richter_Schulden + (diff * 50);
			};
		
			if (Richter_Schulden > 1000)	{	Richter_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Richter_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Richter_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_05"); //Some new things have come up.
		
		if (Richter_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Richter_LastPetzCrime == CRIME_THEFT)
		|| ( (Richter_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_07"); //No one remembers seeing you at a theft.
		};
		
		if (Richter_LastPetzCrime == CRIME_ATTACK)
		|| ( (Richter_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_12"); //Make sure you don't get in trouble again.
	
			Richter_Schulden			= 0;
			Richter_LastPetzCounter 	= 0;
			Richter_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Richter_Schulden);
			AI_Output (self, hero, "Info_Mod_Richter_PMSchulden_10_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
		Info_AddChoice		(Info_Mod_Richter_PMSchulden,"I don't have enough gold!",Info_Mod_Richter_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Richter_PMSchulden,"How much was it again?",Info_Mod_Richter_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Richter_PMSchulden,"I want to pay the fine.",Info_Mod_Richter_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Richter_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Richter_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Richter_Schulden);

	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Richter_PMSchulden,"I don't have enough gold!",Info_Mod_Richter_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Richter_PMSchulden,"How much was it again?",Info_Mod_Richter_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Richter_PMSchulden,"I want to pay the fine.",Info_Mod_Richter_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Richter_PETZMASTER   (C_INFO)
{
	npc         	= Mod_7371_OUT_Richter_REL;
	nr          	= 1;
	condition   	= Info_Mod_Richter_PETZMASTER_Condition;
	information 	= Info_Mod_Richter_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Richter_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Richter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Richter_PETZMASTER_Info()
{
	Richter_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_02"); //Murder is a grave offence!

		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Richter_Schulden = Richter_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_04"); //The guards have orders to judge every murderer on the spot.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_05"); //And most citizens won't tolerate a murderer in the camp either!
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_06"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_07"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_08"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_09"); //I will not tolerate such behaviour in the camp!
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_10"); //You'll have to pay a fine to make up for your crime!
		
		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_11"); //You can't just indiscriminately attack people. I will hold you to account for that.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_12"); //And I don't think it had to be the sheep business.
		};

		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_13"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_14"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Richter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_15"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_16"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_10_17"); //You'll have to pay compensation!
		
		Richter_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_15_18"); //How much?
	
	if (Richter_Schulden > 1000)	{	Richter_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Richter_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Richter_PETZMASTER,"I don't have enough gold!",Info_Mod_Richter_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Richter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Richter_PETZMASTER,"I want to pay the fine.",Info_Mod_Richter_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Richter_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Richter_Schulden);
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayNow_10_01"); //Good! I will see to it that everyone in the city learns about it - so your reputation would be reasonably restored.

	B_GrantAbsolution (LOC_KHORATA);
	
	Richter_Schulden			= 0;
	Richter_LastPetzCounter 	= 0;
	Richter_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Richter_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Richter_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Richter_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Richter_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayLater_10_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Richter_PETZMASTER_PayLater_10_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Richter_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Richter_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Richter_Pickpocket (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_Pickpocket_Condition;
	information	= Info_Mod_Richter_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Richter_Pickpocket_Condition()
{
	C_Beklauen	(145, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Richter_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

	Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_BACK, Info_Mod_Richter_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Richter_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Richter_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
};

FUNC VOID Info_Mod_Richter_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Richter_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Richter_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Richter_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Richter_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Richter_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Richter_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Richter_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Richter_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Richter_EXIT (C_INFO)
{
	npc		= Mod_7371_OUT_Richter_REL;
	nr		= 1;
	condition	= Info_Mod_Richter_EXIT_Condition;
	information	= Info_Mod_Richter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
