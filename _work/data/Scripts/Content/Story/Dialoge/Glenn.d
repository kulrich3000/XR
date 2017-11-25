INSTANCE Info_Mod_Glenn_Nahrungsversorgung (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyglada na to, ze mozna skorzystac z pracy i dobrej kapieli.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_00"); //Wyglada na to, ze mozna skorzystac z pracy i dobrej kapieli.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_01"); //Co robic, nawet w porcie nie ma pracy jako kucharz.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_02"); //Gdybym nawet ugotowal dla szczurów, gdybym widzial zloto na to.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_03"); //Móglbym uzyc kucharza. Co powiedzielibyscie, gdybym dal wam 150 zlota z góry?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_04"); //To brzmi dobrze, ale potrzebowalbym do tego lyzki.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_05"); //Jednak nie sa one tak tanie jak te, które sa sprzedawane na rynku. Tylko gotowanie z moja kopalnia.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_06"); //I gdzie by to bylo?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_07"); //Zdaje mi sie, ze zgubil sie w walce z jakimis polnymi grabiezcami.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_08"); //Bylo to na pólnoc od góry bezposrednio przed brama miejska.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_09"); //Cóz, jesli naprawde tego potrzebujesz, znajde ja dla Ciebie.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn przychodzil jako kucharz, ale chce wlasnej lyzki. Zgubil go na górze na pólnoc od wschodniej bramy.");

	Wld_InsertItem	(ItMi_Scoop_Glenn, "FP_ITEM_KOCHLOEFFEL_GLENN");

	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_01");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_02");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_03");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_04");
};

INSTANCE Info_Mod_Glenn_Nahrungsversorgung2 (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung2_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto lyzka do gotowania i 150 zlotych monet.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Glenn_Nahrungsversorgung))
	&& (Npc_HasItems(hero, ItMi_Scoop_Glenn) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_00"); //Oto lyzka do gotowania i 150 zlotych monet. Pracujesz dla mnie teraz?

	Npc_RemoveInvItems	(hero, ItMi_Gold, 150);
	Npc_RemoveInvItems	(hero, ItMi_Scoop_Glenn, 1);

	B_ShowGivenThings	("150 Dodane lyzki do gotowania zlote i plenne");

	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_01"); //Gdzie oczywiscie powinienem gotowac dla Ciebie?
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_02"); //Idzcie do Minentala i poczekajcie na mnie przy wejsciu do opuszczonej kopalni.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_03"); //Dobrze, bede na drodze.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn zmierza w kierunku opuszczonej kopalni.");

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Glenn_EXIT (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_EXIT_Condition;
	information	= Info_Mod_Glenn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Glenn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Glenn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
