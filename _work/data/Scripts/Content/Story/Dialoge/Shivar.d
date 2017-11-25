INSTANCE Info_Mod_Shivar_Hi (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_Hi_Condition;
	information	= Info_Mod_Shivar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_20_00"); //A lonely demonic being? What are you doing here? Speak!

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	Info_AddChoice	(Info_Mod_Shivar_Hi, "I was sent by a servant of Beliar's.", Info_Mod_Shivar_Hi_C);
	Info_AddChoice	(Info_Mod_Shivar_Hi, "I am a servant of balance (.... )", Info_Mod_Shivar_Hi_B);
	Info_AddChoice	(Info_Mod_Shivar_Hi, "I want to warn you against continuing your insane campaign.", Info_Mod_Shivar_Hi_A);
};

FUNC VOID Info_Mod_Shivar_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_D_20_00"); //Acha, another traitor. Die!

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Shivar_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_00"); //I was sent by a servant of Beliar's. I'm trying to find out why you wreaked havoc on Khorinis.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_01"); //What do you expect me to question my actions?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_02"); //I don't have to answer to a lower demon like you for shattering the enemies of my master Beliar.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_03"); //Or are you even one of them?
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_04"); //No, absolutely not. But the focus should be on a much more dangerous enemy, Xeres.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_05"); //Xeres?! I feel as if I've heard the name before... It doesn't matter.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_06"); //My creatures have fallen from Beliar and now serve others.... I'm sure the footmen Innos and Adanos are responsible.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_07"); //And they'll pay for it.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_08"); //I assure you that it is not her, but the deceptive mage Xeres and his minions who are behind it.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_09"); //What are you talking about? You're trying to put me on the wrong track.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_10"); //You may even be a traitor.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_11"); //No, I can beseech thee in the name of every goddess, if thou wilt.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_12"); //What can I do to convince you of the truth in my words?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_13"); //Convince me of this nonsense? You seem pretty sure of yourself.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_14"); //We'll see, because I've come up with a way for you to prove yourself.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_15"); //Yes?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_16"); //I've identified a group of fallen demons, and I'm here to punish them.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_17"); //Unfortunately, they hide in this cave from my access.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_18"); //If you manage to lure them out so that I can bring them to their just punishment, I will reflect on your words.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Shivar still seems to be devoted to Beliar. Our luck. However, he blames the followers of the two other deities for the betrayal of his former servants. To convince him that Xeres is behind it all, I am now to draw some fallen creatures out of the nearby cave so that Shivar can destroy them.");

	Mod_ShivarLieb = 1;

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Demon_Shivar_01,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_02,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_03,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_04,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_05,	"REL_SURFACE_100");
};

FUNC VOID Info_Mod_Shivar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_B_15_00"); //I am a servant of equilibrium and I try to do more unnecessary things....

	Info_Mod_Shivar_Hi_D();
};

FUNC VOID Info_Mod_Shivar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_A_15_00"); //I want to warn you against continuing your insane campaign. He...

	Info_Mod_Shivar_Hi_D();
};

INSTANCE Info_Mod_Shivar_DemonsDead (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_DemonsDead_Condition;
	information	= Info_Mod_Shivar_DemonsDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_DemonsDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shivar_Hi))
	&& (Npc_IsDead(Demon_Shivar_01))
	&& (Npc_IsDead(Demon_Shivar_02))
	&& (Npc_IsDead(Demon_Shivar_03))
	&& (Npc_IsDead(Demon_Shivar_04))
	&& (Npc_IsDead(Demon_Shivar_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shivar_DemonsDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_00"); //And so shall all the enemies and traitors of Beliars be crushed, haha!
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_01"); //Well, you've done your job well and proved to me that you're on the right side....
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_02"); //I will leave this island and go to the cold areas.
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_03"); //I sensed some treacherous demons there.... including a very powerful creature, which she presumably leads.
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_04"); //The bastards seem to be gathering there....
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_05"); //Well, Beliar be with you. Perhaps one day our paths will cross again, demon...

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Excellent. He leaves the island to go hunting for traitors in cold areas... and I can finally get out of this figure again. Saturas will not be able to complain about my success....");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Shivar_EXIT (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_EXIT_Condition;
	information	= Info_Mod_Shivar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shivar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
