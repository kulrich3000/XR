INSTANCE Info_Mod_Trent_Hi (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Hi_Condition;
	information	= Info_Mod_Trent_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_00"); //Ach, bardzo dobry, pomocny miecz jest dla mnie wygodny.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_01"); //Nazywam sie Trent, rycerz wielkiego króla Rhobara i samozwancza przygoda. Z tego ostatniego mozna byc przynajmniej dumnym.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_02"); //Brzmi to tak, jakbys nie byl rycerzem pasji.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_03"); //Cóz, chyba masz racje. Nikt nie ma szczególnej pasji, jesli pozwala sie mu pilnowac bram przez caly dzien lub jesli podczas wojny jest w pierwszym rzedzie.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_04"); //Sam fakt, ze cala armia paladynów nie robi nic w porcie, podczas gdy rolnicy na ich farmach sa rozdarci przez polowych rabusiów, pokazuje, ze cos nie pasuje do nich.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_05"); //Nie, nie ma potrzeby, aby wokól wyspy stal kolejny rycerz.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_06"); //Moja pasja jest eksploracja nowych krajów.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_07"); //Jakos mi sie to podoba.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_08"); //Jesli chcesz, mozesz pomóc mi wydobyc tamten cien.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_09"); //Jasne, dlaczego nie.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_10"); //Wspaniale!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SHADOWBEAST");
};

INSTANCE Info_Mod_Trent_Shadowbeast (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Shadowbeast_Condition;
	information	= Info_Mod_Trent_Shadowbeast_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Shadowbeast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_Hi))
	&& (Npc_IsDead(Shadowbeast_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_Shadowbeast_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_00"); //No cóz, to wlasnie..... tylko z ciekawosci: co Pan tutaj robil?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_01"); //Powinienem cie zobaczyc od komendanta Andre' a. Chce, aby pomógl mi pan w rozwiazaniu problemu w kopalni.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_02"); //A co z kopalnia?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_03"); //Mamy tam maly problem z potworami i nie mamy wystarczajacej liczby mezczyzn.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_04"); //Dobrze, pomógles mi, a ja tez ci pomoze. Jaki to jest mój rodzaj?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_05"); //Ten przy wejsciu do Minentala. Czy wiesz nawet, gdzie tak jest?
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_06"); //Oczywiscie, znam te wyspe jak tylna czesc mojej reki.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_07"); //Myslalem, ze nigdy wczesniej nie byles tutaj.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_08"); //Czasami przeprawy miedzy wyspami sa takie nudne, poniewaz studiuje glównie mapy tych wysp.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_09"); //No cóz, komendant Andre chcial cie najpierw zobaczyc. Chcial.... (zaklócone)
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_10"); //To moze czekac. Dowódcy ci i tak zwykle rozmawiaja wokól krzaka. Zobacze cie w kopalni.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent pospieszyl i czeka na mnie w kopalni.");

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Trent_EXIT (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_EXIT_Condition;
	information	= Info_Mod_Trent_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
