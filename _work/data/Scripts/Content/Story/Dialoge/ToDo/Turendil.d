INSTANCE Info_Mod_Turendil_Hi (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Hi_Condition;
	information	= Info_Mod_Turendil_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_QuestThree))
	&& (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_00"); //Jestes tam nareszcie, czekalem na ciebie.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_02"); //Jak zapewne slyszeliscie, pochodzimy z Tugettso, zielonej doliny polozonej bardzo daleko na zachód.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_03"); //Wszedzie rosna rosliny o dlugosci ramion, slychac brzeczenie pszczól miodnych, szeptanie przepysznych robaków miesnych.... zwariowany, wedruje.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_05_04"); //Tak wiec Tugettso zostalo ostatnio dotkniete plaga.

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "Nie jestem zainteresowany.", Info_Mod_Turendil_Hi_B);
	Info_AddChoice	(Info_Mod_Turendil_Hi, "Jaka plaga?", Info_Mod_Turendil_Hi_A);
};

FUNC VOID Info_Mod_Turendil_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_B_15_00"); //Nie jestem zainteresowany.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_B_05_01"); //Prosze! Jestescie nasza ostatnia nadzieja!

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "Ile kosztuje?", Info_Mod_Turendil_Hi_C);
};

FUNC VOID Info_Mod_Turendil_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_C_15_00"); //Ile kosztuje?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_C_05_01"); //To nie powinno byc twoim uszkodzeniem.

	Info_ClearChoices	(Info_Mod_Turendil_Hi);

	Info_AddChoice	(Info_Mod_Turendil_Hi, "Jaka plaga?", Info_Mod_Turendil_Hi_A);
};

FUNC VOID Info_Mod_Turendil_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_00"); //Jaka plaga?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_01"); //Gagoblinowa plaga. Wpadaja one w nasza doline i zginaja nasze galezie, wybijaja z drzew drewno opalowe, rozbijaja pszczoly, miazdza pyszne pluskwy miesne..... Jestes tylko zagrozeniem.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_02"); //I chcesz, abym ich wszystkich zabil? Samotny?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_03"); //Mozemy dac Ci kopie zapasowa. Bojownik i magik. Moge równiez dostarczyc Wam kilka eliksirów leczniczych.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_04"); //Hm, wszystko w porzadku.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_05"); //Bardzo dziekuje! Jestem wam niezmiennie wdzieczny!
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_06"); //Teraz nasza ukochana dolina jest uratowana, rosliny znowu beda rosnac, pszczoly beda znowu szumic, miesnymi pluskwami beda znów piszczec i...... um, dziekujemy.
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_07"); //Oto obiecane eliksiry lecznicze.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_08"); //Dziekuje, ale co z kopia zapasowa?
	AI_Output(self, hero, "Info_Mod_Turendil_Hi_A_05_09"); //Mozesz zabrac Struka z wojownikiem i Czarodzieja. Czekaja na Ciebie przy bramie.
	AI_Output(hero, self, "Info_Mod_Turendil_Hi_A_15_10"); //Dobrze, to zobacze cie pózniej.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 3);

	B_StartOtherRoutine	(Mod_1956_VMK_Struk_MT, "ATGATE");
	B_StartOtherRoutine	(Mod_1957_VMG_Thorge_MT, "ATGATE");

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Widocznie mieszkancy tego miejsca, Tugettso, cierpia na plage goblinów. Zgodzilem sie pomóc im pozbyc sie ich.");

	Info_ClearChoices	(Info_Mod_Turendil_Hi);
};

INSTANCE Info_Mod_Turendil_Wohin (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Wohin_Condition;
	information	= Info_Mod_Turendil_Wohin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Wohin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Wohin_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_00"); //Poczekac! Nie wiesz, jak sie tam dostac. Platforma, na której znajdowala sie wówczas ostrosc zostala przeksztalcona w teleporter.
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_01"); //Na górze jest Albert, wyjasnia jak go uzywac.
	AI_Output(hero, self, "Info_Mod_Turendil_Wohin_15_02"); //Dziekujemy za koncówke.
	AI_Output(self, hero, "Info_Mod_Turendil_Wohin_05_03"); //Dbaj o siebie.

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Stara platforma fokusowa jest teraz teleporterka. Powinienem udac sie do tego chlopaka Alberta i zapytac go jak to dziala. Wczesniej jednak musialem podniesc Thorge' a i Struka na bramkarzy, zeby nie musialem walczyc samotnie.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Turendil_Matronen (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Matronen_Condition;
	information	= Info_Mod_Turendil_Matronen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Matronen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Matronen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Matronen_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_00"); //Widze, ze wracasz. Powiedz mi wiec o tym. Czy pszczoly znów brzecza brzecza?
	AI_Output(hero, self, "Info_Mod_Turendil_Matronen_15_01"); //(przerwania) Tak, oni to robia. Osuwisko spowodowane przez czlowieka spowodowalo zawalenie sie systemu tunelu.
	AI_Output(hero, self, "Info_Mod_Turendil_Matronen_15_02"); //Zatrzymalem potomstwo i postawilem je przed wymiarem sprawiedliwosci. Genn i inni zrobia reszte na miejscu.
	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_03"); //Ciesze sie, ze moge to uslyszec. Oto Twoja nagroda.

	CreateInvItems	(self, ItMi_Gold, 500);
	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Turendil_Matronen_05_04"); //Faice ponownie szuka dla ciebie. Dlaczego nie idziesz do niego prosto?

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Dostalem moja nagrode.");
	B_SetTopicStatus	(TOPIC_MOD_FERCO_GOBLIN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Turendil_Faice (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Faice_Condition;
	information	= Info_Mod_Turendil_Faice_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_RitualRunning))
	&& (Npc_IsInState(Mod_4019_VMG_Faice_MT, ZS_Drained))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Faice_Info()
{
	AI_GotoNpc	(self, Mod_4019_VMG_Faice_MT);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Turendil_Faice_05_00"); //To okropne!

	B_StartOtherRoutine	(Mod_4020_VMG_Hermy_MT, "START");
	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "START");
	B_StartOtherRoutine	(Mod_1625_VMG_Neol_MT, "START");
	B_StartOtherRoutine	(Mod_1628_VMG_Anor_MT, "START");
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	Info_AddChoice	(Info_Mod_Turendil_Faice, "Mimo wszystko byl kruchy.", Info_Mod_Turendil_Faice_B);
	Info_AddChoice	(Info_Mod_Turendil_Faice, "Jak to moze byc mozliwe?", Info_Mod_Turendil_Faice_A);
};

FUNC VOID Info_Mod_Turendil_Faice_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_B_15_00"); //Mimo wszystko byl kruchy.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_B_05_01"); //Moze byc stary, ale nie jest starcem! Jak mozna powiedziec cos takiego?
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	Info_AddChoice	(Info_Mod_Turendil_Faice, "To prawda.", Info_Mod_Turendil_Faice_D);
	Info_AddChoice	(Info_Mod_Turendil_Faice, "Przykro mi z tego powodu.", Info_Mod_Turendil_Faice_C);
};

FUNC VOID Info_Mod_Turendil_Faice_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_E_05_00"); //Moze jego zwój zostal zatruty mowa i trucizna dostala sie do palców. Albo tez jego przywolujace zaklecia zostaly blednie opisane.
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_E_15_01"); //Jak mozemy sie dowiedziec?
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_E_05_02"); //Wrócmy jutro, wtedy prawdopodobnie bedziemy wiedziec wiecej.
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	AI_StopProcessInfos	(self);

	Mod_VMG_Faice_Gift = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Jutro dowiem sie, co dokladnie stalo sie z Faice, kiedy upadl podczas rytualu.");
};

FUNC VOID Info_Mod_Turendil_Faice_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_A_15_00"); //Jak to moze byc mozliwe?

	Info_Mod_Turendil_Faice_E();
};

FUNC VOID Info_Mod_Turendil_Faice_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_D_15_00"); //To prawda.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_D_05_01"); //Wejdzcie stad, nieszczesliwy czlowiek i nie wracajcie tu juz nigdy wiecej!
	
	Info_ClearChoices	(Info_Mod_Turendil_Faice);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turendil_Faice_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_C_15_00"); //Przykro mi z tego powodu.
	AI_Output(self, hero, "Info_Mod_Turendil_Faice_C_05_01"); //Tak wlasnie rozumiem.
	AI_Output(hero, self, "Info_Mod_Turendil_Faice_C_15_02"); //Ale co sie teraz stalo?

	Info_Mod_Turendil_Faice_E();
};

INSTANCE Info_Mod_Turendil_FaiceGifty (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_FaiceGifty_Condition;
	information	= Info_Mod_Turendil_FaiceGifty_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_FaiceGifty_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Faice))
	&& (Mod_VMG_Faice_Gift > 0)
	&& (Mod_VMG_Faice_Gift < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_00"); //Jest pan tam wreszcie. Czekalismy na Ciebie.
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_15_01"); //Co sie dowiedziales/as?
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_02"); //Widocznie Faice zostal zatruty. Nie jest to jednak trucizna na co dzien, ale specjalna trucizna.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_03"); //Wydaje mi sie, ze znów bedziesz musial udac sie do Tugettso, bo wiem tylko stamtad, ze roslina, której potrzebujemy do antidotum rosnie.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_05_04"); //Taka piekna, duza roslina. Ona ma fioletowe pasemka, wiesz. l-- er er..... Gdzie bylem? Oh, tak. Musimy równiez znalezc winowajce.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "Jeszcze raz.", Info_Mod_Turendil_FaiceGifty_B);
	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "Pomoc bylaby zaszczytem.", Info_Mod_Turendil_FaiceGifty_A);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_B_15_00"); //Jeszcze raz.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_B_05_01"); //Prosze! Musisz nam pomóc!
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "Nie, nie wiecej.", Info_Mod_Turendil_FaiceGifty_D);
	Info_AddChoice	(Info_Mod_Turendil_FaiceGifty, "No, co ja robie?", Info_Mod_Turendil_FaiceGifty_C);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_E_05_00"); //Dobrze, przygotuj sie do zobaczenia Alberta. On da ci kamien do naladowania akumulatora.
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_E_15_01"); //Dziekuje panstwu.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Faice jest zatruty, a ja znajde antidotum w Tugettso. Od Alberta mam dostac kolejny kamien ladujacy.");
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_A_15_00"); //Pomoc bylaby zaszczytem.

	Info_Mod_Turendil_FaiceGifty_E();
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_D_15_00"); //Nie, nie wiecej.
	AI_Output(self, hero, "Info_Mod_Turendil_FaiceGifty_D_05_01"); //Nastepnie idz, ale pomysl o tym. Od tego moze zalezec nasz los.
	
	Info_ClearChoices	(Info_Mod_Turendil_FaiceGifty);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turendil_FaiceGifty_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FaiceGifty_C_15_00"); //No, co ja robie?

	Info_Mod_Turendil_FaiceGifty_E();
};

INSTANCE Info_Mod_Turendil_Mendulus (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Mendulus_Condition;
	information	= Info_Mod_Turendil_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 9)
	&& (Npc_HasItems(hero, ItPl_Mendulus) > 0)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_05_00"); //Dostales chwast?
		
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "Nie, nie moglem niczego znalezc.", Info_Mod_Turendil_Mendulus_B);
	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "Tak, tutaj jest zaklad.", Info_Mod_Turendil_Mendulus_A);
};

FUNC VOID Info_Mod_Turendil_Mendulus_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_B_15_00"); //Nie, nie moglem niczego znalezc.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_B_05_01"); //Czy jestes powazny? Nie mozesz byc powazny!
	
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "Jestem zupelnie powazny.", Info_Mod_Turendil_Mendulus_D);
	Info_AddChoice	(Info_Mod_Turendil_Mendulus, "Nie, to byl tylko zart. Oto roslina.", Info_Mod_Turendil_Mendulus_C);
};

FUNC VOID Info_Mod_Turendil_Mendulus_E()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_E_05_00"); //Dzieki. Jestes naszym bohaterem. Zrobie wszystko, aby go uzdrowic. Mozesz szukac winowajcy tak dlugo, jak chcesz. Wystarczy porozmawiac z innymi.
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_E_15_01"); //Bede, to zrobie.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_E_05_02"); //Dbaj o siebie.
	
	Info_ClearChoices	(Info_Mod_Turendil_Mendulus);

	AI_StopProcessInfos	(self);

	Mod_VMG_FaiceGifty_Gift = 10;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Dalem Turendilowi ziolo Mendulusa. Zapytal mnie, kto moze byc winny.");
};

FUNC VOID Info_Mod_Turendil_Mendulus_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_A_15_00"); //Tak, tutaj jest zaklad.

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	Info_Mod_Turendil_Mendulus_E();
};

FUNC VOID Info_Mod_Turendil_Mendulus_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_D_15_00"); //Jestem zupelnie powazny.
	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_D_05_01"); //Byla pani nasza ostatnia nadzieja. Obawiam sie, ze to koniec transformacji magów.
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_D_15_02"); //Przypomina mi to..... Czy potrzebujesz tej rosliny?

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	AI_Output(self, hero, "Info_Mod_Turendil_Mendulus_D_05_03"); //Tak, dokladnie!

	Info_Mod_Turendil_Mendulus_E();
};

FUNC VOID Info_Mod_Turendil_Mendulus_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Mendulus_C_15_00"); //Nie, to byl tylko zart. Oto roslina.

	B_GiveInvItems	(hero, self, ItPl_Mendulus, 1);

	Info_Mod_Turendil_Mendulus_E();
};

INSTANCE Info_Mod_Turendil_Furt (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Furt_Condition;
	information	= Info_Mod_Turendil_Furt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Furt_Condition()
{
	if (Mod_VMG_FaiceGifty_Gift == 12)
	|| (Mod_VMG_FaiceGifty_Gift == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Furt_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_00"); //A co? Co sie dowiedziales/as?

	if (Mod_VMG_FaiceGifty_Gift == 12)
	{
		AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_01"); //Furt zatruty czar Faice' a. Odeslalem go.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_02"); //Moze tego nie powinno sie bylo robic. Ale dobrze jest wiedziec, kto to byl i nie jest juz z nami.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_03"); //Oto Twoja nagroda.

		B_GiveInvItems	(self, hero, ItMi_Gold, 250);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_04"); //Furt zatruty czar Faice' a. Pozostawiam jego los w twoich rekach.
		AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_05"); //Dobrze wykonane. Bedziemy decydowac o jego losie. Oto Twoja nagroda i kilka zaklec.

		CreateInvItems	(hero, ItMi_Gold, 1000);
		CreateInvItems	(hero, ItSc_TrfBloodfly, 3);

		B_ShowGivenThings	("1000 zwojów zlota i 3 zaklec zachowanych rolek");
	};

	B_GivePlayerXP	(500);

	AI_Output(hero, self, "Info_Mod_Turendil_Furt_15_06"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Turendil_Furt_05_07"); //Mysle, ze Anor ma dla Ciebie cos jeszcze do zrobienia. Wróccie do mnie za kilka dni.

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Otrzymalem moja nagrode od Turendila. Sprawa juz nie jest w moich rekach.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HEILUNG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Turendil_FurtNextDay (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_FurtNextDay_Condition;
	information	= Info_Mod_Turendil_FurtNextDay_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_FurtNextDay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anor_NickTot))
	&& ((Mod_VMG_FaiceGifty_Gift == 12)
	|| (Mod_VMG_FaiceGifty_Gift == 13))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_00"); //Tam jestes, szukam cie.
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_15_01"); //Co sie dzieje?

	if (Mod_VMG_FaiceGifty_Gift == 12)
	{
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_02"); //Chce, abyscie udali sie do Tugettso i dowiedzieli sie, co zatruto trucizna Faice, abysmy mogli jak najszybciej zrobic antidotum.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_03"); //Pytalismy Furt i powiedzial nam, ze znajdziemy jego mistrza w Tugettso. Powiedzial, ze to jeden z nas! Niewiarygodny!
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_04"); //Chce, abyscie sie do tego postapili i, jesli to mozliwe, znalezli zatruta trucizne Faice.
		AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_05_05"); //Mozemy wiec przyspieszyc jego uzdrowienie poprzez wykonanie antidotum.
	};

	Info_ClearChoices	(Info_Mod_Turendil_FurtNextDay);

	Info_AddChoice	(Info_Mod_Turendil_FurtNextDay, "Bede w drodze od razu.", Info_Mod_Turendil_FurtNextDay_B);
	Info_AddChoice	(Info_Mod_Turendil_FurtNextDay, "Co teraz dzieje sie z Furtem?", Info_Mod_Turendil_FurtNextDay_A);
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_B_15_00"); //Bede w drodze od razu.
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_B_05_01"); //Dziekuje bardzo. Jesli dostaniesz zasadzke, której mam nadzieje nie, masz tutaj kilka eliksirów.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 5);

	Log_CreateTopic	(TOPIC_MOD_FAICE_GIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_GIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Nakazano mi wrócic do Tugettso i znalezc trucizne, która zatrul Faice. Do Alberta.");

	Info_ClearChoices	(Info_Mod_Turendil_FurtNextDay);
};

FUNC VOID Info_Mod_Turendil_FurtNextDay_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_FurtNextDay_A_15_00"); //Co teraz dzieje sie z Furtem?
	AI_Output(self, hero, "Info_Mod_Turendil_FurtNextDay_A_05_01"); //Nie zgadzamy sie jeszcze z tym, ale juz wkrótce dowiedza sie panstwo, jak bedzie on postepowal.

	Info_Mod_Turendil_FurtNextDay_B();
};

INSTANCE Info_Mod_Turendil_Trador (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Trador_Condition;
	information	= Info_Mod_Turendil_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Turendil_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Dean))
	&& (Npc_HasItems(hero, ItPl_Venena) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_00"); //Oto znów znów, nareszcie. Co mozesz mi powiedziec?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_01"); //Gdzie mam zaczac?
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_02"); //Trucizna. Czy dowiedziales sie skad pochodzi?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_03"); //Tak, trucizna pochodzi z zakladu w Venenie. Oto kopia.

	B_GiveInvItems	(hero, self, ItPl_Venena, 1);

	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_04"); //Dzieki. I czy dowiedziales sie, kto z magów jest za nim?
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_05"); //Nie jest magikiem. Byl to czlowiek o nazwisku Trador, wspólnik Furt.
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_15_06"); //Czarodziej zabil dziekana i wlozyl mu szate.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_05_07"); //To okropne! Dziekuje wam za klopoty. Czy moge po prostu dowiedziec sie, jak uchronil go przed smiercia?

	Info_ClearChoices	(Info_Mod_Turendil_Trador);

	Info_AddChoice	(Info_Mod_Turendil_Trador, "Zatrudnil do tego wezwany golem.", Info_Mod_Turendil_Trador_B);
	Info_AddChoice	(Info_Mod_Turendil_Trador, "Nie chce o tym mówic.", Info_Mod_Turendil_Trador_A);
};

FUNC VOID Info_Mod_Turendil_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_C_15_00"); //Co dzieje sie teraz?
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_C_05_01"); //Bedziemy o tym rozmawiac. Wróc jutro.

	B_GivePlayerXP	(500);

	Mod_VMG_Turendil_Trador_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Turendil_Trador);

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Zglosilem sie do Turendilu i otrzymalem nagrode. Mam czekac dzien, az magicy beda rozmawiac.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_GIFT, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "INSEL");
};

FUNC VOID Info_Mod_Turendil_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_B_15_00"); //Zatrudnil do tego wezwany golem.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_B_05_01"); //Ach, on zna nasza magie. To zle. Tutaj jest to dla twojego problemu.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_TrfBloodfly, 1);

	B_ShowGivenThings	("300 Zloto i zwoje odebrane");

	Info_Mod_Turendil_Trador_C();
};

FUNC VOID Info_Mod_Turendil_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Trador_A_15_00"); //Nie chce o tym mówic.
	AI_Output(self, hero, "Info_Mod_Turendil_Trador_A_05_01"); //Okay. Oto Twoja wyplata.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	Info_Mod_Turendil_Trador_C();
};

INSTANCE Info_Mod_Turendil_TradorBesprochen (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_TradorBesprochen_Condition;
	information	= Info_Mod_Turendil_TradorBesprochen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cokolwiek nowego?";
};

FUNC INT Info_Mod_Turendil_TradorBesprochen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Trador))
	&& (Wld_GetDay() > Mod_VMG_Turendil_Trador_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_TradorBesprochen_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_00"); //Cokolwiek nowego?
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_01"); //Du musst unbedingt zurück nach Tugettso! Sämtliche Runen "Summon Golem" wurden dort entwendet!
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_02"); //Podejrzewamy, ze Trador jest za tym.

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_03"); //Poza tym Furt uciekl przed nami przez sztuczke.
	};

	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_04"); //Bede w drodze od razu.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_05"); //Och, jeszcze jedna rzecz. Ostatnio teleporter mial sporadyczne przerwa w pracy.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_06"); //Jesli nie dotrzesz do Tugettso, a mam nadzieje, ze tego nie zrobisz, na pewno podam Ci kilka ról transformacyjnych.

	B_GiveInvItems	(self, hero, ItSc_TrfBloodfly, 3);

	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_07"); //Wiec jestes zignorowany przez zbyt duze potwory.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorBesprochen_15_08"); //Mysle, ze tego nie potrzebuje, ale dziekuje.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorBesprochen_05_09"); //Dbaj o siebie.

	Log_CreateTopic	(TOPIC_MOD_TURENDIL_GOLEM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Mam nowe zadanie, aby wrócic do Tugettso i dowiedziec sie, gdzie runy Golem poszly.");
};

INSTANCE Info_Mod_Turendil_TradorTot (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_TradorTot_Condition;
	information	= Info_Mod_Turendil_TradorTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu znów jestem.";
};

FUNC INT Info_Mod_Turendil_TradorTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_TradorTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_00"); //Tu znów jestem.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_01"); //Widze, ze jestes zywy. Jak Pan/Pani byl/a?
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_02"); //Najpierw wyszedlem w odleglej dolinie, poniewaz Trador manipulowal teleporterami.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_03"); //Wiec on za tym stoi!
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_04"); //Tak, po tym uaktywnilem teleportera w dolinie za pomoca dwóch pustelników i wysiadlem w Tugettso.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_05"); //Tam spotkalem sie z Tradorem. Nie spodziewal sie mnie, ale wciaz byl trudnym orzechem do zlamania.
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_15_06"); //Razem go pokonalismy i zabilem go.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_05_07"); //To dobra wiadomosc. Czy mial z nim runy?

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	Info_AddChoice	(Info_Mod_Turendil_TradorTot, "Nie, boje sie nie.", Info_Mod_Turendil_TradorTot_B);

	if (Npc_HasItems(hero, ItRu_SumGol) >= 2)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 5)
	{
		Info_AddChoice	(Info_Mod_Turendil_TradorTot, "Tak, tutaj sa.", Info_Mod_Turendil_TradorTot_A);
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_B()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_B_15_00"); //Nie, boje sie nie.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_B_05_01"); //Szkoda. Bedziemy nadal jej szukac.

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	Info_AddChoice	(Info_Mod_Turendil_TradorTot, "Zycze powodzenia.", Info_Mod_Turendil_TradorTot_D);
	
	if (Npc_HasItems(hero, ItRu_SumGol) >= 2)
	&& (Npc_HasItems(hero, ItSc_SumGol) >= 5)
	{
		Info_AddChoice	(Info_Mod_Turendil_TradorTot, "To byl tylko zart. Oto runy.", Info_Mod_Turendil_TradorTot_C);
	};
};

FUNC VOID Info_Mod_Turendil_TradorTot_A()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_A_15_00"); //Tak, tutaj sa.

	Npc_RemoveInvItems	(hero, ItSc_SumGol, 5);
	Npc_RemoveInvItems	(hero, ItRu_SumGol, 2);

	B_ShowGivenThings	("2 runy i 5 przewijanych odcinków");

	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_A_05_01"); //Dziekuje bardzo. Oto Twoja nagroda.

	CreateInvItems	(hero, ItSc_TrfBloodfly, 1);
	CreateInvItems	(hero, ItMi_Gold, 500);

	B_ShowGivenThings	("500 Zloto i zwoje odebrane");

	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_A_15_02"); //Dzieki. Bede teraz na drodze.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_A_05_03"); //Zrób to. Rozmawiaj z Fa w odpowiednim czasie. Chcial od ciebie czegos.

	B_GivePlayerXP	(750);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Zadanie zostalo zakonczone. Turendil powiedzial mi, ze Faice chcial cos ode mnie.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Turendil_TradorTot_D()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_D_15_00"); //Zycze powodzenia.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_D_05_01"); //Rozmawiaj z Fa w odpowiednim czasie. Chcial od ciebie czegos.

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Zadanie zostalo zakonczone. Turendil powiedzial mi, ze Faice chcial cos ode mnie.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Turendil_TradorTot_C()
{
	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_C_15_00"); //To byl tylko zart. Oto runy.

	Npc_RemoveInvItems	(hero, ItSc_SumGol, 5);
	Npc_RemoveInvItems	(hero, ItRu_SumGol, 2);

	B_ShowGivenThings	("2 runy i 5 przewijanych odcinków");

	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_C_05_01"); //Nie rób tego ponownie! W kazdym razie dziekuje. Oto nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 350);

	AI_Output(hero, self, "Info_Mod_Turendil_TradorTot_C_15_02"); //Dzieki. Bede teraz na drodze.
	AI_Output(self, hero, "Info_Mod_Turendil_TradorTot_C_05_03"); //Zrób to. Rozmawiaj z Fa w odpowiednim czasie. Chcial od ciebie czegos.

	B_GivePlayerXP	(500);

	Info_ClearChoices	(Info_Mod_Turendil_TradorTot);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Zadanie zostalo zakonczone. Turendil powiedzial mi, ze Faice chcial cos ode mnie.");
	B_SetTopicStatus	(TOPIC_MOD_TURENDIL_GOLEM, LOG_SUCCESS);
};

INSTANCE Info_Mod_Turendil_WerBistDu (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_WerBistDu_Condition;
	information	= Info_Mod_Turendil_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Turendil_WerBistDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turendil_WerBistDu_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Turendil_WerBistDu_05_00"); //Nazywam sie Turendil. Jestem zastepca szefa Faice, naszym szefem. Jest teraz bardzo zajety.
	AI_Output(self, hero, "Info_Mod_Turendil_WerBistDu_05_01"); //Jak moge Ci pomóc?
};

INSTANCE Info_Mod_Turendil_Woher (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Woher_Condition;
	information	= Info_Mod_Turendil_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad pochodzisz?";
};

FUNC INT Info_Mod_Turendil_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_Woher_15_00"); //Skad pochodzisz?
	AI_Output(self, hero, "Info_Mod_Turendil_Woher_05_01"); //Pochodzimy z malej doliny zwanej Tugettso. Dolina ta jest czysta przyroda.
	AI_Output(self, hero, "Info_Mod_Turendil_Woher_05_02"); //Kiedy nadejdzie czas, byc moze znajdziesz sie tam gdzies.
};

INSTANCE Info_Mod_Turendil_WasHier (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_WasHier_Condition;
	information	= Info_Mod_Turendil_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co ty tu robisz?";
};

FUNC INT Info_Mod_Turendil_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_WasHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Turendil_WasHier_15_00"); //Co ty tu robisz?
	AI_Output(self, hero, "Info_Mod_Turendil_WasHier_05_01"); //Odkrywamy te doline i starozytna wiedze, która mozna tu znalezc.
};

INSTANCE Info_Mod_Turendil_BACK (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_BACK_Condition;
	information	= Info_Mod_Turendil_BACK_Info;
	permanent	= 1;
	important	= 0;
	description	= "(wyjscie z pomieszczenia)";
};

FUNC INT Info_Mod_Turendil_BACK_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_TEMPELRUIN07") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turendil_BACK_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "LOCATION_28_01");
};

INSTANCE Info_Mod_Turendil_Pickpocket (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_Pickpocket_Condition;
	information	= Info_Mod_Turendil_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Turendil_Pickpocket_Condition()
{
	C_Beklauen	(143, ItSc_TrfMeatbug, 1);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

	Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_BACK, Info_Mod_Turendil_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Turendil_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Turendil_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Turendil_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Turendil_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Turendil_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Turendil_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Turendil_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Turendil_EXIT (C_INFO)
{
	npc		= Mod_1955_VMG_Turendil_MT;
	nr		= 1;
	condition	= Info_Mod_Turendil_EXIT_Condition;
	information	= Info_Mod_Turendil_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Turendil_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turendil_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
