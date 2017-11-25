INSTANCE Info_Mod_Fisk_NW_Hi (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_Hi_Condition;
	information	= Info_Mod_Fisk_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fisk_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fisk_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_00"); //Ty tutaj? Och, czlowiek, znów znów znów znajoma twarz.
	AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_01"); //Uciekles przed nalotem orków, widze.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_02"); //Tak, czlowiek. Hej, ostatnich kilka dni bylo pieklo, mówie wam.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_03"); //Kiedy orki przyszly noca do naszego obozu, wybuchl chaos.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_04"); //Wszystko dzialo sie tak szybko.... Plynalem przez obóz w ciemnosci, nie wiedzac dokladnie, dokad zmierzam.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_05"); //Potem znalazlem sie na tylnym wyjsciu z obozu.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_06"); //Widzialem, ze on stal w pozycji otwartej i przez dlugi czas biegal bezmyslnie.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_07"); //Ale to bylo rój z brudnymi draniemi.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_08"); //Przez nastepne kilka godzin byl to ciagly wyscig i ukrywanie sie, az w koncu bylem bezpieczny.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_09"); //W drodze z doliny spotkalem pozostalych trzech chlopców.... Wiecej ale naprawde nie sadze, aby ktokolwiek inny to zrobil.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_10"); //Ale gdybys mial natknac sie na kogos innego.... W kazdym razie, prosze mi powiedziec, czy pan?

	Log_CreateTopic	(TOPIC_MOD_LEISEHOFFNUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEISEHOFFNUNG, LOG_RUNNING);

	if (hero.guild == GIL_PAL)
	{
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_11"); //Oczywiscie, ja bede. Ale co zamierzacie teraz zrobic?
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_12"); //Tak naprawde nie wiem. Zastanawialem sie, czy nie powinienem pójsc do miasta.
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_13"); //Mam nadzieje, ze moja reputacja jako handlowca przeniosla sie na to daleko i pozwolili mi.
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_14"); //Tak, miasto jest z pewnoscia dobre dla doswiadczonego handlowca.
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_15"); //Obydwaj straznicy miejscy beda mogli pokazac droge.....
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_16"); //Dzieki wiele, dzieki czlowiekowi. Jestem w waszym dlugu.

		B_LogEntry_More	(TOPIC_MOD_MILIZ_FREUNDFEIND, TOPIC_MOD_LEISEHOFFNUNG, "Grupa w Bengars Hof jest czysta i jedzie do miasta.", "W Khorinis spotkalem sie z ryzykiem. Z nielicznymi kompanami zdolal uciec z orków. Watpi, czy ktos inny wyszedl z obozu. Jesli jednak powinienem po drodze spotkac innych ocalalych, to chce, zebym mu to powiedzial.");

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(Mod_109_MIL_Rick_NW, "START");
		B_StartOtherRoutine	(Mod_118_MIL_Rumbold_NW, "START");

		B_StartOtherRoutine	(Mod_7682_STT_Fisk_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7683_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7684_STT_Schatten_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7685_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_17"); //Oczywiscie, ja bede. Zycze powodzenia.
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_18"); //Dziekuje..... Móglbym to naprawde wykorzystac.

		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "W Khorinis spotkalem sie z ryzykiem. Z nielicznymi kompanami zdolal uciec z orków. Watpi, czy ktos inny wyszedl z obozu. Jesli jednak powinienem po drodze spotkac innych ocalalych, to chce, zebym mu to powiedzial.");
	};
};

INSTANCE Info_Mod_Fisk_NW_Markt (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_Markt_Condition;
	information	= Info_Mod_Fisk_NW_Markt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fisk_NW_Markt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fisk_NW_Markt_Info()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_00"); //Ach, tam jestescie. Dziekuje za pomoc.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_01"); //W przeciwnym razie dotarcie do miasta byloby znacznie trudniejsze.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_02"); //Ale co to sa slowa.... Oto niektóre rzeczy, które mialem przy sobie, gdy ucieklem z obozu.

	B_ShowGivenThings	("50 zlota, 3 kawalków rudy, 1 wezwanie do snu i 2 otrzymane esencje manicure");

	CreateInvItems	(hero, ItMi_Gold, 50);
	CreateInvItems	(hero, ItMi_Nugget, 3);
	CreateInvItems	(hero, ItMi_Traumruf, 1);
	CreateInvItems	(hero, ItPo_Mana_01, 2);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Fisk_NW_LeiseHoffnung (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_LeiseHoffnung_Condition;
	information	= Info_Mod_Fisk_NW_LeiseHoffnung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bylem troche na drodze..... i spotkalem kogos z tego starego obozu.";
};

FUNC INT Info_Mod_Fisk_NW_LeiseHoffnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_15_00"); //Bylem troche na drodze..... i spotkalem kogos z tego starego obozu.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_12_01"); //(agresywny) Co? Do kogo?

	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);

	Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, DIALOG_BACK, Info_Mod_Fisk_NW_LeiseHoffnung_BACK);

	if (Mod_Fisk_LH_Mud == 0)
	&& (Mod_Mud_Unterwegs == 3)
	{
		Mod_Fisk_LeiseHoffnung += 1;

		Mod_Fisk_LH_Mud = 1;
	};
	if (Mod_Fisk_LH_Mud == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_REL_Hi))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "Bloto chroni owce w Relendel.", Info_Mod_Fisk_NW_LeiseHoffnung_C);
	};
	if (Mod_Fisk_LH_Fingers == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Kap4))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "Palce sa z bandytami. Wydaje sie, ze ma racje.", Info_Mod_Fisk_NW_LeiseHoffnung_B);
	};
	if (Mod_Fisk_LH_Scatty == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Scatty_Kap4))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "Pod bagnem wbieglem do Scatty.", Info_Mod_Fisk_NW_LeiseHoffnung_A);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_D()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_00"); //Dziekuje jednak bardzo za te informacje.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_01"); //Wiedzac, ze to prawdziwa ulga.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_02"); //Ale opowiem ci kilka sztuczek, które musisz wziac pod uwage podczas handlu.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_03"); //Jesli naprawde szukasz produktu, nie wpuszczaj go do srodka.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_04"); //Przede wszystkim udawaj, ze jestes troche zainteresowany, proponuj niewielkie kwoty i wahaj sie akceptowac wyzsze oferty.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_05"); //Wtedy nie przyciagniesz zadnej uwagi, nikt nie bedzie licytowal, a krupier zostawi ja Tobie po znacznie nizszej cenie, poniewaz jest pewien, ze nie jestes sklonny dac za nia wiecej.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_06"); //Bluffing to polowa bitwy.

	B_GivePlayerXP	(600);

	B_RaiseHandelsgeschick (10);

	B_SetTopicStatus	(TOPIC_MOD_LEISEHOFFNUNG, LOG_SUCCESS);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_BACK()
{
	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_C()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_C_15_00"); //Bloto chroni owce w Relendel.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_C_12_01"); //Co? Mud? Jesli na pewno nie spodziewalem sie tego od kogos, to od niego.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_C_12_02"); //Ale przynajmniej. Jesli nawet udalo mu sie to zrobic, szanse sa dobre, ze inni uciekli z ich zycia.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Mud = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_B()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_B_15_00"); //Palce sa z bandytami. Wydaje sie, ze ma racje.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_B_12_01"); //Palce, wiec. Mistrz talentów zlodziejów po raz kolejny udowodnil swoja sztuke.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_B_12_02"); //Zdejmuje mu czapke.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Fingers = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_A()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_A_15_00"); //Pod bagnem wbieglem do Scatty.
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_A_15_01"); //Teraz pozwala mu sie chronic nowicjuszy podczas zniw bagiennych.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_A_12_02"); //Szkocki, ten straznik. Tak, jesli ktos sie z tym usunie, to na pewno ma.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Scatty = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

INSTANCE Info_Mod_Fisk_NW_EXIT (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_EXIT_Condition;
	information	= Info_Mod_Fisk_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fisk_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fisk_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
