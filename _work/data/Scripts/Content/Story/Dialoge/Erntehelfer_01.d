INSTANCE Info_Mod_Erntehelfer_01_Hi (C_INFO)
{
	npc		= Mod_7638_OUT_Erntehelfer_REL;
	nr		= 1;
	condition	= Info_Mod_Erntehelfer_01_Hi_Condition;
	information	= Info_Mod_Erntehelfer_01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mówi praca?";
};

FUNC INT Info_Mod_Erntehelfer_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erntehelfer_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Erntehelfer_01_Hi_15_00"); //Co mówi praca?
	AI_Output(self, hero, "Info_Mod_Erntehelfer_01_Hi_01_01"); //Nic szczególnego. Przechodzisz przez nie i jestes z nim zwiazany.
};

INSTANCE Info_Mod_Erntehelfer_01_AndererJob (C_INFO)
{
	npc		= Mod_7638_OUT_Erntehelfer_REL;
	nr		= 1;
	condition	= Info_Mod_Erntehelfer_01_AndererJob_Condition;
	information	= Info_Mod_Erntehelfer_01_AndererJob_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nigdy wczesniej nie marzyles o kolejnym zawodzie?";
};

FUNC INT Info_Mod_Erntehelfer_01_AndererJob_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erntehelfer_01_AndererJob_Info()
{
	AI_Output(hero, self, "Info_Mod_Erntehelfer_01_AndererJob_15_00"); //Nigdy wczesniej nie marzyles o kolejnym zawodzie?
	AI_Output(self, hero, "Info_Mod_Erntehelfer_01_AndererJob_01_01"); //Tak, tak. Zawsze chcialem byc obserwatorem w Khoracie. Ale Anselm mnie nie wzial.
	AI_Output(hero, self, "Info_Mod_Erntehelfer_01_AndererJob_15_02"); //A dlaczego nie zostales zatrudniony?
	AI_Output(self, hero, "Info_Mod_Erntehelfer_01_AndererJob_01_03"); //Powiedzial, ze ma zly dzien i nie chce sluchac gówno.
};

INSTANCE Info_Mod_Erntehelfer_01_Pickpocket (C_INFO)
{
	npc		= Mod_7638_OUT_Erntehelfer_REL;
	nr		= 1;
	condition	= Info_Mod_Erntehelfer_01_Pickpocket_Condition;
	information	= Info_Mod_Erntehelfer_01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Erntehelfer_01_Pickpocket_Condition()
{
	C_Beklauen	(27, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Erntehelfer_01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Erntehelfer_01_Pickpocket);

	Info_AddChoice	(Info_Mod_Erntehelfer_01_Pickpocket, DIALOG_BACK, Info_Mod_Erntehelfer_01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Erntehelfer_01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Erntehelfer_01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Erntehelfer_01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Erntehelfer_01_Pickpocket);
};

FUNC VOID Info_Mod_Erntehelfer_01_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Erntehelfer_01_Pickpocket);
};

INSTANCE Info_Mod_Erntehelfer_01_EXIT (C_INFO)
{
	npc		= Mod_7638_OUT_Erntehelfer_REL;
	nr		= 1;
	condition	= Info_Mod_Erntehelfer_01_EXIT_Condition;
	information	= Info_Mod_Erntehelfer_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Erntehelfer_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erntehelfer_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
