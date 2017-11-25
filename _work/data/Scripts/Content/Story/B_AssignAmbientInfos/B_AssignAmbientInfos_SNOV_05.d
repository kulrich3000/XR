INSTANCE Info_Mod_SNOV_05_Leader (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Leader_Condition;
	information	= Info_Mod_SNOV_05_Leader_Info;
	permanent	= 1;
	important	= 0;
	description	= "Kto jest tu odpowiedzialny?";
};

FUNC INT Info_Mod_SNOV_05_Leader_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Leader_Info()
{
	B_Say	(hero, self, "$AMBISNOV01");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_00"); //To nie jest takie proste. Tutaj w twierdzy Andokai wyznacza kierunek.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_01"); //Rycerz demoniczny Raven ma wiele do powiedzenia o wojownikach.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_02"); //Poza tym jest tez Xardas. Rzadko jest widziany, ale jego slowa sa prawem, a nawet Andokai nie osmiela sie ich przestrzegac.
};

INSTANCE Info_Mod_SNOV_05_Beliarkloster (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Beliarkloster_Condition;
	information	= Info_Mod_SNOV_05_Beliarkloster_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jakie sa interesujace miejsca?";
};

FUNC INT Info_Mod_SNOV_05_Beliarkloster_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Beliarkloster_Info()
{
	B_Say	(hero, self, "$AMBISNOV03");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_00"); //Kosciól jest sercem naszej twierdzy. Tam skladamy hold Beliarowi.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_01"); //Znajduje sie tu równiez kuznia, która opiekuje sie Eduard, oraz kuchnia, w której znajduje sie jedzenie.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_02"); //Zazwyczaj jest to karczma, ale najwazniejsza rzecza jest przetrwac.
};

INSTANCE Info_Mod_SNOV_05_Interessantes (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Interessantes_Condition;
	information	= Info_Mod_SNOV_05_Interessantes_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy cos ciekawego zdarzylo sie ostatnio?";
};

FUNC INT Info_Mod_SNOV_05_Interessantes_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Interessantes_Info()
{
	B_Say	(hero, self, "$AMBISNOV04");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Interessantes_05_00"); //Nie wiem o tym.
};

INSTANCE Info_Mod_SNOV_05_Pickpocket (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Pickpocket_Condition;
	information	= Info_Mod_SNOV_05_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_SNOV_05_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);

	Info_AddChoice	(Info_Mod_SNOV_05_Pickpocket, DIALOG_BACK, Info_Mod_SNOV_05_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SNOV_05_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SNOV_05_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);
};

INSTANCE Info_Mod_SNOV_05_EXIT (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_EXIT_Condition;
	information	= Info_Mod_SNOV_05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SNOV_05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SNOV_05 (var c_NPC slf)
{
	Info_Mod_SNOV_05_Leader.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Beliarkloster.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Interessantes.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Pickpocket.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_EXIT.npc	= Hlp_GetInstanceID(slf);
};
