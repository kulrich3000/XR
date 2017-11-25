INSTANCE Info_Mod_Daron_Hi (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Hi_Condition;
	information	= Info_Mod_Daron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Daron_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daron_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Daron_Hi_10_01"); //Jestem magikiem ognia Daronem. Co moge zrobic dla Ciebie, nieznajomego?
};

INSTANCE Info_Mod_Daron_ZugangZumKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_ZugangZumKloster_Condition;
	information	= Info_Mod_Daron_ZugangZumKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozecie dac mi dostep do klasztoru?";
};

FUNC INT Info_Mod_Daron_ZugangZumKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Hi))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_15_00"); //Czy mozecie dac mi dostep do klasztoru?
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_10_01"); //Czego chcesz w naszym klasztorze?

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	{
		Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "Mialem ukrasc swietego mlotka za przywolywaczy demonów.", Info_Mod_Daron_ZugangZumKloster_Witz);
	};
	Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "Chce byc nowicjuszem ognia.", Info_Mod_Daron_ZugangZumKloster_Novize);
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Witz()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Witz_15_00"); //Mialem ukrasc swietego mlotka za przywolywaczy demonów.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Witz_10_01"); //Widze, ze masz poczucie humoru. Ale my, magowie, jestesmy powaznymi ludzmi i nie chcemy sie smiac.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Witz_10_02"); //Teraz powiedz mi, dlaczego prosimy o przylaczenie sie do naszego klasztoru.
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Novize()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Novize_15_00"); //Chce byc nowicjuszem ognia.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Novize_10_01"); //Jesli to jest twoim pragnieniem, otrzymasz prosbe.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Novize_10_02"); //Ale nie daje wam klucza do naszej swietej bramy, dopóki nie uczynicie mi laski.

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Aby zostac nowicjuszem ognia, musze najpierw uzyskac dostep do klasztoru. Daron da mi klucz, jesli uczynie mu laske.");

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);

	Info_AddChoice	(Info_Mod_Daron_ZugangZumKloster, "Co mam dla Ciebie zrobic?", Info_Mod_Daron_ZugangZumKloster_Gefallen);
};

FUNC VOID Info_Mod_Daron_ZugangZumKloster_Gefallen()
{
	AI_Output(hero, self, "Info_Mod_Daron_ZugangZumKloster_Gefallen_15_00"); //Co mam dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_01"); //Pyrokar, glówny magik strazy pozarnej, wyslal mnie do miasta, aby dostac lekarstwo na chorobe, która zainfekowala niektórych z naszych nowicjuszy.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_02"); //Choroba ta wywolala goraczke, której nasza magia nie jest w stanie wyleczyc.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_03"); //Lekarstwo na to mozna znalezc w wodnym magikiem Vatrasie, który wyglasza kazania w swojej malej swiatyni w miescie.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_04"); //Ale moja duma z bycia magikiem ognia nie pozwala mi prosic maga wodnego o pomoc.
	AI_Output(self, hero, "Info_Mod_Daron_ZugangZumKloster_Gefallen_10_05"); //Bylbys mi naprawde laska, gdybys odebral lekarstwo od niego.

	Log_CreateTopic	(TOPIC_MOD_DARONSGEFALLEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DARONSGEFALLEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Mam otrzymac od maga wodnego Vatrasa lekarstwo od Darona.");

	Info_ClearChoices	(Info_Mod_Daron_ZugangZumKloster);

	B_StartOtherRoutine	(Mod_915_NOV_Dyrian_NW, "KRANK");
	B_StartOtherRoutine	(Mod_913_NOV_Agon_NW, "KRANK");
	B_StartOtherRoutine	(Mod_919_NOV_Igaraz_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1192_NOV_Novize_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1194_NOV_Novize_NW, "KRANK");
	B_StartOtherRoutine	(Mod_1195_NOV_Novize_NW, "KRANK");
};

INSTANCE Info_Mod_Daron_HabTrank (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_HabTrank_Condition;
	information	= Info_Mod_Daron_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam eliksir Vatrasa.";
};

FUNC INT Info_Mod_Daron_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ZugangZumKloster))
	&& (Npc_HasItems(hero, VatrasNovizenTrunk) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_HabTrank_15_00"); //Mam eliksir Vatrasa.

	B_GiveInvItems	(hero, self, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_01"); //Dzieki. Jesli chcecie, moge teraz zabrac Was do klasztoru.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_02"); //Ale jest jeszcze jedna rzecz, która uniemozliwia mi wyjazd.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_03"); //Nowicjuszka Akahasch zniknela kilka dni temu.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_04"); //Ostatnio byl on widoczny w dzielnicy portowej w tawernie.... byc moze bedziesz w stanie uzyskac informacje o miejscu pobytu.... Nienawidzilabym sie, gdybys sam poszedl tam, jesli wiesz, co mam na mysli.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_05"); //Wiec jesli....
	AI_Output(hero, self, "Info_Mod_Daron_HabTrank_15_06"); //(ocze skrecenie) Tak, rozumiem. Pytam.
	AI_Output(self, hero, "Info_Mod_Daron_HabTrank_10_07"); //Bardzo dobry. Jak tylko go odnajdziesz, przyprowadz go do mnie.

	B_GivePlayerXP	(50);

	Log_CreateTopic	(TOPIC_MOD_ASS_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DARONSGEFALLEN, TOPIC_MOD_ASS_AUFNAHME, "Dalem Daronowi eliksir.", "Zeby Daron towarzyszyl mi w klasztorze, musze najpierw poznac miejsce pobytu nowicjusza Akahascha. Ostatnio byl widoczny w tawernie w dzielnicy portowej. Jak tylko go znajde, zabiore go do Darona.");

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Daron_Akahasch (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Akahasch_Condition;
	information	= Info_Mod_Daron_Akahasch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Akahascha.";
};

FUNC INT Info_Mod_Daron_Akahasch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_HabTrank))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Akahasch_Hi))
	|| (Npc_IsDead(Mod_4016_NOV_Akahasch_NW)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Akahasch_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_00"); //Znalazlem Akahascha.

	if (Mod_Akahasch_Guiding == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_01"); //Ach, widze, ze on jest z toba. Przejdzmy prosto do klasztoru, reszte mozna tam omówic.
	}
	else if (Mod_Akahasch_Guiding == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_02"); //Przywiózlem go z powrotem do klasztoru.
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_03"); //Tak? To dobra wiadomosc. Wtedy mozemy natychmiast odjechac.
	}
	else if (Mod_Akahasch_Guiding == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	{
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_04"); //Gdzie jest?
		AI_Output(hero, self, "Info_Mod_Daron_Akahasch_15_05"); //Zmarl w poblizu latarni morskiej.... Wiecej dzikie zwierzeta musza go zlapac.
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_06"); //Co mówisz? Innos ma milosierdzie na jego duszy. Ale co on stracil w srodku pustyni?
		AI_Output(self, hero, "Info_Mod_Daron_Akahasch_10_07"); //Tak czy inaczej, nie ma juz nic, co bym mial w miescie. Przejdzmy wiec do klasztoru.
	};

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_ASS_AUFNAHME, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Daron_KlosterGuide (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_KlosterGuide_Condition;
	information	= Info_Mod_Daron_KlosterGuide_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zabierz mnie do klasztoru.";
};

FUNC INT Info_Mod_Daron_KlosterGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Akahasch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_KlosterGuide_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_KlosterGuide_15_00"); //Zabierz mnie do klasztoru.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterGuide_10_01"); //Wszystko w porzadku, podazaj za mna.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKLOSTER");
};

INSTANCE Info_Mod_Daron_InsKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_InsKloster_Condition;
	information	= Info_Mod_Daron_InsKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_InsKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_KlosterGuide))
	&& (Npc_GetDistToWP(self, "NW_MONASTERY_ENTRY_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_InsKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_00"); //Hier ist das Kloster. Du wirst allerdings nicht ohne weiteres hineinkommen.
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_01"); //Ich werde die Flammen für dich einfrieren, damit du das Tor durchschreiten kannst. Solange du Innos treu bleibst kannst du dieses Tor immer durchschreiten, auch wenn du nicht zu uns gehörst. 
	AI_Output(self, hero, "Info_Mod_Daron_InsKloster_10_02"); //Komm weiter.

	Npc_ExchangeRoutine	(self, "GUIDEINKLOSTER");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Akahasch2 (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Akahasch2_Condition;
	information	= Info_Mod_Daron_Akahasch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Akahasch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_InsKloster))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))
	|| ((Mod_Akahasch_Guiding == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Akahasch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_10_00"); //Teraz chcialbym wiedziec, co Akahash stracil na pustyni?

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	Info_AddChoice	(Info_Mod_Daron_Akahasch2, "Gromada dziwaków goniacych za nim w miescie.", Info_Mod_Daron_Akahasch2_B);
	Info_AddChoice	(Info_Mod_Daron_Akahasch2, "Zlozyl zaklad i wystartowal.", Info_Mod_Daron_Akahasch2_A);
};

FUNC VOID Info_Mod_Daron_Akahasch2_B()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch2_B_15_00"); //Gromada dziwaków goniacych za nim w miescie.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_B_10_01"); //Tak! Hmm..... czcigodni sludzy najwyzszego bogów musza czasami sprzeciwiac sie wrogosciom niegodnych.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_B_10_02"); //Akahasch przetrwal nalozony na niego test i ma wykorzystac nastepne tygodnie w klasztorze do odzyskania ciala i umyslu.

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	B_StartOtherRoutine	(Mod_4016_NOV_Akahasch_NW, "KLOSTER2");
};

FUNC VOID Info_Mod_Daron_Akahasch2_A()
{
	AI_Output(hero, self, "Info_Mod_Daron_Akahasch2_A_15_00"); //Pieniadze zawdzieczal i uciekl, gdy ziemia rozgrzala sie pod nogami.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_A_10_01"); //Tak jest? Wtedy ciezka praca przez kilka tygodni z pewnoscia uniemozliwi mu mówienie wiecej jezyków.
	AI_Output(self, hero, "Info_Mod_Daron_Akahasch2_A_10_02"); //Powinien mnie poznac.....

	Info_ClearChoices	(Info_Mod_Daron_Akahasch2);

	B_StartOtherRoutine	(Mod_4016_NOV_Akahasch_NW, "KLOSTER2");

	Mod_DaronAkahasch_Day = Wld_GetDay();

	Mod_DaronAkahasch = 1;
};

INSTANCE Info_Mod_Daron_ImKloster (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_ImKloster_Condition;
	information	= Info_Mod_Daron_ImKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_ImKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_InsKloster))
	&& (Npc_GetDistToWP(self, "NW_MONASTERY_PLACE_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_ImKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_ImKloster_10_00"); //Cóz, tutaj jestesmy. Wez lek do Pyrokar.
	
	B_GiveInvItems	(self, hero, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Daron_ImKloster_10_01"); //Bede wykonywal swoja prace.

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Daron zabral mnie do klasztoru, abym wzial leki do Pyrokar.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LIFEKLOSTER");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Daron_FeuerGegenEis (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_FeuerGegenEis_Condition;
	information	= Info_Mod_Daron_FeuerGegenEis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_FeuerGegenEis_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_FeuerGegenEis_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_FeuerGegenEis_10_00"); //Ciesze sie, ze przyszedles. Teraz musisz porozmawiac z Pyrokar. Niezwlocznie udaj sie do niego.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Drachen (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Drachen_Condition;
	information	= Info_Mod_Daron_Drachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio zauwazyles cos niezwyklego?";
};

FUNC INT Info_Mod_Daron_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ImKloster))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Drachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Daron_Drachen_15_00"); //Czy ostatnio zauwazyles cos niezwyklego?
	AI_Output(self, hero, "Info_Mod_Daron_Drachen_10_01"); //Tak wlasnie rozumiem. Kazda noc w górach na zachód od klasztoru roztacza sie kazdego wieczoru jaskrawy blask.
	AI_Output(self, hero, "Info_Mod_Daron_Drachen_10_02"); //Co moze sie tam dziac?

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Daron opowiedzial o jasnym plomieniu w górach na zachód od klasztoru.");
};

INSTANCE Info_Mod_Daron_KlosterAngegriffen (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_KlosterAngegriffen_Condition;
	information	= Info_Mod_Daron_KlosterAngegriffen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_KlosterAngegriffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_KlosterAngegriffen_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_00"); //Z Innosem koszmar.
	AI_Output(hero, self, "Info_Mod_Daron_KlosterAngegriffen_15_01"); //Czy jest cos nowego?
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_02"); //Czy bedzie cos nowego! W nocy na nasz klasztor wkroczyly hordy ognistych demonów.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_03"); //Zdarzylo sie to tak nagle, ze nawet nie wiedzielismy, co sie z nami stalo.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_04"); //Po krótkiej walce musielismy poddac sie wyzszosci i ucieklismy do wewnetrznych pomieszczen.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_05"); //Poczatkowo bylismy zaskoczeni i szczesliwi widzac, ze wszyscy odeszlismy od zycia, co z pewnoscia zawdzieczamy naszemu doswiadczeniu w walce z ogniem.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_06"); //Nastepnego ranka odkrylismy jednak, ze dranie skradzily wiekszosc naszych bogactw i zapasów.
	AI_Output(self, hero, "Info_Mod_Daron_KlosterAngegriffen_10_07"); //Niesprawiedliwi, bestie, zwierzeta, ogniska.....
	AI_Output(hero, self, "Info_Mod_Daron_KlosterAngegriffen_15_08"); //Nie chce juz wiecej Cie niepokoic.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Katar (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Katar_Condition;
	information	= Info_Mod_Daron_Katar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Katar_Condition()
{
	if (Mod_Sekte_Karras >= 1)
	&& (Mod_Sekte_Joseppe < 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Katar_Info()
{
	AI_TurnToNpc	(self, Mod_1190_NOV_Katar_NW);

	AI_Output(self, hero, "Info_Mod_Daron_Katar_10_00"); //Co robisz? Innos nie zawsze moze przebaczyc! To oznacza kare.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Daron_Rasend (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Rasend_Condition;
	information	= Info_Mod_Daron_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Daron_Rasend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Martin_Rasend))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daron_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_00"); //Widze, jak wielu braci lezy tu przede mna. Gotowy reka przekletego demona.
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_01"); //Co sie stalo? Po raz kolejny zademonstrowac?
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_02"); //Tak, ta sama ohydna bestia odpowiedzialna za masakre miasta.
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_03"); //Zniknal znikad i zanim ktos zrozumial, co sie dzieje, zabil juz wielu moich braci.
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_04"); //Nie miales szansy....
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_05"); //A gdzie teraz jest demon, gdzie potem zniknal?
	AI_Output(self, hero, "Info_Mod_Daron_Rasend_10_06"); //Kiedy w koncu ugasil swoja chciwosc do zabicia, wstal znowu w powietrze i lecial na wschód w tym samym kierunku, w którym odszedl z miasta.
	AI_Output(hero, self, "Info_Mod_Daron_Rasend_15_07"); //Na wschód.... Ale z tym wlasnie bylby dokladnie..... wykopalisko magów wody! Musze isc dalej.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Nawet w klasztorze demon szaleje jak berserk. Ale to, co mnie bardziej martwi niz cokolwiek innego, to fakt, ze leci na wschód.... dosc wiele w kierunku miejsca wykopu.");

	B_KillNpc	(Mod_1535_WKR_Wasserkrieger_NW);
	B_KillNpc	(Mod_1534_WKR_Wasserkrieger_NW);

	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RASEND");
	B_StartOtherRoutine	(Mod_538_RDW_Diego_NW, "RASEND");
};

INSTANCE Info_Mod_Daron_Pickpocket (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_Pickpocket_Condition;
	information	= Info_Mod_Daron_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Daron_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_InnosStatue, 1);
};

FUNC VOID Info_Mod_Daron_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

	Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_BACK, Info_Mod_Daron_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Daron_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Daron_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
};

FUNC VOID Info_Mod_Daron_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Daron_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Daron_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Daron_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Daron_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Daron_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Daron_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Daron_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Daron_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Daron_EXIT (C_INFO)
{
	npc		= Mod_523_KDF_Daron_NW;
	nr		= 1;
	condition	= Info_Mod_Daron_EXIT_Condition;
	information	= Info_Mod_Daron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Daron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
