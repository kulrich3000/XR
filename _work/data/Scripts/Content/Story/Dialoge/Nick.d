INSTANCE Info_Mod_Nick_Hi (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_Hi_Condition;
	information	= Info_Mod_Nick_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nick_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nick_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nick_Hi_01_00"); //Nie nalezysz do tych zwierzat, co tu robisz?
	
	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "Mozna mówic?", Info_Mod_Nick_Hi_C);
	Info_AddChoice	(Info_Mod_Nick_Hi, "Jestem po to, zeby cie zabic.", Info_Mod_Nick_Hi_B);
	Info_AddChoice	(Info_Mod_Nick_Hi, "Chce wiedziec, dlaczego zabijasz wszystkie te zwierzeta.", Info_Mod_Nick_Hi_A);
};

FUNC VOID Info_Mod_Nick_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_00"); //Jedna z tych bestia zjadla mi glowe i uciekla!
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_01"); //Nie moge dokladnie powiedziec, jak to wygladalo, ale jestem pewien, ze mial dwie nogi i nie mial zadnych ramion.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_02"); //Nie sadze, by bylo to juz tutaj.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_E_15_03"); //Chcesz, abym cofnela Twoja glowe do tylu?
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_04"); //To byloby wspaniale.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_05"); //Ostatnia rzecza, która pamietam jest to, ze znajduje sie na skrzyzowaniu starej ruiny i starego.... hm..... Moze biblioteka zostala zaatakowana przez zwierzeta dwunozne.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_06"); //Najlepiej najpierw spojrzec.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_E_15_07"); //Szukam go tam. Do zobaczenia pózniej.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_E_01_08"); //Czekam z niecierpliwoscia na panstwa ponowna wizyte. Obiecuje, ze do tego czasu zadne z tych zwierzat nie zostanie zabite.

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Na skrzyzowaniu fortu i skalistej twierdzy Nick zostal zaatakowany przez Scavengers lub byc moze przez lopatki. Rozejrze sie dookola.");

	Wld_InsertNpc	(Mod_10016_MIN_Brad_MT, "CASTLE");

	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU3");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU4");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU5");
	Wld_InsertNpc	(Snapper,	"FP_ROAM_BLOODHOUND_PLATEAU6");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PLATEAU_ROUND03");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");
	Wld_InsertNpc	(Snapper,	"PATH_TO_PLATEAU04_BRIDGE");

	Info_ClearChoices	(Info_Mod_Nick_Hi);
};

FUNC VOID Info_Mod_Nick_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_C_15_00"); //Mozna mówic?
	AI_Output(self, hero, "Info_Mod_Nick_Hi_C_01_01"); //Nie potrzebuje wokalnych akordów ani ust. Poza tym jestem brzuchomówka.

	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "Jestem po to, zeby cie zabic.", Info_Mod_Nick_Hi_B);
	Info_AddChoice	(Info_Mod_Nick_Hi, "Chce wiedziec, dlaczego zabijasz wszystkie te zwierzeta.", Info_Mod_Nick_Hi_A);
};

FUNC VOID Info_Mod_Nick_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_A_15_00"); //Chce wiedziec, dlaczego zabijasz wszystkie te zwierzeta.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_A_01_01"); //Dlaczego?

	Info_Mod_Nick_Hi_E();
};

FUNC VOID Info_Mod_Nick_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_B_15_00"); //Jestem po to, zeby cie zabic.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_B_01_01"); //Chcesz mnie zabic? Nie mozesz mnie zabic. Bo juz nie zyje. (Miekko smieje sie) Dlaczego chcesz mnie pozbyc?

	Info_ClearChoices	(Info_Mod_Nick_Hi);

	Info_AddChoice	(Info_Mod_Nick_Hi, "To jest moje zadanie.", Info_Mod_Nick_Hi_F);
	Info_AddChoice	(Info_Mod_Nick_Hi, "Nie chce, aby niewinne zwierzeta umarly.", Info_Mod_Nick_Hi_D);
};

FUNC VOID Info_Mod_Nick_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_F_15_00"); //To jest moje zadanie.
	AI_Output(self, hero, "Info_Mod_Nick_Hi_F_01_01"); //Zapomnij o tym. Pozbedziesz sie mnie tylko wtedy, gdy mi pomozesz.
	AI_Output(hero, self, "Info_Mod_Nick_Hi_F_15_02"); //Jak moge Ci pomóc?

	Info_Mod_Nick_Hi_E();
};

FUNC VOID Info_Mod_Nick_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Nick_Hi_D_15_00"); //Nie chce, aby niewinne zwierzeta umarly.

	Info_Mod_Nick_Hi_E();
};

INSTANCE Info_Mod_Nick_Kopf (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_Kopf_Condition;
	information	= Info_Mod_Nick_Kopf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nick_Kopf_Condition()
{
	if (Npc_HasItems(hero, ItMi_NicksKopf) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nick_Kopf_Info()
{
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_01_00"); //A co? Jak wygladales/as?
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_15_01"); //Zgineli sobie glowe snaperzy. Najwyrazniej Minotaur zabil ja i wzial glowe. Tymczasem jednak mam glowe.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_01_02"); //Czy oddasz mi ja z powrotem?
	
	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "Co otrzymuje za to?", Info_Mod_Nick_Kopf_B);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "Oczywiscie tak jest. Tutaj go pan ma.", Info_Mod_Nick_Kopf_A);
};

FUNC VOID Info_Mod_Nick_Kopf_A()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_A_15_00"); //Oczywiscie tak jest. Tutaj go pan ma.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	AI_Output(self, hero, "Info_Mod_Nick_Kopf_A_01_01"); //Dziekuje, obcy! Oto moje ostatnie zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's zostal w koncu uratowany. Powinienem powrócic do Anora i poinformowac go, ze smierc zwierzecia ustala.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_G()
{
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_G_01_00"); //Dziekuje, obcy!

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's zostal w koncu uratowany. Powinienem powrócic do Anora i poinformowac go, ze smierc zwierzecia ustala.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_B()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_B_15_00"); //Co otrzymuje za to?
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_B_01_01"); //Przestane zabijac niewinne zwierzeta. Poza tym musialabym zabic wiele osób szukajacych Ciebie.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_B_01_02"); //I mozna miec zloto. Nie potrzebuje go, gdy tylko cofne glowe do tylu.

	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "To nie jest dla mnie wystarczajaco dobre.", Info_Mod_Nick_Kopf_F);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "Wszystko w porzadku, oto Twoja glowa.", Info_Mod_Nick_Kopf_D);
};

FUNC VOID Info_Mod_Nick_Kopf_F()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_F_15_00"); //To nie jest dla mnie wystarczajaco dobre.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_F_01_01"); //Nie moge dac ci wiecej.
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_F_15_02"); //Jak moge Ci pomóc?

	Info_ClearChoices	(Info_Mod_Nick_Kopf);

	Info_AddChoice	(Info_Mod_Nick_Kopf, "Wtedy nie cofniesz sie do tylu.", Info_Mod_Nick_Kopf_E);
	Info_AddChoice	(Info_Mod_Nick_Kopf, "Oto glowa.", Info_Mod_Nick_Kopf_C);
};

FUNC VOID Info_Mod_Nick_Kopf_D()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_D_15_00"); //Wszystko w porzadku, oto Twoja glowa.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	Info_Mod_Nick_Kopf_G();
};

FUNC VOID Info_Mod_Nick_Kopf_E()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_E_15_00"); //Wtedy nie cofniesz sie do tylu.
	AI_Output(self, hero, "Info_Mod_Nick_Kopf_E_01_01"); //W porzadku, nieznajomy. Daje równiez troche chunksów rudy.
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_E_15_02"); //Oto Twoja glowa.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	AI_Output(self, hero, "Info_Mod_Nick_Kopf_E_01_03"); //Dzieki. Wreszcie milczenie.

	CreateInvItems	(hero, ItMi_Gold, 250);
	CreateInvItems	(hero, ItMi_Nugget, 5);

	B_ShowGivenThings	("250 zlota i 5 sztuk konserwowanej rudy");

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Nick's zostal w koncu uratowany. Powinienem powrócic do Anora i poinformowac go, ze smierc zwierzecia ustala.");

	Info_ClearChoices	(Info_Mod_Nick_Kopf);
};

FUNC VOID Info_Mod_Nick_Kopf_C()
{
	AI_Output(hero, self, "Info_Mod_Nick_Kopf_C_15_00"); //Oto glowa.

	B_GiveInvItems	(hero, self, ItMi_NicksKopf, 1);
	Npc_RemoveInvItems	(self, ItMi_NicksKopf, 1);

	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"ZOM_HEAD", 0,  		DEFAULT,	ITAR_Pir_Zombie);

	Info_Mod_Nick_Kopf_G();
};

INSTANCE Info_Mod_Nick_EXIT (C_INFO)
{
	npc		= Mod_7050_ZOM_Nick_MT;
	nr		= 1;
	condition	= Info_Mod_Nick_EXIT_Condition;
	information	= Info_Mod_Nick_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nick_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nick_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
