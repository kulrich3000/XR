INSTANCE Info_Mod_Torwache_Sekte_01_GardistenInfos (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_GardistenInfos_Condition;
	information	= Info_Mod_Torwache_Sekte_01_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you seen any guards in the last few days?";
};

FUNC INT Info_Mod_Torwache_Sekte_01_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_15_00"); //Have you seen any guards around here these last few days?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_13_01"); //Guardsmen? From time to time they pass here, but I didn't notice anything special about them.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_13_02"); //Why do you ask?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "I met a few guardsmen (.... )", Info_Mod_Torwache_Sekte_01_GardistenInfos_D);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "That's none of your business.", Info_Mod_Torwache_Sekte_01_GardistenInfos_C);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Some guards attacked me on the way over here.", Info_Mod_Torwache_Sekte_01_GardistenInfos_B);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "The Rangers had had some problems with them.", Info_Mod_Torwache_Sekte_01_GardistenInfos_A);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_15_00"); //I met some guardsmen I'd never seen here before.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_13_01"); //Sorry, I haven't seen more than the familiar faces here lately and as far as I know they are the only ones who leave the camp regularly.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_15_02"); //Thanks. I'll see you around.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_13_03"); //Certainly.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The gatekeeper of the swamp camp has seen no one unusual.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_C_15_00"); //None of your business.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_C_13_01"); //Well, keep having fun with what's none of my business, but you worry a lot. (laughs)

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_B_15_00"); //I was attacked by a few guards on the way here, but I can hardly imagine why they should do that.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_B_13_01"); //Those bastards don't need no reason to rob anyone. Most of them, anyway. What did they take from you?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Nothing. But I hadn't found much on their bodies either.", Info_Mod_Torwache_Sekte_01_GardistenInfos_F);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Everything I had with me, these lousy....", Info_Mod_Torwache_Sekte_01_GardistenInfos_E);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_15_00"); //Nothing. But I hadn't found much on their bodies either.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_13_01"); //Tough, then. Then listen to me. Don't go to the Old Camp with that. If you're unlucky, they'll cut your head off in retrospect.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_15_02"); //Thanks for the tip.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_13_03"); //It's free.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The gatekeeper of the swamp camp has seen no one unusual. He tipped me not to go to the old camp because of it.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_E_15_00"); //Everything I had with me, these lousy....
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_E_13_01"); //Oh, I'm sorry about that. Would you like a stem?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "No, thank you, not now.", Info_Mod_Torwache_Sekte_01_GardistenInfos_H);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Oh, yes, thank you.", Info_Mod_Torwache_Sekte_01_GardistenInfos_G);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_I()
{
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_I_13_00"); //Where were we standing? Oh, yeah. I wouldn't go to the old camp if I were you. You won't get any more than mockery and laughter in response.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_I_13_01"); //Those who usually come by here usually have other things on their minds than robbing someone.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The gatekeeper of the swamp camp has seen no one unusual. He tipped me not to go to the old camp because of it.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_H()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_H_15_00"); //No, thank you, not now.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_Mod_Torwache_Sekte_01_GardistenInfos_I();
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_G()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_G_15_00"); //Oh, yes, thank you.

	CreateInvItems	(self, ItMi_Joint, 2);
	B_GiveInvItems	(self, hero, ItMi_Joint, 1);

	B_UseItem	(hero, ItMi_Joint);
	B_UseItem	(self, ItMi_Joint);

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_Mod_Torwache_Sekte_01_GardistenInfos_I();
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_15_00"); //The Rangers had had some problems with them and want to know more about these incidents.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_01"); //Oh? That's interesting. No wonder with these bastards. They must be like kings everywhere.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_02"); //Except for the familiar faces in their usual routine, nobody showed up here.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_03"); //Maybe ask in the New Camp, I could imagine if something happened, then they will surely know something about it.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_15_04"); //Thanks. I'll have to keep going.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_05"); //Good luck to you.


	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The gatekeeper of the swamp camp has seen no one unusual. He told me to check with the new warehouse.");
};

INSTANCE Info_Mod_Torwache_Sekte_01_ZuGuru (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_ZuGuru_Condition;
	information	= Info_Mod_Torwache_Sekte_01_ZuGuru_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_Sekte_01_ZuGuru_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	{
		return 1;
	};
};

var int Mod_SektenKorbKram;

FUNC VOID Info_Mod_Torwache_Sekte_01_ZuGuru_Info()
{
	if (Guru_Dabei == TRUE)
	|| (Templer_Dabei == TRUE)
	|| (Npc_KnowsInfo(hero, Info_Mod_Namib_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_00"); //Uh-huh. It's you again.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_01"); //Yeah. Got something else to do here.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_02"); //Good. We know you. You can happen.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_03"); //Stop! Password!
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_04"); //But we know each other. Been here recently.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_05"); //It is. But you just wanted to know something.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_06"); //I have to go in today.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_07"); //This is only for those who want to join us....
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_08"); //That's why I'm coming! Want to join you guys.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_09"); //... and a letter of recommendation.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_10"); //I misplaced it.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_11"); //Then find it. Nothing goes before.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_12"); //You want a stem?
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_13"); //Are you out of your mind? We have more than enough here.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_14"); //I'd have some gold left here...
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_15"); //Also' ne old scam. We don't need any gold here.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_16"); //Anyone can use gold.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_17"); //Forget about it!
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_18"); //Listen. I really need to speak to one of your gurus. There is danger in the valley. Cyrco sent me.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_19"); //Cyrco the druid?
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_20"); //That's the one!
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_21"); //Hmmm. Very well. You leave your weapons, armour and inventory here. Then I'll let you pass.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_22"); //In your underpants?
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_23"); //Exactly. It's Talas over there. Tell him to give you a visitor's robe and help you out.

		B_TransferInventory_All (hero, PC_Itemholder);

		Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_ZuGuru);
	
		Info_AddChoice	(Info_Mod_Torwache_Sekte_01_ZuGuru, "Is that all right?", Info_Mod_Torwache_Sekte_01_ZuGuru_A);

		AI_Teleport	(Mod_2012_PSINOV_Talas_MT, "PSI_BRIDGE_1");
		B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "BEINAMIB");
		
		Mod_SektenKorbKram = TRUE;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_ZuGuru_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_15_00"); //Is that all right?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_13_01"); //(grins) Yes. Say, is your washerwoman on vacation?
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_15_02"); //(red) Joker.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_ZuGuru);

	if (Npc_HasItems(PC_Itemholder, ItWr_MagicPaper) > 0)
	{
		CreateInvItems	(hero, ItWr_MagicPaper, Npc_HasItems(PC_Itemholder, ItWr_MagicPaper));
		Npc_RemoveInvItems	(PC_Itemholder, ItWr_MagicPaper, Npc_HasItems(PC_Itemholder, ItWr_MagicPaper));
	};

	Mob_CreateItems	("SEKTENTORTRUHE", ItSe_HeroPocket, 1);
};

INSTANCE Info_Mod_Torwache_Sekte_01_VonGuru (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_VonGuru_Condition;
	information	= Info_Mod_Torwache_Sekte_01_VonGuru_Info;
	permanent	= 0;
	important	= 0;
	description	= "What an act.";
};

FUNC INT Info_Mod_Torwache_Sekte_01_VonGuru_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_ZuGuru))
	&& (Guru_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	&& (Mod_SektenKorbKram)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_VonGuru_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_00"); //What an act.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_01"); //Not so loud. I'm not deaf.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_02"); //Oh, I see. Everything still complete? Gold bag not touched?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_03"); //Nothing touched at all. By the sleeper. Here's the key to the basket.

	B_GiveInvItems	(self, hero, ItKe_SektenTorKorb, 1);

	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_04"); //Sleeper? You believe in this old magic?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_05"); //Some gurus say he'll come back one day.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_06"); //You really believe that?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_07"); //Well...

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "They're crazy, the marshes. At least the guru had a vision of a cave. Near a note. Well... the note had the Bandit in front of the old mine... so...");
};

INSTANCE Info_Mod_Torwache_Sekte_01_Hi (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_Hi_Condition;
	information	= Info_Mod_Torwache_Sekte_01_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Anything new?";
};

FUNC INT Info_Mod_Torwache_Sekte_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_Hi_15_00"); //Anything new?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_Hi_13_01"); //No, everything's been quiet lately.
};

INSTANCE Info_Mod_Torwache_Sekte_01_Pickpocket (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_Pickpocket_Condition;
	information	= Info_Mod_Torwache_Sekte_01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Torwache_Sekte_01_Pickpocket_Condition()
{
	C_Beklauen	(91, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);

	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_Pickpocket, DIALOG_BACK, Info_Mod_Torwache_Sekte_01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torwache_Sekte_01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);
};

INSTANCE Info_Mod_Torwache_Sekte_01_EXIT (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_EXIT_Condition;
	information	= Info_Mod_Torwache_Sekte_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_Sekte_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_Sekte_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
