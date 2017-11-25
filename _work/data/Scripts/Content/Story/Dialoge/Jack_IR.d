INSTANCE Info_Mod_Jack_IR_Hi (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Hi_Condition;
	information	= Info_Mod_Jack_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_00"); //Co za ciemny dziurka, nie jestem pewien.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_01"); //Uzyskaj to, czego potrzebujesz na tej wyspie tak szybko jak to mozliwe, a nastepnie wyjdzmy z niej.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Hi_15_02"); //Tak, zobaczmy kto nadchodzi.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Hi_15_03"); //Nie sadze, aby kilku utartych na bitwie towarzyszylo za eskorte.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_04"); //Pozostawcie jednak tylko niektórych, aby ochronic statek.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_05"); //Nie chce powitac potworów i nieumarlych na moim okrecie, gdy szukasz wyspy wraz z innymi.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_06"); //Polowe mozna wziac, reszte tu zatrzymac. I sprawic, by szybko to nastapilo.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_07"); //Rozejrzalem sie po magazynie w tym czasie, aby zobaczyc, czy moge znalezc latarki i troche grog, w ciemnosci i zimna.....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGERRAUM");
};

INSTANCE Info_Mod_Jack_IR_Argez (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Argez_Condition;
	information	= Info_Mod_Jack_IR_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Argez_Condition()
{
	if (Mod_IR_Argez == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez_14_00"); //Dlaczego nie zjadles mojego niebieskiego bassa, a my zostalismy na pokladzie.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Argez_15_01"); //Co, gdzie, gdzie?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARGEZ");

	Wld_InsertNpc	(PC_Friend_IR, "SHIP_CREW_CAPTAIN");
};

INSTANCE Info_Mod_Jack_IR_Argez2 (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Argez2_Condition;
	information	= Info_Mod_Jack_IR_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_00"); //Jo, nie wydaje sie, by tak szybko powracal na nogi.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Argez2_15_01"); //Wtedy chyba bede musial bez niego chodzic na wyspe.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_02"); //Tak, spiesz sie i szybko wyjdz z tego miejsca.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_03"); //W miedzyczasie zobacze, czy w magazynie moge znalezc cos, co mu pomoze.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGERRAUM");
};

INSTANCE Info_Mod_Jack_IR_Fertig (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Fertig_Condition;
	information	= Info_Mod_Jack_IR_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Fertig_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_00"); //Hej, slyszalem, ze pan to wszystko zalatwil.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_01"); //W trakcie podrózy jest jeszcze duzo czasu na gratulacje.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_02"); //Czy mozemy wreszcie znów wyplynac w morze?
	AI_Output(hero, self, "Info_Mod_Jack_IR_Fertig_15_03"); //Tak, nie wiem dlaczego.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_04"); //Wszystko w prawo, tutaj klucz do kabiny, troche uderzylem w rufe podczas ustawiania zagli.

	B_GiveInvItems	(self, hero, ItKe_Irdorath, 1);
};

INSTANCE Info_Mod_Jack_IR_EXIT (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_EXIT_Condition;
	information	= Info_Mod_Jack_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jack_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
