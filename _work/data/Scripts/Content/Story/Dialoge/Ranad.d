INSTANCE Info_Mod_Ranad_Hi (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_Hi_Condition;
	information	= Info_Mod_Ranad_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_Hi_18_00"); //Stranger greetings from me.

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ranad_Hi_18_02"); //I'm Ranad.
};

INSTANCE Info_Mod_Ranad_WasHier (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_WasHier_Condition;
	information	= Info_Mod_Ranad_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ur Shak sent me.";
};

FUNC INT Info_Mod_Ranad_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_UrShak_Foki))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_WasHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranad_WasHier_15_00"); //Ur Shak sent me. I want you to give me information about the orcs' plans for the Orc City.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_01"); //Orcs collect focus. You already have two. However, Ranad can make wrong focus. So he swapped a focus of them.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_02"); //Ranad still have four more wrong focus. Yet evil orcs only have one focus. Always carry Hosh Pak with you.
	AI_Output(hero, self, "Info_Mod_Ranad_WasHier_15_03"); //Then we should try to get the focus somehow from the care of Hosh Pak.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_04"); //Hosh Pak will not give away focus. Ranad and man must make dead. They can camouflage and invade the city of Orcs. Have big city, even underground.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_05"); //Ranad will give Hosh Pak three wrong focus. Then he will think he can make ritual for Krushak.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_06"); //Then Ranad and Man will attack and bring last focus. Friend must come to town with him, but evil orcs will not let go.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_07"); //Friend go to Tarrok. He can make Ulu-Mulu for friend. If friend be in the city of Orcs, he attack Hosh Pak. When friend attacking Hosh Pak, Ranad will help friend.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_08"); //Here friends still have focus of Ranad.

	CreateInvItems	(self, ItMi_Focus_Stonehenge, 1);
	B_GiveInvItems	(self, hero, ItMi_Focus_Stonehenge, 1);

	B_StartOtherRoutine	(Mod_10002_Orc_HoshPak_MT, "TOT");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "The Orc Ranad has already stolen a focus from the Orcs and left a false one there. The orcs only have one more focus stone, and Hosh Pak always carries it with him. To get to this focal point, we have to kill Hosh Pak. Ranad will bring him the other fake Foki so that Hosh Pak can do the ritual and I should attack him. To get to the Orc City, however, I need a Ulu-Mulu. Tarrok will be able to make me one.");
};

INSTANCE Info_Mod_Ranad_Tarrok (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_Tarrok_Condition;
	information	= Info_Mod_Ranad_Tarrok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find Tarrok?";
};

FUNC INT Info_Mod_Ranad_Tarrok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_WasHier))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_Tarrok_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranad_Tarrok_15_00"); //Where can I find Tarrok?
	AI_Output(self, hero, "Info_Mod_Ranad_Tarrok_18_01"); //Tarrok have a special order from Ur Shak. Let's find focus from Stonehenge.
	AI_Output(hero, self, "Info_Mod_Ranad_Tarrok_15_02"); //But you gave it to me, didn't you?
	AI_Output(self, hero, "Info_Mod_Ranad_Tarrok_18_03"); //Its focus I stolen from orcs in town. I only came back when Tarrok left.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "I'll find Tarrok at the Stonehenge.");
};

INSTANCE Info_Mod_Ranad_EXIT (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_EXIT_Condition;
	information	= Info_Mod_Ranad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ranad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
