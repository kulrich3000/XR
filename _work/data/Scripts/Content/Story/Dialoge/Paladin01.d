INSTANCE Info_Mod_Paladin01_Hi (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_Hi_Condition;
	information	= Info_Mod_Paladin01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Paladin01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Paladin01_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Paladin01_Hi_06_01"); //Naleze do paladynów.
};

INSTANCE Info_Mod_Paladin01_MangelQuest (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_MangelQuest_Condition;
	information	= Info_Mod_Paladin01_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wzmocnic swoja duchowa sile poprzez modlitwe w Kosciele o zmiane?";
};

FUNC INT Info_Mod_Paladin01_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Paladin01_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Paladin01_MangelQuest_15_00"); //Jak wzmocnic swoja duchowa sile poprzez modlitwe w Kosciele o zmiane?
	AI_Output(hero, self, "Info_Mod_Paladin01_MangelQuest_15_01"); //Bo prawdziwy wojownik wykorzystuje sile swojego ciala i umyslu w walce.
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_02"); //Tak, Mistrz.... masz oczywiscie racje. Co by bylo, gdybysmy paladynami nie mieli magii wypozyczonej przez Innosa?
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_03"); //W ostatnim czasie rozlewu krwi zaczalem zbytnio skupiac sie na mieczu.
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_04"); //Dziekuje za madre slowa. Natychmiast pójde do kosciola.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Wiec mysle, ze mialem wystarczajaco duzo uczniów Inno' s, aby zachecic ich do modlitwy i powinienem zatrzymac sie przy kosciele w Nagon.");
	};
};

INSTANCE Info_Mod_Paladin01_Fake (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_Fake_Condition;
	information	= Info_Mod_Paladin01_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy zauwazyles tu kogos wyjatkowego?";
};

FUNC INT Info_Mod_Paladin01_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Paladin01_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alchemist01_Fake))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Paladin01_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Paladin01_Fake_15_00"); //Czy zauwazyles tu kogos wyjatkowego?
	AI_Output(self, hero, "Info_Mod_Paladin01_Fake_06_01"); //Byc moze jeden z magów, który wydawal sie byc w pospiechu. Mysle, ze poszedl do ogrodu ziolowego.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Paladynarz uwaza, ze magik poszedl do ogrodu ziolowego.");
};

INSTANCE Info_Mod_Paladin01_EXIT (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_EXIT_Condition;
	information	= Info_Mod_Paladin01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Paladin01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Paladin01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
