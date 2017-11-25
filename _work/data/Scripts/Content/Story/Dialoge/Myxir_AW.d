INSTANCE Info_Mod_Myxir_AW_Hi (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_Hi_Condition;
	information	= Info_Mod_Myxir_AW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Myxir? Jak sie tu dostales?";
};

FUNC INT Info_Mod_Myxir_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Myxir_AW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_00"); //Myxir? Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_01"); //Xardas kazal mi miec oko na ciebie i zapobiec ci zranienia.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_02"); //Szczescie dla ciebie, albo ta strazniczka na pewno by cie scigala.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_03"); //Tak, um...... dziekuje. Dlaczego jestesmy w obozie Piratów?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_04"); //Bo tak sie sklada, ze jest to jedyne miejsce w Jharkendarze, gdzie Gwardia Innos nie zostala jeszcze najechana.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_05"); //A co z cialami?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_06"); //Nieumarli i zaatakowal nas kult krwi. Stoilem tu z Gregiem i wspieralem go w ataku.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_07"); //Niektórzy ludzie zgineli, ale piraci moga jeszcze przezyc. Ale na ile dluzej?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_08"); //Najwazniejsze jest teraz to, ze zatrzymujemy straz Innosów zanim zajma miecz Innosa.

	Mod_934_PIR_Henry_AW.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Myxir_AW_WhatNow (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatNow_Condition;
	information	= Info_Mod_Myxir_AW_WhatNow_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co chcesz, abym zrobil?";
};

FUNC INT Info_Mod_Myxir_AW_WhatNow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatNow_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_00"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_01"); //To wyrafinowana rzecz. Straznikom udalo sie zaczarowac pancerz tak, ze jest on nieskazitelny.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_02"); //Dlatego potrzebujemy specjalnej broni, aby wniknac w pancerz, sztylet Beliara.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_03"); //Sztylet Beliara?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_04"); //Tak. Moze byc kuty tylko przez poteznych czarnych magów i jest niszczycielski. Za jednym ciosem mozna wniknac w pancerz wartownika Innosa ".
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_05"); //Dziala jednak tylko raz. Instrukcja budynku musi znajdowac sie gdzies w Jharkendarzu. Musisz je odzyskac, abysmy mogli zrobic sztylet.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_06"); //Gdzie chcesz, abym zaczal szukac?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_07"); //Trudno to powiedziec. W dolinie znajduje sie jednak kilka posiadlosci budowniczych. Lepiej tam spróbowac szczescia.

	Log_CreateTopic	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "Aby pokonac nieskazitelnych strazników, potrzebuje sztyletu Beliara. Moze byc uzyty tylko raz, ale niszczy kazda zbroje jednym uderzeniem. Instrukcje budowlane mozna znalezc gdzies w Jharkendarzu. Myxir poradzil mi przeszukac rezydencje.");
};

INSTANCE Info_Mod_Myxir_AW_WhatNext (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatNext_Condition;
	information	= Info_Mod_Myxir_AW_WhatNext_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dalej?";
};

FUNC INT Info_Mod_Myxir_AW_WhatNext_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_WhatNow))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatNext_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNext_15_00"); //Co dalej?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_01"); //Musimy dowiedziec sie wiecej o mieczu Innos. Twórcy zgromadzili wiele starozytnych pism, tworzac potezne artefakty.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_02"); //Musisz znalezc jeden z tych starych skryptów. Prawdopodobnie znajduje sie w bibliotece budowniczych kanionu.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_03"); //Idz tam i znajdz pismo swiete. Badz jednak ostrozny. Orki w kanionie zaprzyjaznily sie z straznikami i pilnowaly biblioteki.

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Musimy dowiedziec sie wiecej o mieczu Innos. Mam sprawdzic stara biblioteke budowniczych w kanionie, czy moge znalezc jakies stare rekordy. Biblioteke maja jednak pilnowac orki.");
};

INSTANCE Info_Mod_Myxir_AW_WhatLast (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatLast_Condition;
	information	= Info_Mod_Myxir_AW_WhatLast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko inne?";
};

FUNC INT Info_Mod_Myxir_AW_WhatLast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_WhatNext))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatLast_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatLast_15_00"); //Wszystko inne?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatLast_28_01"); //Tak. Musimy odzyskac Jharkendend. Greg zamierza ja uwolnic.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatLast_28_02"); //Porozmawiaj z nim o tym. On ma plany.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatLast_15_03"); //Wszystko w porzadku, odejde natychmiast.

	Log_CreateTopic	(TOPIC_MOD_BEL_BEFREIUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BEFREIUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BEFREIUNG, "Greg chce odebrac Jharkendara z gwardii Innos. Chce, abym poszla na jego miejsce, bo ma plany.");
};

INSTANCE Info_Mod_Myxir_AW_LightHeal (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_LightHeal_Condition;
	information	= Info_Mod_Myxir_AW_LightHeal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie runo lekkich ran gojacych sie?";
};

FUNC INT Info_Mod_Myxir_AW_LightHeal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Samuel_SkipToDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_LightHeal_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_00"); //Masz dla mnie runo lekkich ran gojacych sie?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_LightHeal_28_01"); //Co chcesz z nim zrobic?
	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_02"); //Piratowy Skip umiera i bez tej runy nie da sie zaparzyc eliksiru uzdrawiajacego.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_LightHeal_28_03"); //Nie mozemy sobie pozwolic na utrate sojusznika. Tutaj masz jeden.

	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_04"); //Dzieki.
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolch (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolch_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem instrukcje budowlane.";
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolch_Condition()
{
	if (Npc_HasItems(hero, ItWr_Bauplan_BeliarDolch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolch_15_00"); //Znalazlem instrukcje budowlane.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolch_28_01"); //Niewiarygodne.... pokazac mi.....

	B_GiveInvItems	(hero, self, ItWr_Bauplan_BeliarDolch, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolch_28_02"); //Aha, jej bryla i bryla. Hmm, cóz, nie zdarzyloby Ci sie miec z toba bryly magii i czarnej rudy?
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolchZutaten (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolchZutaten_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolchZutaten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto one.";
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolchZutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_BeliarDolch))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(hero, ItMi_Zeitspalt_Addon) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolchZutaten_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolchZutaten_15_00"); //Oto one.

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 1);
	Npc_RemoveInvItems	(hero, ItMi_Zeitspalt_Addon, 1);

	B_ShowGivenThings	("1 ruda i 1 ruda czarna podane");

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchZutaten_28_01"); //Doskonaly. Bede mial prawo do pracy. Bede gotowy za kilka godzin.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolchZutaten_15_02"); //Mam nadzieje, ze mamy jeszcze kilka godzin.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 3600);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "Myxir ma skladniki dla sztyletu i wystarczy troche czasu, aby go wykonczyc.");
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolchFertig (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolchFertig_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolchFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolchFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_BeliarDolchZutaten))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolchFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchFertig_28_00"); //Tu wez sztylet.

	B_GiveInvItems	(self, hero, ItMw_BeliarDolch, 1);

	AI_UnequipWeapons	(hero);

	EquipItem	(hero, ItMw_BeliarDolch);

	AI_DrawWeapon	(hero);

	AI_PlayAni	(hero, "T_1HSINSPECT");

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchFertig_28_01"); //Teraz nie czas przyjrzec sie temu zagadnieniu w kazdym szczególe. Idz dalej i zabij dranie.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "Mam sztylet i teraz powinienem byc przygotowany na straznika.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Myxir_AW_EXIT (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_EXIT_Condition;
	information	= Info_Mod_Myxir_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Myxir_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Myxir_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
