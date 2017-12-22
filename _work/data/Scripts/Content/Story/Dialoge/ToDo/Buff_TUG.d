INSTANCE Info_Mod_Buff_TUG_Hi (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_Hi_Condition;
	information	= Info_Mod_Buff_TUG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Buff_TUG_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Setta_TUG_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TUG_Hi_Info()
{
	AI_TurnToNPC(self, Mod_7352_OUT_Trador_TUG);
	
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Hi_06_00"); //To prawda. Do Ciebie dotarlismy.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Hi_06_01"); //Ten czlowiek dal nam nadzieje. Sledzilismy go przez teleportera.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Buff_TUG_Trador (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_Trador_Condition;
	information	= Info_Mod_Buff_TUG_Trador_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, tutaj jestesmy. Co robiles z Trador?";
};

FUNC INT Info_Mod_Buff_TUG_Trador_Condition()
{
	if (Mod_VMG_WSTrador == 4)
	|| (Mod_VMG_WSTrador == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TUG_Trador_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_15_00"); //Cóz, tutaj jestesmy. Co robiles z Trador?
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_01"); //Musze sie na to rzucic okiem. W mlodym wieku bylem straznikiem w Minental.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_02"); //Niektórzy wiezniowie spisek wymierzony w magów.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_03"); //Planowali zamknac wiezniów w Minental lub w czyms innym.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_04"); //W kazdym razie dostalem wiatr od sprawy i zglosilem sprawe szefowi straznika.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_05"); //Ukaral grupe, której przywódca byl Trador.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_06"); //Nie chcial sie z tym pogodzic i teleportowal mnie jakas magia do opuszczonej doliny.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_07"); //Kilka lat pózniej pojawil sie tam Setta, który najwyrazniej mial tez cos wspólnego z Trador.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_08"); //Ale kiedy przyszedles, odwaga do dzialania zostala nam zwrócona, a my wykorzystalismy ten portal do wspólnego wsparcia.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_09"); //Na szczescie ostatecznie zlapalismy Tradora.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_06_10"); //Jak moge wyrazic wdziecznosc?

	Mod_VMG_WSTrador += 1;
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	if (Mod_VMG_WSTrador == 6)
	{
		B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Rozmawialem z nimi i uslyszalem podsumowanie ich historii zyciowej. Niestety, nie dowiedzialem sie nic wartego poznania jego grupy, ale teraz wiem, ze byl on byl bylym wiezniem w kolonii. Powinienem porozmawiac z Gennem o teleporterze.");
	};

	B_StartOtherRoutine	(self, "DORF");

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);

	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "Daj mi 100 zlotych monet.", Info_Mod_Buff_TUG_Trador_C);
	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "Moze 50 zlotych monet. To wystarczy.", Info_Mod_Buff_TUG_Trador_B);
	Info_AddChoice	(Info_Mod_Buff_TUG_Trador, "Nie potrzebuje nagrody, twoja wdziecznosc wystarczy.", Info_Mod_Buff_TUG_Trador_A);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_C_15_00"); //Daj mi 100 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_C_06_01"); //Nie dokladnie cos dla malej torebki, ale prosze. Chce, zebyscie mieli ja pania.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_B_15_00"); //Moze 50 zlotych monet. To wystarczy.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_B_06_01"); //To wlasciwe. Tutaj.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

FUNC VOID Info_Mod_Buff_TUG_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Buff_TUG_Trador_A_15_00"); //Nie potrzebuje nagrody, twoja wdziecznosc wystarczy.
	AI_Output(self, hero, "Info_Mod_Buff_TUG_Trador_A_06_01"); //Och, od dawna nic takiego nie widzialem. Jestes dobrym czlowiekiem.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Buff_TUG_Trador);
};

INSTANCE Info_Mod_Buff_TUG_EXIT (C_INFO)
{
	npc		= Mod_7362_OUT_Buff_TUG;
	nr		= 1;
	condition	= Info_Mod_Buff_TUG_EXIT_Condition;
	information	= Info_Mod_Buff_TUG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Buff_TUG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Buff_TUG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
