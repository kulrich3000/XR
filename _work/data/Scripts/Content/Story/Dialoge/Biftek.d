INSTANCE Info_Mod_Biftek_Hi (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Hi_Condition;
	information	= Info_Mod_Biftek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're a new guy?";
};

FUNC INT Info_Mod_Biftek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Biftek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_00"); //You're a new guy?
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_01"); //Why do people want to know? Beware of mighty biftek and his axe!
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_02"); //Biftek will skin people and eat raw!
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_03"); //Don't be in a hurry! I am a good friend of Ur Shak.
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_04"); //Upps! Biftek did not know. Can't even nibble on humans?
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_05"); //Not right now, no.
};

INSTANCE Info_Mod_Biftek_Mager (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager_Condition;
	information	= Info_Mod_Biftek_Mager_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look pretty skinny for an orc.";
};

FUNC INT Info_Mod_Biftek_Mager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_00"); //You look pretty skinny for an orc.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_01"); //A few weeks ago Biftek would be a strong orc, but since then no more meat eaten.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_02"); //In camps of orcs no longer eat any food at all, and here only vegetables and herbs, of which biftek get stomach pains.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_03"); //So Biftek is already very weak and will surely die soon.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_04"); //(crying) Man quite sure that he still need all his arms and legs?
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_05"); //Why don't you get meat here?
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_06"); //Ur shak say orcs also can live on plants and mushrooms, and its much easier to find and collect.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_07"); //But Biftek say: Yikes! Plants and mushrooms do not taste good and do not make full. But he's too weak to go hunting himself.
	
	AI_TurnAway(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_08"); //(to himself) Of course, I could offer to bring him meat. But he wouldn't have much of that for long. I should talk to Ur Shak about what to do.
	
	AI_TurnToNpc(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_09"); //Look, I can't help you right now, though. But if I find a way, I'll come back.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_10"); //You could salt yourself up to taste better?

	Log_CreateTopic	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, "The Orc Biftek in the mountain fortress has not had meat for weeks and feels like starving. Since meat is scarce, he needs an adequate substitute. Maybe Ur Shak knows what to do.");
};

var int Mod_Biftek_Day;

INSTANCE Info_Mod_Biftek_Mager2 (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager2_Condition;
	information	= Info_Mod_Biftek_Mager2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Look, I brought you a piece of meat.";
};

FUNC INT Info_Mod_Biftek_Mager2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Biftek))
	&& (Npc_HasItems(hero, ItWr_TofuRezept))
	&& (Npc_HasItems(hero, ItFo_Tofu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager2_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_00"); //Look, I brought you a piece of meat.
	
	B_GiveInvItems(hero, self, ItFo_Tofu, 1);
	
	B_UseItem(self, ItFo_Tofu);
	
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_01"); //(chewing with relish) Hmmjommjomm. Ah, this taste Biftek have been missing for so long. Biftek now glad. Man have more?
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_02"); //No, but you can just cook your own food. Here.
	
	B_GiveInvItems(hero, self, ItWr_TofuRezept, 1);
	
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_03"); //Man wants to poison Biftek! And Biftek trust people!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_04"); //Come on down here. You didn't taste any different.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_05"); //Yes, it is. Biftek just want to be nice and not admit it.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_06"); //That's not true at all.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_07"); //Voices well.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_08"); //Now, listen to me. You didn't notice a difference, that's final. You can tell your mother everything else.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_09"); //And if you're too lazy to ask Ur Shak to let him collect so-yes plants and turn them into To-Fu, it's your fault.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_10"); //As soon as you get your strength back, you can get your own meat.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_11"); //Well, maybe they're right. Biftek thank man, but he will no longer deceive Biftek in the future.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_12"); //Deal.
	
	B_GivePlayerXP(350);

	B_SetTopicStatus	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Mod_Biftek_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Biftek_Mager3 (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager3_Condition;
	information	= Info_Mod_Biftek_Mager3_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look stronger again.";
};

FUNC INT Info_Mod_Biftek_Mager3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager2))
	&& (Wld_GetDay() - 3 >= Mod_Biftek_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager3_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_00"); //You look stronger again.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_01"); //Oh yes, biftek eat to-fu all day, can hardly stop. Ur shak must prohibit biftek to eat further because not enough so-yes beans there.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_02"); //But Biftek go and find his own beans!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_03"); //As long as you're all right.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_04"); //Biftek don't want to nibble on people anymore!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_05"); //I'm glad you did.
};

INSTANCE Info_Mod_Biftek_WarumDabei (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_WarumDabei_Condition;
	information	= Info_Mod_Biftek_WarumDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you join Ur Shak, Tarrok and Ranad?";
};

FUNC INT Info_Mod_Biftek_WarumDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_WarumDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_WarumDabei_15_00"); //Why did you join Ur Shak, Tarrok and Ranad?
	AI_Output(self, hero, "Info_Mod_Biftek_WarumDabei_18_01"); //Quite simply, in camps of orcs no longer any food there, much buried in temples of Krushak, and not enough orcs to hunt fresh meat.
	AI_Output(self, hero, "Info_Mod_Biftek_WarumDabei_18_02"); //But Ranad say he know where Biftek can eat as much as he wants. So biftek's coming with us. But Ranad did not say that only have vegetables!
};

INSTANCE Info_Mod_Biftek_EXIT (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_EXIT_Condition;
	information	= Info_Mod_Biftek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Biftek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Biftek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
