INSTANCE Info_Mod_Kalom_Hi (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_Hi_Condition;
	information	= Info_Mod_Kalom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_00"); //Kto tu mamy?

	if (HeroIstKeinZombie == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_01"); //Rozpadajace sie zwloki niewierzacego glupca, który pokrzyzowal wielkie plany mojego Mistrza, obudzily sie do bycia nieumarlym.
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_02"); //Po prostu gnije, to da mi wystarczajaco duzo rozproszenia i satysfakcji, gdy czekam na powrót mojego Mistrza.
	};
};

INSTANCE Info_Mod_Kalom_LeckMich (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LeckMich_Condition;
	information	= Info_Mod_Kalom_LeckMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mozesz dlugo czekac, ektoplazmatyczny brud.";
};

FUNC INT Info_Mod_Kalom_LeckMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi))
	&& (HeroIstKeinZombie == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LeckMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Kalom_LeckMich_15_00"); //Mozesz dlugo czekac, ektoplazmatyczny brud.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_01"); //Cóz, jak....? Twój duch nie zostawil rozkladajacej sie skorupy? Jak to jest mozliwe?
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_02"); //Cóz, to nie zmieni twojego przeznaczenia. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_03"); //Wyjscie jest zablokowane ogromnymi glazami, most zawalil sie i po wielu latach nic nie pozostanie po Tobie poza pylem.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_04"); //I nie czuje w tobie zadnej magicznej predyspozycji, która pomoglaby ci opuscic to swiete miejsce.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_05"); //Jestes teraz prostym zombie. Na widok waszych gnijacych wnetrznosci bede orzezwiajacy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Kalom_KeinZombie (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_KeinZombie_Condition;
	information	= Info_Mod_Kalom_KeinZombie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_KeinZombie_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Kalom_LeckMich))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi)))
	&& (HeroIstKeinZombie == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_KeinZombie_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_00"); //Co to jest mozliwe? Wróciles wsród zyjacych. Ale....
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_01"); //Rozstapiony? Czy twój rachunek nie zostal Ci wystawiony?
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_02"); //Mozemy to od razu naprawic. Zludzasz! Wracasz tutaj.
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_03"); //Dlaczego nie? Jestes po prostu duchem.
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_04"); //Dokladnie, tylko duch. Poczuj moc, jaka otrzymalam od sypialni.

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(200);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch01 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch01_Condition;
	information	= Info_Mod_Kalom_LebtNoch01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_KeinZombie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch01_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch01_12_00"); //Cóz! Ty wciaz zyjesz?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch02 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch02_Condition;
	information	= Info_Mod_Kalom_LebtNoch02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch02_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch02_12_00"); //To znów Ty.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch03 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch03_Condition;
	information	= Info_Mod_Kalom_LebtNoch03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch03_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch03_12_00"); //Jakze denerwujace. Nie pozbyjcie sie cie?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Kalom_EXIT (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_EXIT_Condition;
	information	= Info_Mod_Kalom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kalom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_EXIT_12_00"); //Na ramieniu jest troche miesa. (smiertelnicy)

	AI_StopProcessInfos	(self);
};
