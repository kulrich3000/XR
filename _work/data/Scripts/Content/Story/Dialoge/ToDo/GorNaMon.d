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
	AI_Output(self, hero, "Info_Mod_GorNaMon_Hi_13_00"); //Teraz powinnismy odejsc.

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
	description	= "W jaki sposób dostales surowce do swojego ostrza straznika?";
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
	AI_Output(hero, self, "Info_Mod_GorNaMon_Hueterklinge_15_00"); //W jaki sposób dostales surowce do swojego ostrza straznika?

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_GorNaMon_Hueterklinge_13_01"); //Nie mów nikogo wiecej, ale dostalem ostrze straznika od starego templariusza, który juz go nie potrzebowal.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Mon powiedzial, ze moge dostac ostrze straznika od starego templariusza. Teraz musze tylko znalezc templariusza, który nie potrzebuje juz swojego ostrza. Moze moge uzyskac informacje od Angara.");
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
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_02"); //Na gestern Nacht! Der ist nur kurz in die Sümpfe um sich zu erleichtern, ist ja nichts Ungewöhnliches.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_03"); //"Nie pozwól, aby rekiny bagienne nie ugryzly cie!", sag ich noch zu ihm. "Stwory w ogóle nie maja takich duzych ust.", er daraufhin.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_04"); //"Chcesz to sobie wyobrazic, czy nie?", ich wieder zurück. "To blogoslawienstwo i przeklenstwo.", er als Antwort, woraufhin ich wieder sage...
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_05"); //(unterbrechend) Jaja, ich hab's verstanden. Du hast also mit ihm Wache geschoben, er ist in den Sumpf gegangen, und weiter?
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_06"); //Also ich steh da so rum und tu nix Böses und dann plötzlich sein Geschrei. Das nächste was ich sehe: mit Karacho kommt er aus dem Sumpf herausgeflogen.
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_07"); //Ich sog noch so zu ihm: "Co sie dzieje?", aber der war tot! Und Im Sumpf seh' ich nur die Schemen von so nem riesen Vieh, auf zwei Beinen wie ein Mensch. Aber sonst war nix Menschlich an dem Ding.
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_08"); //Du glaubst es war der Sumpfmensch?
	AI_Output(self, hero, "Info_Mod_GorNaMon_Sumpfmensch_13_09"); //Ich hab keine Ahnung, Mann!
	AI_Output(hero, self, "Info_Mod_GorNaMon_Sumpfmensch_15_10"); //Hast du das Ding zufällig Heulen gehört? 
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
