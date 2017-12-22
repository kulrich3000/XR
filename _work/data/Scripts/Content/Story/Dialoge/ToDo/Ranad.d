INSTANCE Info_Mod_Ranad_Hi (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_Hi_Condition;
	information	= Info_Mod_Ranad_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_Hi_18_00"); //Pozdrawiam mnie.

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ranad_Hi_18_02"); //Jestem Ranadem.
};

INSTANCE Info_Mod_Ranad_WasHier (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_WasHier_Condition;
	information	= Info_Mod_Ranad_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ur Shak mnie wyslal.";
};

FUNC INT Info_Mod_Ranad_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_UrShak_Foki))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_WasHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranad_WasHier_15_00"); //Ur Shak mnie wyslal. Chce, zebys podal mi informacje na temat planów orków dla Ork City.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_01"); //Orksy skupiaja uwage. Masz juz dwóch. Jednak Ranad moze sie zle skupic. Wymienil wiec ich punkt ciezkosci.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_02"); //Ranad nadal ma jeszcze cztery inne bledne nastawienie. Jednak zle orki maja tylko jeden cel. Hosh Pak nalezy zawsze miec przy sobie.
	AI_Output(hero, self, "Info_Mod_Ranad_WasHier_15_03"); //Nastepnie spróbujmy jakos skupic sie na opiece Hosh Pak.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_04"); //Firma Hosh Pak nie bedzie skupiac uwagi. Ranad i czlowiek musza umrzec. Moga zakamuflowac i wtargnac do miasta Orków. Miej duze miasto, nawet metro.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_05"); //Ranad poswieci Hosh Pak trzem bledom. Wtedy pomysli, ze moze obchodzic rytual dla Krushaka.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_06"); //Wtedy Ranad i Czlowiek zaatakuja i skupia uwage. Przyjaciel musi przyjsc z nim do miasta, ale zle orki nie odejda.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_07"); //Przyjaciel wybiera sie do Tarroka. Moze zrobic Ulu-Mulu dla przyjaciela. Jesli przyjaciel przebywa w miescie Orcs, atakuje Hosha Pak. Kiedy przyjaciel atakuje Hosh Pak, Ranad pomoze przyjacielowi.
	AI_Output(self, hero, "Info_Mod_Ranad_WasHier_18_08"); //Tutaj przyjaciele nadal skupiaja sie wokól Ranada.

	CreateInvItems	(self, ItMi_Focus_Stonehenge, 1);
	B_GiveInvItems	(self, hero, ItMi_Focus_Stonehenge, 1);

	B_StartOtherRoutine	(Mod_10002_Orc_HoshPak_MT, "TOT");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ork Ranad juz wykradl ostrosc z Orków i zostawil tam falszywa. Orkiestry maja tylko jeszcze jeden kamien ogniskowy, a Hosh Pak zawsze nosi go razem z nim. Aby dotrzec do tego centralnego punktu, musimy zabic Hosh Pak. Ranad przywiezie go do Foki, aby Hosh Pak mógl wykonac rytual i powinienem go zaatakowac. Aby dostac sie do Orku, potrzebuje jednak Ulu-Mulu. Tarrok bedzie mi mógl to uczynic.");
};

INSTANCE Info_Mod_Ranad_Tarrok (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_Tarrok_Condition;
	information	= Info_Mod_Ranad_Tarrok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc Tarrok?";
};

FUNC INT Info_Mod_Ranad_Tarrok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_WasHier))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_Tarrok_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranad_Tarrok_15_00"); //Gdzie moge znalezc Tarrok?
	AI_Output(self, hero, "Info_Mod_Ranad_Tarrok_18_01"); //Tarrok posiada specjalne zamówienie od Ur Shaka. Skoncentrujmy sie na Stonehenge.
	AI_Output(hero, self, "Info_Mod_Ranad_Tarrok_15_02"); //Ale ty mi to dales, prawda?
	AI_Output(self, hero, "Info_Mod_Ranad_Tarrok_18_03"); //Jego cel wykradlem z orków w miescie. Wrócilem dopiero wtedy, gdy odjechal Tarrok.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Tarrok znajdziemy w Stonehenge.");
};

INSTANCE Info_Mod_Ranad_EXIT (C_INFO)
{
	npc		= Mod_10006_Orc_Ranad_MT;
	nr		= 1;
	condition	= Info_Mod_Ranad_EXIT_Condition;
	information	= Info_Mod_Ranad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ranad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
