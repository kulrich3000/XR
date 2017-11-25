INSTANCE Info_Mod_Lukor_Hi (C_INFO)
{
	npc		= Mod_7266_GUR_BaalLukor_OGY;
	nr		= 1;
	condition	= Info_Mod_Lukor_Hi_Condition;
	information	= Info_Mod_Lukor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_00"); //Jest niewierny glupiec, który wypedzil mojego mistrza.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_01"); //Co jeszcze zyjesz?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_02"); //Byc moze go wyrzuciles. Wczesniej jednak dostalem czesc jego mocy.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_03"); //O czym pan mówi?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_04"); //Wszyscy oni podazaja za obcymi idolami, bogami lub zwyklym mamonem. Wszyscy zaplaca swoja krwia.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_05"); //Wyglada na typ znajomego.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_06"); //W miedzyczasie medytowalem nad dniami i tygodniami, nieustannie nauczylem sie uwalniac i wykorzystywac sily, które wykraczaja daleko poza mozliwosci zwyklego maga, a nawet bojownika.

	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	Info_AddChoice	(Info_Mod_Lukor_Hi, "Co wiec sypialnia byla i tak tylko wladca czarodziejów.", Info_Mod_Lukor_Hi_C);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Hmm, mysle, ze mój pistolet zostal umieszczony pomiedzy twoimi lopatkami (.... )", Info_Mod_Lukor_Hi_B);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Tak, tak, tak, pozwole ci troche wiecej medytowac.", Info_Mod_Lukor_Hi_A);
};

FUNC VOID Info_Mod_Lukor_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_00"); //Teraz wreszcie spotkalem sojuszników, slug, którzy sa lojalni wobec swego Mistrza i Stwórcy.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_01"); //Tak, mój pan..... I oto jest niewiernym, który go wygnal.....
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_02"); //Z wasza krwia podleje teraz oltarz. Die!
	
	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Lukor_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_C_15_00"); //Co wiec sypialnia byla i tak tylko wladca czarodziejów.
	
	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_B_15_00"); //Hmm, mysle, ze mój pistolet znajdujacy sie pomiedzy twoimi ostrzami na ramieniu moze cie szybko sprowadzic na ziemie.

	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_A_15_00"); //Tak, tak, tak, pozwole ci troche wiecej medytowac. Potrzeba bylo wielu dziesiecioleci, aby znalezc oswiecenie....

	Info_Mod_Lukor_Hi_D();
};
