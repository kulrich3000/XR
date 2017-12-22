INSTANCE Info_Mod_Gnom_Hi (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Hi_Condition;
	information	= Info_Mod_Gnom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gnom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gnom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_00"); //Witaj czlowiek. Przez dlugi czas nie widziales nikogo takiego jak Ty....
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_01"); //W kazdym razie po napoju chcialbym ponownie palic.
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_02"); //Musisz miec przy sobie cos.
};

INSTANCE Info_Mod_Gnom_Joint (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Joint_Condition;
	information	= Info_Mod_Gnom_Joint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jasne, ze oto zywiczne lodygi.";
};

FUNC INT Info_Mod_Gnom_Joint_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Hi))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Joint_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_00"); //Jasne, ze oto zywiczne lodygi.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_01"); //Ach, dziekuje bardzo.

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_02"); //Po 5000 latach z przyjemnoscia znów palic.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_03"); //Tak, magiczne wiezienie bylo naprawde trudnym momentem.
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_04"); //Czary wiezienie? Powiedz mi o tym wiecej.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_05"); //Ta przekleta ksiazka zostala uwieziona.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_06"); //Przynajmniej bylo tam duzo miejsca, wiecej niz mozna bylo odgadnac z zewnatrz.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_07"); //Nie stales wiec caly czas na nogach z goblinami, czarownicami i smokami.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_08"); //Smok Smok Dragon i Lich, nieumarly magik, szybko przeksztalcili sie w wielkich szefów.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_09"); //Maja tez po kilku stuleciach jakis magiczny pakt lub tak zamkniety.....
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_10"); //Magiczny pakt? O co to bylo chodzilo?
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_11"); //Och, nie wiem. Niesmiertelnosc wobec wladzy smoka i slugi lub czegos. Nie bylem tak zainteresowany.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_12"); //Mój przyjaciel Gormgniez mial wiecej do czynienia z innymi i wiele rzeczy.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_13"); //Jednak chciwy goblin wyruszyl w doline rudy, aby wypelnic kieszenie metalem szlachetnym w jakiejs kopalni kotlów.....
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_14"); //A gdzie sa teraz?
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_15"); //Ooh, Lich chcial zniszczyc miasto lub groby jaskiniowe lub cos podobnego.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_16"); //Mysle, ze Smok przeniósl sie do gór niedaleko od miejsca naszego wyzwolenia, teraz chce zatrudnic nowych pracowników.... Wiecej
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_17"); //Ach, teraz widze, jak moja glowa staje sie ciezka z naparem.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_18"); //Masz byc moze dziesiec tych kijków, które dla mnie zostalo? O wiele latwiej mi bylo.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Rozmawiajac z pijanym gnome, dowiedzialem sie, ze nieumarly magik Lich i smok o imieniu Smok zawarli magiczny sojusz. Wymiana niesmiertelnosci na smocza moc i sluge istot wydaje sie odgrywac role.");
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Gnome powiedzial mi, ze jego przyjaciel, goblin, wiedzial wiecej na ten temat. Wyruszyl jednak do Minentala, aby ugasic swoja chciwosc magicznej rudy. Chcial zwiedzic kopalnie w kotlinie dolinowej. Powinienem poprosic Lee o dostep do wolnej kopalni.");
};

INSTANCE Info_Mod_Gnom_Joints (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Joints_Condition;
	information	= Info_Mod_Gnom_Joints_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oczywiscie, tutaj sa.";
};

FUNC INT Info_Mod_Gnom_Joints_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Joints_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_Joints_15_00"); //Oczywiscie, tutaj sa.

	B_GiveInvItems	(hero, self, ItMi_Joint, 10);

	AI_Output(self, hero, "Info_Mod_Gnom_Joints_11_01"); //Ach, dziekuje bardzo. Jak moge Cie splacic?
	AI_Output(self, hero, "Info_Mod_Gnom_Joints_11_02"); //Oh, tutaj, wez to opakowanie z naparem, który zostawilem w karczmie.

	B_GiveInvItems	(self, hero, ItMi_OrlansSchnaps, 1);
};

INSTANCE Info_Mod_Gnom_NoJoint (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_NoJoint_Condition;
	information	= Info_Mod_Gnom_NoJoint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie inne noworoczne pozdrowienia, polowa?";
};

FUNC INT Info_Mod_Gnom_NoJoint_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_NoJoint_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint_15_00"); //Jakie inne noworoczne pozdrowienia, polowa?
	AI_Output(self, hero, "Info_Mod_Gnom_NoJoint_11_01"); //Obserwuj swój jezyk, mezczyzne i pozwól, aby narastal nad toba dym. Znajdziesz sie w zlej kondycji.
};

INSTANCE Info_Mod_Gnom_NoJoint2 (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_NoJoint2_Condition;
	information	= Info_Mod_Gnom_NoJoint2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, oczywiscie. Lepiej wybierac kwiaty, karzel.";
};

FUNC INT Info_Mod_Gnom_NoJoint2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_NoJoint))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_NoJoint2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_00"); //Tak, oczywiscie. Lepiej wybierac kwiaty, karzel.
	AI_Output(self, hero, "Info_Mod_Gnom_NoJoint2_11_01"); //Dobrze, to jest.
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_02"); //No cóz, wiec jestem po prostu....

	AI_EquipBestMeleeWeapon	(self);

	AI_DrawWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_03"); //... oh.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Gnom_Verbatscht (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Verbatscht_Condition;
	information	= Info_Mod_Gnom_Verbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gnom_Verbatscht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_NoJoint2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Verbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Gnom_Verbatscht_11_01"); //Chcesz znowu sie do mnie pietrowac?
};

INSTANCE Info_Mod_Gnom_EXIT (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_EXIT_Condition;
	information	= Info_Mod_Gnom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gnom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gnom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
