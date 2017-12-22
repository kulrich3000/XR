INSTANCE Info_Mod_Demonlord_IR_Hi (C_INFO)
{
	npc		= Monster_11053_Demonlord_IR;
	nr		= 1;
	condition	= Info_Mod_Demonlord_IR_Hi_Condition;
	information	= Info_Mod_Demonlord_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Demonlord_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Demonlord_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Demonlord_IR_Hi_20_00"); //Nigdy nie osiagniesz swojego celu. Smierc jest jedyna rzecza, która cie czeka.

	AI_StopProcessInfos	(self);
};
