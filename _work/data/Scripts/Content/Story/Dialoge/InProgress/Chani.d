INSTANCE Info_Mod_Chani_Hi (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Hi_Condition;
	information	= Info_Mod_Chani_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Chani_Hi_Condition()
{
	if (Mod_Chani_Abenteurer == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Chani_Hi_19_00"); //And honey, how about you and me?
	AI_Output(hero, self, "Info_Mod_Chani_Hi_15_01"); //Uh, another time.
};

INSTANCE Info_Mod_Chani_Woher (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Condition;
	information	= Info_Mod_Chani_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're from the colony.";
};

FUNC INT Info_Mod_Chani_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_15_00"); //You're from the colony.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_19_01"); //Listen, sweetheart, if you want to talk to me, at least you have to invite me for a drink... but not some cheap beer or some sailor booze.
};

FUNC VOID Info_Mod_Chani_Woher_Story(var C_Item itm)
{
	B_GiveInvItems	(hero, self, itm, 1);
	CreateInvItems	(self, itm, 2);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_00"); //That sounds like a good idea.

	B_UseItem	(self, itm);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_01"); //(slightly drunk) Very nice, that's when I get warm around my chest.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_02"); //But where did we stop? That's right, the lousy colony. I don't want to think about that.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_03"); //Constantly crammed into this disgusting cold wall, with this cheating old fool. The sleeper awakens.... such bullshit.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_04"); //Took advantage of the opportunity when the old man died, and shortly afterwards I fought my way through here with Viran and Harlok.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_05"); //Well, this isn't exactly a nice place.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_06"); //A thousand times better than there.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_07"); //Here I have at least my freedom, can sell my body as I like it, have fun and above all sounding money.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_08"); //Is that why you ended up in the colony?
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_09"); //Yeah, that's right. The dirty governor denounced me when I was doing my business on the southern islands.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_10"); //He was one of my best customers.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_11"); //Probably got a bonus at this pig Rhobar for finding another girl for the colony.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_12"); //Perhaps I had also become too dangerous for him, for his blameless reputation... Hypocritical gang.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_13"); //If I could, I'd take a razor and give them their...
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_14"); //Yes, I understand. It was interesting to learn your story.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_15"); //Yeah, enough talking. I'm gonna have another drink to get in the mood.

	B_UseItem	(self, itm);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Chani_Woher_Wacholder (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wacholder_Condition;
	information	= Info_Mod_Chani_Woher_Wacholder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here you have a strong sip of juniper.";
};

FUNC INT Info_Mod_Chani_Woher_Wacholder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wein))
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wacholder_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wacholder_15_00"); //Here you have a strong sip of juniper.

	Info_Mod_Chani_Woher_Story(ItFo_Booze);
};

INSTANCE Info_Mod_Chani_Woher_Wein (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wein_Condition;
	information	= Info_Mod_Chani_Woher_Wein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a good bottle of wine.";
};

FUNC INT Info_Mod_Chani_Woher_Wein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wacholder))
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wein_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wein_15_00"); //Here's a good bottle of wine.

	Info_Mod_Chani_Woher_Story(ItFo_Wine);
};

INSTANCE Info_Mod_Chani_EXIT (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_EXIT_Condition;
	information	= Info_Mod_Chani_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Chani_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Chani_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
