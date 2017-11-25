INSTANCE Info_Mod_Elena_Hi (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hi_Condition;
	information	= Info_Mod_Elena_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Elena_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elena_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hi_15_00"); //Jak to robisz?
	AI_Output(self, hero, "Info_Mod_Elena_Hi_16_01"); //Mam racje. Czego od mnie oczekujesz?
	AI_Output(hero, self, "Info_Mod_Elena_Hi_15_02"); //Co dostales za mnie?
	AI_Output(self, hero, "Info_Mod_Elena_Hi_16_03"); //Móglbym wam sprzedac kilka rzeczy. Ale nie ma nic wiecej.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_ONAR, "Elena moze mi sprzedac jakies towary.");
};

INSTANCE Info_Mod_Elena_Hexenparty_01 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_01_Condition;
	information	= Info_Mod_Elena_Hexenparty_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_01_Condition()
{
	if (Mod_TrfWoman == 1)
	|| ((Mod_WM_Boeden == 13)
	&& (Mod_WM_Boeden == 14))
	&& (Npc_GetDistToWP(hero, "NW_BIGFARM_FOREST_08") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_16_00"); //Co Pan tutaj robi? Czuje magiczne zdolnosci w Tobie i restauracji poteznego demona.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_16_01"); //Nie wydaje Ci sie, ze nie jest to zwykla chlopska kobieta, bo inaczej polowalibysmy na ciebie do diabla. Wiec mówcie!

	B_RemoveNpc	(Mod_7198_HEX_AttraktiveFrau_NW);
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Chce dolaczyc do waszego siostry.", Info_Mod_Elena_Hexenparty_01_C);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Chcialem tylko sie rozejrzec.", Info_Mod_Elena_Hexenparty_01_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Jestem po to, zeby cie zniszczyc.", Info_Mod_Elena_Hexenparty_01_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_C()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_C_15_00"); //Chce dolaczyc do waszego siostry.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_C_16_01"); //(smiech) Nowy pretendent do naszego przymierza.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_C_16_02"); //(powazne) Faktycznie, twoje magiczne zdolnosci mówia za ciebie, ale zadaja równiez kilka pytan: Gdzie sie ich nauczyles?
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Nie pamietam.", Info_Mod_Elena_Hexenparty_01_F);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Nauczylem sie ich samemu.", Info_Mod_Elena_Hexenparty_01_E);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Nauczyl mnie magik wody.", Info_Mod_Elena_Hexenparty_01_D);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_B_15_00"); //Chcialem tylko sie rozejrzec.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_B_16_01"); //Glupota mysle, ze próbujesz zrobic z mnie glupote. Powiedz mi, czego teraz szukasz i zastanów sie nad tym, co mówisz.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Chce dolaczyc do waszego siostry.", Info_Mod_Elena_Hexenparty_01_C);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Jestem po to, zeby cie zniszczyc.", Info_Mod_Elena_Hexenparty_01_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_A_15_00"); //Jestem po to, zeby cie zniszczyc.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_A_16_01"); //Co? Glupiec nie ma pojecia, kto jest tutaj przeciwko tobie!
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_A_16_02"); //Chodzcie, siostry, pokazcie jej jak mamy do czynienia z nieproszonymi goscmi.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_104_BAU_Rega_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_1403_BAU_Baeuerin_NW, hero, AR_Kill, 0);

	Mod_HexenAttack = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_G()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_00"); //Prawda jest, ze chcemy dac Ci szanse. Jesli udowodniles, ze jestes godzien naszej siostry, powitamy Cie w naszej wspólnocie.
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_G_15_01"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_02"); //Pepe od dawna jest ciernia po naszej stronie. On jest zbyt blisko miejsca, w którym sie ukrywamy.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_03"); //Zapraszamy go do malej wizyty..... i dziesiatego stada. Jestesmy tylko gonna ogladac tym razem.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_04"); //To powinno wystarczyc, aby uchronic go w przyszlosci od lasu, abysmy mogli kontynuowac nasza prace nad chaosem bez zaklócen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_05"); //Zrób te zaczarowana, wojenna skóre, wlóz ja i podazaj za nami.

	B_GiveInvItems	(self, hero, ItRu_Verwandlungsfell, 1);

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_06"); //Jesli chcesz, moge równiez nauczyc cie, abys uzywal twojej formy zwierzecej bardziej umiejetnie, oswoil twoje agresywne instynkty, zjadl tusze i pozwolil innym wilkom i wojownikom pójsc za toba.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_07"); //Ponadto, dzielac sie doswiadczeniem swojej zwierzecej postaci jako istoty ludzkiej, z czasem zdobedziesz sile i wladze jako wojna.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	if (hero.lp >= 3)
	{
		Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Naucz mnie jak lepiej kontrolowac forme zwierzat. (3 punkty edukacyjne)", Info_Mod_Elena_Hexenparty_01_H);
	};

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Idzmy dalej.", Info_Mod_Elena_Hexenparty_01_I);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_F()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_F_15_00"); //Nie pamietam.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_F_16_01"); //Hmm, stracila pamiec. Spotkanie z demonem moze oczywiscie cos takiego spowodowac.
	
	Info_Mod_Elena_Hexenparty_01_G();
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_E()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_E_15_00"); //Nauczylam sie sama.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_E_16_01"); //Imponujaca, musisz miec w sobie krew czarownicy.
	
	Info_Mod_Elena_Hexenparty_01_G();
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_D()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_D_15_00"); //Nauczyl mnie magik wody.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_D_16_01"); //Chcesz mnie wysmiewac! Pozwólcie im, siostrom....
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_104_BAU_Rega_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_1403_BAU_Baeuerin_NW, hero, AR_Kill, 0);

	Mod_HexenAttack = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_I()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_I_15_00"); //Idzmy dalej.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Niewiarygodne. Czarownice w rzeczywistosci upadly na moje okladki. Mialam polozyc warghaut i uciekac z siostrami Pepe.");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_H()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_H_15_00"); //Naucz mnie jak lepiej kontrolowac forme zwierzat.

	hero.lp -= 3;

	Mod_WM_Tiergestalt = 1;
	
	Info_Mod_Elena_Hexenparty_01_I();
};

INSTANCE Info_Mod_Elena_Hexenparty_07 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_07_Condition;
	information	= Info_Mod_Elena_Hexenparty_07_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_01))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_07_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_07_16_00"); //Wszystko na wskros, teraz podazaj za nami.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOPEPE");
	B_StartOtherRoutine	(Mod_104_BAU_Rega_NW, "TOPEPE");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "TOPEPE");
};

INSTANCE Info_Mod_Elena_Hexenparty_08 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_08_Condition;
	information	= Info_Mod_Elena_Hexenparty_08_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_07))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_FOREST_03_NAVIGATION3") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_08_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_08_16_00"); //Idz dalej, wiec wiesz co robic.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elena_Hexenparty_09 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_09_Condition;
	information	= Info_Mod_Elena_Hexenparty_09_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_09_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_08))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_SHEEP2_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_09_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_09_16_00"); //Czy jadles/as krew owcza? Nie zla praca...... za poczatkowa czarownice.

	AI_StopProcessInfos	(self);

	Mod_WM_HexenVerwandlung = 1;
};

INSTANCE Info_Mod_Elena_Hexenparty_02 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_02_Condition;
	information	= Info_Mod_Elena_Hexenparty_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_02_Condition()
{
	if (Mod_WM_HexenVerwandlung == 2)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_16_00"); //To bylo niesamowite i przyjemne doswiadczenie, moja siostra, nie sadzisz?

	B_GivePlayerXP	(200);

	B_StartOtherRoutine	(self, "HEXE");
	B_StartOtherRoutine	(Mod_104_BAU_Rega_NW, "HEXE");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "HEXE");

	B_StartOtherRoutine	(Mod_793_BAU_Pepe_NW, "SCHAFETOT");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_02);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_02, "Nie wiem.", Info_Mod_Elena_Hexenparty_02_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_02, "Tak, na pewno.", Info_Mod_Elena_Hexenparty_02_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_C()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_C_16_00"); //Mam jednak nadzieje, ze sa panstwo gotowi kontynuowac swoja prace nad zniszczeniem i dezintegracja.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_C_16_01"); //Wezmy na siebie te role gradobicia, poczekajmy, az rolnik i zona rolnika zaczna pracowac na polu przed zagroda Onar i zastosujmy ja tam.

	B_GiveInvItems	(self, hero, ItSc_Hagel, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Tym razem moje siostry poprosily mnie o uzycie gradobicia rolnika i jego zony na polu przed farma Onar.");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_02);
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_02_B_15_00"); //Nie wiem.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_B_16_01"); //Ale, ale. Masz jeszcze wiele do nauczenia sie.
	
	Info_Mod_Elena_Hexenparty_02_C();
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_02_A_15_00"); //Tak, na pewno.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_A_16_01"); //Tak wlasnie rozumiem.
	
	Info_Mod_Elena_Hexenparty_02_C();
};

INSTANCE Info_Mod_Elena_Hexenparty_03 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_03_Condition;
	information	= Info_Mod_Elena_Hexenparty_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uzywalem przewijania.";
};

FUNC INT Info_Mod_Elena_Hexenparty_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_02))
	&& (Mod_WM_HexenHagel > 0)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_03_Info()
{
	AI_Output(hero, hero, "Info_Mod_Elena_Hexenparty_03_15_00"); //Uzywalem przewijania.

	if (Mod_WM_HexenHagel == 1)
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_01"); //Doskonaly. To znowu wywolalo magiczny niepokój w gospodarstwie.

		B_GivePlayerXP	(250);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_02"); //Ale bez pozadanego efektu. Bardzo rozczarowujaca, moja siostra.
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_03"); //Jesli pozwolisz sobie popelnic wiecej tego rodzaju bledów, bedziemy musieli w któryms momencie ukarac cie za twoja niezdolnosc.
	};

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_04"); //Zanim wiec przyznamy sie do naszego siostrzenstwa, musisz poznac moc zaklec, które dotykaja ofiar.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_05"); //Wezcie te role wplywu, zastosujcie go i porozmawiajcie z Torlofem.

	B_GiveInvItems	(self, hero, ItSc_Beeinflussung, 1);

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_06"); //Pozwól mu zachowywac sie niemozliwie przed innymi najemnikami.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Teraz mam zmusic Torlof do robienia rzeczy niemozliwych z rola wplywu.");
};

INSTANCE Info_Mod_Elena_Hexenparty_04 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_04_Condition;
	information	= Info_Mod_Elena_Hexenparty_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_03))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hexen))
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_00"); //Wykonal pan wspaniala prace. Kazdy z nas zrobilby zaszczyty. Cóz za radosc!
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_01"); //Czyniac to, zniszczyles morale najemników i dales godne swiadectwo magicznych sztuk, jak równiez swojego sprytnego umyslu.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_02"); //Teraz jestes gotowy zostac jednym z nas. Zapraszamy do naszej kryjówki w nocy.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "W kierunku poprzecznym. Moje siostry.... czarownice rzeczywiscie chca mnie zabrac do swojej spolecznosci. W nocy mam pójsc do jaskini.");
};

INSTANCE Info_Mod_Elena_Hexenparty_05 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_05_Condition;
	information	= Info_Mod_Elena_Hexenparty_05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_05_Condition()
{
	if (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(hero, "NW_BIGFARM_FOREST_08") < 1000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_00"); //Idziesz tam, siostry. Teraz zebralismy sie tutaj, aby dac jej demoniczne poswiecenie nowemu kandydatowi.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_01"); //Tak, moja siostra, zupelnie nowe drzwi otworza sie teraz dla Ciebie, moc oddzialywania i wyniszczenia otoczenia.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_02"); //Niewatpliwie zauwazyles juz bez watpienia potwory, które powstaly w otoczeniu. Sa one w duzej mierze pod nasza kontrola.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_03"); //Nasi sprzymierzency moga pochlonac sile, aby je stworzyc. Bez naszego wplywu jednak nie mogliby oni nigdy nie utrzymywac tych stworzen pod taka kontrola.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_05);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_05, "Rozpocznijmy rytual.", Info_Mod_Elena_Hexenparty_05_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_05, "Kult krwi?", Info_Mod_Elena_Hexenparty_05_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_C()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_C_16_00"); //Siostry, wpadnijmy teraz w medytacje, zgromadzimy sily, aby powitac nowego czlonka naszej wspólnoty i dac mu te czesc demonicznej wladzy, na która zasluguje.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_05);

	AI_StopProcessInfos	(self);

	Mod_WM_Hexenritual = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_05_B_15_00"); //Rozpocznijmy rytual.
	
	Info_Mod_Elena_Hexenparty_05_C();
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_05_A_15_00"); //Kult krwi?
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_01"); //Starozytne braterstwo. Jeden z ich klanów skontaktowal sie z nami jakis czas temu i zawarl z nami sojusz, abysmy mogli polaczyc sily i pograzyc wszystko w chaosie.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_02"); //Oni maja schronienie w poblizu plaskowyzu wierzbowego.

	if (Npc_KnowsInfo(hero, Info_Mod_AttraktiveFrau_Sex))
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_03"); //Tak, karczma w poblizu plaskowyzu pastwiskowego...... Wysysalem przepyszna sile zyciowa szczególnego rodzaju czlowieka.
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_04"); //Tak czy owak, rozpocznijmy rytual.
	};

	Mod_WM_Blutkultinfos = 1;
	
	Info_Mod_Elena_Hexenparty_05_C();
};

INSTANCE Info_Mod_Elena_Hexenparty_06 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_06_Condition;
	information	= Info_Mod_Elena_Hexenparty_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_05))
	&& (Mod_WM_Hexenritual == 2)
	&& (Mod_TrfWoman == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_06_16_00"); //Co, jak.....? Siostry, zostalismy powolani do zycia.

	Mod_HexenAttack = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elena_Hexenparty_10 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_10_Condition;
	information	= Info_Mod_Elena_Hexenparty_10_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_01))
	&& (Mod_WM_HexenVerwandlung < 2)
	&& (Mod_WM_IsWarg == 0)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_10_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_10_16_00"); //Co robisz? Wez swoje zwierze znowu w formie i zrobic, jak zostaniesz poinformowany.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 10);
};

INSTANCE Info_Mod_Elena_Trade (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Trade_Condition;
	information	= Info_Mod_Elena_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Elena_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv	(self);
	B_Say	(hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Elena_Pickpocket (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Pickpocket_Condition;
	information	= Info_Mod_Elena_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Elena_Pickpocket_Condition()
{
	C_Beklauen	(34, ItFo_Apple, 2);
};

FUNC VOID Info_Mod_Elena_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

	Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_BACK, Info_Mod_Elena_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elena_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elena_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);
};

FUNC VOID Info_Mod_Elena_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elena_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

		Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elena_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elena_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elena_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elena_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elena_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elena_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elena_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elena_EXIT (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_EXIT_Condition;
	information	= Info_Mod_Elena_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elena_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elena_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
