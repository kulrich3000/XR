FUNC VOID B_Say_HeroBullit_Batschen ()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Batschen_15_00"); //Du sagst mir jetzt, was du weißt, oder du bekommst ein paar aufs Maul.
	AI_Output(self, hero, "Info_Mod_Bullit_Batschen_06_01"); //Dann komm doch her!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bullit_Dieb (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_Dieb_Condition;
	information	= Info_Mod_Bullit_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Things from the house of the barons have disappeared....";
};

FUNC INT Info_Mod_Bullit_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bullit_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullit_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Dieb_15_00"); //and I think you had something to do with it.
	AI_Output(self, hero, "Info_Mod_Bullit_Dieb_06_01"); //You're the guy I used to say hello to in the colony. And you're gonna charge me for stealing now?

	B_Say_HeroBullit_Batschen();
};

INSTANCE Info_Mod_Bullit_Frage (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_Frage_Condition;
	information	= Info_Mod_Bullit_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you hear that...?";
};

FUNC INT Info_Mod_Bullit_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bullit_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullit_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Frage_15_00"); //Did you hear the barons' stuff gets stolen?
	AI_Output(self, hero, "Info_Mod_Bullit_Frage_06_01"); //You're the guy I used to say hello to in the colony. Why should I tell you about the theft?

	B_Say_HeroBullit_Batschen();
};

INSTANCE Info_Mod_Bullit_Dealer (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_Dealer_Condition;
	information	= Info_Mod_Bullit_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's say...";
};

FUNC INT Info_Mod_Bullit_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bullit_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullit_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Dealer_15_00"); //Mal angenommen, ich will "particular" Waren kaufen: Wo müsste ich dann hingehen?
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_01"); //You're the guy I used to say hello to in the colony. You're asking me about hot stuff?
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_02"); //Well, I'd try Fisk.
	AI_Output(hero, self, "Info_Mod_Bullit_Dealer_15_03"); //All right, I'll try.
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_04"); //Good, do that. Have fun! (laughs)

	Mod_PDV_Bullit_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Bullit thinks Fisk might give me some information.");
};

INSTANCE Info_Mod_Bullit_Umgehauen (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_Umgehauen_Condition;
	information	= Info_Mod_Bullit_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bullit_Umgehauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Bullit_Dieb))
	|| (Npc_KnowsInfo(hero, Info_Mod_Bullit_Frage)))
	&& (Mod_PDV_Bullit_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bullit_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bullit_Umgehauen_06_00"); //All right, all right, all right. I can't help you, but I'd like to try Fisk.

			Mod_PDV_Bullit_Infos	=	1;

			Mod_PDV_Genug_Infos += 1;

			B_LogEntry	(TOPIC_MOD_PDV, "Bullit thinks Fisk might give me some information.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bullit_Umgehauen_06_01"); //Again, you had no chance. Now get lost!
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Bullit_Crime (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_Crime_Condition;
	information	= Info_Mod_Bullit_Crime_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did they throw you in the colony?";
};

FUNC INT Info_Mod_Bullit_Crime_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullit_Crime_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_00"); //Why did they throw you in the colony?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_01"); //Because I've always helped the poor people in Myrtana with their work.
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_02"); //Really?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_03"); //Of course not, you idiot! I was a bandit and then I was caught by Lee, the current leader of the mercenaries.
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_04"); //I've been stuck here ever since. And since the barrier's gone, I can't even baptize newcomers.
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_05"); //So you're at war with Lee?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_06"); //With the wimp, anyway.
};

INSTANCE Info_Mod_Bullit_EXIT (C_INFO)
{
	npc		= Mod_1108_GRD_Bullit_MT;
	nr		= 1;
	condition	= Info_Mod_Bullit_EXIT_Condition;
	information	= Info_Mod_Bullit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bullit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
