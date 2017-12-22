INSTANCE Info_Mod_Axon_Hi (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Hi_Condition;
	information	= Info_Mod_Axon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Axon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Axon_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_01"); //Hmm... let me think about it....
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_02"); //Is the question that complicated?
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_03"); //Which question do you want an answer to first?
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_04"); //Let's take one at a time.
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_05"); //What did you ask me first?
	AI_Output(hero, self, "Info_Mod_Axon_Hi_15_06"); //Forget about it.
	AI_Output(self, hero, "Info_Mod_Axon_Hi_06_07"); //Somebody should understand that....
};

INSTANCE Info_Mod_Axon_Plagenquest (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_Condition;
	information	= Info_Mod_Axon_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're Axon, I suppose?";
};

FUNC INT Info_Mod_Axon_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_04))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_04))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_00"); //You're Axon, I suppose?
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_01"); //Hey, how did you know that so quickly?
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_02"); //Well... the gun you're carrying on your belt.... I've seen her before.
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_03"); //Well, yeah, right.... Well, let's get going....
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_04"); //Well, my intuition tells me that we have to go in the following direction.... (long pause)
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_05"); //Yes?!
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_06"); //Psst, I must gather.... (long pause)
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_15_07"); //Hmph...
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_06_09"); //Shh, I said... Well, I'd say we're going to... left. Follow me. Follow me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_114");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_115");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_116");

	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_01, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_02, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
	Wld_InsertNpc	(Insekt_03, "REL_SURFACE_117");
};

INSTANCe Info_Mod_Axon_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_02_Condition;
	information	= Info_Mod_Axon_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Axon_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_117") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_00"); //So... now... go some way.... post hmm... er...
	AI_Output(hero, self, "Info_Mod_Axon_Plagenquest_02_15_01"); //Can't it go a little faster?
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_02"); //Jesus Christ, I gotta focus, I said.
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_02_06_03"); //But ok... then we'll go now.... thither Ignorant.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BUG");

	Wld_InsertNpc	(Riesenbug, "REL_SURFACE_120");
};

INSTANCe Info_Mod_Axon_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_Plagenquest_03_Condition;
	information	= Info_Mod_Axon_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Axon_Plagenquest_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_120") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Axon_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Axon_Plagenquest_03_06_00"); //Wow, I think we got him. Let's get started.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PAUSE");
};

INSTANCE Info_Mod_Axon_EXIT (C_INFO)
{
	npc		= Mod_7415_OUT_Axon_REL;
	nr		= 1;
	condition	= Info_Mod_Axon_EXIT_Condition;
	information	= Info_Mod_Axon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Axon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Axon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
