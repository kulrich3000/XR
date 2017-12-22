INSTANCE Info_Mod_Setta_TUG_Hi (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_Hi_Condition;
	information	= Info_Mod_Setta_TUG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Setta_TUG_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trador_Buff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Setta_TUG_Hi_Info()
{
	AI_TurnToNPC(self, Mod_7352_OUT_Trador_TUG);
	
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Hi_19_00"); //Przypomnialem sobie jeszcze raz, ze tak sie stalo. Tylko dzieki Tobie bylismy w dolinie!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Setta_TUG_Trador (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_Trador_Condition;
	information	= Info_Mod_Setta_TUG_Trador_Info;
	permanent	= 0;
	important	= 0;
	description	= "To oklad. Skad znaliscie Trador?";
};

FUNC INT Info_Mod_Setta_TUG_Trador_Condition()
{
	if (Mod_VMG_WSTrador == 4)
	|| (Mod_VMG_WSTrador == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Setta_TUG_Trador_Info()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_15_00"); //To oklad. Skad znaliscie Trador?
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_01"); //Dwa lata temu bylem jeszcze tancerka dla Gomeza, bylem. Trador byl jednym z magów dworskich.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_02"); //On zaplanowal wraz z kilkoma innymi ludzmi zamach na Corristo, ale ja to zrozumialem i zglosilem.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_03"); //Ale on mnie jeszcze zlapal, zrobil to i zabral mnie do doliny z runa teleportera.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_04"); //Zbudowalem sobie domek i odkrylem stary Buff.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_05"); //Zaproponowalem mu pobyt u mnie, ale on chcial spac w namiocie.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_06"); //Wasz wyglad dal mi odwage dzialac, on byl.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_19_07"); //Bardzo dziekuje! Jaka jest Twoja nagroda?

	Mod_VMG_WSTrador += 1;
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	if (Mod_VMG_WSTrador == 6)
	{
		B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Rozmawialem z nimi i uslyszalem podsumowanie ich historii zyciowej. Niestety, nie dowiedzialem sie nic wartego poznania jego grupy, ale teraz wiem, ze byl on byl bylym wiezniem w kolonii. Powinienem porozmawiac z Gennem o teleporterze.");
	};

	B_StartOtherRoutine	(self, "DORF");

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);

	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "Daj mi 100 zlotych monet.", Info_Mod_Setta_TUG_Trador_C);
	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "Moze 50 zlotych monet. To wystarczy.", Info_Mod_Setta_TUG_Trador_B);
	Info_AddChoice	(Info_Mod_Setta_TUG_Trador, "Nie potrzebuje nagrody, twoja wdziecznosc wystarczy.", Info_Mod_Setta_TUG_Trador_A);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_C_15_00"); //Daj mi 100 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_C_19_01"); //To tyle? Musze sie przekonac, czy mam tak wiele. Tak, tutaj.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_B_15_00"); //Moze 50 zlotych monet. To wystarczy.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_B_19_01"); //Tutaj. Wiem, ze zloto jest w dobrych rekach, wiem.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

FUNC VOID Info_Mod_Setta_TUG_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Setta_TUG_Trador_A_15_00"); //Nie potrzebuje nagrody, twoja wdziecznosc wystarczy.
	AI_Output(self, hero, "Info_Mod_Setta_TUG_Trador_A_19_01"); //Dziekuje bardzo! Nigdy tego nie zapomne, nigdy o tym nie zapomne.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Setta_TUG_Trador);
};

INSTANCE Info_Mod_Setta_TUG_EXIT (C_INFO)
{
	npc		= Mod_7361_OUT_Setta_TUG;
	nr		= 1;
	condition	= Info_Mod_Setta_TUG_EXIT_Condition;
	information	= Info_Mod_Setta_TUG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Setta_TUG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_TUG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
