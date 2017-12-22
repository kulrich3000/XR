INSTANCE Info_Mod_Velaya_NW_Irdorath (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_00"); //Nie mozesz tego miec, czy mozesz?
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_01"); //Och, jestem zaskoczony, ze równiez tutaj Cie znajdziesz....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_02"); //No cóz, nie móglbym tu byc bez Was, nadal siedzialbym w dolinie rzeki Minental, pozwolilbym sobie zasiac w wannie i dzielic sie lózkiem z baronami rudy....". nawet jesli nie bylo tak zle jak za dni Gomeza.
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_03"); //Hmm, co przywraca wspomnienia....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_04"); //Co mówisz?
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_05"); //Uh, nic. Mialem na mysli..... pamietam, ze musialem wszystko przygotowac do nadchodzacej podrózy.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_06"); //Podróz morska? Ogromny swiat? Jak wspaniale....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_07"); //Ach, jesli tylko móglbym isc z wami....
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_08"); //No cóz, nie bedzie zupelnie nieszkodliwe. Jest powolany, by pociagnac do odpowiedzialnosci zlego maga za jego okrucienstwa.
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_09"); //Nie wiem, czy byloby to wlasciwe dla Ciebie....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_10"); //Och, posluchaj pana. Wiele sie nauczylem w ostatnich tygodniach.....
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_11"); //Cóz, mysle, ze nie oznacza to pracy w terenie....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_12"); //Cóz, z kokarda moge wystrzelic oko dzika na 10 m....
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_39_13"); //... i inwazyjnych chlopaków z mieczem, aby pokazac powsciagliwosc, gdy idzie tam, gdzie boli......
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_14"); //Soso, brzmi jak ktos z doswiadczenia mówi.
};

INSTANCE Info_Mod_Velaya_NW_Irdorath2 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath2_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze, jesli w ciagu kilku tygodni tak sie piesni, to na statku nie bedzie sie niczego palic.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath2_15_00"); //Dobrze, jesli w ciagu kilku tygodni tak sie piesni, to na statku nie bedzie sie niczego palic.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath2_39_01"); //Wspanialy! A okret, czy to fantastyczny wielki statek na tylach portu?
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath2_39_02"); //Czlowiek, blizej przyjrzec sie temu.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Jesli nie wszystko znajdziesz w Khorinis.... z moim 'starym znajomym' Velaya, moja zaloga jest teraz jeszcze jednym czlonkiem zalogi.");

	B_GivePlayerXP	(100);

	Mod_VelayaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Velaya_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath3_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VelayaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath3_39_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_VelayaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velaya_NW_Irdorath4 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath4_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VelayaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath4_39_01"); //Bardzo dobrze, wróce do portu.

	Mod_VelayaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Velaya_NW_EXIT (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_EXIT_Condition;
	information	= Info_Mod_Velaya_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velaya_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velaya_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
