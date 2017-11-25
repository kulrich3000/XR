INSTANCE Info_Mod_Lares_Hi (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hi_Condition;
	information	= Info_Mod_Lares_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_00"); //Ty wciaz zyjesz?
	AI_Output(hero, self, "Info_Mod_Lares_Hi_15_01"); //To dluga historia.
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_02"); //Co teraz robisz?
};

INSTANCE Info_Mod_Lares_Daemonisch (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Daemonisch_Condition;
	information	= Info_Mod_Lares_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_00"); //Cóz, co pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_01"); //Ach, po prostu chcialem rozejrzec sie dookola.....
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_02"); //Czy ostatnio zdarzylo Ci sie cos szczególnego na farmie?
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_03"); //Tak, bylo cos. Pepe widzial ciemne cienie w lesie w nocy, prawdopodobnie z wilków.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_04"); //Wyslalem z nim chlopaków do malego obozu, zeby rozejrzeli sie po nocy.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_05"); //Pepe przyszedl wczesnie rano, panicznie panoszac sie i rozejrzawszy sie w dyskursywnej panice.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_06"); //Kiedy moi chlopcy znów wyszli z lasu, krzykal w strone górskiej twierdzy.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_07"); //Chlopcy mysleli, ze zaatakowala ich duza paczka wilków, a Pepe uciekl.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_08"); //Niestety jeden z moich najemników zostal zabity przez dranie. No cóz, wszystko w porzadku.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Dowiedzialem sie od Lares, ze Pepe widzial ciemne cienie w lesie, które prawdopodobnie byly spowodowane przez wilki. Niektórzy najemnicy udali sie z Pepe' em do malego obozu w lesie. Pepe przybyl wczesnym rankiem w panice i zniknal w kierunku twierdzy górskiej, gdy zobaczyl najemników wychodzacych z lasu za soba. Widocznie zaatakowala ich duza paczka wilków, a Pepe panicked. Zginal najemnik.");
};

INSTANCE Info_Mod_Lares_Grog (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Grog_Condition;
	information	= Info_Mod_Lares_Grog_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem cos dla Ciebie.";
};

FUNC INT Info_Mod_Lares_Grog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_GrogPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Grog_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_00"); //Dostalem cos dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_02"); //Pakiet grog.

	B_GiveInvItems	(hero, self, Mod_GrogPaket, 1);

	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_03"); //Najwyzszy czas. W koncu moge znowu troche swietowac razem z chlopcami.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_04"); //Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Lares_BronkoMehlsack (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_BronkoMehlsack_Condition;
	information	= Info_Mod_Lares_BronkoMehlsack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz cos zrobic z bezplatna przesylka maki?";
};

FUNC INT Info_Mod_Lares_BronkoMehlsack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Ambient01))
	&& (Npc_HasItems(hero, ItMi_Mehlsack_Bronko) == 5)
	&& (Mod_BronkoMehlsack == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_BronkoMehlsack_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_00"); //Czy mozesz cos zrobic z bezplatna przesylka maki?
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_01"); //Po prostu daj mi ja. Gdzie mozna to znalezc?

	B_GiveInvItems	(hero, self, ItMi_Mehlsack_Bronko, 5);

	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_02"); //Upadlem za to.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_03"); //(smiech) Wtedy wolalbym nie pytac. W kazdym razie dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_04"); //Tutaj oszczedze kilka eliksirów. Nie jestem w drodze tak bardzo, jak potrzebuje tego teraz.

	CreateInvItems	(hero, ItPo_Health_01, 2);
	CreateInvItems	(hero, ItPo_Mana_01, 2);

	B_ShowGivenThings	("2 Substancje lecznicze i 2 Otrzymane esencje mana");

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);

	Mod_BronkoMehlsack = 3;
};

INSTANCE Info_Mod_Lares_WillSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_WillSoeldner_Condition;
	information	= Info_Mod_Lares_WillSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce do Panstwa dolaczyc.";
};

FUNC INT Info_Mod_Lares_WillSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_WillSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_00"); //Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_01"); //To dobra wiadomosc. Bardzo dobry. Wystarczy tylko okazac swoja lojalnosc wobec obozu.
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_02"); //Ty mnie znasz, znasz mnie.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_03"); //W Minental wiele sie wydarzylo. Wiem, ze moge wam ufac, ale to nie daje wam zadnego szacunku wsród innych.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_04"); //Idz do Torlof i powiedz mu, ze wysylam ci.

	B_LogEntry	(TOPIC_MOD_SÖLDNER, "Zeby zostac zaakceptowanym przez najemników, musze zaimponowac im troche i udowodnic swoja lojalnosc. Powinienem porozmawiac z Torlofem.");
};

INSTANCE Info_Mod_Lares_AndereSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereSoeldner_Condition;
	information	= Info_Mod_Lares_AndereSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie sa inni najemnicy?";
};

FUNC INT Info_Mod_Lares_AndereSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_00"); //Gdzie sa inni najemnicy?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_01"); //Nadal sa w Nowym Obozie.
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_02"); //Lee wyslal mnie tutaj z Torlofem i Cordem, aby namówic niektórych ludzi z Khorinis do przylaczenia sie do nas.
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_03"); //Ile przekonales/as?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_04"); //Niektóre. Biorac jednak pod uwage nude, której obecnie doswiadczamy, nie jest to powazny problem.
};

INSTANCE Info_Mod_Lares_Aufnahme (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Aufnahme_Condition;
	information	= Info_Mod_Lares_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem gotów byc najemnikiem.";
};

FUNC INT Info_Mod_Lares_Aufnahme_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Torlof_KristallEntgelt))
	|| (Npc_KnowsInfo(hero, Info_Mod_Torlof_Alvares)))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_15_00"); //Jestem gotów byc najemnikiem.
	
	if (hero.level	>=	5)
	&& (Gardist_Dabei == FALSE)
	&& (Orks_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_01"); //Z przyjemnoscia witamy Panstwa tutaj.
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_02"); //Ale gdy tylko nosisz jedna z naszych pancerzy, nie ma juz odwrotu.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			Info_ClearChoices	(Info_Mod_Lares_Aufnahme);

			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "Zmienilam zdanie.", Info_Mod_Lares_Aufnahme_Nein);
			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "Chce do Panstwa dolaczyc.", Info_Mod_Lares_Aufnahme_Ja);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_04"); //Najpierw powinienes zdobyc neutralna zbroje.
		};
	}
	else if (Gardist_Dabei == TRUE)
	|| (Orks_Dabei == TRUE)
	{
		if (Gardist_Dabei == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_05"); //Nie sadzisz powaznie, ze mozemy tolerowac straznika w naszych szeregach.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_06"); //Sa wsród nas takze mysliwi orkowcy, jest nasz przyjaciel orkisz, który sie myli.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_03"); //Lepiej zdobyc wiecej doswiadczenia.
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Nein_15_00"); //Zmienilam zdanie.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Nein_37_01"); //Cokolwiek mówisz.

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

FUNC VOID Info_Mod_Lares_Aufnahme_Ja()
{
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_58);
		
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Ja_15_00"); //Chce do Panstwa dolaczyc.
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_01"); //Jesli potrzebujesz pistoletu, powinienes zapytac Bennet.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_02"); //Oto Twoja zbroja.

	CreateInvItems	(self, ITAR_SLD_L, 1);
	B_GiveInvItems	(self, hero, ITAR_SLD_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_SLD_L);
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_14_03"); //Ale nie wjezdzajcie do miasta z pancerzem, milicja nie wpusci Was do miasta.
	
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	{
		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_NMore	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_SÖLDNER, TOPIC_MOD_SLD_ORKJAEGER, "Jestem teraz najemnikiem.", "Jestem teraz najemnikiem.", "Sylvio decyduje, kto wchodzi na lowców Orku.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_SÖLDNER, "Jestem teraz najemnikiem.", "Jestem teraz najemnikiem.");
	};

	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	
	Mod_Gilde = 4;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	hero.guild = GIL_MIL;
	Npc_SetTrueGuild	(hero, GIL_MIL);

	Monster_Max += 6;

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

INSTANCE Info_Mod_Lares_Drachen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Drachen_Condition;
	information	= Info_Mod_Lares_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_00"); //Fucking scumbag!
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_02"); //Nadal prosi pan o to? Nie widziales smoków w polu?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_03"); //Zjadly wszystkie owce, a nawet pies pasterza rolnika Sekob.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_04"); //W miare jak podnosilismy sie przeciwko nim, zdalismy sobie sprawe, ze nasza bron nie moze zrobic wiele, aby im zaszkodzic.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_05"); //Stracilismy czlowieka w tym procesie.
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_06"); //Cóz, co mozesz zrobic....?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_07"); //Pytasz mnie? Zawsze jestes w drodze, rozwiazujac zagadki i przechwytujac informacje od ludzi, magów i orków.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_08"); //Jesli znajdziesz sposób na zabicie smoków, daj mi znac. brudne istoty.....

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Lares skarzyl sie na smoki i spowodowane przez nie szkody. On i najemnicy nie mogli im zaszkodzic. Poprosil mnie o poinformowanie go, gdy tylko znalazlem sposób, aby to zrobic.");
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer_37_00"); //Damn it, gdzie jest kopia zapasowa? Czy dzwoniles do Lee? Jesli nie, spiesz sie.
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer2_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer2_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_00"); //Jak to wyglada? Jakichs wiesci o brzydkich olbrzymich jaszczurkach?
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_01"); //Dzieki wzmocnieniu Minentala jestesmy juz dobrze przygotowani.
	AI_Output(hero, self, "Info_Mod_Lares_LeeDJGHelfer2_15_02"); //Tak, teraz powinnismy byc w stanie je usunac. Czar, który ich chronil jest zlamany.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_03"); //Naprawde? Nie wahajmy sie wiec na chwile.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_04"); //Chlopcy, czy to slyszales? Jestesmy gotowi do wyjazdu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(self, "HEXEN");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_Knucker (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Knucker_Condition;
	information	= Info_Mod_Lares_Knucker_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Knucker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_LeeDJGHelfer2))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_CROSS") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Knucker_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Knucker_37_00"); //No wiec. Teraz nadszedl czas na przetwory.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "KNUCKER");
	B_StartOtherRoutine	(self, "KNUCKER");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "KNUCKER");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "KNUCKER");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Lares_KnuckerTot (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_KnuckerTot_Condition;
	information	= Info_Mod_Lares_KnuckerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_KnuckerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Knucker))
	&& (Npc_IsDead(Knucker_11001_NW))
	&& (Npc_IsDead(Feuerdrache_11002_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_KnuckerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_00"); //Cóz, bylo to latwiejsze niz myslalem. Chlopcy znów mieli ruch. W pewnym momencie musimy to jeszcze raz zrobic.
	AI_Output(hero, self, "Info_Mod_Lares_KnuckerTot_15_01"); //Gdzie i tak Gorn? Brakowalo mi go do walki.
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_02"); //Moze obejrzec kaplice. Nie chcemy doswiadczac nieprzyjemnych niespodzianek z lasu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");
	B_StartOtherRoutine	(self, "START");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "START");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Lares_Hexen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hexen_Condition;
	information	= Info_Mod_Lares_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hexen_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Mod_WM_GornAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_00"); //Hej, nieumarli na dworze Sekoba rozproszyli sie. Teraz moglibysmy je pokonac.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_01"); //Jesli pójdziesz dalej, nasza sila powinna wystarczyc.
	
	Info_ClearChoices	(Info_Mod_Lares_Hexen);

	Info_AddChoice	(Info_Mod_Lares_Hexen, "Nie, teraz mam wazniejsze rzeczy do zrobienia.", Info_Mod_Lares_Hexen_B);
	Info_AddChoice	(Info_Mod_Lares_Hexen, "Jasne, ze jestem.", Info_Mod_Lares_Hexen_A);
};

FUNC VOID Info_Mod_Lares_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_B_15_00"); //Nie, teraz mam wazniejsze rzeczy do zrobienia.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_01"); //Hmm, zbyt zle nie sadzilem, zebys tego nie chcial przeoczyc.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_02"); //Wtedy bedziemy musieli po prostu troche dluzej czekac, zanim dostaniemy wzmocnienia.

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Lares_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_A_15_00"); //Jasne, ze jestem.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_01"); //Bardzo dobrze, nie spodziewalem sie od Ciebie niczego wiecej. No cóz, tutaj idziemy.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_02"); //Spotkamy sie na rozdrozu. Jak za dawnych czasów.

	Mod_WM_GornAttack = 1;

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_NahkampfJG (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG_Condition;
	information	= Info_Mod_Lares_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rangers poszukuja ludzi. Najlepiej miecznicy.";
};

FUNC INT Info_Mod_Lares_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Opferschale))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_00"); //Rangers poszukuja ludzi. Najlepiej miecznicy.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG_37_01"); //Hm. Oto niektórzy, którzy spedzaja caly dzien. Musisz jednak zapytac Cord.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_02"); //Dobre. Do zobaczenia pózniej.
};

INSTANCE Info_Mod_Lares_NahkampfJG2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG2_Condition;
	information	= Info_Mod_Lares_NahkampfJG2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kord dal mi przysiad. Dostaniesz za to mysliwego.";
};

FUNC INT Info_Mod_Lares_NahkampfJG2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_00"); //Kord dal mi przysiad. Dostaniesz za to mysliwego.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG2_37_01"); //Przejdz do przodu. On moze z mna polowac.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_02"); //Do zobaczenia dookola.
};

INSTANCE Info_Mod_Lares_AndereGilde (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereGilde_Condition;
	information	= Info_Mod_Lares_AndereGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_AndereGilde_Condition()
{
	if (Mod_Gilde > 0)
	&& (hero.guild != GIL_MIL)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lares_WillSoeldner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_00"); //Hej, slysze, ze jestes z innego duzego magazynu.
	AI_Output(hero, self, "Info_Mod_Lares_AndereGilde_15_01"); //Uh, no cóz......
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_02"); //Cóz, w takim przypadku nie mozesz juz do nas dolaczyc.
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_03"); //Ryzyko byloby zbyt duze, aby reprezentowac interesy innych, jezeli zrozumie sie je.
};

INSTANCE Info_Mod_Lares_Friedensbote (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Friedensbote_Condition;
	information	= Info_Mod_Lares_Friedensbote_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Friedensbote_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Friedensbote_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_00"); //Cóz, czy Paladynowie kiedykolwiek wyslali cie na wakacje?
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_01"); //Tak, rodzaj. Mam przekazac to przeslanie osobiscie Lorda Hagena.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_02"); //Z Wladcy Kastrato sam król hagilein? To ty mnie oszukujesz!
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_03"); //Tutaj.

	B_GiveInvItems	(hero, self, ItWr_HagenLares, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_04"); //faktyczny

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_05"); //... Zglaszam sugestie.... .... konflikty .... Paladynowie i najemnicy..... itd. ... tak wiec, wiec uhhuh.... Oznaki zaufania.... Aspirant na stanowisku kapitana..... uh-huh.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_06"); //A co?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_07"); //Powiedzialam, ze przyszedles do piekla dlugiej drogi, dzieciak. Mój tylek.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_08"); //Najwyzszy rycerz i pretendent na stanowisko kapitana w miescie.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_09"); //Kiedy przywiozlas nas z powrotem do kolonii liste potrzeb Starego Obozu, przypuszczalbym, ze znalazlbys sie na szczycie wojska królewskiego.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_10"); //Co Pan teraz mówi do pytania Hagena?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_11"); //Jezeli, jako przyszly kapitan, zobowiazujesz sie do przestrzegania zawieszenia broni, nie widze powodu, dla którego nie mielibysmy go przestrzegac.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_12"); //Orki w Minentalu naprawde staja sie coraz wiekszym zagrozeniem.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_13"); //Nie byloby zlym pomyslem wprowadzenie tak krótkiego zawieszenia broni, aby spokojnie umocnic nasza pozycje w Khorinis i przygotowac sie na wszystko inne.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_14"); //Tak wiec mozna powiedziec Hagenowi, ze zrobimy to, co do nas nalezy.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_15"); //Bedzie z Toba zadowolony, czyz nie?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_16"); //Bez twardych uczuc. Jestem ciekawy, jak to sie rozwija. Teraz nalezy zachowac ostroznosc.

	B_LogEntry	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, "Lares zgodzil sie na zawieszenie broni. Powinienem o tym powiedziec Lorda Hagenowi.");
};

INSTANCE Info_Mod_Lares_Banditenfestung (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung_Condition;
	information	= Info_Mod_Lares_Banditenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Banditenfestung_Condition()
{
	if (Mod_Irdorath == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_00"); //Hejdz, odczekaj minute. Chcialem Was ostrzec, jesli chcecie wyjsc na poludnie w góry.
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung_15_01"); //Dlaczego? Co tam jest?
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_02"); //W twierdzy osiedlil sie skum z doliny Minental. Badz wiec ostrozny, gdy jestes tam.
};

INSTANCE Info_Mod_Lares_Banditenfestung2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung2_Condition;
	information	= Info_Mod_Lares_Banditenfestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mezczyzni w górach nie stanowia zagrozenia.";
};

FUNC INT Info_Mod_Lares_Banditenfestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung2_15_00"); //Mezczyzni w górach nie stanowia zagrozenia. To sa dawni znajomi z kolonii.
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung2_37_01"); //Cóz, dobrze, jesli tak sie tak powie, to chyba to prawda. Wtedy moge sie uspokoic.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lares_Lehrer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lehrer_Condition;
	information	= Info_Mod_Lares_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Lares_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Lares_Lehrer_37_00"); //Moge pomóc wam w inteligentniejszym podejsciu.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Lares moze mi pomóc byc bardziej umiejetny.");
};

var int Lares_LastPetzCounter;
var int Lares_LastPetzCrime;

INSTANCE Info_Mod_Lares_PMSchulden (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PMSchulden_Condition;
	information 	= Info_Mod_Lares_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lares_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lares_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Lares_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Lares_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Lares_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lares_LastPetzCounter);
		
			if (diff > 0)
			{
				Lares_Schulden = Lares_Schulden + (diff * 50);
			};
		
			if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lares_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lares_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_05"); //Pojawily sie nowe rzeczy.
		
		if (Lares_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Lares_LastPetzCrime == CRIME_THEFT)
		|| ( (Lares_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Lares_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lares_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Lares_Schulden			= 0;
			Lares_LastPetzCounter 	= 0;
			Lares_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Lares_Schulden);
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lares_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Ile to znów bylo?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Lares_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lares_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lares_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Lares_Schulden);

	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lares_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Ile to znów bylo?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lares_PETZMASTER   (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PETZMASTER_Condition;
	information 	= Info_Mod_Lares_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lares_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PETZMASTER_Info()
{
	Lares_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_02"); //Morderstwo jest powaznym wykroczeniem!

		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lares_Schulden = Lares_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy. Jestesmy na wojnie i potrzebujemy kazdego czlowieka, którego mozemy dostac.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_11"); //Nie bede tolerowal takiego zachowania w naszym kraju!
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_13"); //Jesli walczysz z riffem w miescie, to jest jedna rzecz....
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_14"); //Ale jesli zaatakujesz chlopów lub innych najemników, bede musial cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Lares_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_15_21"); //Ile?
	
	if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lares_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Lares_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lares_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Lares_Schulden);
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayNow_37_01"); //Dobrze! Doloze wszelkich staran, aby kazdy rolnik i najemnik dowiedzial sie o tym - w pewnym stopniu przywróci to Twoja reputacje.

	B_GrantAbsolution (LOC_FARM);
	
	Lares_Schulden			= 0;
	Lares_LastPetzCounter 	= 0;
	Lares_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lares_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Lares_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lares_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lares_Lernen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lernen_Condition;
	information	= Info_Mod_Lares_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Lares_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Lernen_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Lares_Lernen_37_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Lares_Lernen);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Lares_Pickpocket (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Pickpocket_Condition;
	information	= Info_Mod_Lares_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Lares_Pickpocket_Condition()
{
	C_Beklauen	(124, ItMi_Gold, 60);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_BACK, Info_Mod_Lares_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lares_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lares_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
};

FUNC VOID Info_Mod_Lares_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lares_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lares_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lares_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lares_EXIT (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_EXIT_Condition;
	information	= Info_Mod_Lares_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lares_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
