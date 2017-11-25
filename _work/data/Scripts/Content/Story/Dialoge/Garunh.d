INSTANCE Info_Mod_Garunh_Hi (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Hi_Condition;
	information	= Info_Mod_Garunh_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_00"); //Jestes jego czlowiekiem z daleka.
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_01"); //Opowiem wam nie tylko o zlych orkach, ale takze o zlych ludziach z tej doliny.
};

INSTANCE Info_Mod_Garunh_Orkring (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring_Condition;
	information	= Info_Mod_Garunh_Orkring_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o zlych orkach?";
};

FUNC INT Info_Mod_Garunh_Orkring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring_15_00"); //Co wiesz o zlych orkach?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_01"); //Zle orki sa bardzo przesadne. Uwielbiaja czcic moc stwórcy.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_02"); //Odkad byl w swiatyni pod górami, byl bardzo silny.
};

INSTANCE Info_Mod_Garunh_Orkring2 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring2_Condition;
	information	= Info_Mod_Garunh_Orkring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim sa zli ludzie?";
};

FUNC INT Info_Mod_Garunh_Orkring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring2_15_00"); //Kim sa zli ludzie?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_01"); //Ludzie szatanscy, znalezli bron starego kowala.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_02"); //Bron, która nie rdzewiala i byla kuta na orki.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_03"); //Orkiestry zaopatruja orki w bron, a orki placa artefaktami naszej kultury.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_04"); //Oni dali pierscionek moich przodków ludziom i Garunh musi odzyskac go, aby nie wyniszczyc czci.
};

INSTANCE Info_Mod_Garunh_Orkring3 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring3_Condition;
	information	= Info_Mod_Garunh_Orkring3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak mozemy powstrzymac Orków przed atakiem przeleczy?";
};

FUNC INT Info_Mod_Garunh_Orkring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring3_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring3_15_00"); //Jak mozemy powstrzymac Orków przed atakiem przeleczy?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_01"); //Jesli ludzie pomagaja Garunhowi w zdobyciu jego kregu zlych ludzi, wtedy oslabia tez sile orków.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_02"); //Zli ludzie maja jaskinie. Garunh bedzie cie do niej eskortowac.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Aby Garunh pomógl mi przeciw Orkom na przeleczy, musze mu pomóc odzyskac stary dzwonek od bandytów. On mnie do nich poprowadzi.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOBANDITEN");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Garunh_Orkring4 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring4_Condition;
	information	= Info_Mod_Garunh_Orkring4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Orkring4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	&& (Npc_GetDistToWP(self, "NORDOSTENLOCH_11") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring4_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_00"); //Zlo jest za chatka w górze. Wejscie jest za male dla orków, wiec ludzie sa tu bezpieczni.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_01"); //Garunh musi tu czekac i miec nadzieje na sukces czlowieka.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring4_15_02"); //Znajde twój pierscionek, po prostu zatrzymaj sie tutaj.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Do jaskini dotarlismy. Poniewaz wejscie jest zbyt male dla Garunha, musze stawic czola samym bandytom.");
};

INSTANCE Info_Mod_Garunh_Orkring5 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring5_Condition;
	information	= Info_Mod_Garunh_Orkring5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zly ludzie i ich przywódca nie zyja.";
};

FUNC INT Info_Mod_Garunh_Orkring5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	&& (Npc_HasItems(hero, ItRi_Garunh) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring5_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_00"); //Zly ludzie i ich przywódca nie zyja. Znalazlem z nim równiez twój pierscionek.

	B_GiveInvItems	(hero, self, ItRi_Garunh, 1);

	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_01"); //Dzieki czlowiekowi, teraz uratowales mój zaszczyt. Chce powiedziec panu sekret Orków.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_02"); //Wiele lat temu orki znajdowaly w górach wielkie swiatynie.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_03"); //Najodwazniejszym byl Szaman Asek. Jako pierwszy wszedl do swiatyni.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_04"); //W Artefakthalle odnalazl wiele poteznych artefaktów, ale zaden z nich nie interesowal sie nim poza personelem twórcy.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_05"); //Jaki personel? A kto jest twórca?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_06"); //Personel jest równie silny jak twórcy i twórcy, to kazdy, kto posiada pracowników.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_07"); //Czy oznacza to, ze mozesz z nim stworzyc cos, czego chcesz?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_08"); //Jego boski artefakt, nieprzeznaczony dla orków i ludzi.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_09"); //Asek moze tylko powodowac smierc. Czynil to, aby chronic siebie i swiatynie.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_10"); //Ale Asek chcial wiecej. Nie tylko zamienil zywe orki w swiatynie w zywych zmarlych, ale takze wznosil martwe orki z cmentarza.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_11"); //Poczekaj na minute, czy to, co ma oznaczac, ze orki w lesie sa nieumarlymi orkami?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_12"); //Tak, bardzo niewiele Asek przetrwalo. Tylko przywódcy nadal zyja.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_13"); //Gdzie jest swiatynia, w której Asek ma swoja kryjówke?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_14"); //Tylko zyjacy lider orka moze Ci to powiedziec. Poniewaz jednak nie znasz jezyka, potrzebujesz tlumaczy.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_15"); //Baro opowiedzial mi o mezczyznie, który studiowal orki. Lepiej pójsc do niego.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_16"); //Jesli wiesz, gdzie jest Asek, mozesz mnie odwiedzic w namiocie. Zycze powodzenia, czlowiek.

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Garunh opowiedzial mi, o co chodzi w Orkach. Widocznie szaman o imieniu Asek znalazl w swiatyni potezny szaman, z pomoca którego przerobil niemal wszystkie orki na nieumarle i dodatkowo zmartwychwstale martwe orki. Aby dowiedziec sie, gdzie przebywa, powinienem porozmawiac z Baro, bo zna kogos, kto studiowal jezyk orków. Potem musze znalezc lidera orka i uzyskac informacje.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Garunh_EXIT (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_EXIT_Condition;
	information	= Info_Mod_Garunh_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garunh_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
