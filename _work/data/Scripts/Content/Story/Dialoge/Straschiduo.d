INSTANCE Info_Mod_Straschiduo_Hi (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Hi_Condition;
	information	= Info_Mod_Straschiduo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_00"); //What?! Who dares to enter the sacred halls of our Brotherhood of Blood cult?

	if (Mod_WM_Blutkultinfos == 0)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Aha, a community that calls itself' blood cult' seems to have its fingers in the pie.");
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_01"); //If I hadn't been so amazed at your appearance, I'd kill you right now. So speak quickly: Who are you and what are you doing here?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I want to join your powerful community.", Info_Mod_Straschiduo_Hi_C);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I just stumbled in here by accident. What's going on here?", Info_Mod_Straschiduo_Hi_B);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I'm here to get rid of you miserable creatures.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_C_15_00"); //I want to join your powerful community.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_C_29_01"); //You amaze me and raise some questions. Who are you?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I'm an adventurer from the South.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I am a devoted servant of Beliar's.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I am a venerable servant of Adanos.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_B_15_00"); //I just stumbled in here by accident. What's going on here?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_B_29_01"); //You're trying my patience. We are the magically gifted and extremely influential community of the blood cult. That should be enough for now! And now speak!!!

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I want to enter your powerful community.", Info_Mod_Straschiduo_Hi_M);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I was just leaving.", Info_Mod_Straschiduo_Hi_L);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I'm here to get rid of you miserable creatures.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_A_15_00"); //I'm here to get rid of you miserable creatures.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_A_29_01"); //Hahaha, I'm not laughing. You wretch want to destroy us?! We'll feed on your blood. Come on, brothers, hack him to pieces!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_F_15_00"); //I'm an adventurer from the South.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_F_29_01"); //Hmm, so say: To what god do you worship?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "No god at all.", Info_Mod_Straschiduo_Hi_J);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "The sleeper.", Info_Mod_Straschiduo_Hi_I);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "The one God.", Info_Mod_Straschiduo_Hi_H);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Innos.", Info_Mod_Straschiduo_Hi_G);
};

FUNC VOID Info_Mod_Straschiduo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_E_15_00"); //I am a devoted servant of Beliars.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_E_29_01"); //The devoted servant of a god?! No qualification that speaks for you... Come on, brothers, kill this god-fearing flunky.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_D_15_00"); //I am a venerable servant of Adanos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_D_29_01"); //What?! A servant of Adanos dares to defile our sacred halls?! Come on, brothers, take him out!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_K()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_00"); //Yes, these are favourable conditions. And with the fact that you've even made it all the way to us, you've already provided worthy proof of your abilities.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_01"); //Well, before we admit you to our ranks, however, I will subject you to a few more small tests, which will provide final proof of your willingness to serve our fellowship and to enjoy its powerful resources.

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);
};

FUNC VOID Info_Mod_Straschiduo_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_J_15_00"); //No god at all.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_I_15_00"); //The sleeper.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_H_15_00"); //The one God.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_H_29_01"); //Hmm, that after such a long time there are still followers of this spinnertum...?! Well, not for long.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_G_15_00"); //Innos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_G_29_01"); //There, there. But the longest time. confreres....

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_M_15_00"); //I want to enter your powerful community.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_M_29_01"); //(carousy) Really? Then answer me some questions! Who are you?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I'm an adventurer from the South.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I am a devoted servant of Beliars.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "I am a venerable servant of Adanos.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_L_15_00"); //I was just leaving.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_01"); //Hahaha, I'm not laughing.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_02"); //Whoever crosses our path cannot avoid paying his tribute.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_03"); //Come on, brothers, chop him up!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Straschiduo_WhatToDo (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_WhatToDo_Condition;
	information	= Info_Mod_Straschiduo_WhatToDo_Info;
	permanent	= 0;
	important	= 0;
	description	= "What am I supposed to do?";
};

FUNC INT Info_Mod_Straschiduo_WhatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Hi))
	&& (Mod_WM_BlutkultAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_WhatToDo_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_WhatToDo_15_00"); //What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_01"); //For our rituals we need fresh blood again and again. So bring me five bottles of blood of people killed.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_02"); //In order for the rituals to have the desired effect, we must first take fly agaric mushrooms. Bring me six of those.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_03"); //Yes, and then there are those annoying water magicians with their minions... find one of your mages or warriors, kill him and bring me his weapon.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_04"); //When you have done this, you will gain access to our other rooms and come a great deal closer to joining our brotherhood.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "All right, then. I'm supposed to get five bottles of human blood, six fly agaric mushrooms and last but not least the weapon of a water warrior or magician.");
};

INSTANCE Info_Mod_Straschiduo_AllesDa (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_AllesDa_Condition;
	information	= Info_Mod_Straschiduo_AllesDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the things.";
};

FUNC INT Info_Mod_Straschiduo_AllesDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (Npc_HasItems(hero, ItPo_Blood) >= 5)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 6)
	&& ((Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	|| (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_02_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_AllesDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_AllesDa_15_00"); //I got the things.

	Npc_RemoveInvItems	(hero, ItPo_Blood, 5);
	Npc_RemoveInvItems	(hero, ItPl_Mushroom_03, 6);

	if (Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert, 1);
	}
	else if (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_02, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_02_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_02_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMW_Addon_Stab03, 1);
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_01"); //Very good, let's see. Five vials of blood, toadstools, all right, and then - in fact - the weapon of a flask of water. One less miserable servant of Adanos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_02"); //Yes, now you have access to our other rooms and the final preparations for the ritual of your recording can begin.

	self.aivar[AIV_PASSGATE] = TRUE;

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Well, I can now enter the entire cave...");
};

INSTANCE Info_Mod_Straschiduo_LetzteVorbereitungen (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_LetzteVorbereitungen_Condition;
	information	= Info_Mod_Straschiduo_LetzteVorbereitungen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Final preparations?";
};

FUNC INT Info_Mod_Straschiduo_LetzteVorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_AllesDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_LetzteVorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_LetzteVorbereitungen_15_00"); //Final preparations?
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_01"); //Yes, take these teeth of an archdaemon, sow them on the red marked spot of Sekob's field and reap what grows out of the ground.

	B_GiveInvItems	(self, hero, ItAt_ErzdemonTooth, 1);

	Wld_SendTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_02"); //Bring everything to me and become one of our brothers.
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_03"); //Use this pickaxe to make it easier to sow the seeds.

	B_GiveInvItems	(self, hero, ItMw_2H_AXe_L_01, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Mysterious. Sow the teeth on Sekobs field where it is marked in red and harvest the fruits that grow out of the soil.");
};

INSTANCE Info_Mod_Straschiduo_Gemeinschaft (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Gemeinschaft_Condition;
	information	= Info_Mod_Straschiduo_Gemeinschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me a little more about your community?";
};

FUNC INT Info_Mod_Straschiduo_Gemeinschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Gemeinschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_00"); //Can you tell me a little more about your community?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_01"); //All right, although I can't tell you everything, of course.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_02"); //You're not yet a full member of our community and besides, we've just got a, uh, big project going on that requires our full attention and doesn't allow any big digressions.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_03"); //All right, then. We are an ancient community, much older than you can imagine at that time. Originally we lived on another part of Khorinis.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_04"); //But the culture that once lived there died out of, uh, bad reasons, so that we did not find victims for our rituals - we do not carry the name blood cult for nothing - for the time being.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_05"); //Well, I have to admit that we may also have played our part in the downfall of this culture. (laughs spitefully)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_06"); //For this reason, we went to sleep for centuries until we felt life and magical energy on this part of Khorinis and came here.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_07"); //However, we had to realize that the conditions did not yet meet our needs and we had to rest for many years again, until a considerable magical shock recently tore us out of our sleep.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_08"); //Vibrations of this kind let us hope that there will be falls in the structure of the world, which can provide us with the blood and energies of many living beings and thus let us hope for good conditions.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_09"); //Yes, and then someone else came into contact with us who is almost as old as we are...
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_10"); //Who are you talking about?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_11"); //Um, I'll explain that on another occasion. Now, do your homework. You know what you have to do.
};

INSTANCE Info_Mod_Straschiduo_Ernte (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Ernte_Condition;
	information	= Info_Mod_Straschiduo_Ernte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the desired... er... Crops.";
};

FUNC INT Info_Mod_Straschiduo_Ernte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	&& (Npc_HasItems(hero, ItFoMuttonZombie) >= 3)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFireTongue) >= 2)
	&& (Npc_HasItems(hero, ItAt_ErzdemonTooth) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Ernte_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_00"); //Here are the desired... er... Crops.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_01"); //Outstanding. There's just one more thing you have to do.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_02"); //(Exhausted) Anything else? Who or what shall I kill, kill and rob this time?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_03"); //(laughs) No, nothing like that this time. Now, for a change, you'll get to know the pleasures of the palate.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_04"); //(joyful) What a tasty meal, I could really use a refreshment now.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_05"); //You see, that's also something we do not miss out on. Here is the recipe.... and four bottles of blood, plus three toadstools you'll need.

	CreateInvItems	(hero, ItPo_Blood, 4);
	CreateInvItems	(hero, ItPl_Mushroom_03, 3);
	CreateInvItems	(hero, ItWr_Rezept_Blutkult, 1);

	Wld_SendUnTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_06"); //How?!
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_07"); //After you have prepared and consumed it, you must come back to me again so that we can make you a full member of our community.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_08"); //And, yes, before you eat it, make sure that your supply of life energy is well-filled. It could blow your mind.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Ooh, toadstools, blood... . This might be a treat for the palate. Well, boil it, bring it down - pay attention to enough vitality beforehand - and to straschiduo for the final ritual.");

	B_GivePlayerXP	(450);
};

INSTANCE Info_Mod_Straschiduo_Halbinfernalischer (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Halbinfernalischer_Condition;
	information	= Info_Mod_Straschiduo_Halbinfernalischer_Info;
	permanent	= 0;
	important	= 0;
	description	= "I ate the meal.";
};

FUNC INT Info_Mod_Straschiduo_Halbinfernalischer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Ernte))
	&& (Mod_HeroIstDemon == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Halbinfernalischer_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_00"); //I ate the meal.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_01"); //Ahh, excellent. Feel the demonic powers in you?
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_02"); //Uh, I think so.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_03"); //Then step into our midst.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_04"); //(to the bystanders) Brothers, it is now time to welcome a new comrade-in-arms into our community, one who has truly proved himself worthy.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_05"); //Yes, Aeons ago we last welcomed a new member.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_06"); //And after one of our brothers left for the Minental to look for opportunities for death and destruction, another brother is all the more welcome.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_07"); //Well, so know that we are responsible for the appearance of the creatures on the plateau, even though you have probably come to the assumption yourself.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_08"); //We created these creatures by working together with witches, taking in the energies of Beliars and Innos, and shaping these creatures out of them.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_09"); //Such a watermagician fool has unwittingly played into our hands as he performed a ritual to purify blessed and cursed grounds. (laughs spitefully)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_10"); //(mocks) Ha, the preservation of balance. Not as long as we're around. Well, anyway, unfortunately, the contact with the witches is somehow broken off.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_11"); //Your first task will be to find out what happened. And then, as a messenger, you will visit the one under whose guidance our covenant with the witches was formed and who made this gloriously abominable work possible in the first place.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_12"); //But all this only after the ritual. Let's start now.

	B_GivePlayerXP	(200);

	Npc_SetRefuseTalk	(self, 5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7244_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7525_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7526_BlutkultMagier_NW, "RITUAL");
};

INSTANCE Info_Mod_Straschiduo_RitualDontWork (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_RitualDontWork_Condition;
	information	= Info_Mod_Straschiduo_RitualDontWork_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_RitualDontWork_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Halbinfernalischer))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_RitualDontWork_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_RitualDontWork_29_00"); //Damn, something seems to block the ritual. Let me think about it.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 3);
};

INSTANCE Info_Mod_Straschiduo_Adanos (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Adanos_Condition;
	information	= Info_Mod_Straschiduo_Adanos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Adanos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_RitualDontWork))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Adanos_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Adanos_29_00"); //The presence of Adano alone would be able to stop the ritual. A servant of Adanos!!!!!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, I'm blown. Now it's time to fight or run away.");

	Mod_WM_BlutkultAttack = 1;
};

INSTANCE Info_Mod_Straschiduo_Blut (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Blut_Condition;
	information	= Info_Mod_Straschiduo_Blut_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me how to draw people's blood! (1 LP)";
};

FUNC INT Info_Mod_Straschiduo_Blut_Condition()
{
	Info_Mod_Straschiduo_Blut.description = B_BuildLearnString("Teach me how to draw people's blood!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Blood));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Blood] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Blut_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Blut_15_00"); //Teach me how to draw people's blood!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Blood))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_01"); //Good. Listen. It's basically quite simple.
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_02"); //You pick up a sharp blade and cut the body somewhere, preferably on the aorta. Then you hold a bottle underneath and collect the blood.
	};
};

INSTANCE Info_Mod_Straschiduo_Zunge (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Zunge_Condition;
	information	= Info_Mod_Straschiduo_Zunge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me to take tongues! (5 LP)";
};

FUNC INT Info_Mod_Straschiduo_Zunge_Condition()
{
	Info_Mod_Straschiduo_Zunge.description = B_BuildLearnString("Teach me to take tongues!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Zunge_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Zunge_15_00"); //Teach me to take tongues!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_FireTongue))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Zunge_29_01"); //You strike the tongue of a fire monitor with a knife cut out of your mouth while holding it with the other hand.
	};
};

INSTANCE Info_Mod_Straschiduo_Herz (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Herz_Condition;
	information	= Info_Mod_Straschiduo_Herz_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring me to my heart! (3 LP)";
};

FUNC INT Info_Mod_Straschiduo_Herz_Condition()
{
	Info_Mod_Straschiduo_Herz.description = B_BuildLearnString("Bring me to my heart!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Heart));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Herz_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Herz_15_00"); //Bring me to my heart!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Heart))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Herz_29_01"); //A heart is removed from the animal with a clever incision in the chest. However, it is often only worthwhile for special animals or magical beings.
	};
};

const string Straschiduo_Checkpoint	= "WP_BK_03";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Straschiduo_FirstWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_FirstWarn_Condition;
	information	= Info_Mod_Straschiduo_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Straschiduo_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_FirstWarn_29_00"); //HALT! You can't stop by yet.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Straschiduo_SecondWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_SecondWarn_Condition;
	information	= Info_Mod_Straschiduo_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_SecondWarn_29_00"); //I'll tell you one last time. One more step and you're dead!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Straschiduo_Attack (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Attack_Condition;
	information	= Info_Mod_Straschiduo_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Straschiduo_Attack_29_00"); //You asked for it...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Straschiduo_EXIT (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_EXIT_Condition;
	information	= Info_Mod_Straschiduo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Straschiduo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
