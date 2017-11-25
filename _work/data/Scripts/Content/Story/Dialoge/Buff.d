INSTANCE Info_Mod_Buff_Hi (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_Hi_Condition;
	information	= Info_Mod_Buff_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz Buff?";
};

FUNC INT Info_Mod_Buff_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Setta_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_00"); //Czy masz Buff?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_01"); //Tak, jestem nim. Co moze dla ciebie zrobic stary czlowiek taki jak ja?
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_02"); //Chce wyjsc z tej doliny.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_03"); //(smieje sie glosno) HAHAHAHAHAHAHA! Z tej doliny nie ma ucieczki.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_04"); //Mamy tutaj teleportera, ale to nie dziala.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_05"); //Gdzie jest teleporter?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_06"); //W jaskini w dól drogi. Ale znajdziesz tam tylko pluskwy miesne.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_07"); //Zobaczymy to.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_08"); //Jesli jestes tam, czy mozesz przyniesc mi garsc ciemnych grzybów?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_09"); //Piec powinno to zrobic. Chce z niej zrobic zupe grzybowa.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_10"); //Pewne.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_11"); //Dziekuje bardzo. Moje nogi sa tak slabe, ze nie moge biegac w calosci.

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "W tej dolinie jest teleporter! Powinienem to sprawdzic. Znajduje sie on w pobliskiej jaskini.");
	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Dla starego Buffa mam przyniesc piec ciemnych grzybów.");
};

INSTANCE Info_Mod_Buff_Pilze (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_Pilze_Condition;
	information	= Info_Mod_Buff_Pilze_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem grzyby.";
};

FUNC INT Info_Mod_Buff_Pilze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_Hi))
	&& (Npc_HasItems(hero, ItPl_Mushroom_01) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_Pilze_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_Pilze_15_00"); //Znalazlem grzyby. Tutaj je masz.

	B_GiveInvItems	(hero, self, ItPl_Mushroom_01, 5);

	AI_Output(self, hero, "Info_Mod_Buff_Pilze_06_01"); //Dziekuje bardzo. Tutaj zjesc troche zupy.

	B_GiveInvItems	(self, hero, ItFo_Pilzsuppe, 1);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Przynioslem Buffa pieczarki.");
};

INSTANCE Info_Mod_Buff_TeleportSockel (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_TeleportSockel_Condition;
	information	= Info_Mod_Buff_TeleportSockel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Obok teleportera znajduje sie postument. Nie wspomniales o tym.";
};

FUNC INT Info_Mod_Buff_TeleportSockel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_Hi))
	&& (Mod_VMG_TeleporterEntdeckt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TeleportSockel_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_00"); //Obok teleportera znajduje sie postument. Nie wspomniales o tym.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_01"); //Czy ma to znaczenie?
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_02"); //Tak, mam przy sobie kamien ladowania. Móglby pasowac.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_03"); //Dlaczego tak sie nie stalo? Wreszcie jest nadzieja!
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_04"); //Tutaj wez te magiczne nasiona.

	B_GiveInvItems	(self, hero, ItMi_MagicSamen, 1);

	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_05"); //Wystarczy je posypac wokól podstawy. Moze to pomoze.
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_06"); //Dziekuje, staram sie aktywowac portal.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_07"); //Nie spowalniac!

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Otrzymalem magiczne nasiona z Buffa, które mam posypywac wokól podstawy. Potem bede musial uzyc kamienia doladowania.");
};

INSTANCE Info_Mod_Buff_EXIT (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_EXIT_Condition;
	information	= Info_Mod_Buff_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Buff_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Buff_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
