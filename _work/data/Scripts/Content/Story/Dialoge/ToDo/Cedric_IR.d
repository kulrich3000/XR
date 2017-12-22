INSTANCE Info_Mod_Cedric_IR_Hi (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Hi_Condition;
	information	= Info_Mod_Cedric_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_00"); //Co za mroczne, nikczemne miejsce. Tutaj Innos wydaje sie bardziej oddalony niz gdziekolwiek indziej na swiecie.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_01"); //Naszym zadaniem, jako jego zastepców, jest wjazd na wyspe i wyrzucenie na zawsze wszystkich nieswietych wylegu z tego chrzestnego miejsca.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_02"); //Tak, zobaczmy kto nadchodzi. Nie sadze, aby kilku utartych na bitwie towarzyszylo za eskorte.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_03"); //Zostane tu i bede pilnowal statku.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_04"); //Po twojej stronie beda trzy paladynki hartowane w bitwie i Milten, jesli chcesz.

	if (Mod_DiegoDabei > 0)
	|| (Mod_LesterDabei > 0)
	|| (Mod_AngarDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_VatrasDabei > 0)
	|| (Mod_EthanDabei > 0)
	|| (Mod_RandolphDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_05"); //A co z innymi na pokladzie?
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_06"); //Powiedzialem juz, ze wola Inno jest, aby jego sludzy sprowadzili te wyspe do blogoslawienstwa.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_07"); //Nikt inny nie ma koniecznej wiary i sily.
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_08"); //Ale....
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_09"); //Nie klóce sie o to.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_10"); //Wez mysliwców, których postawiles po swojej stronie i rób to, po co tu przyjechales.
	};

	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_11"); //A co z Innosem?

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(PC_Friend_IR, "SHIP_CREW_CAPTAIN");

	Mod_IR_Keroloth = 1;
	Mod_IR_Marcos = 1;
	Mod_IR_Gerold = 1;
	Mod_IR_Milten = 1;

	B_StartOtherRoutine	(Mod_7443_KDF_Milten_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7462_RIT_Gerold_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7461_RIT_Marcos_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7463_RIT_Keroloth_IR, "FOLLOW");
};

INSTANCE Info_Mod_Cedric_IR_Argez (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Argez_Condition;
	information	= Info_Mod_Cedric_IR_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_00"); //Ten czlowiek osmiela sie wejsc na statek królewski jako pasazer na gape!
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_01"); //A statek Paladyn na misji swietej?
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_02"); //Nie denerwuj sie, jest po naszej stronie.....
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_03"); //Ach, dlaczego bym to zaakceptowal?
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_04"); //Móglby byc szpiegiem nieprzyjaciela, który zatykal sie na naszym statku, by sabotowac nasza swieta misje.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_05"); //Nie, on juz pomógl mi i magikom z pomoca i rada. Mozemy mu zaufac.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_06"); //(nieco spokojniejszy) Kto wie.... Wszystko w porzadku, ale nie pozwole mu wyjsc z oczu.... a teraz wykonaj swoja prace!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cedric_IR_Fertig (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Fertig_Condition;
	information	= Info_Mod_Cedric_IR_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Fertig_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_00"); //Hej, slyszalem, ze pan to wszystko zalatwil.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_01"); //W trakcie podrózy jest jeszcze duzo czasu na gratulacje.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_02"); //Czy mozemy wreszcie znów wyplynac w morze?
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Fertig_15_03"); //Tak, nie wiem dlaczego.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_04"); //Wszystko w prawo, tutaj klucz do kabiny, troche uderzylem w rufe podczas ustawiania zagli.

	B_GiveInvItems	(self, hero, ItKe_Irdorath, 1);
};

INSTANCE Info_Mod_Cedric_IR_EXIT (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_EXIT_Condition;
	information	= Info_Mod_Cedric_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cedric_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
