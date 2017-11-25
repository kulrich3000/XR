INSTANCE Info_Mod_Trent_VM_Hi (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_Hi_Condition;
	information	= Info_Mod_Trent_VM_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_Hi_06_00"); //What am I supposed to help you with right here?
	AI_Output(hero, self, "Info_Mod_Trent_VM_Hi_15_01"); //You'd better follow me a little deeper into the mine first.
	AI_Output(self, hero, "Info_Mod_Trent_VM_Hi_06_02"); //All right, all right.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTONAGER");
	B_StartOtherRoutine	(Mod_7625_KGD_Granmar_VM, "START");
};

INSTANCE Info_Mod_Trent_VM_BrauchenLicht (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_BrauchenLicht_Condition;
	information	= Info_Mod_Trent_VM_BrauchenLicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_BrauchenLicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_Hi))
	&& (Npc_GetDistToWP(self, "MINE_GO_37") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_BrauchenLicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_00"); //There seems to be a strange gust of wind. Normal torches probably won't work here.
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_01"); //I think I know what we need here. I was wondering when I really needed the runes.
	AI_Output(hero, self, "Info_Mod_Trent_VM_BrauchenLicht_15_02"); //What rune do you mean?
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_03"); //The light rune you get as a knight. We won't have any problems with her in the dark.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent wants to use his light rune to give us light in the right tunnel.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER");

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Trent_VM_AtFirstNager (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AtFirstNager_Condition;
	information	= Info_Mod_Trent_VM_AtFirstNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AtFirstNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_BrauchenLicht))
	&& (Npc_GetDistToWP(self, "MINE_GO_43") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AtFirstNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_00"); //Mm, those monsters look familiar.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_01"); //Yeah, right, I've seen monsters like that before in a cave in Varant.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_02"); //However, it was a gold mine and the rodents were much smaller than this one.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_03"); //If I'm not mistaken, they might as well have a queen. So let's keep going.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent says he already knows the ore rodents from Varant, even if they are smaller there. He also suspects a queen here in the mine.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER2");
};

INSTANCE Info_Mod_Trent_VM_AtSecondNager (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AtSecondNager_Condition;
	information	= Info_Mod_Trent_VM_AtSecondNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AtSecondNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AtFirstNager))
	&& (Npc_GetDistToWP(self, "MINE_GO_45") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AtSecondNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtSecondNager_06_00"); //Can you hear that too?! I think the queen is very close, she will also have gathered some of her children around her.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtSecondNager_06_01"); //I'll wait here, if you need anything else, now's the last chance.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITATNAGER2");
};

INSTANCE Info_Mod_Trent_VM_KillQueen (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_KillQueen_Condition;
	information	= Info_Mod_Trent_VM_KillQueen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready, let's finish them off!";
};

FUNC INT Info_Mod_Trent_VM_KillQueen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AtSecondNager))
	&& (Npc_GetDistToWP(self, "MINE_GO_45") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_KillQueen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_KillQueen_15_00"); //I'm ready, let's finish them off!
	AI_Output(self, hero, "Info_Mod_Trent_VM_KillQueen_06_01"); //Then let's go!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOQUEEN");
};

INSTANCE Info_Mod_Trent_VM_QueenDead (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_QueenDead_Condition;
	information	= Info_Mod_Trent_VM_QueenDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_QueenDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_KillQueen))
	&& (Npc_GetDistToWP(self, "MINE_GO_53") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_QueenDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_QueenDead_06_00"); //So the cattle will think twice about where to lay its eggs in the next life. Let's see what interesting things it ate.

	AI_GotoNpc	(self, ErznagerQueen);
	AI_TurnToNpc	(self, ErznagerQueen);
	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);
	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Trent_VM_QueenDead_06_01"); //Strange... I've never seen anything like it.

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Trent_VM_AfterQueen (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AfterQueen_Condition;
	information	= Info_Mod_Trent_VM_AfterQueen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you all right?";
};

FUNC INT Info_Mod_Trent_VM_AfterQueen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_QueenDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AfterQueen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueen_15_00"); //Are you all right?

	Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);

	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueen_06_01"); //It's mine, got it! No one can know that I own it.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueen_06_02"); //Why should I take a chance?! A victim might give me access to all his power.

	CreateInvItems	(self, ItMi_SchwarzesErz_Trent, 1);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent is freaking out and attacking me. I should give him a K first. O. and see what's wrong with him.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Trent_VM_AfterQueenAttack (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AfterQueenAttack_Condition;
	information	= Info_Mod_Trent_VM_AfterQueenAttack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AfterQueenAttack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AfterQueen))
	&& (Npc_HasItems(hero, ItMi_SchwarzesErz_Trent) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AfterQueenAttack_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueenAttack_15_00"); //I'm getting tired of guys who lose their minds in dark caves.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_01"); //What's happening?
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueenAttack_15_02"); //The black ore around here was freaking you out. Funny, because it doesn't seem to work for me.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_03"); //I've experienced a lot of dark magic, but one day I didn't expect it to hit me.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_04"); //Anyway, thank you. Such magical artifacts can ruin you.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_05"); //I think I'm going to take a break from the group and think about all this. Maybe I'll see you again.

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Trent_VM_AndreSauer (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AndreSauer_Condition;
	information	= Info_Mod_Trent_VM_AndreSauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "I think Lord Andre is a little angry at your decision to come right here.";
};

FUNC INT Info_Mod_Trent_VM_AndreSauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Steinmonster2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AndreSauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_AndreSauer_15_00"); //I think Lord Andre is a little angry at your decision to come right here.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AndreSauer_06_01"); //They usually are until I come back with a mountain of ore. Then suddenly it was her idea.
};

INSTANCE Info_Mod_Trent_VM_EXIT (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_EXIT_Condition;
	information	= Info_Mod_Trent_VM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_VM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_VM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
