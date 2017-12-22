INSTANCE Info_Mod_Cord_IR_Hi (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_Hi_Condition;
	information	= Info_Mod_Cord_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cord_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cord_IR_Hi_14_00"); //Hej, jesli moje oko mnie nie oszukuje, sa jakies nieumarle unoszace sie w poblizu statku.
	AI_Output(self, hero, "Info_Mod_Cord_IR_Hi_14_01"); //Prosze pozwolic mi wiedziec, kiedy sie zaczyna. Po nudnej podrózy cos musi sie wydarzyc.
};

INSTANCE Info_Mod_Cord_IR_Hebel (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_Hebel_Condition;
	information	= Info_Mod_Cord_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Cord_IR_Hebel_Condition()
{
	if (Mod_IR_Cord == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Cord_IR_Hebel_14_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cord_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_Ambient01_Condition;
	information	= Info_Mod_Cord_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cord_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ENTER_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Cord_IR_Ambient01_14_00"); //Wiele sie tu dzieje. To troche inaczej niz unoszenie nóg na tylku Onara.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cord_IR_GehtLos (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_GehtLos_Condition;
	information	= Info_Mod_Cord_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Cord_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cord_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Cord == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Cord_IR_GehtLos_14_00"); //Oczywiscie, po co przyszedlem? Chodzcie dalej, odejdzmy.

	Mod_IR_Dabei += 1;

	Mod_IR_Cord = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Cord_IR_GehBack (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_GehBack_Condition;
	information	= Info_Mod_Cord_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Cord_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cord_IR_Hi))
	&& (Mod_IR_Cord == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Cord_IR_GehBack_14_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Cord = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cord_IR_EXIT (C_INFO)
{
	npc		= Mod_7452_SLD_Cord_IR;
	nr		= 1;
	condition	= Info_Mod_Cord_IR_EXIT_Condition;
	information	= Info_Mod_Cord_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cord_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
