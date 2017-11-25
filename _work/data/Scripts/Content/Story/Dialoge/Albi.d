INSTANCE Info_Mod_Albi_Hi (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Hi_Condition;
	information	= Info_Mod_Albi_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Hi_Condition()
{
	if (Mod_Echsis == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_23_00"); //Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzzzz.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_15_01"); //Czy móglbys to powtarzac?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_23_02"); //Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshshsh.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Ponownie spróbuj, ufaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", Info_Mod_Albi_Hi_B);
	Info_AddChoice	(Info_Mod_Albi_Hi, "Nie rozumiem slowa.", Info_Mod_Albi_Hi_A);
};

FUNC VOID Info_Mod_Albi_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_00"); //Czy rozumiesz mnie?
	AI_Output(hero, self, "Info_Mod_Albi_Hi_C_15_01"); //Mówisz jezykiem budowniczych?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_02"); //Rozumiesz, co mówie?
	AI_Output(hero, self, "Info_Mod_Albi_Hi_C_15_03"); //Tak..... zapytales mnie, czy rozumiem....?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_04"); //Mialem na mysli wczesniej!

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Um.... jak szhcsh?", Info_Mod_Albi_Hi_E);
	Info_AddChoice	(Info_Mod_Albi_Hi, "Nie, nie slowo.", Info_Mod_Albi_Hi_D);
};

FUNC VOID Info_Mod_Albi_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_B_15_00"); //Ponownie spróbuj, ufaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

	Info_Mod_Albi_Hi_C();
};

FUNC VOID Info_Mod_Albi_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_A_15_00"); //Nie rozumiem slowa.

	Info_Mod_Albi_Hi_C();
};

FUNC VOID Info_Mod_Albi_Hi_F()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_F_23_00"); //Zaproponowalem Ci wolnosc, jesli mozesz mi powiedziec jaki jest mój lupiez.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Zapraszamy!", Info_Mod_Albi_Hi_H);
	Info_AddChoice	(Info_Mod_Albi_Hi, "Dlaczego?", Info_Mod_Albi_Hi_G);
};

FUNC VOID Info_Mod_Albi_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_E_15_00"); //Um.... jak szhcsh?

	Info_Mod_Albi_Hi_F();
};

FUNC VOID Info_Mod_Albi_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_D_15_00"); //Nie, nie slowo.

	Info_Mod_Albi_Hi_F();
};

FUNC VOID Info_Mod_Albi_Hi_I()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_I_23_00"); //Musialem sie dowiedziec, czy mówisz naszym jezykiem. Oczywiscie nie.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_I_15_01"); //Powtarzam sie, ale dlaczego?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_I_23_02"); //Potrzebuje panstwa pomocy. Tylko ktos, kto nie mówi w naszym jezyku, moze mi pomóc.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Co sprawia, ze myslisz, ze pomagam ci?", Info_Mod_Albi_Hi_K);
	Info_AddChoice	(Info_Mod_Albi_Hi, "Co o tym chodzi?", Info_Mod_Albi_Hi_J);
};

FUNC VOID Info_Mod_Albi_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_H_15_00"); //Zapraszamy!
	AI_Output(self, hero, "Info_Mod_Albi_Hi_H_23_01"); //Wylaczyc!

	Info_Mod_Albi_Hi_I();
};

FUNC VOID Info_Mod_Albi_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_G_15_00"); //Dlaczego?

	Info_Mod_Albi_Hi_I();
};

FUNC VOID Info_Mod_Albi_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_J_15_00"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_01"); //Musisz udac sie na druga strone bagna. Ale jutro powiem ci wiecej.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_02"); //Przygotuj troche odpoczynku i przyjdz jutro do wyjscia z miasta.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_03"); //Ale znajdz miejsce do spania poza chatkami!
	AI_Output(hero, self, "Info_Mod_Albi_Hi_J_15_04"); //Wszystko w porzadku....
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_05"); //Wez to tutaj.

	B_GiveInvItems	(self, hero, ItMi_MerkwuerdigesDing, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_06"); //Wlóz go do ognia w kuzni. Wez to, co zostalo. Ziola mozna kupic u sprzedawcy jaszczurki. Potrzebujesz go. Odejdz teraz.

	Mod_EchsenTag = Wld_GetDay();

	Mod_Echsis = 4;

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HUT");

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Albi, najwyrazniej glowa jaszczurki, ma dla mnie wazne zadanie. Niestety, skonfiskowali tez caly mój sprzet. Dal mi dziwne rzeczy. Mam go podpalic w kuzni i zabrac to, co zostalo. Ziola lecznicze moge kupic u sprzedawcy jaszczurki. Jutro udam sie na wyjscie z miasta, gdzie Albi opowie mi wiecej o moim zadaniu.");
};

FUNC VOID Info_Mod_Albi_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_K_15_00"); //Co sprawia, ze myslisz, ze pomagam ci?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_K_23_01"); //Po pierwsze, mamy wszystkie wasze mienie.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_K_23_02"); //Z drugiej strony jestes wiezniem, a jesli nam nie pomozesz, bedziemy Cie z rekinami.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_K_15_03"); //Przekonani.

	Info_Mod_Albi_Hi_J();
};

INSTANCE Info_Mod_Albi_Wuerdebeweis (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Wuerdebeweis_Condition;
	information	= Info_Mod_Albi_Wuerdebeweis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Wuerdebeweis_Condition()
{
	if (Mod_Echsis == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Wuerdebeweis_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebeweis_23_00"); //Trzeba przejsc przez rytual. Pokryj rekina i jestes godzien!
	AI_Output(hero, self, "Info_Mod_Albi_Wuerdebeweis_15_01"); //A gdzie moja zbroja i bron?
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebeweis_23_02"); //UZYTKOWNIK JEGO pokona, a nie twój miecz! Walczyc teraz!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Mam udowodnic, ze jestem godzien zabicia rekina bagiennego bez zbroi i broni. Cóz, to moze byc zabawa....");

	Wld_InsertNpc	(Sumpfhai_11023_AW,	"BL_DOWN_01");
};

INSTANCE Info_Mod_Albi_Wuerdebewiesen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Wuerdebewiesen_Condition;
	information	= Info_Mod_Albi_Wuerdebewiesen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Wuerdebewiesen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Wuerdebeweis))
	&& (Npc_IsDead(Sumpfhai_11023_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Wuerdebewiesen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebewiesen_23_00"); //Jestes godzien. Wez to tutaj. Mozesz teraz swobodnie poruszac sie po bagnie.

	B_GiveInvItems	(self, hero, ItAr_Echsi_01, 1);

	AI_EquipArmor	(hero, ItAr_Echsi_01);

	AI_Output(hero, self, "Info_Mod_Albi_Wuerdebewiesen_15_01"); //Czy to znaczy, ze moge isc?
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebewiesen_23_02"); //Powiedzialem bagno. Przyjdz do mojej kabiny. Bedziemy tam rozmawiac.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Udowodnilam, ze jestem godzien. Co dziwne, rekin bagienny byl juz bardzo oslabiony.... Wiecej No cóz, tak czy owak wolno mi teraz swobodnie poruszac sie po bagnie. Ale nie moge go jeszcze opuscic. Chce, abym przyjechal do chaty Albi, gdzie prawdopodobnie wyjasni cos wiecej.");

	B_GivePlayerXP	(500);

	B_StartOtherRoutine	(self, "HUT");

	Mod_12004_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
	Mod_12005_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Albi_AtHut (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_AtHut_Condition;
	information	= Info_Mod_Albi_AtHut_Info;
	permanent	= 0;
	important	= 0;
	description	= "O co to bylo chodzilo?";
};

FUNC INT Info_Mod_Albi_AtHut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Wuerdebewiesen))
	&& (Npc_GetDistToWP(self, "BL_BLOODWYN_BOOK") < 1000)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_AtHut_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_00"); //O co to bylo chodzilo?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_01"); //Walka? Jakis rodzaj rytualu przejscia.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_02"); //Nasi mlodzi ludzie nie moga opuscic miasta, dopóki nie pokonaja bezbronnego rekina bagiennego.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_03"); //W ten sposób odcialem ci podejrzliwosc, przynajmniej troche.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_04"); //Jaka jest calosc? Gdy przywiezli go tutaj, rekin bagienny byl pól umarly.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_05"); //Nie sluchasz mnie lub nie rozumiesz mnie?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_06"); //I NEED YOU. I nie tutaj w miescie i nie jako pozywienie dla rekinów bagiennych, tak jak to, co skonczyloby sie bez Twojej stalowej skóry i zelaznych pazurów.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_07"); //Dlaczego ja? Dlaczego nie wysylasz jaszczurki?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_08"); //Wylaczyc! Nie jestes w stanie zadawac pytan.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_09"); //Teraz udamy sie na poludniowa czesc bagna, która jest zamieszkana przez golemy bagienne.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_10"); //Tutaj bedziesz szukal mojego brata.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_11"); //Jeszcze inna jaszczurka?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_12"); //Inna jaszczurka biala. Musisz ja znalezc. Od tego zalezy nie tylko twoje zycie.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_13"); //Jesli jeszcze zyje, koniecznie musisz go tutaj przyniesc.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_14"); //Jesli umarl, nie zapomnij przyniesc mi klucz, który nosi.

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Caly swindle z bójka sumfaic sluzyly do tego, aby inne jaszczurki mnie zaakceptowaly i moge opuscic obóz. Albi ma dla mnie zadanie w bagnie, dla którego najwyrazniej nie moze zaparkowac jaszczurki. Szukam jego brata w poludniowej czesci bagna, gdzie mieszkaja golemy bagienne. Jesli jeszcze zyje, zabiore go do miasta, bo w przeciwnym razie zabiore klucz do Albi, który go nosi.");

	Wld_InsertNpc	(Mod_12006_DRA_Echse_AW,	"ADW_SWAMP_07");

	B_KillNpc	(Mod_12006_DRA_Echse_AW);
};

INSTANCE Info_Mod_Albi_KeyGefunden (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_KeyGefunden_Condition;
	information	= Info_Mod_Albi_KeyGefunden_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_KeyGefunden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Npc_HasItems(hero, ItKe_EchsenKey) == 1)
	&& (Npc_HasItems(hero, ItAr_Echsi_01) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_KeyGefunden_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_00"); //Jestes tam nareszcie! Znalazles mojego brata?
	AI_Output(hero, self, "Info_Mod_Albi_KeyGefunden_15_01"); //Tak, obawiam sie, ze Golems musialby go znalezc. Oto klucz.

	B_GiveInvItems	(hero, self, ItKe_EchsenKey, 1);

	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_02"); //Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzzzz.
	AI_Output(hero, self, "Info_Mod_Albi_KeyGefunden_15_03"); //Czy moge isc teraz?
	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_04"); //Tak, odejsc. Twoje rzeczy sa tam w bagazniku. Oto klucz.

	B_GiveInvItems	(self, hero, ITKE_Addon_Thorus, 1);

	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_05"); //I tutaj..... Zalozyc te zbroje, a straznicy przy bramie pozwola ci przejsc.

	AI_UnequipArmor	(hero);

	Npc_RemoveInvItems	(hero, ItAr_Echsi_01, 1);

	B_GiveInvItems	(self, hero, ItAr_Echsi_02, 1);

	AI_EquipArmor	(hero, ItAr_Echsi_02);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Albi zdaje sie byc niezadowolony z smierci brata, ale moge teraz opuscic bagno.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN, LOG_SUCCESS);

	Mod_12000_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
	Mod_12001_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Albi_FokusEinsetzen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_FokusEinsetzen_Condition;
	information	= Info_Mod_Albi_FokusEinsetzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz miec pewnosc, ze dotre na szczyt miasta?";
};

FUNC INT Info_Mod_Albi_FokusEinsetzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_KeyGefunden))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_FokusEinsetzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_00"); //Czy mozesz miec pewnosc, ze dotre na szczyt miasta?
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_01"); //Oczywiscie, ale tylko dorosle jaszczurki sa dozwolone w górnym miescie.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_02"); //Mozesz byc jaszczurek teraz, ale nie jestes jeszcze dorosly.
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_03"); //Móglbym ja zaprzysiezyc, gdyby byla odwrotnie.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_04"); //Wylaczyc! Jesli chcesz jechac do górnego miasta, zarobic na to i sprawic, ze bedziesz sie dobrze bawil!
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_05"); //Ciezko jest mi sprawic, ze bede uzyteczna, gdy nie rozumiem nikogo.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_06"); //Porozmawiam z jaszczurkami. Porozmawiaj z nimi jutro, jesli beda mieli cos do zrobienia, przekaza ci notatke.
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_07"); //Czy nie byloby latwiej, gdybym nauczyl sie twojego jezyka?
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_08"); //UZYTKOWNIK MOZE nie uczyc sie naszego jezyka i zostawic mnie samotnie, pójde do górnego miasta.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_09"); //Jesli udowodniles, ze jestes godzien siebie, czekam na Ciebie poza brama.

	Log_CreateTopic	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSEN_VERTRAUEN, "Aby dostac sie do górnego miasta jaszczurek, musze zdobyc ich zaufanie. Jutro jaszczurki, które maja dla mnie prace, dadza mi notatke. Jesli wykonalem juz wystarczajaco duzo pracy, Albi bedzie mnie oczekiwal.");

	Mod_Albi_VertrauensTag = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MINE");
};

INSTANCE Info_Mod_Albi_VertrauenGewonnen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_VertrauenGewonnen_Condition;
	information	= Info_Mod_Albi_VertrauenGewonnen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_VertrauenGewonnen_Condition()
{
	if (Mod_EchsenQuest == 1)
	&& (Npc_HasItems(hero, ItMi_Focus_Kloster) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_VertrauenGewonnen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_00"); //Wyglada na to, ze uczyniles sie naprawde przydatny. Prawie wszystko jest gotowe. Mozesz odejsc.
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_01"); //Co?
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_02"); //Mozesz swobodnie opuscic bagno! Teraz idz.
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_03"); //Ale musze jechac do górnego miasta!
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_04"); //Górne miasto? Powiedzialem wam, ze w górnym miescie moga przebywac tylko dorosli. Co tam i tak robisz?
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_05"); //Chce umiescic ten niebieski kamien na cokole przed swiatynia.

	B_GiveInvItems	(hero, self, ItMi_Focus_Kloster, 1);

	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_06"); //No cóz, bardzo mi pomógles, zrobie to dla ciebie, ale nie teraz, mam prace do roboty!

	B_LogEntry	(TOPIC_MOD_ECHSEN_VERTRAUEN, "Zdobylem zaufanie jaszczurek i Albi skupi sie na mnie w Górnym Miescie.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);

	Mod_EchsenQuest = 2;
};

INSTANCE Info_Mod_Albi_Kap4Stab (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Kap4Stab_Condition;
	information	= Info_Mod_Albi_Kap4Stab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Kap4Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_VertrauenGewonnen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Kap4Stab_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_00"); //Wracasz......
	AI_Output(hero, self, "Info_Mod_Albi_Kap4Stab_15_01"); //Musze udac sie do swiatyni.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_02"); //Tylko pelnoprawni wojownicy moga isc do swiatyni.... ale przyszedles we wlasciwym czasie, jestesmy na skraju bitwy.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_03"); //Jesli walczysz, straznicy zabiora cie do swiatyni.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_04"); //Puscimy je do walki, ale ty robisz dla mnie prace.
	AI_Output(hero, self, "Info_Mod_Albi_Kap4Stab_15_05"); //Wszystkie sluszne, wszystkie sluszne. Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_06"); //Potrzebujesz pistoletu. Zadna z broni recznej, nie potrzebujesz sztyletu wojownika.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_07"); //Do kazdego czarnego jaszczura w plemieniu trzeba przywiezc zab rekina bagiennego.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_08"); //Poza tym potrzebny jest kregoslup gasienicy bagiennej.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_09"); //Bedziesz musial pójsc do jaskini w pólnocnym bagnie. Tam jest straznik, on cie wpusci.

	Log_CreateTopic	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "Albi chce, abym zmuszony zostal wojownikiem sztyletem. Do kazdego czarnego jaszczura mam przynosic zab rekina bagiennego. Ponadto potrzebuje kregoslupa gasienicy bagiennej. Taki okaz znajduje sie w jaskini na pólnoc od hodowli rekina.");

	Mod_12017_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;

	Wld_InsertNpc	(SwampCrawler, "ADW_CANYON_PATH_TO_BANDITS_06E");
};

INSTANCE Info_Mod_Albi_Schlacht (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht_Condition;
	information	= Info_Mod_Albi_Schlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj kregoslup.";
};

FUNC INT Info_Mod_Albi_Schlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Kap4Stab))
	&& (Npc_HasItems(hero, ItAt_Wirbelsaeule) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht_15_00"); //Tutaj kregoslup.

	B_GiveInvItems	(hero, self, ItAt_Wirbelsaeule, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_01"); //Dobre. Przyjedz do mojej kabiny noca, a bedziesz awansowany na zawodnika.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_02"); //Jesli pójdziesz z nami do walki, mozesz wejsc do swiatyni. Odejdz teraz.

	if (Mod_ECHSI_SumpfhaiZaehne < 5)
	{
		AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_03"); //I nie zapomnij zabrac czarnego jaszczurka do rekina bagiennego.
	};

	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "Powróce dzis wieczorem do Albi, a potem bede kandydowal.");
};

INSTANCE Info_Mod_Albi_Schlacht2 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht2_Condition;
	information	= Info_Mod_Albi_Schlacht2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Schlacht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht))
	&& (Mod_ECHSI_SumpfhaiZaehne == 5)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht2_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_00"); //Jestes gotowy do walki.

	B_GiveInvItems	(self, hero, ItMw_EchsenKriegerDolch, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_01"); //Teraz jest tylko jeden problem z golemami.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_02"); //olemy? Kiedy przyjechalem tu po raz pierwszy nie widzialem zadnego z nich.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_03"); //To jest problem.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_04"); //Wojna miedzy jaszczurami a golemami jest tak stara jak nasze dwie rasy.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_05"); //Sam bagno wyrzuca sliskie bestie, jaszczurki wyleguja jaja.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_06"); //Ale do tego potrzebujemy Golemów.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_07"); //Potrzebujesz swoich wrogów do prokreacji? Brzmi jak milosc, relacja nienawisci.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_08"); //SCHWEIG! Nie jestesmy tacy jak ty, jestesmy wojownikami.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_09"); //Nasze kobiety mieszkaja poza miastem, pod powierzchnia bagna.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_10"); //Walczymy z golemami, wojownikami, którzy w walce walcza, przekazujemy ziarno.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_11"); //Tak wiec bez Golemów, bez potomków.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_12"); //Tak. I dopóki nie wylegnie sie nowa jaszczurka, pozostane jedyna jaszczurka biala......
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_13"); //Czujesz sie samotny lub co jest Twoim problemem? A skad tak czy owak powinienem siegnac po golemy bagienne?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_14"); //Zobacz swój jezyk, czlowiek! Moje powody nie leza po stronie Ciebie.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_15"); //Musze, zebys dostal sie na bagno. Tutaj.

	B_GiveInvItems	(self, hero, ItKe_EchsenKey2, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_16"); //Klucz otwiera drzwi na poludnie od bagna.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_17"); //Jestes gonna go otworzyc, a nastepnie jestes gonna obrócic sie i uciekac z powrotem tutaj.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_18"); //Czy to jest zamówienie?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_19"); //Nie, to tylko rada. Bitwa rozpoczyna sie po otwarciu drzwi.

	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "Powróce dzis wieczorem do Albi, a potem bede kandydowal.");
};

INSTANCE Info_Mod_Albi_Schlacht3 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht3_Condition;
	information	= Info_Mod_Albi_Schlacht3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Schlacht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht2))
	&& (Mod_HQ_AlraunenTor == 3)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht3_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_00"); //Walka sie skonczyla, walczyles dobrze.... dla czlowieka.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_01"); //Mozna wybrac sie do górnej czesci miasta.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht3_15_02"); //A co z swiatynia?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_03"); //Swiatynia? Co jest z tym nie tak?
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht3_15_04"); //Czy moge wejsc?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_05"); //Mozna spróbowac, ale drzwi sa grube. Przyjrzyjcie sie im dobrze.

	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	Mod_12008_DRA_Wache_AW.aivar[AIV_PassGate] = TRUE;
};

INSTANCE Info_Mod_Albi_Mutantengolem (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Mutantengolem_Condition;
	information	= Info_Mod_Albi_Mutantengolem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Mutantengolem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht3))
	&& (Mod_Mutantengolem == 4)
	&& (Npc_IsDead(Monster_11057_Mutantengolem_AW))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Mutantengolem_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_00"); //To bylo blisko.... walczyles dobrze. Dla czlowieka.
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_15_01"); //Co to bylo?
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_02"); //Gleba bagienna.... Ale cos go jednak zmienilo. Musze sie temu przyjrzec......
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_03"); //Mam tylko nadzieje, ze kolejny miot, jaszczurki biale wylegna sie.

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);

	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "Co ma to wspólnego z Toba z bialymi jaszczurami i golemami?", Info_Mod_Albi_Mutantengolem_C);
	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "Wszystko, co moge dla Ciebie zrobic?", Info_Mod_Albi_Mutantengolem_B);
	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "W kazdym razie ide do swiatyni.", Info_Mod_Albi_Mutantengolem_A);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_C()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_C_15_00"); //Co ma to wspólnego z Toba z bialymi jaszczurami i golemami? Cos jest nie tak.
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_C_23_01"); //Chce, zeby pan o tym wiedzial, ale nie tutaj. Potrzebuje troche odpoczynku, przychodze do kabiny na najblizsze dni.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_B()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_B_15_00"); //Wszystko, co moge dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_B_23_01"); //Tak..... ale jeszcze nie. Przyjdz jutro do mojej kabiny.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_A()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_A_15_00"); //W kazdym razie ide do swiatyni.
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_A_23_01"); //Zrób to. Jesli masz czas, jest jeszcze wiele do zrobienia.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

INSTANCE Info_Mod_Albi_Geheimnis (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis_Condition;
	information	= Info_Mod_Albi_Geheimnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co musisz dla mnie zrobic?";
};

FUNC INT Info_Mod_Albi_Geheimnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Mutantengolem))
	&& (Wld_GetDay() > Mod_Echsis_Geheimnis_Tag)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis_15_00"); //Co musisz dla mnie zrobic?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_01"); //Najwazniejsza rzecza jest teraz jaja. Do tej pory powinni plywac w bagnie.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_02"); //Podnies je do góry. Powinna ich byc co najmniej dziesiec!
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_03"); //Wez go do straznika Brutloch w górnej czesci miasta.

	Log_CreateTopic	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Mam podnosic jaja jaszczurki w bagnie. Wydaje sie, ze plywaja w wodzie. Jesli mam co najmniej dziesiec kawalków, oddam je straznikowi przy wylegu w górnej czesci miasta.");

	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_01");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_02");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_03");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_04");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_05");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_06");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_07");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_08");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_09");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_10");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_11");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_12");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_13");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_14");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_15");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_16");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_17");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_18");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_19");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_20");
};

INSTANCE Info_Mod_Albi_Geheimnis2 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis2_Condition;
	information	= Info_Mod_Albi_Geheimnis2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaja znajduja sie w jaskini wylegu.";
};

FUNC INT Info_Mod_Albi_Geheimnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_EchseWache_05_Eier))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis2_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis2_15_00"); //Jaja znajduja sie w jaskini wylegu. Ale w bagnie znajduje sie niezwykle duza liczba golemów.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_01"); //Tego wlasnie sie obawialem..... Ale nic nie moge zrobic, dopóki inna jaszczurka nie wyladuje.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_02"); //Ale jesli nie opanujemy problemu z golemami, oni nas omina. Wyslemy wojowników na pogranicze.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_03"); //Uplynie troche czasu zanim jaja wylegnie sie. Jesli chcesz byc uzyteczny, zabij Golemy.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "To zajmie troche czasu, zanim nowe jaszczurki wylegna sie. Tak dlugo, jak dlugo musze zabijac Golemy w bagnie.");

	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_07");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_WAND_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_06");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP1_07");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_LITTLE_HILL_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_13");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_12");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SOUTHEAST_TELEPORTSTATION");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_06");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_10");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_MONSTER_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_SIDE_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_SIDE_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_LOCH_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_LOCH_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_PFUETZE_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_PATH_TO_GOLEM_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP2_01");

	Mod_Echsis_Golemkiller = 0;
};

INSTANCE Info_Mod_Albi_Geheimnis3 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis3_Condition;
	information	= Info_Mod_Albi_Geheimnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Geheimnis3_Condition()
{
	if (Mod_Echsis_Geheimnis == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_00"); //Och, tam jestescie. Mielismy szczescie, dostalismy dwie nowe jaszczurki biale.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_01"); //Jestes godny byc inicjowany. Opowiedzialem im juz nasza historie.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_02"); //Jesli chcesz ja poznac, usiadz i posluchaj.

	AI_PlayAniBS (hero, "T_STAND_2_SIT", BS_SIT);

	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_03"); //Wojna miedzy jaszczurami a golemami toczy sie od wielu bitew, ale jest to dla nas nieodzowne, bo inaczej nie bylibysmy w stanie odtworzyc.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_04"); //Ponadto dorastaja tylko jaszczurki, które doswiadczyly tego, co znaczy zyc i stawiac czola smierci w czasie wojny.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_05"); //Na poczatku historii nie bylo pewnosci, kto wygra wojne, ale jeszcze przed eonami wygrali ja nasi przodkowie.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_06"); //Rezultatem tego byly konflikty, wojny plemienne, zawisc.... Wiecej przeklenstwo, z którym sie wywalczylismy bylo wielorakie.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_07"); //Tak wiec plemienne przywódcy postanowili wyhodowac nowe golematy.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_08"); //Rodzic sie?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_09"); //Tak. Odkryli, ze golemy bagienne dojrzewaja z buds pewnych roslin.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_10"); //W Bialym Ogrodzie wyhodowali Golemy, aby wojna z nimi ponownie nas zjednoczyla.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_11"); //Dlaczego tak wazne sa jaszczurki biale?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_12"); //Golemowie nie widza naszych szop w zmierzchu. Mozemy sie miedzy nimi swobodnie przemieszczac. Oznacza to, ze mozemy sie miedzy nimi swobodnie przemieszczac.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_13"); //Na krótko przed waszym przybyciem, moi bracia nigdy nie wrócili, Golemowie ich zabili.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_14"); //Poniewaz bialy ogród byl zamkniety, zadne golematy nie mogly wyjsc, ale jako ostatni bialy mezczyzna nie wolno mi bylo opuscic miasta.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_15"); //Ale teraz Oleje rozmnazaja sie bez przeszkód, nikt z nas nie moze ich obciac. Jesli nic nie zrobimy, oni zmyja nas.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_16"); //Jaszczurki biale nie sa wojownikami, a poniewaz nasz kamuflaz przestal dzialac, nie mozemy bez pomocy dostac sie do ogrodu. Musicie nam Panstwo pomóc.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_17"); //Dlaczego nie pozwolisz swoim wojownikom sie tam przeniesc?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_18"); //Fool! Czy myslisz, ze wiedza, ze walka juz dawno minela?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_19"); //Wiara w naszego wroga trzyma nas razem. Gdyby oni znali prawde, nasza rasa bylaby potepiona.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_20"); //Pomozecie nam Panstwo pomóc?
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_21"); //Wszystkie sluszne, wszystkie sluszne.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_22"); //Jestesmy Panstwu winni dlug wdziecznosci. Zorganizuje bitwe. To rozpraszy wiekszosc golemów.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_23"); //Wez te dwie rzeczy razem z toba. Przynajmniej jedna z nich musi przybyc bezpiecznie do ogrodu, aby wylaczyc pulapke.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_24"); //Zabijaj golemów i sprawdz, co je zmienilo!
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_25"); //Czekamy na nas poza brama, jesli bedziecie gotowi, spotkamy sie z nami.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Razem z dwoma nowymi jaszczurami bialymi mam wyruszyc do bialego ogrodu, miejsca pochodzenia golemów bagiennych i znalezc powód ich mutacji. Przynajmniej jeden z jaszczurów bialych musi przezyc zywa droge, aby wylaczyc pulapke przy wejsciu. Albi i jaszczurki biale przygotowuja teraz bitwe i czekaja na mnie przy wejsciu do miasta.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ABLENKUNG");
	B_StartOtherRoutine	(Mod_12021_DRA_Albino_AW, "TOR");
	B_StartOtherRoutine	(Mod_12022_DRA_Albino_AW, "TOR");

	B_StartOtherRoutine	(Mod_12002_DRA_Patroullie_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12004_DRA_Wache_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12005_DRA_Wache_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12006_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12009_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12010_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12011_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12012_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12013_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12014_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12015_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12018_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12019_DRA_Echse_AW, "SCHLACHT");

	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_WAND_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_LITTLE_HILL_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_13");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_12");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_10");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_MONSTER_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_PATH_TO_GOLEM_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP2_01");

	Wld_InsertNpc	(Alraune_Echsis,	"FP_ROAM_HEILER");
};

INSTANCE Info_Mod_Albi_Geheimnis4 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis4_Condition;
	information	= Info_Mod_Albi_Geheimnis4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotowy.";
};

FUNC INT Info_Mod_Albi_Geheimnis4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis3))
	&& (Npc_GetDistToWP(self, "BL_ENTRANCE_04_B") < 500)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis4_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis4_15_00"); //Jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis4_23_01"); //Bardzo dobry. Bitwa moze sie rozpoczac.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis4_23_02"); //Ci dwaj przyjda za toba, zajma sie nimi.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Razem z dwoma nowymi jaszczurami bialymi mam wyruszyc do bialego ogrodu, miejsca pochodzenia golemów bagiennych i znalezc powód ich mutacji. Przynajmniej jeden z jaszczurów bialych musi przezyc zywa droge, aby wylaczyc pulapke przy wejsciu. Albi i jaszczurki biale przygotowuja teraz bitwe i czekaja na mnie przy wejsciu do miasta.");

	B_StartOtherRoutine	(self, "HUT");
	B_StartOtherRoutine	(Mod_12021_DRA_Albino_AW, "FOLLOW");
	B_StartOtherRoutine	(Mod_12022_DRA_Albino_AW, "FOLLOW");

	Mod_12021_DRA_Albino_AW.aivar[AIV_Partymember] = TRUE;
	Mod_12022_DRA_Albino_AW.aivar[AIV_Partymember] = TRUE;

	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");

	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");

	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
};

INSTANCE Info_Mod_Albi_Geheimnis5 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis5_Condition;
	information	= Info_Mod_Albi_Geheimnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mielismy sukces.";
};

FUNC INT Info_Mod_Albi_Geheimnis5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis4))
	&& (Mod_AlraunenFalle == 2)
	&& (Npc_IsDead(Alraune_Echsis))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis5_15_00"); //Mielismy sukces. W ogrodzie byl mandarak.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_01"); //To tlumaczy mutacje golemów. Uratowales nasza rase przed zniszczeniem. W naszym miescie zawsze jestes mile widziany.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_02"); //Poza tym zdobyles prawo wojownika.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_03"); //Jesli chcesz rozpoczac walke, daj mi znac. Dostane wojowników i pozwole golemnikom dojrzec.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Problem z golemami zostaje rozwiazany i jestem teraz panem jaszczurów. Moge polowac na Golemy w kazdej chwili, kiedy tylko czuje sie do tego przyzwyczajony.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_18);

	B_GivePlayerXP	(2500);
};

INSTANCE Info_Mod_Albi_Unbewaffnet (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Unbewaffnet_Condition;
	information	= Info_Mod_Albi_Unbewaffnet_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz, abym poszedl do nieuzbrojonych golemów?";
};

FUNC INT Info_Mod_Albi_Unbewaffnet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Unbewaffnet_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Unbewaffnet_15_00"); //Chcesz, abym poszedl do nieuzbrojonych golemów? Mozna bylo pozwolic, aby ten rekin bagienny rozerwal mnie na strzepy.
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_01"); //Tutaj Golemherzen.

	B_GiveInvItems	(self, hero, ItAt_SwampGolemHeart, 2);

	AI_Output(hero, self, "Info_Mod_Albi_Unbewaffnet_15_02"); //Co mam zrobic z sercami golema?
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_03"); //Tak samo jak z ostatnim, który wam dalem.
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_04"); //Wlóz go do ognia, wez serce odlamki i kup bron i ziola!
};

INSTANCE Info_Mod_Albi_EigeneSachen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_EigeneSachen_Condition;
	information	= Info_Mod_Albi_EigeneSachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge odebrac Moje rzeczy?";
};

FUNC INT Info_Mod_Albi_EigeneSachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_EigeneSachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_EigeneSachen_15_00"); //Czy moge odebrac Moje rzeczy?
	AI_Output(self, hero, "Info_Mod_Albi_EigeneSachen_23_01"); //Nie.
};

INSTANCE Info_Mod_Albi_Schluessel (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schluessel_Condition;
	information	= Info_Mod_Albi_Schluessel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest do tego klucz?";
};

FUNC INT Info_Mod_Albi_Schluessel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schluessel_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Schluessel_15_00"); //Jaki jest do tego klucz?
	AI_Output(self, hero, "Info_Mod_Albi_Schluessel_23_01"); //Do bramy w bagnie, to wszystko, co trzeba wiedziec.
	AI_Output(self, hero, "Info_Mod_Albi_Schluessel_23_02"); //Nie szukaj tego, tylko znajdziesz smierc. Teraz odejdzmy!
};

INSTANCE Info_Mod_Albi_WarumNichtSelbst (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_WarumNichtSelbst_Condition;
	information	= Info_Mod_Albi_WarumNichtSelbst_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie idziesz sam?";
};

FUNC INT Info_Mod_Albi_WarumNichtSelbst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht2))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_WarumNichtSelbst_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_WarumNichtSelbst_15_00"); //Dlaczego nie idziesz sam?
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_01"); //Jestem ostatnia jaszczurka biala, nie moge opuscic miasta.
	AI_Output(hero, self, "Info_Mod_Albi_WarumNichtSelbst_15_02"); //A dlaczego nie wysylasz wojowników czy harcerzy?
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_03"); //Poniewaz nie mówisz w naszym jezyku i nikt i tak nie uwierzylby w ciebie.
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_04"); //Teraz wyjdz z oczu.
};

INSTANCE Info_Mod_Albi_EXIT (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_EXIT_Condition;
	information	= Info_Mod_Albi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Albi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
