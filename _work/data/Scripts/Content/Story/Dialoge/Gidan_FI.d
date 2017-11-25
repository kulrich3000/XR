INSTANCE Info_Mod_Gidan_FI_Hi (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_Hi_Condition;
	information	= Info_Mod_Gidan_FI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_FI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_Hi_13_00"); //Przyjechales tutaj szybciej, niz sie spodziewalem. Mam dla Panstwa specjalna komisje powitalna.
	AI_Output(self, hero, "Info_Mod_Gidan_FI_Hi_13_01"); //A jako bonus odpowiedz na male pytanie. Czego domaga sie nowe braterstwo z magiczna ruda? SIEH SELBST. (smiertelnicy)

	AI_StopProcessInfos	(self);

	B_InitMonsterAttitudes();

	B_StartOtherRoutine	(self, "WATCHFIGHT");
};

INSTANCE Info_Mod_Gidan_FI_FirstWaveDead (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_FirstWaveDead_Condition;
	information	= Info_Mod_Gidan_FI_FirstWaveDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_FirstWaveDead_Condition()
{
	if (FI_Story == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_FI_FirstWaveDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_FirstWaveDead_13_00"); //Jestes dobry. Ale kiedy juz bedziemy mieli Twoja krew, sypialnia znowu sie podniesie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WATCHFIGHT");
};

INSTANCE Info_Mod_Gidan_FI_SecondWaveDead (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_SecondWaveDead_Condition;
	information	= Info_Mod_Gidan_FI_SecondWaveDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_SecondWaveDead_Condition()
{
	if (FI_Story == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_FI_SecondWaveDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_SecondWaveDead_13_00"); //Przetrwales za dlugo! Teraz umrzesz!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WATCHFIGHT");
	B_StartOtherRoutine	(Mod_1981_Kolam_FI, "REDE");
};

INSTANCE Info_Mod_Gidan_FI_EXIT (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_EXIT_Condition;
	information	= Info_Mod_Gidan_FI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gidan_FI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_FI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
