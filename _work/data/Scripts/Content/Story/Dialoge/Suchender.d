INSTANCE Info_Mod_Suchender_Hi (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_Hi_Condition;
	information	= Info_Mod_Suchender_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Suchender_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_00"); //Ach, nie spodziewalem sie cie tutaj tak szybko....
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_01"); //Oczekiwany? Kim jestes?
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_02"); //Jestes w jednym z moich domów i nawet nie wiesz, kogo rzeczywiscie odwiedzasz? (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_03"); //Co masz do czynienia z nalotami na mysliwych i strazników?
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_04"); //Czyz nie sa takie jasne, potwory?
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_05"); //Zabójca, Wam wyslemy do waszych ofiar!

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_06"); //(smiech) Czy jestes o tym pewien? Moze nie jestem morderca, którego szukasz.
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_07"); //Jesli masz cokolwiek do powiedzenia, powiedz to szybko, albo skonczy sie czas.
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_08"); //Mam caly czas, którego potrzebuje. Ale moze po prostu nie zrobiles wystarczajaco duzo badan.
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_09"); //A moze po prostu tego nie odkryjesz? Bede na Ciebie czekac wkrótce.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Suchender_Turm (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_Turm_Condition;
	information	= Info_Mod_Suchender_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Suchender_Turm_Condition()
{
	if (Mod_SuchenderAtTurm == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_00"); //Ha, znów! Znaleziono Cie tutaj. Wspanialy, ale wolny.
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_01"); //Mój pan nie mieszkal tu od dawna.
	AI_Output(hero, self, "Info_Mod_Suchender_Turm_15_02"); //Ale tym razem dostaje cie!
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_03"); //Zatrzymaj sie! Jesli zabijesz mnie, co jest dla ciebie trudne do zrobienia, nigdy nie wiesz, gdzie jest on tym, czego szukasz. Dlatego....

	AI_PlayAni	(hero, "T_STAND_2_VICTIM_SLE");

	B_LogEntry	(TOPIC_MOD_JG_TURM, "Po raz kolejny ten szukajacy uciekl. No cóz, przynajmniej mam jego klucz. Jestem pewien, ze to sie przyda. Moze Wulfgar cos wie.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Suchender_EXIT (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_EXIT_Condition;
	information	= Info_Mod_Suchender_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Suchender_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
