INSTANCE Info_Mod_Ausgestossener_Hi (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Hi_Condition;
	information	= Info_Mod_Ausgestossener_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausgestossener_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ausgestossener_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_00"); //Tam idzie, twoja Lolita. Raz, raz i wczesniej.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_01"); //Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_02"); //Nic nie ma nic. Tylko przetrwac.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_03"); //Dobre.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_04"); //Jesli dasz nam trzy butelki wina i trzy bochenki chleba, bedziemy cicho i nie zaszkodzimy.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_05"); //To szantaz.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_06"); //Jak powiedzialem, staramy sie po prostu przetrwac.
};

INSTANCE Info_Mod_Ausgestossener_Murks (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Murks_Condition;
	information	= Info_Mod_Ausgestossener_Murks_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrafie poradzic sobie z wami we trójce.";
};

FUNC INT Info_Mod_Ausgestossener_Murks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Murks_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Murks_15_00"); //Potrafie poradzic sobie z wami we trójce.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Murks_08_01"); //Nie chcemy walczyc. Daj nam rzeczy, a wyjdziemy z tego.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Murks_15_02"); //Nie ma szans. Idz na zebractwo gdzie indziej.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Murks_08_03"); //Przykro mi, ale nie mamy wyboru.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7717_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7717_OUT_Ausgestossener_EIS, GIL_STRF);

	Mod_7718_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7718_OUT_Ausgestossener_EIS, GIL_STRF);
};

INSTANCE Info_Mod_Ausgestossener_Gutmensch (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Gutmensch_Condition;
	information	= Info_Mod_Ausgestossener_Gutmensch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto czego potrzebujesz.";
};

FUNC INT Info_Mod_Ausgestossener_Gutmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 3)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Gutmensch_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Gutmensch_15_00"); //Oto czego potrzebujesz.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 3);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 3);

	AI_Output(self, hero, "Info_Mod_Ausgestossener_Gutmensch_08_01"); //Nadal istnieja, ludzie dobroczynni. Zycze Wam dobrej podrózy.

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_7717_OUT_Ausgestossener_EIS, "TOT");
	B_StartOtherRoutine	(Mod_7718_OUT_Ausgestossener_EIS, "TOT");
};

INSTANCE Info_Mod_Ausgestossener_Nix (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Nix_Condition;
	information	= Info_Mod_Ausgestossener_Nix_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie mam nic.";
};

FUNC INT Info_Mod_Ausgestossener_Nix_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Nix_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Nix_15_00"); //Nie mam nic.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Nix_08_01"); //Slyszelismy to juz wiele razy, ale wtedy zawsze bylo cos do zdobycia.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Nix_08_02"); //Chodzcie, chlopcy, sprawdzmy go!

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7717_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7717_OUT_Ausgestossener_EIS, GIL_STRF);

	Mod_7718_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7718_OUT_Ausgestossener_EIS, GIL_STRF);
};
