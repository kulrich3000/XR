INSTANCE Info_Mod_Bones_IR_Hi (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_Hi_Condition;
	information	= Info_Mod_Bones_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, kosci.";
};

FUNC INT Info_Mod_Bones_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_00"); //Witaj, kosci.

	if (Mod_VelayaDabei > 0)
	|| (Mod_CassiaDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_01"); //Dlaczego wygladasz tak skromnie?
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_02"); //Um, oh, nie, nie, nie tak wazne....
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_03"); //Miales piekna kobiete, której chciales na pokladzie.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_04"); //(ujednolicone) Uh....... ona nie byla moim typem..... Dokladnie.
	}
	else if (Mod_SagittaDabei > 0)
	|| (Mod_UrielaDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_05"); //Och, nie wygladasz tak dobrze....
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_06"); //Och, tylko sie zamknal.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_07"); //Najpierw jedyna kobieta na pokladzie to stara ciotka ziolowa, a potem nie moge nawet dostac sie, aby pokazac jej, czym jestem, poniewaz moje trawienie nagle szaleje.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_08"); //Dopiero teraz zaczynam sie czuc lepiej.....
	};
};

INSTANCE Info_Mod_Bones_IR_GehtLos (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_GehtLos_Condition;
	information	= Info_Mod_Bones_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Bones_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bones_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Bones_IR_GehtLos_04_00"); //Co? Po tym zlego rejsu! Zapomnij o tym! Nie stawiam nogi na wyspie.....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bones_IR_EXIT (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_EXIT_Condition;
	information	= Info_Mod_Bones_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bones_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
