INSTANCE Info_Mod_Akil_Hi (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Hi_Condition;
	information	= Info_Mod_Akil_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akil_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Akil_Hi_13_00"); //If your life is dear to you, leave this house. Only sickness and death can be found here.
};

INSTANCE Info_Mod_Akil_Blablabla (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Blablabla_Condition;
	information	= Info_Mod_Akil_Blablabla_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about...?";
};

FUNC INT Info_Mod_Akil_Blablabla_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) < 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Blablabla_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Blablabla_15_00"); //What about...?
	AI_Output(Self, hero, "Info_Mod_Akil_Blablabla_13_01"); //Unlucky one! Go while you still can! If you want to talk, go to Telbor.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Akil_Heilung (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Heilung_Condition;
	information	= Info_Mod_Akil_Heilung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, this should ease your suffering.";
};

FUNC INT Info_Mod_Akil_Heilung_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Heilung_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Heilung_15_00"); //Here, this should ease your suffering.

	B_GiveInvItems	(hero, self, ItPo_HealBesessenheit, 3);

	B_UseItem	(self, ItPo_HealBesessenheit);

	AI_Output(Self, hero, "Info_Mod_Akil_Heilung_13_01"); //Thanks a lot, I don't know how to make it good.
	
	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(350);

	B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "FOLLOWPLAYER");

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "I gave Akil the cure....");
};

INSTANCE Info_Mod_Akil_Randolph (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Randolph_Condition;
	information	= Info_Mod_Akil_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Randolph_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Randolph_Hi))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Randolph_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_00"); //This fool, if only he had taken the potion.
	AI_Output(hero, self, "Info_Mod_Akil_Randolph_15_01"); //Are you talking about Randolph?
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_02"); //Yeah. After the incident with the dark figure, he seemed to be doing very well at first.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_03"); //What's more, he had strength and stamina for three and worked effortlessly on a day that would otherwise have taken a week.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_04"); //But as time went by, he became more and more melancholy and began to withdraw from the others on the farm.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_05"); //He seemed tormented by voices that no one else heard and often woke up screaming at night.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_06"); //And yesterday, yes, he completely lost his mind.
	AI_Output(hero, self, "Info_Mod_Akil_Randolph_15_07"); //Keep talking.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_08"); //There's not much more to tell.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_09"); //When working in the fields, he suddenly began to fight wildly with his hands around him and shouted,"I wish they'd leave him alone.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_10"); //And before you knew it, he ran into the big forest and disappeared.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_11"); //Telbor still tried to track him, but lost his trail near the stone circle.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_13_12"); //As much as I hope for it, my hope of seeing him again in one hour's time disappears.
	
	Log_CreateTopic	(TOPIC_MOD_AKIL_RANDOLPH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AKIL_RANDOLPH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Randolph, who despised the healing potion, ran into the forest as if possessed. His trail's lost near the stone circle.");
};

INSTANCE Info_Mod_Akil_RandolphWiederFit (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_RandolphWiederFit_Condition;
	information	= Info_Mod_Akil_RandolphWiederFit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_RandolphWiederFit_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_NoMoreDemon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_RandolphWiederFit_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_RandolphWiederFit_13_00"); //Randolph's back and healed. And you seem to be playing a decisive role.
	AI_Output(Self, hero, "Info_Mod_Akil_RandolphWiederFit_13_01"); //It's not much I have, but take this gold as a thank you.
	
	B_GivePlayerXP	(400);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);
};

INSTANCE Info_Mod_Akil_Untier (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Untier_Condition;
	information	= Info_Mod_Akil_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you had any trouble with wild animals these last few days?";
};

FUNC INT Info_Mod_Akil_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_15_00"); //Have you had any trouble with wild animals these last few days?
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_01"); //Trouble?! That's for sure.
	AI_Output(self, hero, "Info_Mod_Akil_Untier_13_02"); //Yesterday, when I wanted to bring a load of heavily pickled sheep's legs to Orlan's tavern, I was struck by the most heinous beast I've ever seen.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_03"); //It was high as a tall man, running on all fours and hissing bestially.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_04"); //I dropped my valuable cargo and ran back to the yard.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_05"); //From a distance I could see how this monster was coming over the flesh.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_06"); //Afterwards it wound up on the ground for a few minutes - he probably didn't get all that salt - and then he ran into the woods hissing past my farm.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_07"); //May this beast die from the salt meat.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_08"); //But I really don't know how to make up for the loss.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_13_09"); //The meat would have brought me some gold coins and times are so hard...

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Akil regrets the loss of his salt meat after the attack of a beast. She walked into the forest behind his farm.");
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);

	Info_AddChoice	(Info_Mod_Akil_Untier, "Maybe I can help you....", Info_Mod_Akil_Untier_B);
	Info_AddChoice	(Info_Mod_Akil_Untier, "Not my business.", Info_Mod_Akil_Untier_A);
};

FUNC VOID Info_Mod_Akil_Untier_F()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_F_13_00"); //Thank you very much. I don't know how to make it up to you.

	B_GivePlayerXP	(100);
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

FUNC VOID Info_Mod_Akil_Untier_E()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_E_15_00"); //I'll think of something.
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

FUNC VOID Info_Mod_Akil_Untier_D()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_D_15_00"); //Here you have ten clubs.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 10);
	
	Info_Mod_Akil_Untier_F();
};

FUNC VOID Info_Mod_Akil_Untier_C()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_C_15_00"); //Here's 50 gold coins.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);
	
	Info_Mod_Akil_Untier_F();
};

FUNC VOID Info_Mod_Akil_Untier_B()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_B_15_00"); //Maybe I can help you....
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_B_13_01"); //(hopefully) Yes?
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);

	Info_AddChoice	(Info_Mod_Akil_Untier, "I'll think of something.", Info_Mod_Akil_Untier_E);
	if (Npc_HasItems(hero, ItFo_MuttonRaw) >= 10)
	{
		Info_AddChoice	(Info_Mod_Akil_Untier, "Here you have ten clubs.", Info_Mod_Akil_Untier_D);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Akil_Untier, "Here's 50 gold coins.", Info_Mod_Akil_Untier_C);
	};
};

FUNC VOID Info_Mod_Akil_Untier_A()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_A_15_00"); //Not my business.
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

INSTANCE Info_Mod_Akil_Lich (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Lich_Condition;
	information	= Info_Mod_Akil_Lich_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Lich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Lich_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_13_00"); //Better get to town, it's not safe here.
	AI_Output(hero, self, "Info_Mod_Akil_Lich_15_01"); //What has happened?
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_13_02"); //These dreadful demons appeared out of nowhere and tormented us to the bone.
	AI_Output(self, hero, "Info_Mod_Akil_Lich_13_03"); //If those three paladins hadn't turned up, it would have been bad for us.
	AI_Output(hero, self, "Info_Mod_Akil_Lich_15_04"); //Where are the paladins now?
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_13_05"); //After they had killed the fiends - thanks to Innos - they walked to the burial cave near Orlan.
};

INSTANCE Info_Mod_Akil_Pickpocket (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Pickpocket_Condition;
	information	= Info_Mod_Akil_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Akil_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Akil_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

	Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_BACK, Info_Mod_Akil_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Akil_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Akil_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
};

FUNC VOID Info_Mod_Akil_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Akil_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Akil_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Akil_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Akil_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Akil_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Akil_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Akil_EXIT (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_EXIT_Condition;
	information	= Info_Mod_Akil_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akil_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akil_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
