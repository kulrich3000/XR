INSTANCE Info_Mod_Hannes_Hi (C_INFO)
{
	npc		= Mod_7591_OUT_Hannes_REL;
	nr		= 1;
	condition	= Info_Mod_Hannes_Hi_Condition;
	information	= Info_Mod_Hannes_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hannes_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hannes_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_00"); //Wspanialy! Parafit! Taka rzecz moze byc stworzona tylko przez mistrza. Spójrz na niego, spogladaj na niego!
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_01"); //Ten czlowiek mówi prawde, wszystko tak pasuje, przepraszam, piesc na oko!
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_02"); //Wprowadzenie skurczu bedzie mialo wplyw na zycie teatralne przez kolejne dziesieciolecia, wiec co mówie, nowa faza poezji scenicznej.
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_03"); //Jestesmy w pewnym sensie swiadkami historycznej chwili, precyzji!
};

INSTANCE Info_Mod_Hannes_EXIT (C_INFO)
{
	npc		= Mod_7591_OUT_Hannes_REL;
	nr		= 1;
	condition	= Info_Mod_Hannes_EXIT_Condition;
	information	= Info_Mod_Hannes_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hannes_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hannes_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
