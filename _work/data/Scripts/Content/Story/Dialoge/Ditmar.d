INSTANCE Info_Mod_Ditmar_Hi (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Hi_Condition;
	information	= Info_Mod_Ditmar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego wokól nas jest tak cicho?";
};

FUNC INT Info_Mod_Ditmar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ditmar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_00"); //Dlaczego wokól nas jest tak cicho? Czy w tawernach nie powinno byc halasu?
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_01"); //Spójrzcie na tamta tablice. Sa trzy powody, dla których nikt tutaj nie chce nic powiedziec.
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_02"); //A... nieco nietypowy obraz.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_03"); //Mówisz to.
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_15_04"); //Jak moglo do tego dojsc?
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_05"); //Nie wiem! Wchodza tu po prostu jak Orki w Myrtanie i nalegaja, aby pozwolono im tu zostac.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_26_06"); //Od tego czasu moi goscie nie moga juz odbywac regularnych spotkan, poniewaz kobiety sluchaja wszystkiego.

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);

	Info_AddChoice	(Info_Mod_Ditmar_Hi, "Zadzwon do mnie, jesli pojawia sie powazniejsze problemy.", Info_Mod_Ditmar_Hi_C);
	Info_AddChoice	(Info_Mod_Ditmar_Hi, "Co wiec? Kobiety maja calkowita racje.", Info_Mod_Ditmar_Hi_B);
	Info_AddChoice	(Info_Mod_Ditmar_Hi, "Rozumiem problem.", Info_Mod_Ditmar_Hi_A);
};

FUNC VOID Info_Mod_Ditmar_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_C_15_00"); //Zadzwon do mnie, jesli pojawia sie powazniejsze problemy.

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);
};

FUNC VOID Info_Mod_Ditmar_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_D_15_00"); //Zobacze.

	Mod_Kneipe_Ditmar = 1;

	Log_CreateTopic	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Trzy kobiety w wieku uspokojenia postawily sobie za cel spedzenie dni w karczmie. Gospodarzowi nie podoba sie to jednak wcale, poniewaz nie ma miejsca na spotkania z kolegami. Mam znalezc rozwiazanie, aby odstraszyc trzy z nich.");

	Info_ClearChoices	(Info_Mod_Ditmar_Hi);
};

FUNC VOID Info_Mod_Ditmar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_B_15_00"); //Co wiec? Kobiety maja calkowita racje.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_B_26_01"); //Tak, owszem, dlatego wlasnie próbowalem ich zmusic do odejscia, proszac o opuszczenie. Ale jak widac, bezowocne.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_B_26_02"); //Byc moze znajdziesz sposób, aby ich stad odjechac..... nie powinno to byc szkodliwe równiez dla Ciebie!

	Info_Mod_Ditmar_Hi_D();
};

FUNC VOID Info_Mod_Ditmar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_Hi_A_15_00"); //Rozumiem problem.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_A_26_01"); //Ktos musi ich stad wyprowadzic.... wszystkie petycje nie pomogly.
	AI_Output(self, hero, "Info_Mod_Ditmar_Hi_A_26_02"); //Jesli sie uda, to nie bedzie to twoja szkoda!

	Info_Mod_Ditmar_Hi_D();
};

INSTANCE Info_Mod_Ditmar_DickeLuft (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_DickeLuft_Condition;
	information	= Info_Mod_Ditmar_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, jak powrócilo zycie.";
};

FUNC INT Info_Mod_Ditmar_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_DickeLuft_15_00"); //Slysze, jak powrócilo zycie.
	AI_Output(self, hero, "Info_Mod_Ditmar_DickeLuft_26_01"); //Powiedziales to! Byli dobrymi goscmi, ich trójka. Ale kobiety w gospodarce? Aby stalo sie to normalne, zajmie to wiele wieków.
	AI_Output(self, hero, "Info_Mod_Ditmar_DickeLuft_26_02"); //Napójmy sie do zbawienia!
	
	CreateInvItems(self, ItFo_Beer_Khorata, 2);
	B_GiveInvItems(self, hero, ItFo_Beer_Khorata, 1);
	
	B_UseItem(self, ItFo_Beer_Khorata);
	B_UseItem(hero, ItFo_Beer_Khorata);
	
	B_GivePlayerXP(250);
};

INSTANCE Info_Mod_Ditmar_DeinLaden (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_DeinLaden_Condition;
	information	= Info_Mod_Ditmar_DeinLaden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy to jest twoje miejsce?";
};

FUNC INT Info_Mod_Ditmar_DeinLaden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ditmar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_DeinLaden_Info()
{
	AI_Output(hero, self, "Info_Mod_Ditmar_DeinLaden_15_00"); //Czy to jest twoje miejsce?
	AI_Output(self, hero, "Info_Mod_Ditmar_DeinLaden_26_01"); //(kwalifikowane) Tak, tak. Prawdziwe rodzinne przedsiebiorstwo.
	AI_Output(self, hero, "Info_Mod_Ditmar_DeinLaden_26_02"); //Moja córka ma cos do picia, tylko moja zona juz nie zyje, Adanos ma swoje blogoslawienstwo.
};

INSTANCE Info_Mod_Ditmar_Geruechte (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Geruechte_Condition;
	information	= Info_Mod_Ditmar_Geruechte_Info;
	permanent	= 1;
	important	= 0;
	description	= "Co masz do zaoferowania w pogloskach?";
};

FUNC INT Info_Mod_Ditmar_Geruechte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ditmar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_Geruechte_Info()
{
	var int didicounter;
	didicounter = 0;

	AI_Output(hero, self, "Info_Mod_Ditmar_Geruechte_15_00"); //Co masz do zaoferowania w pogloskach?

	if (Mod_Jim_Schutz < 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Endres_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_01"); //Mówi sie, ze straszyc cmentarz w poblizu przeleczy do Hofstaatlera.
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_02"); //Kilku Buddlerów chcialo uslyszec stamtad w drodze do domu, aby uslyszec dzwiek krwiopijnych dzwonów.

		didicounter += 1;
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anna_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_03"); //Maria zostala podobno ponownie zlapana na czarownicy.
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_04"); //Jesli mnie zapytacie, to tylko kwestia czasu, zanim zostanie ona w koncu spalona.

		didicounter += 1;
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen4))
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_05"); //Teodor nie do konca cieszy sie popularnoscia wsród ludzi. Gdybym byl nim, bylbym bardziej ostrozny.

		didicounter += 1;
	};
	if (didicounter == 0)
	{
		AI_Output(self, hero, "Info_Mod_Ditmar_Geruechte_26_06"); //W Khoracie dzieje sie tak wiele dziwnych rzeczy, ale ostatnio nie bylo tam czegos wyjatkowego.
	};
};

INSTANCE Info_Mod_Ditmar_Buerger (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Buerger_Condition;
	information	= Info_Mod_Ditmar_Buerger_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ditmar_Buerger_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ditmar_Buerger_Info()
{
	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_00"); //Kazdy wie, ze jestes z nami od dzisiaj.
	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_01"); //To chce sie podlewac!

	CreateInvItems	(self, ItFo_Beer, 1);
	CreateInvItems	(hero, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Ditmar_Buerger_26_02"); //Baw sie tutaj! I mozesz sie dobrze bawic. Po prostu nie z moim Salmejem, prawda?
};

INSTANCE Info_Mod_Ditmar_Pickpocket (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_Pickpocket_Condition;
	information	= Info_Mod_Ditmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Ditmar_Pickpocket_Condition()
{
	C_Beklauen	(98, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_BACK, Info_Mod_Ditmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ditmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ditmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ditmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ditmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ditmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ditmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ditmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ditmar_EXIT (C_INFO)
{
	npc		= Mod_7722_OUT_Ditmar_REL;
	nr		= 1;
	condition	= Info_Mod_Ditmar_EXIT_Condition;
	information	= Info_Mod_Ditmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ditmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ditmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
