INSTANCE Info_Mod_Drake_Hi (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_Hi_Condition;
	information	= Info_Mod_Drake_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drake_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drake_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Drake_Hi_11_00"); //Ahh, a new one.
	AI_Output(hero, self, "Info_Mod_Drake_Hi_15_01"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Drake_Hi_11_02"); //Well, you're not one of the guys we were buried here back then.
};

INSTANCE Info_Mod_Drake_WhatHappened (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_WhatHappened_Condition;
	information	= Info_Mod_Drake_WhatHappened_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happened back then?";
};

FUNC INT Info_Mod_Drake_WhatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drake_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drake_WhatHappened_Info()
{
	AI_Output(hero, self, "Info_Mod_Drake_WhatHappened_15_00"); //What happened back then?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened_11_01"); //You haven't been around long, have you?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened_11_02"); //Oh, you know, I'd love to tell you everything, but the dusty air in the mine makes my throat so dry, if you understand....
};

INSTANCE Info_Mod_Drake_WhatHappened2 (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_WhatHappened2_Condition;
	information	= Info_Mod_Drake_WhatHappened2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(one output)";
};

FUNC INT Info_Mod_Drake_WhatHappened2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drake_WhatHappened))
	&& (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drake_WhatHappened2_Info()
{
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_00"); //Ahh, that felt good. Okay, where were we...? exactly... So when we were sitting in the mine without thinking about anything bad and everyone did their job, the earth started to shake and rumble and it didn't hold anything on its spot.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_01"); //It collapsed a lot and many boys died.... a few yards behind me, for example, Santino was killed by rocks.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_02"); //But what was worst for the survivors: The entrance was blocked by huge boulders... hopelessly ever get out of there again.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_03"); //We had all already made our peace with the hereafter, when after two weeks the demon magicians and their creatures had suddenly cleared the way out... not from the old entrance, but through an unknown fortress!
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_04"); //Can you imagine?! Those were hundreds of yards of rock! It would have taken 100 Buddler a few decades!
	AI_Output(hero, self, "Info_Mod_Drake_WhatHappened2_15_05"); //And they took over the mine?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_06"); //Sure, they uncovered the mine too. Most of us stayed and joined them.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_07"); //He understood himself after what happened.
};

INSTANCE Info_Mod_Drake_EXIT (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_EXIT_Condition;
	information	= Info_Mod_Drake_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drake_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drake_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
