INSTANCE Info_Mod_Shivar_Hi (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_Hi_Condition;
	information	= Info_Mod_Shivar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_20_00"); //Samotna istota demoniczna? Co Pan tutaj robi? Mówic!

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	Info_AddChoice	(Info_Mod_Shivar_Hi, "Zostalem wyslany przez sluge Beliara.", Info_Mod_Shivar_Hi_C);
	Info_AddChoice	(Info_Mod_Shivar_Hi, "Jestem sluga równowagi (....). )", Info_Mod_Shivar_Hi_B);
	Info_AddChoice	(Info_Mod_Shivar_Hi, "Ostrzegam przed kontynuowaniem szalonej kampanii.", Info_Mod_Shivar_Hi_A);
};

FUNC VOID Info_Mod_Shivar_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_D_20_00"); //Acha, inny zdrajca. Die!

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Shivar_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_00"); //Zostalem wyslany przez sluge Beliara. Próbuje dowiedziec sie, dlaczego na Khorinis popadles w spustoszenie.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_01"); //Czego oczekujesz od mnie, ze zakwestionuje moje dzialania?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_02"); //Nie musze odpowiadac na ponizszego demona, jak ty, za rozbicie wrogów mojego mistrza Beliara.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_03"); //A moze jestes nawet jednym z nich?
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_04"); //Nie, absolutnie nie. Ale nalezy sie skupic na znacznie bardziej niebezpiecznym wrogiem, Xeresie.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_05"); //Czy? Czuje sie tak, jakbym slyszal imie przedtem.... Nie ma to znaczenia.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_06"); //Moje stworzenia wypadly z Beliara i teraz sluza innym..... Jestem pewien, ze odpowiedzialni za to sa nogi Innos i Adanos.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_07"); //I oni za to zaplaca.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_08"); //Zapewniam panstwa, ze to nie ona, ale zwodniczy mag Xeres i jego slugi sa za nim.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_09"); //O czym Pan mówi? Próbujesz mnie postawic na niewlasciwym torze.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_10"); //Mozesz byc nawet zdrajca.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_11"); //Nie, moge cie prosic ciebie w imie kazdej bogini, jesli cie zwiedniesz.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_12"); //Co moge zrobic, aby przekonac cie o prawdzie w moich slowach?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_13"); //Przekonaj mnie o tym nonsensie? Wydaje sie Pan pewny siebie.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_14"); //Zobaczymy, bo wymyslilem sposób na to, abys sam sie wypróbowal.
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_C_15_15"); //Tak?
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_16"); //Zidentyfikowalem grupe upadlych demonów i jestem tutaj, aby je ukarac.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_17"); //Niestety, kryja sie one w tej jaskini przed moim dostepem.
	AI_Output(self, hero, "Info_Mod_Shivar_Hi_C_20_18"); //Jesli zwabi pan ich tak, ze bede mógl doprowadzic ich do ich sprawiedliwej kary, zastanowie sie nad waszymi slowami.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Shivar nadal wydaje sie byc poswiecony Beliarowi. Mamy szczescie. Jednak wini on zwolenników dwóch innych bóstw za zdrade swoich bylych slug. Aby go przekonac, ze Xeres jest za nim wszystko, teraz mam wyciagnac z pobliskiej jaskini kilka upadlych stworzen, aby Shivar mógl je zniszczyc.");

	Mod_ShivarLieb = 1;

	Info_ClearChoices	(Info_Mod_Shivar_Hi);

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Demon_Shivar_01,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_02,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_03,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_04,	"REL_SURFACE_100");
	Wld_InsertNpc	(Demon_Shivar_05,	"REL_SURFACE_100");
};

FUNC VOID Info_Mod_Shivar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_B_15_00"); //Jestem sluga równowagi i staram sie robic wiecej niepotrzebnych rzeczy......

	Info_Mod_Shivar_Hi_D();
};

FUNC VOID Info_Mod_Shivar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Shivar_Hi_A_15_00"); //Ostrzegam przed kontynuowaniem szalonej kampanii. On....

	Info_Mod_Shivar_Hi_D();
};

INSTANCE Info_Mod_Shivar_DemonsDead (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_DemonsDead_Condition;
	information	= Info_Mod_Shivar_DemonsDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_DemonsDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shivar_Hi))
	&& (Npc_IsDead(Demon_Shivar_01))
	&& (Npc_IsDead(Demon_Shivar_02))
	&& (Npc_IsDead(Demon_Shivar_03))
	&& (Npc_IsDead(Demon_Shivar_04))
	&& (Npc_IsDead(Demon_Shivar_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shivar_DemonsDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_00"); //I tak wszyscy wrogowie i zdrajcy Beliarów zostana zmiazdzeni, haha!
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_01"); //Cóz, dobrze wykonales swoja prace i udowodniles mi, ze jestes po prawej stronie......
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_02"); //Opuszcze te wyspe i udam sie na chlodne obszary.
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_03"); //Czulem tam zdradzieckie demony.... Wiecej wlacznie z bardzo poteznym stworzeniem, które przypuszczalnie prowadzi.
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_04"); //Wydaje sie, ze dranie sie tam gromadza.....
	AI_Output(self, hero, "Info_Mod_Shivar_DemonsDead_20_05"); //Cóz, Beliar niech bedzie z wami. Byc moze pewnego dnia nasze sciezki znów beda sie krzyzowac, demon demon....

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Doskonaly. Opuszcza wyspe, by polowac na zdrajców na zimnych terenach.... i w koncu moge znów wydostac sie z tej figury. Saturas nie bedzie mogla narzekac na mój sukces.....");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Shivar_EXIT (C_INFO)
{
	npc		= Monster_11038_Shivar_REL;
	nr		= 1;
	condition	= Info_Mod_Shivar_EXIT_Condition;
	information	= Info_Mod_Shivar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shivar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
