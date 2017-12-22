INSTANCE Info_Mod_Nick_Hi (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_Hi_Condition;
	information	= Info_Mod_Nick_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nick_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nick_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nick_Hi_01_00"); //You're not one of those animals, what are you doing here?
	
	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "You can speak?", Info_Mod_Nick_Hi_C);
	Info_AddChoice	(Info_Mod_Nick_Hi, "I'm here to kill you.", Info_Mod_Nick_Hi_B);
	Info_AddChoice	(Info_Mod_Nick_Hi, "I want to know why you're killing all these animals.", Info_Mod_Nick_Hi_A);
};

FUNC VOID Info_Mod_Nick_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_00"); //One of those beasts ate my head and ran away!
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_01"); //I can't say exactly what it looked like, but I'm sure it had two legs and no arms.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_02"); //I don't think it's here anymore.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_E_15_03"); //Want me to bring your head back?
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_04"); //That would be wonderful.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_05"); //The last thing I remember is being at the crossroads of an old ruin and an old... hm... maybe the library was attacked by two-legged animals.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_06"); //It's best to look there first.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_E_15_07"); //I'll look for it there. See you later.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_08"); //I look forward to seeing you again. I promise not to kill any of these animals until then.

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "At the crossroads of the fort and the rocky fortress, Nick was attacked by Scavengers or possibly snappers. I'll take a look around.");

	Wld_InsertNpc	(Mod_10016_MIN_Brad_MT, "CASTLE");

	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU3");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU4");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU5");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU6");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");

	Info_ClearChoices	(Info_Mod_Nick_Hi);
};

FUNC VOID Info_Mod_Nick_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_C_15_00"); //You can speak?
	AI_Output(self, hero, "Info_Mod_Nick_Hi_C_01_01"); //I don't need vocal chords or a mouth. Besides, I'm a ventriloquist.

	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "I'm here to kill you.", Info_Mod_Nick_Hi_B);
	Info_AddChoice	(Info_Mod_Nick_Hi, "I want to know why you're killing all these animals.", Info_Mod_Nick_Hi_A);
};

FUNC VOID Info_Mod_Nick_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_A_15_00"); //I want to know why you're killing all these animals.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_A_01_01"); //Why?

	Info_Mod_Nick_Hi_E();
};

FUNC VOID Info_Mod_Nick_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_B_15_00"); //I'm here to kill you.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_B_01_01"); //You want to kill me? You can't kill me. Because I'm already dead. (Laughs softly) Why do you want to get rid of me?

	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "That's my assignment.", Info_Mod_Nick_Hi_F);
	Info_AddChoice	(Info_Mod_Nick_Hi, "I don't want innocent animals to die.", Info_Mod_Nick_Hi_D);
};

FUNC VOID Info_Mod_Nick_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_F_15_00"); //That's my assignment.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_F_01_01"); //Forget about it. You'll only get rid of me if you help me.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_F_15_02"); //How can I help you?

	Info_Mod_Nick_Hi_E();
};

FUNC VOID Info_Mod_Nick_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_D_15_00"); //I don't want innocent animals to die.

	Info_Mod_Nick_Hi_E();
};

INSTANCE Info_Mod_Nick_Kopf (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_Kopf_Condition;
	information	= Info_Mod_Nick_Kopf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nick_Kopf_Condition()
{
	if (Npc_HasItems(hero, ItMi_NicksKopf) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nick_Kopf_Info()
{
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_01_00"); //And? How have you been looking?
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_15_01"); //It was snappers who bit your head off. Apparently, a Minotaur killed her and took her head. However, I have my head in the meantime.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_01_02"); //Will you give it back to me?
	
	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "What do I get for it?", Info_Mod_Nick_Kopf_B);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "Of course it is. Here you have him.", Info_Mod_Nick_Kopf_A);
};

FUNC VOID Info_Mod_Nick_Kopf_A()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_A_15_00"); //Of course it is. Here you have him.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	AI_Output(self, hero, "Info_Mod_Nick_Kopf_A_01_01"); //Thank you, stranger! Here's my last gold. I don't need it now anyway.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's finally been saved. I should go back to Anor and report to him that the animal deaths have stopped.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_G()
{
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_G_01_00"); //Thank you, stranger!

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's finally been saved. I should go back to Anor and report to him that the animal deaths have stopped.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_B()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_B_15_00"); //What do I get for it?
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_B_01_01"); //I will stop killing innocent animals. Besides, I'd have to kill a lot of people looking for you.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_B_01_02"); //And you can have gold. I don't need it once I get my head back.

	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "That's not good enough for me.", Info_Mod_Nick_Kopf_F);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "All right, here's your head.", Info_Mod_Nick_Kopf_D);
};

FUNC VOID Info_Mod_Nick_Kopf_F()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_F_15_00"); //That's not good enough for me.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_F_01_01"); //I can't give you any more.
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_F_15_02"); //How can I help you?

	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "Then you don't get your head back.", Info_Mod_Nick_Kopf_E);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "Then here's the head.", Info_Mod_Nick_Kopf_C);
};

FUNC VOID Info_Mod_Nick_Kopf_D()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_D_15_00"); //All right, here's your head.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	Info_Mod_Nick_Kopf_G();
};

FUNC VOID Info_Mod_Nick_Kopf_E()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_E_15_00"); //Then you don't get your head back.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_E_01_01"); //All right, stranger. I'll give you some ore chunks, too.
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_E_15_02"); //Here's your head.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	AI_Output(self, hero, "Info_Mod_Nick_Kopf_E_01_03"); //Thanks. Silence at last.

	CreateInvItems	(hero, ItMi_Gold, 250);
	CreateInvItems	(hero, ItMi_Nugget, 5);

	B_ShowGivenThings	("250 gold and 5 pieces of ore preserved");

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's finally been saved. I should go back to Anor and report to him that the animal deaths have stopped.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_C()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_C_15_00"); //Then here's the head.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	Info_Mod_Nick_Kopf_G();
};

INSTANCE Info_Mod_Nick_EXIT (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_EXIT_Condition;
	information	= Info_Mod_Nick_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nick_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nick_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
