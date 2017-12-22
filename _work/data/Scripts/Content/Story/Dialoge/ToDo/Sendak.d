INSTANCE Info_Mod_Sendak_Hi (C_INFO)
{
	npc		= Mod_7753_BDT_Sendak_EIS;
	nr		= 1;
	condition	= Info_Mod_Sendak_Hi_Condition;
	information	= Info_Mod_Sendak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sendak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sendak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_00"); //Och, tam jestescie. Masz jeszcze cos innego, co nalezy do nas.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_01"); //Daj mi zloto, które wziales od Aslana, a orkiestry powiedza, ze szybko cie zabija.
	AI_Output(hero, self, "Info_Mod_Sendak_Hi_15_02"); //Niestety, juz wydalem zloto na rzeczy o wysokiej odpornosci, ale jesli znajdziesz cos innego u mnie, to jest to twoje.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_03"); //Dopasuj sie do siebie. Zupa z jelit ludzkich jest tym co ci nieumarli wola jesc.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
};
