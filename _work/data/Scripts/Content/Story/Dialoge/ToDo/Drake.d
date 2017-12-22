INSTANCE Info_Mod_Drake_Hi (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_Hi_Condition;
	information	= Info_Mod_Drake_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drake_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drake_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Drake_Hi_11_00"); //Ahh, nowy.
	AI_Output(hero, self, "Info_Mod_Drake_Hi_15_01"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Drake_Hi_11_02"); //No cóz, nie jestes jednym z tych chlopaków, których wtedy pochowano.
};

INSTANCE Info_Mod_Drake_WhatHappened (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_WhatHappened_Condition;
	information	= Info_Mod_Drake_WhatHappened_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie wtedy stalo?";
};

FUNC INT Info_Mod_Drake_WhatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drake_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drake_WhatHappened_Info()
{
	AI_Output(hero, self, "Info_Mod_Drake_WhatHappened_15_00"); //Co sie wtedy stalo?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened_11_01"); //Nie byles juz za dlugo, czy?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened_11_02"); //O, wiesz, uwielbiam ci wszystko powiedziec, ale zakurzone powietrze w kopalni sprawia, ze moje gardlo jest tak suche, jesli rozumiesz,....
};

INSTANCE Info_Mod_Drake_WhatHappened2 (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_WhatHappened2_Condition;
	information	= Info_Mod_Drake_WhatHappened2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(jedno wyjscie)";
};

FUNC INT Info_Mod_Drake_WhatHappened2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drake_WhatHappened))
	&& (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drake_WhatHappened2_Info()
{
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_00"); //Ahh, to bylo dobre. No cóz, gdzie bylismy? Dokladnie..... Kiedy wiec siedzielismy w mojej kopalni bez zastanawiania sie nad tym, co zle i wszyscy wykonali swoja prace, ziemia zaczela trzasc sie i szumic i nie trzymala sie niczego na miejscu.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_01"); //Upadlo to bardzo wiele i wielu chlopców zginelo..... na przyklad kilka metrów za mna, Santino zostalo zabite skalami.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_02"); //Ale co bylo najgorsze dla ocalalych: Wejscie zostalo zablokowane przez ogromne glazy.... Beznadziejnie nigdy nie wyjdziemy z niej ponownie.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_03"); //Wszyscy osiagnelismy juz pokój z zaswiatami, kiedy po dwóch tygodniach magicy demonów i ich stworzenia nagle wyszli z drogi.... nie od starego wejscia, ale przez nieznana fortece!
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_04"); //Czy mozesz sobie wyobrazic? To byly setki dziedzinców skalnych! Mialoby to zajac 100 Buddlera kilkadziesiat lat!
	AI_Output(hero, self, "Info_Mod_Drake_WhatHappened2_15_05"); //I oni przejeli kopalnie?
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_06"); //Oczywiscie odkryli takze kopalnie. Wiekszosc z nas zostala i dolaczyla do nich.
	AI_Output(self, hero, "Info_Mod_Drake_WhatHappened2_11_07"); //Zrozumial sie po tym, co sie stalo.
};

INSTANCE Info_Mod_Drake_EXIT (C_INFO)
{
	npc		= Mod_7798_SMK_Drake_OM;
	nr		= 1;
	condition	= Info_Mod_Drake_EXIT_Condition;
	information	= Info_Mod_Drake_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drake_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drake_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
