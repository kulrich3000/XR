INSTANCE Info_Mod_GorNaMon_Hi (C_INFO)
{
	npc		= Mod_1924_TPL_GorNaMon_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaMon_Hi_Condition;
	information	= Info_Mod_GorNaMon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaMon_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaMon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_GorNaMon_Hi_13_00"); //Now we should leave.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOOC");
	B_StartOtherRoutine	(Mod_1925_TPL_GorNaKar_MT, "FOLLOWTOOC");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FOLLOWTOOC");
};

INSTANCE Info_Mod_GorNaMon_Hueterklinge (C_INFO)
{
	npc		= Mod_1924_TPL_GorNaMon_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaMon_Hueterklinge_Condition;
	information	= Info_Mod_GorNaMon_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you get the raw materials for your Keeper's Blade?";
};

FUNC INT Info_Mod_GorNaMon_Hueterklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Hueterklinge))
	&& (Mod_TPL_Hueterklinge == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaMon_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaMon_Hueterklinge_15_00"); //How did you get the raw materials for your Keeper's Blade?

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_GorNaMon_Hueterklinge_13_01"); //Don't tell anyone else, but I got the Keeper's Blade from an old Templar who no longer needed it.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Mon said I could get a Keeper's Blade from an old Templar. Now all I have to do is find a Templar who no longer needs his blade. Maybe I can get some information from Angar.");
};

INSTANCE Info_Mod_GorNaMon_Sumpfmensch (C_INFO)
{
	npc		= Mod_1924_TPL_GorNaMon_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaMon_Sumpfmensch_Condition;
	information	= Info_Mod_GorNaMon_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaMon_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joru_Sumpfmensch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaMon_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_00"); //Mann, der war doch nur kurz weg.
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_01"); //Was meinst du?
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_02"); //Na gestern Nacht! Der ist nur kurz in die S�mpfe um sich zu erleichtern, ist ja nichts Ungew�hnliches.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_03"); //"Don't let no swamp shark bite you down!", sag ich noch zu ihm. "The creatures don't have a big mouth like that at all.", er daraufhin.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_04"); //"You'd like that, wouldn't you?", ich wieder zur�ck. "It's a blessing and a curse.", er als Antwort, woraufhin ich wieder sage...
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_05"); //(unterbrechend) Jaja, ich hab's verstanden. Du hast also mit ihm Wache geschoben, er ist in den Sumpf gegangen, und weiter?
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_06"); //Also ich steh da so rum und tu nix B�ses und dann pl�tzlich sein Geschrei. Das n�chste was ich sehe: mit Karacho kommt er aus dem Sumpf herausgeflogen.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_07"); //Ich sog noch so zu ihm: "What's going on?", aber der war tot! Und Im Sumpf seh' ich nur die Schemen von so nem riesen Vieh, auf zwei Beinen wie ein Mensch. Aber sonst war nix Menschlich an dem Ding.
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_08"); //Du glaubst es war der Sumpfmensch?
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_09"); //Ich hab keine Ahnung, Mann!
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_10"); //Hast du das Ding zuf�llig Heulen geh�rt? 
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_11"); //Ne! Der einzige der geheult hat, liegt jetzt tot vor dir! Tragisch so was, aber andererseits was soll's.
	
	B_UseItem(self, ItMi_Joint);
	
	AI_StopProcessInfos(self);
};

INSTANCE Info_Mod_GorNaMon_EXIT (C_INFO)
{
	npc		= Mod_1924_TPL_GorNaMon_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaMon_EXIT_Condition;
	information	= Info_Mod_GorNaMon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaMon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaMon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
