INSTANCE Info_Mod_Elvrich_MT_Hi (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_Hi_Condition;
	information	= Info_Mod_Elvrich_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvrich_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_00"); //Hej, ty tutaj?
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_01"); //Mialem powiedziec to samo. Co przynosi ci tutaj?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_02"); //No cóz, to dluga historia.... ale to jest szybko powiedziane.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_03"); //Jak ci wtedy powiedzialem, poszedlem na nabrzeze, aby spotkac moja dziewczyne.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_04"); //Potem pojawil sie ten zarloczny wojownik demoniczny i teleportowal mnie do jednego z ich obozów.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_05"); //Umiescili mnie w swojej kopalni, gdzie mialem pracowac do smierci, podobnie jak inne biedne dranie, które porwaly ich z miasta i które teraz gnija w opuszczonym tunelu.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_06"); //Skoro nie chcialem w ten sposób wyladowac, wykorzystalem zamieszanie w zawaleniu sie do ucieczki.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_07"); //Usiadlem tutaj w tym obozie, skad demoniczny wojownik zawsze tak bardzo szaleje miedzy pociagami na bagnistej lodydze...... a ja tego nie zaluje.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_08"); //Tam tam.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_09"); //Tak, poniewaz jestem tutaj, zdalem sobie sprawe z prawdziwej wartosci zycia.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_10"); //Zawsze jest wystarczajaco duzo ziól bagiennych, aby sie zrelaksowac, a ja jestem szanowany i ceniony za moja wiedze o stolarstwie.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_11"); //A Twoja dziewczyna?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_12"); //Co? Pozostancie z dala od mnie z ta czarownica....
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_13"); //Dobrze, jesli uwazasz, ze nie moze nic zrobic dla porwania.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_14"); //Nie, nie rozumiesz. Ta suczka sprawila, ze stracilismy umysly chlopaków i zdradzili nas wojownikom demonicznym.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_15"); //Och, widze. To oczywiscie sprawia, ze niechec staje sie bardziej zrozumiala.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_16"); //Tak czy inaczej, wszystko dobieglo mi konca.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_17"); //Bede nadal robic szafy, palic szypulki i cieszyc sie zyciem. Co wiecej, chcesz.....

	if (!Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	{
		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Dobrze, zeby losy uprowadzanych ludzi rozstrzygnely i moge zglosic Vatrze.");
	};

	Mod_WM_ElvrichImSumpf = 4;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Elvrich_MT_EXIT (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_EXIT_Condition;
	information	= Info_Mod_Elvrich_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvrich_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
