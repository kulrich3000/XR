INSTANCE Info_Mod_RitterBeiBrian_Daemonisch (C_INFO)
{
	npc		= Mod_1248_RIT_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_RitterBeiBrian_Daemonisch_Condition;
	information	= Info_Mod_RitterBeiBrian_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RitterBeiBrian_Daemonisch_Condition()
{
	if (Mod_HQ_BrianDaemonisch == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_00"); //Very good, we got him.
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_15_01"); //What did you do, why did you kill him?
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_02"); //He... was a wanted killer. We judged him for what he did.
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_15_03"); //Just strung down with the crossbow.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_04"); //Shut up! What were you talking about? Did he name any names?
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_05"); //You have to tell us everything he said. Maybe he had accomplices...

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Brian seemed very scared and wanted to report something about the city. However, he was sent to the eternal hunting grounds by the bolt of a knight. Dying he mentioned Rupert and warned me of the darkness.");

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	Info_AddChoice	(Info_Mod_RitterBeiBrian_Daemonisch, "No, I found him here. )", Info_Mod_RitterBeiBrian_Daemonisch_B);
	Info_AddChoice	(Info_Mod_RitterBeiBrian_Daemonisch, "He wanted to tell something about the city (.... )", Info_Mod_RitterBeiBrian_Daemonisch_A);
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_B()
{
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_B_15_00"); //No, I found him here, and then you showed up.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_B_11_01"); //That's too bad. Well, anyway. Innos, greeting.

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1248_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1249_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1250_RIT_Ritter_NW, "START");
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_A()
{
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_A_15_00"); //He wanted to tell me something about the city and told me to watch out for the darkness. He also mentioned Rupert....
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_A_11_01"); //Yeah, did he get that...? Well, it's not surprising that you met here with him.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_A_11_02"); //You must be an accomplice to the killer... and murderers must be judged immediately.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "The knights that killed Brian tried to kill me after I gave them what Brian had told me.");

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	Mod_HQ_BrianDaemonisch = 2;
};
