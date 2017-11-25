INSTANCE Info_Mod_AlterWaldMann_Hi (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_Hi_Condition;
	information	= Info_Mod_AlterWaldMann_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_Hi_Condition()
{
	if (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_00"); //Ahh, hello, nigdy nie widzialem cie tutaj.... Musisz pochodzic z lasów Khorini.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_01"); //Czy stalo sie tak niepokojace, jak tutaj?
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_02"); //Nie ma spokoju od klusowników i bandytów, od ludzi bezlitosnie czystych i pladrujacych las.... Wiecej
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_03"); //Cóz, to dobrze, ze pokazales sie tutaj.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_04"); //Mozna bylo przygladac sie tej czesci lasu, a ja musialem isc do innego miejsca, gdzie szerzyli sie wrogowie.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_05"); //W kazdym razie zostawie wam czesc mojej mocy, abyscie mogli gonic wszystkich klusowników i wlóczegi.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_06"); //Nie powinienem zbyt dlugo czekac, zeby to zrobic i wrócic tutaj. Zycze powodzenia.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Stary czlowiek z lasu chce, abym oczyszczal otaczajacy go las klusowników, az wróci. W tym celu dal mi swoja moc.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");

	Wld_InsertNpc	(Mod_7530_JG_Wilderer_NW, "REL_SURFACE_033");
	Wld_InsertNpc	(Mod_7531_JG_Wilderer_REL, "REL_SURFACE_005");
	Wld_InsertNpc	(Mod_7532_JG_Wilderer_REL, "REL_SURFACE_139");

	Mod_BDT_AlterWaldMann = 9;

	if (Mod_IstKeiler == TRUE)
	{
		hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX]*2;
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS]*2;
		hero.attribute[ATR_STRENGTH] = hero.attribute[ATR_STRENGTH]*2;
	};
};

INSTANCE Info_Mod_AlterWaldMann_Aufgabe (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_Aufgabe_Condition;
	information	= Info_Mod_AlterWaldMann_Aufgabe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_Hi))
	&& (Npc_IsDead(Mod_7530_JG_Wilderer_NW))
	&& (Npc_IsDead(Mod_7531_JG_Wilderer_REL))
	&& (Npc_IsDead(Mod_7532_JG_Wilderer_REL))
	&& (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_00"); //Ach, widze, ze wykonales duzo pracy.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_01"); //Tutaj masz korzen jako nagrode, która Cie wzmocni.....

	CreateInvItems	(self, ItPl_Strength_Herb_01, 1);

	AI_DropItem	(self, ItPl_Strength_Herb_01);

	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_02"); //Teraz musze isc dalej na pólnoc. Jak dowiedzialem sie, chciwi ludzie chca otworzyc kolejna kopalnie.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_03"); //W zadnym wypadku nie moze sie to zdarzyc.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Stary czlowiek z lasu chce isc dalej na pólnoc, aby zapobiec budowie kopalni.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "REL_SURFACE_146");
	B_StartOtherRoutine	(self, "MINE");

	Mod_BDT_AlterWaldMann = 10;
};

INSTANCE Info_Mod_AlterWaldMann_AtMine (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_Aufgabe))
	&& (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_00"); //Widzisz, co ludzie robia dla lasu?
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_01"); //Po opadnieciu drzew niszczono roslinnosc, aby wzbogacic sie o wiecej zlota i rudy.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_02"); //Po dotarciu do miejsca przeznaczenia i otwarciu kopalni, wiele drzew bedzie musialo umrzec jako belki i drewno opalowe w piecach.... Wiecej
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_03"); //Hmm, mam pomysl, z którym musisz mi pomóc. Pnie drzew w belkach sa jeszcze swieze i pelne zycia.....
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_04"); //Aby jednak zrealizowac mój plan, trzeba na jakis czas rozpraszac ludzi.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_05"); //Niestety, ich zbroja wydaje sie byc bardzo mocna i nie bedziecie mogli przeniknac ich z kesem.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_06"); //Uwazaj wiec i upewnij sie, ze nie zblizaja sie zbyt blisko Ciebie swoimi mieczami.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Stary czlowiek z lasu wydaje sie miec plan zwiazany ze swieza belka podtrzymujaca kopalnie. Aby jednak zrealizowac jego plany, bede musial na jakis czas rozpraszac ludzi. Próba wtlaczania ich do ciala nie powiedzie sie, bo ich zbroja jest zbyt gruba. Tak wiec bede musial byc szybki i ostrozny.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_AlterWaldMann_AtMine2 (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine2_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_AtMine))
	&& (Npc_IsDead(Mod_7582_OUT_Buddler_REL))
	&& (Npc_IsDead(Mod_7583_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7584_OUT_Wache_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine2_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_00"); //Dobrze sluzysz lasowi.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_01"); //Udalo mi sie pobudzic swieze belki do nowego wzrostu, dzieki czemu staly sie one teraz duzymi drzewami stalymi, aby dostac sie do kopalni.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_02"); //Ludzie beda teraz myslec, ze nie jest to sluszne i miejmy nadzieje, ze zakoncza swój projekt.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_03"); //Poniewaz pokazales juz tym razem tyle umiejetnosci, jagoda powinna jeszcze bardziej zwiekszyc Twoja zwinnosc. Ach, nie mam teraz nic na sobie.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_04"); //Wtedy pójde teraz do mojej izby skarbów i bogactw i otrzymam wasza nagrode.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "REL_SURFACE_189");

	AI_UseMob	(self, "TOUCHPLATE", 1);
	AI_UseMob	(self, "TOUCHPLATE", -1);

	AI_GotoWP	(self, "REL_SURFACE_188");

	AI_GotoNpc	(self, hero);
};

INSTANCE Info_Mod_AlterWaldMann_AtMine3 (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine3_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_AtMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine3_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine3_11_00"); //Tutaj jestes. Musze teraz przejsc dalej, aby spojrzec gdzie indziej. Zycze powodzenia. Byc moze wkrótce nasze sciezki znowu beda sie krzyzowac.

	CreateInvItems	(self, ItPl_Dex_Herb_01, 1);

	AI_DropItem	(self, ItPl_Dex_Herb_01);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Uh-huh, mechanizm na kamieniu, który prowadzi do jego skarbów.");

	Wld_SendTrigger	("EVT_WALDMANNVERSTECKK_TRIGGERLIST");
};

INSTANCE Info_Mod_AlterWaldMann_EXIT (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_EXIT_Condition;
	information	= Info_Mod_AlterWaldMann_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_AlterWaldMann_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AlterWaldMann_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
