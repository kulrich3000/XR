INSTANCE Info_Mod_FrauRichard_Hi (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_Hi_Condition;
	information	= Info_Mod_FrauRichard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz racje?";
};

FUNC INT Info_Mod_FrauRichard_Hi_Condition()
{
	if (Npc_IsDead(Ratte_Richard))
	&& (Npc_IsDead(Mod_7409_OUT_Richard_EIS))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_Hi_15_00"); //Czy masz racje?
	AI_Output(self, hero, "Info_Mod_FrauRichard_Hi_19_01"); //Tak, dziekuje! Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_FrauRichard_Hi_15_02"); //Zabilem tego Richarda i jego szczurów. Nie musisz sie juz martwic.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Hi_19_03"); //Widziales mojego meza? Szczury porwaly go i mnie.
};

INSTANCE Info_Mod_FrauRichard_Notiz (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_Notiz_Condition;
	information	= Info_Mod_FrauRichard_Notiz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przykro mi, ale spóznilem sie z mezem.";
};

FUNC INT Info_Mod_FrauRichard_Notiz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_Hi))
	&& (Npc_HasItems(hero, ItWr_CirioNotiz2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_Notiz_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_Notiz_15_00"); //Tut mir leid, aber bei deinem Mann kam ich leider zu spät. Ich konnte nur noch diesen Brief bei ihm finden.

	B_GiveInvItems	(hero, self, ItWr_CirioNotiz2, 1);

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_19_01"); //Mein Mann hat bis zum Ende für mich gekämpft.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_19_02"); //Auch wenn die Nachricht schrecklich ist, danke ich dir, dass du dir die Mühe gemacht hast, mich zu finden.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_19_03"); //Hier hast du 100 Gold. Ich weiß, es ist nicht viel, aber ich hoffe du kannst es gebrauchen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_FrauRichard_Notiz_15_04"); //Am besten gehst du in die Stadt, dort bist du erst mal sicher. 
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_19_05"); //Ja, ich werde mich dort erst mal ausruhen und dann vielleicht nach Relendel zurückkehren.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");

	B_LogEntry	(TOPIC_MOD_RATTENQUEST,"Znalazlem kobiete i ja uratowalem. Powinno to polozyc kres pladze szczurów.");
	B_SetTopicStatus	(TOPIC_MOD_RATTENQUEST, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_FrauRichard_InDorf (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf_Condition;
	information	= Info_Mod_FrauRichard_InDorf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz racje?";
};

FUNC INT Info_Mod_FrauRichard_InDorf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_Hi))
	&& (Npc_GetDistToWP(self, "EIS_161") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf_15_00"); //Czy masz racje?
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_19_01"); //Wiecej lub mniej. Nie jestem tu naprawde wygodnie.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_19_02"); //Ludzie - sa tak zimni jak powietrze.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_19_03"); //Nawet w dzien wioska wymarla.
};

INSTANCE Info_Mod_FrauRichard_InDorf2 (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf2_Condition;
	information	= Info_Mod_FrauRichard_InDorf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego wiec nie wrócisz do Relendel?";
};

FUNC INT Info_Mod_FrauRichard_InDorf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf2_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf2_15_00"); //Dlaczego wiec nie wrócisz do Relendel?
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf2_19_01"); //Zrobilem to juz wiele razy, ale droga do kamiennego kola jest tak dluga i zmudna.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf2_19_02"); //Ostatnio pojawily sie doniesienia o grupie rabusiów i zaginionych wedrowców.
};

INSTANCE Info_Mod_FrauRichard_InDorf3 (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf3_Condition;
	information	= Info_Mod_FrauRichard_InDorf3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Móglbym pójsc z wami.";
};

FUNC INT Info_Mod_FrauRichard_InDorf3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf3_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf3_15_00"); //Móglbym pójsc z wami.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf3_19_01"); //W tym przypadku chcialbym wrócic do Relendel.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf3_19_02"); //Dzieki mnie mozemy od razu odejsc, nie mam nic do powieszenia.

	Log_CreateTopic	(TOPIC_MOD_EIS_GELEIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_GELEIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_GELEIT, "Zgodzilem sie towarzyszyc bylej pani Richards do teleportu przy kamiennym kregu za wioska.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOSTEINKREIS");
};

INSTANCE Info_Mod_FrauRichard_AtSteinkreis (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_AtSteinkreis_Condition;
	information	= Info_Mod_FrauRichard_AtSteinkreis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_FrauRichard_AtSteinkreis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf3))
	&& (Npc_GetDistToWP(hero, "EIS_01") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_AtSteinkreis_Info()
{
	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_19_00"); //Wydaje sie, ze mielismy szczescie. Dzis na drodze nie ma duszy.
	AI_Output(hero, self, "Info_Mod_FrauRichard_AtSteinkreis_15_01"); //Nie jestem przyzwyczajony do eskortowania zamówien, które nie sa tak spektakularne. Ale to mi sie podoba.
	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_19_02"); //I juz po raz drugi jestem w waszym dlugu. Dziekuje, dziekuje.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_19_03"); //Zapraszamy do Khoraty!

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_EIS_GELEIT, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSTEINKREIS");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_FrauRichard_EXIT (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_EXIT_Condition;
	information	= Info_Mod_FrauRichard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FrauRichard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
