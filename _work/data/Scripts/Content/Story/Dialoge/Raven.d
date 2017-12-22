var int BEL_Erzumwandlung;

INSTANCE Info_Mod_Raven_Hi (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Hi_Condition;
	information	= Info_Mod_Raven_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_Hi_03_00"); //Owlosiony tylek Beliara! Widzialem cie juz wczesniej!
	AI_Output(hero, self, "Info_Mod_Raven_Hi_15_01"); //(gardlo w wózkach)
	AI_Output(self, hero, "Info_Mod_Raven_Hi_03_02"); //Albo dlaczego jestem zdesperowany, aby wypolerowac Twoja twarz?
};

INSTANCE Info_Mod_Raven_WerBistDu (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_WerBistDu_Condition;
	information	= Info_Mod_Raven_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= ".... Uh, to znaczy, kim jestes?";
};

FUNC INT Info_Mod_Raven_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_WerBistDu_15_00"); //.... Uh, to znaczy, kim jestes?
	AI_Output(self, hero, "Info_Mod_Raven_WerBistDu_03_01"); //Jestem Ravenem, szefem Rycerzy Demonicznych. I od teraz bede Cie pilnowal, chlopiec.
};

INSTANCE Info_Mod_Raven_WarumDaemonenritter (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_WarumDaemonenritter_Condition;
	information	= Info_Mod_Raven_WarumDaemonenritter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tak wspaniale jest byc rycerzem demonów?";
};

FUNC INT Info_Mod_Raven_WarumDaemonenritter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_WarumDaemonenritter_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_WarumDaemonenritter_15_00"); //Co tak wspaniale jest byc rycerzem demonów?
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_03_01"); //(smiech) Ze mozemy zamknac sie o takich kielbaskach jak ty, jesli chcemy.
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_03_02"); //Jestesmy silami Beliara, uzbrojonymi w najpotezniejsza bron, zbroje, zaklecia i aprobate ciemnego Boga.
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_03_03"); //W najblizszej przyszlosci nasza armia bedzie niezwyciezona.
};

INSTANCE Info_Mod_Raven_Belagerung (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Belagerung_Condition;
	information	= Info_Mod_Raven_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz racje?";
};

FUNC INT Info_Mod_Raven_Belagerung_Condition()
{
	if (GardeAnfangCutscene == 2)
	&& (Npc_IsDead(Mod_1999_UntoterNovize_04_MT))
	&& (Npc_IsDead(Mod_4000_UntoterNovize_05_MT))
	&& (Npc_IsDead(Mod_4001_UntoterNovize_05_MT))
	&& (Npc_IsDead(Mod_4002_UntoterNovize_06_MT))
	&& (Npc_IsDead(Mod_4003_UntoterNovize_07_MT))
	&& (Npc_IsDead(Mod_4004_UntoterNovize_08_MT))
	&& (Npc_IsDead(Mod_4005_UntoterNovize_09_MT))
	&& (Npc_IsDead(Mod_4006_UntoterMagier_01_MT))
	&& (Npc_IsDead(Mod_4007_UntoterMagier_02_MT))
	&& (Npc_IsDead(Mod_4008_UntoterMagier_03_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_00"); //Czy masz racje?
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_01"); //Tak, dziekuje. Te damskie Innosy dranie. Jakie ma to znaczenie? Myslalam, ze tam jest pokój!
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_02"); //Nie jest to odpowiedzialnosc klasztoru, ale amuletu, w którym uwieziono tak zwana straz Innoska.
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_03"); //Dzieki otwarciu amuletu jest on wolny i teraz zagraza naszemu bóstwu. Przyjechalem tu, aby pana poprzec.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_04"); //Skumbag ten. Utknelismy tutaj, a Ty jestes jedynym, który chce nam pomóc?
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_05"); //Planowalem to zrobic.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_06"); //Cóz, czeka na ciebie wiele pracy!

	B_Say	(hero, self, "$WASISTZUTUN");

	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_07"); //Cóz, ten atak powaznie nas oslabil. Porozmawiaj z waznymi ludzmi, prawdopodobnie beda mieli wystarczajaco duzo do zrobienia, abys mógl rozpoczac kontratak.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_08"); //O tak, slyszalem, ze w dolinie doliny w drodze do Bengars Hof powinna byc duza grupa.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_03_09"); //Nalezy ich unikac. Zajmiemy sie tym pózniej.

	B_LogEntry	(TOPIC_MOD_BEL_BELAGERUNG, "Walczylismy z atakujacymi, ale zostalismy powaznie oslabieni. Raven uwaza, ze powinienem sie przydac.");
};

INSTANCE Info_Mod_Raven_BelagerungAufgabe (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_BelagerungAufgabe_Condition;
	information	= Info_Mod_Raven_BelagerungAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co chcesz, abym zrobil?";
};

FUNC INT Info_Mod_Raven_BelagerungAufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_BelagerungAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungAufgabe_15_00"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungAufgabe_03_01"); //Nie rzecz cholerna! Pomóz innym, aby przygotowac sie do kontrataku. Wtedy zobaczymy.
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungAufgabe_15_02"); //A zatem wszystko w porzadku.
};

INSTANCE Info_Mod_Raven_BelagerungHilfe (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_BelagerungHilfe_Condition;
	information	= Info_Mod_Raven_BelagerungHilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy pomoglam wystarczajaco duzo?";
};

FUNC INT Info_Mod_Raven_BelagerungHilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungAufgabe))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gomez_Durchbruch))
	&& (Npc_KnowsInfo(hero, Info_Mod_Eduard_Trolle))
	&& (Npc_KnowsInfo(hero, Info_Mod_Scar_HabBauanleitung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Abdi_DaemonTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Fahim_SchreinRepariert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_BelagerungHilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_00"); //Czy pomoglam wystarczajaco duzo?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_03_01"); //Pomógles Scar w zdobyciu nowych nowicjuszy. Naprawil pan bialoruska kapliczke dla Fahima. Zabiles demon. Pomógles Eduardowi wzmocnic bron naszych nowicjuszy i pokonales wiekszosc nieumarlych. Wszystko w porzadku, to wystarczy!
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_02"); //Jakie sa wiec kolejne kroki?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_03_03"); //Musimy spróbowac przekonac bandytów, aby zaatakowali pozostalych nieumarlych na plaskowyzu. Nie mozemy tego dokonac bez wsparcia.
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_03_04"); //Dopiero po zabiciu wrogów mozemy zadbac o straz Inno.
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_05"); //Jak mam przekonac najemników?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_03_06"); //Masz dobre kontakty z Nowym Obozem. Przekonaj ich, aby dali nam ludzi!
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_07"); //Wkrótce odjezdzam.
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_03_08"); //Chodz, spiesz sie. Czas nie jest naszym sprzymierzencem! W obozie przed Wolna Kopalnia na pewno znajdziecie kibiców.

	B_GivePlayerXP	(800);

	Log_CreateTopic	(TOPIC_MOD_BEL_SOELDNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_SOELDNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "W naszej twierdzy znów jestesmy calkiem bezpieczni, ale teraz musimy pokonac Innosów. Nie mamy jednak zadnych szans na to, by sprzeciwic sie nieumarlym. Raven poprosil mnie, abym poprosil najemników w Wolnej Kopalni o pomoc.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELAGERUNG, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Raven_SoeldnerSold (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SoeldnerSold_Condition;
	information	= Info_Mod_Raven_SoeldnerSold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Niewielki problem dotyczy najemników.";
};

FUNC INT Info_Mod_Raven_SoeldnerSold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungHilfe))
	&& (Mod_GornsSold == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SoeldnerSold_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_00"); //Jest troche problemu z bandytami.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_03_01"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_02"); //Bullco powiedzial, ze jego ludzie maja tylko 10 lat. 000 sztuk zlota byloby z nami gotowych do walki!
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_03_03"); //To jest zart, prawda?
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_04"); //W ogóle nie.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_03_05"); //(angry) Wszystkie prawa. Oto dziesiec. 000 sztuk zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10000);

	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_03_06"); //Mam nadzieje, ze najemnicy juz nie chca.

	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "Raven dal mi zloto. Teraz powinienem ja zabrac do Bullco i wtedy moze rozpoczac sie bitwa.");
};

INSTANCE Info_Mod_Raven_SoeldnerDabei (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SoeldnerDabei_Condition;
	information	= Info_Mod_Raven_SoeldnerDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "najemnicy beda nas wspierac.";
};

FUNC INT Info_Mod_Raven_SoeldnerDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bullco_Sold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SoeldnerDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerDabei_15_00"); //Bandyci beda nas wspierac. Dzis wieczorem zaatakuja. Chca, abysmy dotarli do kotliny doliny.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerDabei_03_01"); //Bardzo dobrze, przyjsc na plaskowyz okolo pólnocy, tam bedziemy czekac.
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerDabei_15_02"); //Wszystkie sluszne, wszystkie sluszne.

	B_GivePlayerXP	(250);

	B_SetTopicStatus	(TOPIC_MOD_BEL_SOELDNER, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1030_SNOV_Abdi_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_518_SMK_Scar_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1029_SMK_Fahim_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1027_SMK_Eduard_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "AUFSTELLUNG");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Raven_ArgibastDead (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ArgibastDead_Condition;
	information	= Info_Mod_Raven_ArgibastDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_ArgibastDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argibast_Hi))
	&& (Npc_IsDead(GardeInnos_4050_Argibast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ArgibastDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_ArgibastDead_03_00"); //Robi sie to, oblezenie jest zepsute.
	AI_Output(hero, self, "Info_Mod_Raven_ArgibastDead_15_01"); //Nie bylo to latwe.
	AI_Output(self, hero, "Info_Mod_Raven_ArgibastDead_03_02"); //Ma pani racje. Teraz zglos sie do Xardasa i daj mu znac.
	AI_Output(hero, self, "Info_Mod_Raven_ArgibastDead_15_03"); //Bede, to zrobie.

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "START");
	B_StartOtherRoutine	(Mod_1030_SNOV_Abdi_MT, "START");
	B_StartOtherRoutine	(Mod_518_SMK_Scar_MT, "START");
	B_StartOtherRoutine	(Mod_1029_SMK_Fahim_MT, "START");
	B_StartOtherRoutine	(Mod_1027_SMK_Eduard_MT, "START");
	B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "START");
	B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "START");
	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "START");
	B_StartOtherRoutine	(Mod_1269_SLD_Blade_MT, "START");
};

INSTANCE Info_Mod_Raven_SchwarzesErz (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SchwarzesErz_Condition;
	information	= Info_Mod_Raven_SchwarzesErz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyszedlem po Twoja rade.";
};

FUNC INT Info_Mod_Raven_SchwarzesErz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_Beliarstein))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SchwarzesErz_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_00"); //Przyszedlem po Twoja rade.
	AI_Output(self, hero, "Info_Mod_Raven_SchwarzesErz_03_01"); //O co w tym wszystkim chodzi?
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_02"); //Fahim zamierza naprawic bialoruskie sanktuarium. Jednak jego zródlo zostalo zniszczone, a znaleziony przeze mnie kamien wymaga sily czarnej rudy, a wiec i beliarskiej swiatyni.
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_03"); //Nie pozostaje tu jednak czarna ruda. Gdzie moge je dostac?
	AI_Output(self, hero, "Info_Mod_Raven_SchwarzesErz_03_04"); //Znam sposób na przeksztalcenie zwyklej rudy w czarna rude. Potrzebuje jednak dwóch kawalków rudy, aby zrobic czarna rude.

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Raven moze produkowac czarna rude z magicznej rudy. Teraz wszystko co musze zrobic, to znalezc z tego dwa kawalki.");
};

INSTANCE Info_Mod_Raven_MagischesErz (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_MagischesErz_Condition;
	information	= Info_Mod_Raven_MagischesErz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rude.";
};

FUNC INT Info_Mod_Raven_MagischesErz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_SchwarzesErz))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_MagischesErz_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_MagischesErz_15_00"); //Dostalem rude.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 2);

	AI_Output(self, hero, "Info_Mod_Raven_MagischesErz_03_01"); //To dobra wiadomosc. Wróc jutro i zlap czarna rude.
	
	B_GivePlayerXP	(150);

	Bel_Erzumwandlung = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Dalem rude Ravenowi. Jutro moge odebrac czarna rude.");
};

INSTANCE Info_Mod_Raven_ErzFertig (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ErzFertig_Condition;
	information	= Info_Mod_Raven_ErzFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes gotowy?";
};

FUNC INT Info_Mod_Raven_ErzFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_MagischesErz))
	&& (Wld_GetDay() > Bel_Erzumwandlung)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ErzFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_ErzFertig_15_00"); //Czy jestes gotowy?
	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_03_01"); //Tak, sa tu cztery czarne kawalki rudy.

	B_GiveInvItems	(self, hero, ItMi_Zeitspalt_Addon, 4);

	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_03_02"); //Bylem w stanie podwoic kwote za pomoca zaklecia zwielokrotnienia!
	AI_Output(hero, self, "Info_Mod_Raven_ErzFertig_15_03"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_03_04"); //Idz teraz i kontynuuj wykonywanie swoich zadan!
	
	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Mam teraz czarna rude. Teraz zobacz Eduard.");
};

INSTANCE Info_Mod_Raven_ToteNovizen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ToteNovizen_Condition;
	information	= Info_Mod_Raven_ToteNovizen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mysle, ze mamy powazny problem.";
};

FUNC INT Info_Mod_Raven_ToteNovizen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_ToteNovizen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ToteNovizen_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_00"); //Mysle, ze mamy powazny problem.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_01"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_02"); //Mysle, ze demon popelnil morderstwo!
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_03"); //demon? Zauwazylibysmy to juz teraz! Poza tym zwolennicy Innosa nie maja nic wspólnego z demonami!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_04"); //Czarodziejom ognia zabrania sie przywolywac demony. Dlaczego nie byliby w stanie tego zrobic nieumarli?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_05"); //Nawet gdybysmy mieli, zauwazylibysmy obecnosc demona dawno temu!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_06"); //Czy jest jakis wyjatek?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_07"); //Tak, sa sludzy zla, którzy moga uzywac metarmorfoz. Sila przemiany w inna istote.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_08"); //Demon demon powinien byl osiedlic sie w jednym z naszych nowicjuszy!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_09"); //Jak rozpoznac demona?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_10"); //Musialbys klamac czekac w nocy i zabic go.
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_11"); //Wtedy to zrobie.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_03_12"); //Dobrze, ale badzcie ostrozni! demon musi miec zatrzaski,
	
	Wld_InsertNpc	(Mod_4015_SNOV_BesessenerNovize_MT, "TOT");

	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "Raven uwaza demona za malo prawdopodobnego, chyba ze osiadl w jednym z obozowisk. Mam rozgladac sie noca.");
};

INSTANCE Info_Mod_Raven_Befoerderung (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Befoerderung_Condition;
	information	= Info_Mod_Raven_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc czarnym wojownikiem.";
};

FUNC INT Info_Mod_Raven_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_BefoerderungKrieger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Befoerderung_15_00"); //Chce byc czarnym wojownikiem.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_03_01"); //Wiec wybierasz droge walki. To byla sluszna decyzja.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_03_02"); //Podniose cie do rangi Czarnego Wojownika.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_03_03"); //Oto Twoja zbroja.

	CreateInvItems	(self, ITAR_SMK_L, 1);
	B_GiveInvItems	(self, hero, ITAR_SMK_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_SMK_L);

	B_GivePlayerXP	(400);

	B_Göttergefallen(3, 5);

	Mod_Gilde = 15;

	Snd_Play ("LEVELUP");
};

INSTANCE Info_Mod_Raven_GomezLebenLassen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_GomezLebenLassen_Condition;
	information	= Info_Mod_Raven_GomezLebenLassen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_GomezLebenLassen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Gomez))
	&& (!Npc_IsInState(Mod_680_DMB_Xardas_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_GomezLebenLassen_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_GomezLebenLassen_03_00"); //To prawda. Pozwól mu zyc. Bede równiez nakazal wojska natychmiast opuscic wasz obóz.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raven_Oric (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Oric_Condition;
	information	= Info_Mod_Raven_Oric_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_Oric_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_Gomez))
	&& (!Npc_IsInState(Mod_7039_PAL_Oric_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Oric_Info()
{
	AI_TurnToNpc	(self, Mod_7039_PAL_Oric_MT);

	AI_Output(self, hero, "Info_Mod_Raven_Oric_03_00"); //zamkniety

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "DRAINED");
};

INSTANCE Info_Mod_Raven_GomezNervt (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_GomezNervt_Condition;
	information	= Info_Mod_Raven_GomezNervt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_GomezNervt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL3))
	&& (!Npc_IsInState(Mod_517_DMR_Gomez_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_GomezNervt_Info()
{
	AI_TurnToNpc	(self, Mod_517_DMR_Gomez_MT);

	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_03_00"); //Gdybym nie byl dla mnie, ta paczka na koncu Doliny Kopalni rozerwalaby Cie od siebie i teraz pracujesz dla mnie.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_03_01"); //Jako rekompensate daje wam miecz zwany gniewem Innosa, który Gomez uzywal podczas starego obozu.
	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_03_02"); //Niech to bedzie w waszych rekach znak swietlanej przyszlosci Starego Obozu.

	B_GiveInvItems	(self, hero, ItMw_1H_Blessed_03, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raven_Teacher (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Teacher_Condition;
	information	= Info_Mod_Raven_Teacher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Raven_Teacher_Condition()
{
	if(Npc_KnowsInfo(hero, Info_Mod_Raven_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Teacher_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Raven_Teacher_03_01"); //Tak, pokaze wam jak sie wzmocnic.
	AI_Output(self, hero, "Info_Mod_Raven_Teacher_03_02"); //Poza tym, moge nauczyc Cie jak uzywac broni dwurecznej.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Raven moze nauczyc mnie jak stac sie silniejszym i jak obchodzic sie z bronia dwureczna.");
};

INSTANCE Info_Mod_Raven_Lernen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Lernen_Condition;
	information	= Info_Mod_Raven_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Raven_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Teacher))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Lernen_15_00"); //Chce sie uczyc.
	AI_Output(self, hero, "Info_Mod_Raven_Lernen_03_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(walka dwureczna)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(wytrzymalosc)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(walka dwureczna)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(wytrzymalosc)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Raven_Lernen);

		Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Raven_Lernen);

		Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
	};
};	

FUNC VOID Info_Mod_Raven_Lernen_Staerke()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(walka dwureczna)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(wytrzymalosc)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Raven_Pickpocket (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Pickpocket_Condition;
	information	= Info_Mod_Raven_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Raven_Pickpocket_Condition()
{
	C_Beklauen	(161, ItMi_Gold, 92);
};

FUNC VOID Info_Mod_Raven_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

	Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_BACK, Info_Mod_Raven_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raven_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raven_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
};

FUNC VOID Info_Mod_Raven_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raven_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raven_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raven_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raven_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raven_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raven_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raven_EXIT (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_EXIT_Condition;
	information	= Info_Mod_Raven_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raven_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
