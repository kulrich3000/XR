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
	description	= "Rzeczy z domu baronów zniknely.....";
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
	AI_Output(hero, self, "Info_Mod_Bullit_Dieb_15_00"); //i mysle, ze mial pan z tym cos wspólnego.
	AI_Output(self, hero, "Info_Mod_Bullit_Dieb_06_01"); //Jestes facetem, do którego powitalem w kolonii. A ty mnie naladowales za kradziez teraz?

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
	description	= "Czy slyszales to....?";
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
	AI_Output(hero, self, "Info_Mod_Bullit_Frage_15_00"); //Czy slyszales/as kradziez baronów?
	AI_Output(self, hero, "Info_Mod_Bullit_Frage_06_01"); //Jestes facetem, do którego powitalem w kolonii. Dlaczego mam powiedziec ci o kradziezy?

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
	description	= "Powiedzmy, ze....";
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
	AI_Output(hero, self, "Info_Mod_Bullit_Dealer_15_00"); //Mal angenommen, ich will "wybredny" Waren kaufen: Wo müsste ich dann hingehen?
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_01"); //Jestes facetem, do którego powitalem w kolonii. Pytasz mnie o gorace rzeczy?
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_02"); //No cóz, spróbowalabym Fisk.
	AI_Output(hero, self, "Info_Mod_Bullit_Dealer_15_03"); //Dobrze, spróbuje.
	AI_Output(self, hero, "Info_Mod_Bullit_Dealer_06_04"); //Dobrze, zrób to. Baw sie dobrze! (smiertelnicy)

	Mod_PDV_Bullit_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Bullit mysli, ze Fisk moze dac mi pewne informacje.");
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
			AI_Output(self, hero, "Info_Mod_Bullit_Umgehauen_06_00"); //Wszystkie sluszne, wszystkie sluszne, wszystkie sluszne. Nie moge ci pomóc, ale chcialbym spróbowac Fisk.

			Mod_PDV_Bullit_Infos	=	1;

			Mod_PDV_Genug_Infos += 1;

			B_LogEntry	(TOPIC_MOD_PDV, "Bullit mysli, ze Fisk moze dac mi pewne informacje.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bullit_Umgehauen_06_01"); //Ponownie nie mial pan zadnych szans. Teraz zgubic sie!
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
	description	= "Dlaczego rzucili cie w kolonie?";
};

FUNC INT Info_Mod_Bullit_Crime_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bullit_Crime_Info()
{
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_00"); //Dlaczego rzucili cie w kolonie?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_01"); //Bo zawsze pomagalem ubogim ludziom w Myrtanie w ich pracy.
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_02"); //Naprawde?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_03"); //Oczywiscie nie, idiota! Bylem bandyta, a potem zlapal mnie Lee, obecny przywódca najemników.
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_04"); //Od tamtej pory utknelam. A poniewaz bariera zniknela, nie moge nawet ochrzcic przybyszów.
	AI_Output(hero, self, "Info_Mod_Bullit_Crime_15_05"); //Wiec walczysz z Lee?
	AI_Output(self, hero, "Info_Mod_Bullit_Crime_06_06"); //W kazdym razie z mieczakiem.
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
