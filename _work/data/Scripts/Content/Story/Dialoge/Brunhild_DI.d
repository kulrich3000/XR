INSTANCE Info_Mod_Brunhild_DI_Hi (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Hi_Condition;
	information	= Info_Mod_Brunhild_DI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brunhild_DI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_00"); //Huh? Am I dreaming? Who are you people?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_01"); //We're pirates. We got a message in a bottle.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_02"); //You found my message? Thank heaven!
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_03"); //By the way, they call me Brunhild. Friends call me Bruni.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_04"); //Pleased to meet you. How did you get here?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_05"); //It's a long story.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_06"); //Tell me about it.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_07"); //I sailed away with my father and brother. We were going to Khorinis.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_08"); //It is said that there are no orcs there who devastate the court yard and kill anything that doesn't look like an orc.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_09"); //My mother was killed by them.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_10"); //Where'd you get that old wives' tale?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_11"); //That's what they say on the mainland.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_12"); //What a joke! And where are your people?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_13"); //Dead. My brother didn't survive the shipwreck and my father built us this tent here.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_14"); //Then he was beaten to death by creepy limping creatures who lived among us in the caves.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_15"); //We know them all. Not a single one of them is going through any more trouble.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_16"); //You killed them all?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_17"); //We are pirates and we fear neither death nor Beliar!
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_18"); //Can you give me a lift? I won't survive long here, even without the hinkers.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_19"); //That will be decided by our captain. But I think so.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_20"); //Let's go to the beach.

	Mod_DI_InselErkunden = 2;

	B_StartOtherRoutine	(self, "FOLLOW");
	B_StartOtherRoutine	(Mod_1542_PIR_AlligatorJack_DI, "START");

	B_StartOtherRoutine	(Mod_1540_PIR_Skip_DI, "START");
	AI_Teleport	(Mod_1540_PIR_Skip_DI, "WP_DI_SKIPKOMMTANLAND");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Wld_InsertNpc	(Mod_1554_KDW_Jones_DI, "WP_DI_HEROKOMMTANLAND");
};

INSTANCE Info_Mod_Brunhild_DI_Gestaendnis (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Gestaendnis_Condition;
	information	= Info_Mod_Brunhild_DI_Gestaendnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you like it here with us?";
};

FUNC INT Info_Mod_Brunhild_DI_Gestaendnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Samuel_DI_Brunhild))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Gestaendnis_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_00"); //How do you like it here with us?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_01"); //Better than in my wretched tent anyway! You want some soup?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_02"); //Later, maybe. I come from Samuel....
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_03"); //You were talking about me?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_04"); //We did. You haven't been honest with me.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_05"); //Forgive me, I was afraid I had to stay on this island.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_06"); //We're not that brutal pirates again. Tell me what really happened.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_07"); //We didn't emigrate, we fled.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_08"); //My mother didn't drown, she was burned as a witch at the stake.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_09"); //And I was also suspected of witchcraft.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_10"); //Was she a witch? Are you a witch?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_11"); //No. My father used to be a magician of the Earth.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_12"); //When he met my mother and wanted to marry her, he had to leave the order.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_13"); //Order of the Earth? Never heard of him.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_14"); //This order prays to Adanos like the water magicians. Is not as well-known as the other orders and their magic is also somewhat different.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_15"); //Father has now taught Mother and me some of this magic.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_16"); //So no witchcraft?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_17"); //No. Good, positive magic, like others. My knowledge corresponds approximately to the first circle of magic.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_18"); //Which means?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_19"); //I could uproot trees, create crevasses, cause avalanches of rubble, move rocks. Things like that.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_20"); //Moving rocks.... Hmm... interesting.
};

INSTANCE Info_Mod_Brunhild_DI_Amulett (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Amulett_Condition;
	information	= Info_Mod_Brunhild_DI_Amulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Take a look at this. Have you ever seen this before?";
};

FUNC INT Info_Mod_Brunhild_DI_Amulett_Condition()
{
	if (Npc_HasItems(hero, ItAm_Pirateninsel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Amulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_00"); //Take a look at this. Have you ever seen this before?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_01"); //Oh! A locket.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_02"); //Medallion?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_03"); //Yeah. Something similar to an amulet, but more precious and rare.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_04"); //And what's that all about?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_05"); //I don't really know. It could be a banner, but I'm not sure.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_06"); //A banner?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_07"); //Yeah. An object with which one can pronounce or revoke bans.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_08"); //That's not helping right now.
};

INSTANCE Info_Mod_Brunhild_DI_Erdmagie (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Erdmagie_Condition;
	information	= Info_Mod_Brunhild_DI_Erdmagie_Info;
	permanent	= 0;
	important	= 0;
	description	= "You can move rocks...";
};

FUNC INT Info_Mod_Brunhild_DI_Erdmagie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brunhild_DI_Gestaendnis))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Erdmagie_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_00"); //You can move rocks...
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie_17_01"); //Even if it's not an entire mountain.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_02"); //We think we found the treasure. But massive rock walls block the entrance.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_03"); //You could make yourself indispensable to us.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie_17_04"); //That's got something. Where's the treasure?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_05"); //In the caves. I'll take you there.

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Brunhild_DI_Erdmagie2 (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Erdmagie2_Condition;
	information	= Info_Mod_Brunhild_DI_Erdmagie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Erdmagie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brunhild_DI_Erdmagie))
	&& (Npc_GetDistToWP(hero, "WP_DI_HOEHLE_02_TUNNEL_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Erdmagie2_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie2_15_00"); //Here's one of the caves.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_01"); //Uh-huh. And you mean this wall? Should work.

	AI_PlayAni	(self, "T_MAGRUN_2_TRFSHOOT");

	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_02"); //Hm. I can't make it. Strange... there's some kind of obstacle. Not a real... Strong magic.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_03"); //Maybe this Jones who's with your captain can help. My knowledge of spells is too low.

	Mod_DI_InselErkunden = 3;
};

INSTANCE Info_Mod_Brunhild_DI_Ende (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Ende_Condition;
	information	= Info_Mod_Brunhild_DI_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Ende_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Ende_15_00"); //You should go back to the ship, I don't know what else awaits me behind that wall.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Ende_17_01"); //Too bad your closeness has something soothing about it.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KUECHE");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Brunhild_DI_EXIT (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_EXIT_Condition;
	information	= Info_Mod_Brunhild_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brunhild_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brunhild_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
