INSTANCE Info_Mod_Furgas_Hi (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Hi_Condition;
	information	= Info_Mod_Furgas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Furgas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_00"); //Nowe oblicze w naszych szeregach, jak bardzo satysfakcjonujace.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_01"); //Pozwole sobie krótko wyjasnic cos waznego.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_02"); //Powiedz mi o tym.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_03"); //Wieza ta jest centralnym miejscem w klasztorze.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_04"); //Na górze znajduje sie wyrocznia, która moze byc bardzo przydatna.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_05"); //Jesli jednak wejdziesz do pentagramu, zostaniesz przeniesiony do naszej jaskini.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_06"); //Jest kopalnia, w której wydobywamy kamienie runowe i ogród ziolowy.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_07"); //Ogród ziolowy pod ziemia?
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_08"); //Tak, a rosliny rozwijaja sie dzieki naszej magii.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_09"); //Dziekujemy za informacje.
};

INSTANCE Info_Mod_Furgas_Paket (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Paket_Condition;
	information	= Info_Mod_Furgas_Paket_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem dla Ciebie pakiet zywnosciowy.";
};

FUNC INT Info_Mod_Furgas_Paket_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (Npc_HasItems(hero, ItMi_PAT_Nahrung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_Paket_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_Paket_15_00"); //Dostawalem dla Ciebie paczki zywnosciowe.
	
	B_GiveInvItems	(hero, self, ItMi_Pat_Nahrung, 1);

	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_01"); //Ah, w koncu. Na to czekali paladyni.
	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_02"); //Oto kamien runowy, któremu dziekuje.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Furgas_MangelQuest (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest_Condition;
	information	= Info_Mod_Furgas_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak widzialem, masz tam wiele zyl rudy.....";
};

FUNC INT Info_Mod_Furgas_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest_15_00"); //Jak widzialem, masz tam wiele zyl rudy..... Ale nikt nie jest zaangazowany w wydobycie.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_01"); //No cóz, od oblezenia nie wszystko odbywa sie w zwyklym trybie.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_02"); //Naprawde nie bylismy przygotowani na to, ze Czarni Magicy i ich legiony sa tak nagle u naszych bram.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_03"); //A kiedy zrobilo sie to powazne, nie moglismy dlugo myslec, ale musielismy przerzucic kazdy kawalek metalu w ostrze dla naszych bojowników.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_04"); //Wsród nich byly pikseksy..... Ach, ale od czasu do czasu mozna bylo wykorzystac rude do budowy kamieni runowych.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_05"); //Gdyby tylko mielismy piec pikseksów....

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas moze uzyc pieciu pikseksów, aby wydobycie rudy znów ruszyc.");
};

INSTANCE Info_Mod_Furgas_MangelQuest2 (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest2_Condition;
	information	= Info_Mod_Furgas_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu kilka pickaxów.";
};

FUNC INT Info_Mod_Furgas_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furgas_MangelQuest))
	&& (Npc_HasItems(hero, ItMw_2H_Axe_L_01) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest2_15_00"); //Mam tu kilka pickaxów.

	B_GiveInvItems	(hero, self, ItMw_2H_Axe_L_01, 5);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_01"); //W rzeczywistosci.... Dziekuje bardzo. Wez te kamienie runowe jako nagrode.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 2);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_02"); //To sa nasze ostatnie, ale z pikselkami juz wkrótce bedziemy mieli dosc nowych.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_03"); //Innos chroni Cie na drodze.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas posiada pikniki i moze kontynuowac wydobycie rudy.");

	B_StopMangel();

	B_RemoveNpc	(Mod_7787_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7788_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7789_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7790_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7791_SFB_Flaemar_PAT);
};

INSTANCE Info_Mod_Furgas_EXIT (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_EXIT_Condition;
	information	= Info_Mod_Furgas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Furgas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
