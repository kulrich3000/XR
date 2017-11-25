INSTANCE Info_Mod_Melvin_Hi (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Hi_Condition;
	information	= Info_Mod_Melvin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_29_00"); //Ty, Ty, Ty, Ty, Ty, Ty. Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "Spalic tu obóz, jak on wyglada?", Info_Mod_Melvin_Hi_B);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "Po prostu rozgladam sie dookola.", Info_Mod_Melvin_Hi_A);
};

FUNC VOID Info_Mod_Melvin_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_B_15_00"); //Spalic tu obóz, jak on wyglada?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_B_29_01"); //Tego sie obawialem. Chodzcie, mezczyzni, zabijcie go!

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Melvin_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_A_15_00"); //Po prostu rozgladam sie dookola.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_01"); //No cóz, to zle. Nie chcielibysmy raczej byc odkryci.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_02"); //A to dlatego, ze teraz wiecie, gdzie nas znalezc, musicie stac sie naszymi wspólnikami. W przeciwnym razie mozesz równie dobrze gwizdac na nas.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_03"); //A to oznacza, ze trzeba krasc zboze rolnika.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_04"); //Tego wlasnie potrzebujemy. Czy to, czy sa jakies pytania?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "Co ty z tym robisz?", Info_Mod_Melvin_Hi_D);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "Skad pochodzi ziarno?", Info_Mod_Melvin_Hi_C);
};

FUNC VOID Info_Mod_Melvin_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_00"); //Co ty z tym robisz?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_01"); //Wlasnie tego potrzebujemy, cóz, dla srodków, które chcemy opracowac. (pauza) Chcemy po prostu zrobic sobie male przysmaki, wiesz co mam na mysli?
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_02"); //Z ziarnem?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_03"); //To prawda, z ziarnem. Znalezlismy taki przepis.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_04"); //Mamy juz wszystkie inne skladniki, takie jak padlinozerca, schnapps i trzy grzyby muchowe.
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_05"); //I myslisz, ze to gonna praca?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_06"); //Uh, na pewno. Zagwarantowane halucynacje, na recepte.

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "Skad pochodzi ziarno?", Info_Mod_Melvin_Hi_C);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

FUNC VOID Info_Mod_Melvin_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_C_15_00"); //Skad pochodzi ziarno?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_C_29_01"); //Wszystko, czego potrzebujemy, znajduje sie w domu Erharda. Powinny to zrobic trzy torby.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Zlodziej Melvin potrzebuje trzech worków zboza z domu rolnika Erharda na zlowieszczego agenta, który podobno przypomina dawce radosci.");

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "Co ty z tym robisz?", Info_Mod_Melvin_Hi_D);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

INSTANCE Info_Mod_Melvin_Korndiebe (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe_Condition;
	information	= Info_Mod_Melvin_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rolnik nie ma zboza.";
};

FUNC INT Info_Mod_Melvin_Korndiebe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_00"); //Rolnik nie ma zboza.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_29_01"); //Huh, jak to mozliwe? Czy teraz musimy czekac az do nastepnych zbiorów? Co powinnismy zrobic tak dlugo?
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_02"); //Po prostu znajdz nowy przepis.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_29_03"); //Tak, to dobrze. Czy to slyszales? Szukamy innej recepty!

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe2_Condition;
	information	= Info_Mod_Melvin_Korndiebe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem ziarno.";
};

FUNC INT Info_Mod_Melvin_Korndiebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe2_15_00"); //Dostalem ziarno.

	B_GiveInvItems	(hero, self, ItMi_Kornballen, 3);

	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_29_01"); //Bardzo dobry. Uh, wiec teraz jest gonna warzyc eliksir.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_29_02"); //Jesli wrócisz jutro, byc moze równiez bedziesz mial lyk.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Kradlem zboze i moge odebrac czesc eliksiru jako nagrode nastepnym razem, gdy mine.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);

	Mod_REL_MelvinTrank = Wld_GetDay();

	CurrentNQ += 1;

	Mod_REL_Korndiebe = 3;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe3 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe3_Condition;
	information	= Info_Mod_Melvin_Korndiebe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Korndiebe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Korndiebe2))
	&& (Wld_GetDay() > Mod_REL_MelvinTrank)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe3_29_00"); //Oto dobre rzeczy. Stal sie troche mocny, mysle, ze jeszcze go nie wypróbowalismy.

	B_GiveInvItems	(self, hero, ItPo_FreudenspenderSuppe, 1);
};

INSTANCE Info_Mod_Melvin_Frauenkleider (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider_Condition;
	information	= Info_Mod_Melvin_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co masz na sobie?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider))
	&& (Mod_REL_Frauenkleider == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_00"); //Co masz na sobie?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_01"); //Nowe ubrania zlodzieja. Czyz nie?
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_02"); //Tak, ale wlasciciel chcialby, zeby ubrania wrócily.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_03"); //Nie! Ja ciezko na to pracowalem! Oni sa teraz moimi!
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_04"); //Czy nie uwazasz, ze robisz sobie posmiewisko?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_05"); //Dlaczego? Mile sukienki, czyz nie?
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_06"); //Pomysle o czyms. Zanotuj to.
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_07"); //Nie wiem, jak sie o tym przekonalem.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_08"); //Widzisz? Uh.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Moze kiedy jego towarzysze beda sie z niego smiac, Melvin wypusci ubrania.");
};

INSTANCE Info_Mod_Melvin_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider2_Condition;
	information	= Info_Mod_Melvin_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebujesz ubrania?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider))
	&& (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_00"); //Potrzebujesz ubrania?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_29_01"); //Zastanawialem sie, czy raczej, zebysmy jeszcze raz polozyli jakies spodnie. To kinda bardziej komfortowa.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_29_02"); //Zrób z ubraniami wszystko, co chcesz.

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ItAr_BDT_M_01);

	B_GiveInvItems	(self, hero, ItMi_Kleiderkoffer, 1);

	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_03"); //Bede, to zrobie.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Musze teraz odeslac jej ubrania do Elviry.");
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ty drzysz. Czy jestes zimny?";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	&& (Mod_Jim_Schutz < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_00"); //Ty drzysz. Czy jestes zimny?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_01"); //Zimno? Uh, nie. Bylbys b-b-b-b-bibbergingu, gdybys mial tutaj byc swiadkiem nocy.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_02"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_03"); //Z cmentarza przychodzi jek i jek, który jest jeszcze gorszy niz z moja, uh, babcia.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_04"); //Prawdopodobnie wszystkie zombie wylamuja sie z grobów i planuja jak najlepiej nas zjesc!
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_05"); //Tak mysle.
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig2_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Cichy cmentarz.";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Schutzbeduerftig))
	&& (Mod_Jim_Schutz == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_00"); //Cichy cmentarz.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_29_01"); //Ah. Oh. Dziekuje. Czy samotnie pokonales armie inwazji zombie?
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_02"); //To jest oczywiste.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_29_03"); //Szacunek, czlowiek. Móglbym uzyc faceta jak, uh, ty w moim skladzie.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_04"); //Przycinajmy pasek.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Melvin_Bierhexen (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Bierhexen_Condition;
	information	= Info_Mod_Melvin_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Mam dla pana krótkie pytanie.";
};                       

FUNC INT Info_Mod_Melvin_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Bierhexen_Info()
{
	var C_NPC Melvin; Melvin = Hlp_GetNpc(Mod_7505_BDT_Melvin_REL);
	var C_NPC Raeuber01; Raeuber01 = Hlp_GetNpc(Mod_7510_OUT_Raeuber_REL);
	var C_NPC Raeuber02; Raeuber02 = Hlp_GetNpc(Mod_7511_OUT_Raeuber_REL);
	var C_NPC Raeuber03; Raeuber03 = Hlp_GetNpc(Mod_7512_OUT_Raeuber_REL);

	TRIA_Invite(Raeuber01);
	TRIA_Invite(Raeuber02);
	TRIA_Invite(Raeuber03);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_00"); //Mam dla pana krótkie pytanie.

	TRIA_Next(Melvin);
	
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_01"); //Oczywiscie, jesli jest szybko.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_02"); //Ktos z Was skakal na jeczmieniu Erharda?
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_03"); //Hu? Chce to ukrasc, po co bym na tym chcial?
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_04"); //Nie wiem o tym. Ktos to i tak zrobil.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_05"); //A mistrz browarnik zaparzal piwo z ziarna.
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_06"); //To obrzydliwe! Hej, chlopaki, czy jeden z Was owijal sie na jeczmieniu browaru?

	TRIA_Next(Raeuber01);
	
	AI_Output(self, hero, "Info_Mod_Raeuber01_Bierhexen_08_07"); //To nie ja!

	TRIA_Next(Raeuber02);
	
	AI_Output(self, hero, "Info_Mod_Raeuber02_Bierhexen_06_08"); //Czy jestes glupi?

	TRIA_Next(Raeuber03);
	
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_09"); //To byl Leonhard.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_10"); //Leonhard?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_11"); //Tak czy owak powiedzialem mi dumnie. To cos wyjatkowego.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_12"); //Gdzie moge znalezc Leonharda?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_13"); //Chwieje sie w uliczkach Khoraty. Nie ma tak wielkiej kryjówki jak my.

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Wedlug przyjaciela Melvina, Leonhard jest winowajca w Khoracie.");

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Melvin_Freudenspender (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Freudenspender_Condition;
	information	= Info_Mod_Melvin_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ciesze sie, ze mam cie tutaj....";
};                       

FUNC INT Info_Mod_Melvin_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Freudenspender_15_00"); //Ciesze sie, ze mam cie tutaj....
	AI_Output(self, hero, "Info_Mod_Melvin_Freudenspender_29_01"); //Cóz, jak niesamowite! Ja bym cos wzial.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Melvin_Pickpocket (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Pickpocket_Condition;
	information	= Info_Mod_Melvin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Melvin_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_BACK, Info_Mod_Melvin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Melvin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Melvin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Melvin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Melvin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Melvin_EXIT (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_EXIT_Condition;
	information	= Info_Mod_Melvin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melvin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
