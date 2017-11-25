INSTANCE Info_Mod_Argez_NW_Hi (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Hi_Condition;
	information	= Info_Mod_Argez_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_37_00"); //Ah, nowa twarz. Kogo mam zaszczyt przyznac?

	Info_ClearChoices	(Info_Mod_Argez_NW_Hi);

	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Zaden z Panstwa dzialalnosci.", Info_Mod_Argez_NW_Hi_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Z bylym wiezniem Doliny Kopalni.", Info_Mod_Argez_NW_Hi_A);
};

FUNC VOID Info_Mod_Argez_NW_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_00"); //Prosze mi wybaczyc, nazywam sie Argez.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_01"); //Nie wygladasz na szczesliwy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_02"); //Ach, to dluzsza historia, ale konczyla sie u bramhorynów.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_03"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_04"); //Istnieje niepewny paladyn, który próbuje odróznic sie przez twardosc. Odmawial mi dostepu do miasta.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_05"); //Dlaczego nie wpusci Cie?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_06"); //Obawial sie mnie, bo on cie obawial. Mysle, ze jest to zwiazane z upadkiem zapory i uciekinierami.

	Info_ClearChoices	(Info_Mod_Argez_NW_Hi);

	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Czy moge pomóc Ci dostac sie do miasta?", Info_Mod_Argez_NW_Hi_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Gdzie jestes?", Info_Mod_Argez_NW_Hi_D);
};

FUNC VOID Info_Mod_Argez_NW_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_B_15_00"); //Zaden z Panstwa dzialalnosci.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_B_37_01"); //Masz racje, najpierw powinienem byl sie przedstawic.

	Info_Mod_Argez_NW_Hi_C();
};

FUNC VOID Info_Mod_Argez_NW_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_A_15_00"); //Z bylym wiezniem Doliny Kopalni.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_A_37_01"); //No cóz, jeszcze inny parias.

	Info_Mod_Argez_NW_Hi_C();
};

FUNC VOID Info_Mod_Argez_NW_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_E_15_00"); //Czy moge pomóc Ci dostac sie do miasta?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_01"); //Watpie, czy wspomniany przeze mnie paladyn, przemówi do panstwa. Garond jest jego imieniem.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_02"); //Ale jesli sie to uda, proponuje podzielic sie z wami moja wiedza.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_E_15_03"); //Co wiesz?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_04"); //Wiecej niz powinienem wiedziec.

	if (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	{
		Log_CreateTopic	(TOPIC_MOD_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ARGEZ, LOG_RUNNING);
	};

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Poza brama Khorinisa rozmawialem z outcastem. Jego przeszlosc wydaje sie mylaca, ale obiecal mi informacje na wypadek gdyby Garond wpuscil go do miasta. Paladyn moze jednak okazac sie trudnym kawalkiem.");

	Mod_Argez_Choice += 1;

	if (Mod_Argez_Choice == 2)
	{
		Info_ClearChoices	(Info_Mod_Argez_NW_Hi);
	};
};

FUNC VOID Info_Mod_Argez_NW_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_D_15_00"); //Gdzie jestes?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_D_37_01"); //Nie wiem o tym. Informacje te sa czescia dluzszej historii, o której wlasnie wspomniano.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_D_37_02"); //Nie chce wydawac sie niegrzeczny, ale na tym etapie nie jestem w stanie udzielic wyczerpujacej odpowiedzi na panstwa pytanie.

	Mod_Argez_Choice += 1;

	if (Mod_Argez_Choice == 2)
	{
		Info_ClearChoices	(Info_Mod_Argez_NW_Hi);
	};
};

INSTANCE Info_Mod_Argez_NW_Follow (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Follow_Condition;
	information	= Info_Mod_Argez_NW_Follow_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem sposób, aby dostac sie do miasta.";
};

FUNC INT Info_Mod_Argez_NW_Follow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Follow_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Follow_15_00"); //Znalazlem sposób, aby dostac sie do miasta.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_01"); //Mialem nadzieje, ze pan to powie.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Follow_15_02"); //Mozemy przejsc obok pólnocnej bramy miasta. Pan Andre zapewnil mnie, ze nie bedzie tam zadnych problemów. Poprowadze pana.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_03"); //Ach, wiem, gdzie jest brama. Ale najlepsza rzecza, jaka mozemy zrobic, jest pokazanie sie razem, zanim pojawia sie jakiekolwiek nieporozumienia.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_04"); //Zapraszamy do dalszej pracy.

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWINCITY");

	Wld_InsertNpc	(Zombie_Argez,	"FP_ROAM_ZOMBIE_ARGEZ");
};

INSTANCE Info_Mod_Argez_NW_Zombie (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Zombie_Condition;
	information	= Info_Mod_Argez_NW_Zombie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_Zombie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Follow))
	&& (Npc_IsDead(Zombie_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Zombie_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_00"); //Czy to byl mój strzal smiertelny?
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie_15_01"); //Nie widze tu nikogo innego, kto móglby byc odpowiedzialny.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_02"); //Wyglada na to, ze jest we mnie cos brzydkiego...... Jezeli tylko pamietam!
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_03"); //A skad tak nagle wzielo sie to zombie?
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie_15_04"); //Moze ma on cos wspólnego z tym czarnym wedrowcem, który musial przyjechac tu ostatnio?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_05"); //Byc moze, nawet jesli nie zauwazylem takiego czarnego wedrowcy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_06"); //Przejdzmy do miasta, potrzebuje troche czasu, by pomyslec.

	hero.protection[PROT_MAGIC] = Mod_Save_HeroArmor_Argez;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Argez_NW_InCity (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_InCity_Condition;
	information	= Info_Mod_Argez_NW_InCity_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_InCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Zombie))
	&& (Npc_GetDistToWP(self, "NW_CITY_MERCHANT_PATH_29_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_InCity_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_00"); //W koncu, za tymi murami. Jestem panstwu gleboko zadluzony.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_01"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_02"); //Szukam wskazówek do swoich korzeni. To miasto jest duze - jestem pewien, ze ktos mnie tutaj zna.
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_03"); //Przede wszystkim jednak spoczne.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_04"); //Obiecales mi cos....
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_05"); //I bede sie do tego trzymac. Przyjdzcie do mnie jutro, a ja udziele Wam rad i pomocy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_06"); //Prawdopodobnie wiekszosc dnia spedze tu w poblizu rynku.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_07"); //Wszystko jasne. Do zobaczenia jutro.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Wyprowadzilem Argeza do miasta. Teraz czekam na jego opowiesc....");

	Mod_Argez_Day = Wld_GetDay();

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RUHE");
};

INSTANCE Info_Mod_Argez_NW_Zombie2 (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Zombie2_Condition;
	information	= Info_Mod_Argez_NW_Zombie2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Naprawde nie wiesz, jak to zaklecie zrobiles?";
};

FUNC INT Info_Mod_Argez_NW_Zombie2_Condition()
{
	if (Mod_Argez >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Zombie2_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie2_15_00"); //Naprawde nie wiesz, jak to zaklecie zrobiles?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_01"); //Kiedy zombie zwrócilo sie do nas, poczulem cos w sobie wznoszacego sie.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_02"); //To powiedzenie rozpetalo sie calkowicie automatycznie, bez mojej celowej pomocy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_03"); //Dlaczego znam takie powiedzenie, nie moge ci powiedziec. Nie upewnia mnie tez, ze wiem o takiej niekontrolowanej we mnie wladzy.
};

INSTANCE Info_Mod_Argez_NW_ZuSaturas (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_ZuSaturas_Condition;
	information	= Info_Mod_Argez_NW_ZuSaturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Saturas zyczy sobie rozmowy z Toba.";
};

FUNC INT Info_Mod_Argez_NW_ZuSaturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_ZuSaturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_00"); //Saturas zyczy sobie rozmowy z Toba.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_01"); //Najwyzszy mag? Czego ode mnie chce?
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_02"); //Chodzi o zaklecie, którego uzyles do zniszczenia zombie.
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_03"); //Moze równiez Saturas pomoze Ci dowiedziec sie wiecej o swojej przeszlosci.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_04"); //Warto spróbowac, nawet jesli z Waszego podtekstu moge powiedziec, ze obawiasz sie tego, co próbujecie o mnie poznac.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_05"); //Mój pobyt w miescie zakonczy sie wizyta w Saturach.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_06"); //Wydaje mi sie, ze nikt mnie nie zna. Moje korzenie musza byc gdzie indziej.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_07"); //Zobaczmy wiec, czy Saturas ma cos nowego do powiedzenia.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_08"); //Moze znasz skrót do strony kopania? Teleporter czy cos?
};

INSTANCE Info_Mod_Argez_NW_LosZuSaturas (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_LosZuSaturas_Condition;
	information	= Info_Mod_Argez_NW_LosZuSaturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej.";
};

FUNC INT Info_Mod_Argez_NW_LosZuSaturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_ZuSaturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_LosZuSaturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_LosZuSaturas_15_00"); //Idzmy dalej. Saturas dala nam zaklecie teleportowe, które uratuje nam dluga droge.
	AI_Output(self, hero, "DEFAULT"); //

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Musze zabrac Argeza do Saturasa. W przypadku teleportu Saturas nie bedzie to problem.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Argez_NW_Infos (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Infos_Condition;
	information	= Info_Mod_Argez_NW_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie informacje mozesz mi przekazac?";
};

FUNC INT Info_Mod_Argez_NW_Infos_Condition()
{
	if (Mod_Argez == 1)
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Infos_15_00"); //Jakie informacje mozesz mi przekazac?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Infos_37_01"); //Tutaj jestes nowy. Wiem o róznych grupach.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Infos_37_02"); //Jesli chcecie dolaczyc do cechu, moge wam pomóc.
};

INSTANCE Info_Mod_Argez_NW_Gilden (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Gilden_Condition;
	information	= Info_Mod_Argez_NW_Gilden_Info;
	permanent	= 1;
	important	= 0;
	description	= "Podaj mi informacje na temat jednego z cechów.";
};

FUNC INT Info_Mod_Argez_NW_Gilden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Infos))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Gilden_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_15_00"); //Podaj mi informacje na temat jednego z cechów.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_37_01"); //Które wzbudza Twoje zainteresowanie?

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_BACK()
{
	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_E()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_E_15_00"); //Powiedz mi o nowicjuszach ognia.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_01"); //Nasladowcy Innosów maja na wyspie swój wlasny klasztor.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_02"); //Zycie nowicjusza ognia nie jest latwe; magowie domagaja sie ascetycznego zycia i calkowitego oddania Innosowi.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_03"); //Ich przywództwo sklada sie z triumwiratu, z którego Pyrokar po raz kolejny wyróznia sie na czele.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_04"); //Trójka ta sprawdzi Cie dokladnie, kiedy zdecydujesz, ze mieszkanie w Innosie jest wlasnie dla Ciebie.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_D()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_D_15_00"); //Powiedz mi o milicji.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_01"); //Milicja przejmuje funkcje straznika miejskiego w Khorinis.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_02"); //Jest mniej lub bardziej odpowiedzialna za zapewnienie, ze wszystko tutaj idzie wlasciwie.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_03"); //Spotkales juz ich przywódce, Lord Andre. Dbal o dyscypline i sile walki swoich zolnierzy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_04"); //W tym celu regularnie organizuje turnieje z nowymi kandydatami.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_05"); //Jesli chcesz tam pozostac, powinienes byc dosc doswiadczonym wojownikiem.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_C()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_C_15_00"); //Powiedz mi o czarnych nowinkach.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_01"); //Tutaj nie slyszy sie zbyt wiele o nich.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_02"); //Nienkonformisci spoleczenstwa bardziej przyciagaja do Czarnych Nowicjuszy - Beliar nie obiecuje popularnosci, lecz potezna magie.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_03"); //Maja one równiez jedna z najsurowszych procedur przyjmowania. Tylko ci, którzy udowodnia sie w niezliczonych próbach, zostana przyjeci jako nowicjusze.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_04"); //Zainstalowano jednak równiez niezwykle praktyczny srodek transportu - sanktuaria w Beliarze sa jednoczesnie platformami teleportacyjnymi.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_05"); //Aby z nich korzystac, trzeba je laczyc jeden po drugim.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_06"); //Plotka glosi, ze podobno taka swiatynia znajduje sie w zamknietej sieci kanalizacyjnej miasta.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_07"); //Pochodzi ono z czasów wczesniejszych, kiedy to beliaranscy wyznawcy urzadzali tam ciemne rytualy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_08"); //Gdzie..... Z tego, co slyszymy, kanalizacja nie wydaje sie byc calkowicie opuszczona.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_B_15_00"); //Powiedz mi o najemnikach.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_01"); //Czesc z nich jest obecnie w gospodarstwie wielkiego rolnika Onar. Chca tam rekrutowac nowych czlonków.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_02"); //Wiekszosc z nich jest jednak w Minentalu, w obozie z czasów kolonii, który nazywaja Nowym Obozem.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_03"); //Ale i w tym przypadku przypuszcza sie, ze w poblizuhorinis sa obozy dla najemników.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_04"); //Zawsze powinienes miec oczy otwarte, wtedy predzej czy pózniej natkniesz sie na nie.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_A_15_00"); //Powiedz mi o nowicjuszach wody.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_01"); //Nowicjusze wody sluza w kregu wody.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_02"); //Z tego co widze, glównym zadaniem kola wody jest zbieranie informacji.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_03"); //Podczas gdy magowie wody przybijaja nad starozytne zagadki, aby utrzymac równowage swiata w umysle Adanosa, nowicjusze trzymaja oczy i uszy otwarte.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_04"); //Dlatego tez wiekszosc ich zwolenników mozna znalezc w Khorinis.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_05"); //Obecnie maja do czynienia z szeregiem zgloszen osób zaginionych.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_06"); //Jesli jestes zainteresowany tematem, Vatras na Tempelplatz jest prawdopodobnie wlasciwym dla Ciebie kontaktem.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach ognia.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o milicji.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o czarnych nowinkach.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o najemnikach.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Powiedz mi o nowicjuszach wody.", Info_Mod_Argez_NW_Gilden_A);
};

INSTANCE Info_Mod_Argez_NW_Geschichte (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Geschichte_Condition;
	information	= Info_Mod_Argez_NW_Geschichte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi swoja historie!";
};

FUNC INT Info_Mod_Argez_NW_Geschichte_Condition()
{
	if (Mod_Argez >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Geschichte_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Geschichte_15_00"); //Powiedz mi swoja historie!
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_01"); //Nie pamietam swojej przeszlosci.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_02"); //Jest --- Fragmenty wspomnien wywolywane przez pewne wydarzenia, ale nigdy nie sa wystarczajaco jasne.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_03"); //Kilka miesiecy temu obudzilem sie w szmatowych ubraniach w jaskini w górach.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_04"); //Zapewne zostalem zaatakowany, zapukal nieswiadomy i zostawilem na smierc.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_05"); //Poczatkowo bladzilem sie po zdezorientowanych. Po kilku dniach znalazlem jedno z okolicznych gospodarstw i zostalem zajety.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_06"); //Wiele obserwowalem i pytalem kupców, którzy odpoczeli na dziedzincu.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_07"); //Tak dowiedzialem sie o biezacych wydarzeniach, a moja wiedza o cechach pochodzi z tamtych miesiecy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_08"); //Ale poszukiwanie mojej przeszlosci nie zostawilo mnie samotnie, wiec w pewnym momencie opuscilem podwórko i przedostalem sie do miasta.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_09"); //Reszta historii, która znasz.
};

INSTANCE Info_Mod_Argez_NW_Tattoo (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Tattoo_Condition;
	information	= Info_Mod_Argez_NW_Tattoo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co to jest tatuaz na twarzy?";
};

FUNC INT Info_Mod_Argez_NW_Tattoo_Condition()
{
	if (Mod_Argez >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Tattoo_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Tattoo_15_00"); //Co to jest tatuaz na twarzy?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_01"); //Nie moglem na nie spojrzec, poniewaz widzialem je tylko w odbiciach wody.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_02"); //Jedyna wskazówka, która mi daje, jest obóz bagienny w Minental. Tatuaze sa tam bardzo czesto spotykane.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_03"); //Prawdopodobnie jednak nie bylo mozliwosci wyjscia z bariery i obudzilem sie poza nia.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_04"); //Nie moglem wiec byc w kontakcie z obozem bagiennym.
};

INSTANCE Info_Mod_Argez_NW_EXIT (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_EXIT_Condition;
	information	= Info_Mod_Argez_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
