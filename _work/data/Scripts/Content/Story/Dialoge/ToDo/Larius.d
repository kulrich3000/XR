INSTANCE Info_Mod_Larius_Hi (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Hi_Condition;
	information	= Info_Mod_Larius_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Larius_Hi_Condition()
{
	if (Mod_MitLawrenceGesprochen == 10)
	&& (Wld_IsTime(23,00,01,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_00"); //So, du bist also auf der Suche nach dem Erfinder?
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_01"); //Und du wirst mir jetzt schön sagen wo er ist!
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_02"); //(lacht) Haha. Du wirst ohnehin keine Gelegenheit mehr haben es jemandem weiterzusagen! Der Erfinder befindet sich in unserer Gewalt! 
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_03"); //Er arbeitet für unseren Herrn! Er wird uns helfen den Schläfer zu rächen und ihn wieder zu beleben!
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_04"); //Du hast keine Ahnung wer ich bin, oder?
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_05"); //Du bist gleich TOT! Jetzt Männer!

	AI_UnequipArmor	(Mod_1730_MIL_Lawrence_NW);
	CreateInvItems	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe);

	AI_UnequipArmor	(self);
	CreateInvItems	(self, ItAr_LariusRobe, 1);
	AI_EquipArmor	(self, ItAr_LariusRobe);

	AI_UnequipArmor	(Mod_594_NONE_Lutero_NW);
	CreateInvItems	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1730_MIL_Lawrence_NW, "ANGRIFF");
	B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "ANGRIFF");

	AI_Teleport	(Mod_1730_MIL_Lawrence_NW, "WP_LAWRENCE");
	AI_Teleport	(Mod_594_NONE_Lutero_NW, "WP_LUTERO");

	Mod_MitLawrenceGesprochen = 11;

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Larius_Hallo (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Hallo_Condition;
	information	= Info_Mod_Larius_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes ladnie ubrany.";
};

FUNC INT Info_Mod_Larius_Hallo_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Larius_Hallo_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Hallo_15_00"); //Jestes ladnie ubrany.
	AI_Output(self, hero, "Info_Mod_Larius_Hallo_01_01"); //Tak, to prawda. Tak, ze moge byc natychmiast rozpoznany jako dyrektor i nie byc bezglosnie zaadresowany z boku.
};

INSTANCE Info_Mod_Larius_Aufgaben (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Aufgaben_Condition;
	information	= Info_Mod_Larius_Aufgaben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa Twoje obowiazki jako gubernatora?";
};

FUNC INT Info_Mod_Larius_Aufgaben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Hallo))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Aufgaben_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Aufgaben_15_00"); //Jakie sa Twoje obowiazki jako gubernatora?
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_01"); //Teraz moge zajac sie tylko smieciami, dla których paladyny sa zbyt wazne.
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_02"); //Wiem, ze król ja rozkazal. Mam jednak nadzieje, ze okupacja miasta wkrótce sie skonczy.
	AI_Output(self, hero, "Info_Mod_Larius_Aufgaben_01_03"); //Od tak dawna poswiecam sie studiowaniu starych tekstów prawnych lub wedruje ulicami i spotykam sie z przyjaciólmi.....
};

INSTANCE Info_Mod_Larius_Haeftlinge (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Haeftlinge_Condition;
	information	= Info_Mod_Larius_Haeftlinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaka jest Twoja opinia o wiezniach w Dolinie Kopalni?";
};

FUNC INT Info_Mod_Larius_Haeftlinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Hallo))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Haeftlinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Haeftlinge_15_00"); //Jaka jest Twoja opinia o wiezniach w Dolinie Kopalni?
	AI_Output(self, hero, "Info_Mod_Larius_Haeftlinge_01_01"); //Czy to jest pytanie? Uczciwa odpowiedz jest dla mnie zbyt polityczna.
	AI_Output(self, hero, "Info_Mod_Larius_Haeftlinge_01_02"); //Ale pozwole sobie powiedziec panstwu wiele: nie wszystko z Minentalnej doliny, która odeszla, bylo tak zle, jak to zrobiono.
};

INSTANCE Info_Mod_Larius_Ornament (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Ornament_Condition;
	information	= Info_Mod_Larius_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mi cos powiedziec o zalozycielu miasta?";
};

FUNC INT Info_Mod_Larius_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_00"); //Czy mozesz mi cos powiedziec o zalozycielu miasta?
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_01"); //Ktos zainteresowal sie historiahorynów? Nie ma wiele razy.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_02"); //Wlasciwie powiem ci, co wiem o nim.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_03"); //Zalozyl miasto i chcial sie nim schronic. Mówi sie, ze byl kaznodzieja Adano.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_04"); //Mieszkancy miasta zwrócili sie jednak do Innos.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_05"); //Nie byl tu zadowolony i przeszedl przez przelecz na pólnocy do Relendel.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_06"); //Niektórzy mówia, ze zalozyl miasto Khorata, które sklada hold jedynemu Bogu.
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_07"); //Ciekawe.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_08"); //Mam nadzieje, ze moge wam pomóc.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_09"); //Jesli potrzebujesz wiecej informacji na jego temat, porozmawiaj z Anselm w Khorata. Tam jest gubernatorem.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_10"); //Miasto na pólnoc od wyspy. Przelecz jest jeszcze dluga na pólnoc od miejsca wykopalisk dla magów wodnych.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Ksiadz najwyrazniej opuscil Khorinisa i zalozyl miasto Khorata w Relendel. Z cala pewnoscia jest tam ornamentalne dzielo. Powinienem porozmawiac z Anselmem. Khorata znajduje sie na pólnocy wyspy i mozna ja znalezc przez przelecz na pólnoc od miejsca wykopaliska.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Larius_EXIT (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_EXIT_Condition;
	information	= Info_Mod_Larius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Larius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Larius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
