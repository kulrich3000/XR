INSTANCE Info_Mod_Granmar_VM_Hi (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Hi_Condition;
	information	= Info_Mod_Granmar_VM_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Hi_26_00"); //Ah, there you are. I would say we secure the next camp and the lake down there for now. Follow me!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOSEE");
};

INSTANCE Info_Mod_Granmar_VM_AtSee (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtSee_Condition;
	information	= Info_Mod_Granmar_VM_AtSee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtSee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Hi))
	&& (Npc_GetDistToWP(hero, "MINE_GO_17") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtSee_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_00"); //I must say, the clubs serve their purpose. Without them, we'd be screwed.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_01"); //Well, then we'll go deeper into the mine, let's see what lurks down there.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER");
};

INSTANCE Info_Mod_Granmar_VM_AtNager (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtNager_Condition;
	information	= Info_Mod_Granmar_VM_AtNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtSee))
	&& (Npc_GetDistToWP(self, "MINE_GO_51") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_00"); //Damn, what kind of creatures are they?!
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_01"); //All right, I'd say we're just securing the part of the mine that we've cleared.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_02"); //I'll go back to the entrance and dig up some ore, you take the guard here.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_03"); //And don't go any deeper into the mine, I need you here as a sentry.

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Wld_InsertNpc	(Mod_7626_OUT_Glenn_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7627_BUD_Costa_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7628_BUD_Sterling_VM,	"MINE_GO_52");
};

INSTANCE Info_Mod_Granmar_VM_SpecialErzguardian (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_SpecialErzguardian_Condition;
	information	= Info_Mod_Granmar_VM_SpecialErzguardian_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_SpecialErzguardian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtNager))
	&& (Mod_KG_SpecialErzguardian == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_SpecialErzguardian_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_00"); //I'm glad you came. We've got the 50 lumps of ore together. Hymir wants you to deliver it to Lord Andre.

	B_GiveInvItems	(self, hero, ItMi_ErzPaketAndre, 1);

	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_01"); //I'll hold until you get back with the paladins.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WACHE");

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar gave me the first 50 pieces of ore for Lord Andre. I'm supposed to deliver them and bring the paladins with me.");
};

INSTANCE Info_Mod_Granmar_VM_Trent (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent_Condition;
	information	= Info_Mod_Granmar_VM_Trent_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent_Condition()
{
	if (Mod_KG_TrentInMine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_00"); //I should have known. The next time a paladin thinks he's sending us reinforcements, I don't get any hopes.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_01"); //Who knows how many monsters are waiting for us down there, and they only send us one man.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_02"); //Well, at least the guy seems to be okay. You'd better go with him. I think he was about to leave.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar's a little upset that Lord Andre sent just one paladin. I'd better go with Trent...");
};

INSTANCE Info_Mod_Granmar_VM_Trent2 (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent2_Condition;
	information	= Info_Mod_Granmar_VM_Trent2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent2_Condition()
{
	if (Mod_KG_SchwarzesErz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent2_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_00"); //What was going on? Did you make it? Is the mine clear?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_01"); //So far, so far. If you don't dig too greedily and uncover more monsters, the mine will drop a lot.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_02"); //Nice to hear. Was there a problem?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_03"); //Nothing you couldn't get a handle on.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_04"); //Good. Hymir would like to congratulate you on your success. I'll see you guys later.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar is satisfied with our performance. I should stop by Hymir's house.");
};

INSTANCE Info_Mod_Granmar_VM_EXIT (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_EXIT_Condition;
	information	= Info_Mod_Granmar_VM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Granmar_VM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
