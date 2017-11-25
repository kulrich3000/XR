INSTANCE Info_Mod_Gobshak_Stollen (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_Stollen_Condition;
	information	= Info_Mod_Gobshak_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gobshak_Stollen_Condition()
{
	if (Mod_Hermy_KnowsQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gobshak_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_18_00"); //Co robia tutaj ludzie?
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_15_01"); //Mówisz po angielsku?
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_18_02"); //Od dawna jestem niewolnikiem ludzi. Teraz ja sie uwolnilem. Nie chce wracac do niewolnictwa.

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Do tego wlasnie naleza jej smierdzace robaki!", Info_Mod_Gobshak_Stollen_B);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Czy zdarzylo Ci sie znalezc tunel?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_B_15_00"); //Do tego wlasnie naleza jej smierdzace robaki!
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_B_18_01"); //Dlaczego chcesz, abym.... prozi...... aby mnie zdenerwowac?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Przepraszam, nie chcialem tego powiedziec.", Info_Mod_Gobshak_Stollen_D);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Lubie denerwujace orki.", Info_Mod_Gobshak_Stollen_C);
};

FUNC VOID Info_Mod_Gobshak_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_A_15_00"); //Czy zdarzylo Ci sie znalezc tunel?
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_A_18_01"); //Tak, teraz mówisz. Naprawde znalezlismy tu kradziez w Alter Bibio.... Wiecej biblithetyczny Biblioteka. Z tylu przy Grubuzie trzeba zapytac.
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_A_15_02"); //Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_A_18_03"); //Mam zaszczyt podziekowac.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Gobshak powiedzial mi, ze tunel zostal odkryty w skalnej twierdzy. Mam porozmawiac z orkiem o nazwisku Grubuz.");

	Mod_Hermy_KnowsQuest = 2;

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);
};

FUNC VOID Info_Mod_Gobshak_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_D_15_00"); //Przepraszam, nie chcialem tego powiedziec.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_D_18_01"); //Czego zatem chcesz?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Czy zdarzylo Ci sie znalezc tunel?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_C_15_00"); //Lubie denerwujace orki.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_C_18_01"); //Chcesz walczyc z gobshakiem?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Nie, nie, nie. Chcialem czegos innego.", Info_Mod_Gobshak_Stollen_G);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Odwiedz nas tutaj!", Info_Mod_Gobshak_Stollen_F);
};

FUNC VOID Info_Mod_Gobshak_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_G_15_00"); //Nie, nie, nie. Chcialem czegos innego.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_G_18_01"); //Czego chcesz?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Czy zdarzylo Ci sie znalezc tunel?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_F_15_00"); //Odwiedz nas tutaj!
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_F_18_01"); //Nie poddaje sie temu rodzajowi rzeczy. Czlowiek lepiej znika.

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gobshak_Grubuz (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_Grubuz_Condition;
	information	= Info_Mod_Gobshak_Grubuz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gobshak_Grubuz_Condition()
{
	if (Mod_Hermy_KnowsQuest == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gobshak_Grubuz_Info()
{
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_18_00"); //Wszystko sie zdarzylo? Czlowiek wyglada zdenerwowany.
	
	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Odmowa jest bezuzyteczna, smierdzisz orkiem!", Info_Mod_Gobshak_Grubuz_B);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Czy wiesz, gdzie teraz jest Grubuz?", Info_Mod_Gobshak_Grubuz_A);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_B()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_B_15_00"); //Odmowa jest bezuzyteczna, smierdzisz orkiem!
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_B_18_01"); //Co zrobil wam gobshak?

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Przykro mi, ale to bylo zepsucie.", Info_Mod_Gobshak_Grubuz_D);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Kradles mój zaklecie i zabiles Emerina. Glupich kisc!", Info_Mod_Gobshak_Grubuz_C);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_A()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_00"); //Czy wiesz, gdzie teraz jest Grubuz?
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_01"); //Grubuz ucieka szybko wczesniej. Nad mostem, jesli Gobshak sie nie pomyli.
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_02"); //Czy byl on sam?
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_03"); //Tak, gobshak nie widzial z nim nikogo.
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_04"); //Dziekuje za te informacje.
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_05"); //Mam zaszczyt podziekowac.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Gobshak najwyrazniej nie bral udzialu w ataku, ale podejrzane jest, ze Grubuz spietrzyl most. Nie moze byc daleko.");

	Mod_Hermy_KnowsQuest = 8;

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_D()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_D_15_00"); //Przykro mi, ale to bylo zepsucie.

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Czy wiesz, gdzie teraz jest Grubuz?", Info_Mod_Gobshak_Grubuz_A);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_C()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_C_15_00"); //Kradles mój zaklecie i zabiles Emerina. Glupich kisc!
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_C_18_01"); //Winic gobshak za cos, co gobshak nie zrobil!

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Przykro mi, ale to bylo zepsucie.", Info_Mod_Gobshak_Grubuz_D);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Oczywiscie nie! Masz wrazenie, ze jestem szalony? Teraz umrzesz!", Info_Mod_Gobshak_Grubuz_F);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_F()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_F_15_00"); //Oczywiscie nie! Masz wrazenie, ze jestem szalony? Teraz umrzesz!

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Gobshak_EXIT (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_EXIT_Condition;
	information	= Info_Mod_Gobshak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gobshak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gobshak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
