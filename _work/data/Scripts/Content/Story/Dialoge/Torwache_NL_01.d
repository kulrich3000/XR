INSTANCE Info_Mod_Torwache_NL_01_GardistenInfos (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_GardistenInfos_Condition;
	information	= Info_Mod_Torwache_NL_01_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Torwache_NL_01_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_01"); //Tak?
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_02"); //Czy widziales tutaj obcych? Byc moze strazników?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_03"); //Straznicy? Oto? Nie sadze, zeby nikt nie odwazyl sie tu przyjechac.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_04"); //Czy jestes pewien, ze nic tu nie bylo?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_05"); //Prosze pozwolic mi sie ponownie zastanowic. Przypomina mi to, ze pare niewiadomych strzelalo do nas w przedostatnia noc.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_06"); //Strzalka zranila jednego z naszych najemników. Lee prawie wyplynal z gniewem. Ale nie bylem tam, wiec nie pamietam.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_07"); //Wystarczy tylko pójsc do tawerny na wyspie, prawdopodobnie usiadzie tam i wezmie kilka dzbanów. Wejdz od razu.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_08"); //Dziekuje, odnajde go.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_09"); //Masz u siebie cos do picia? Od wielu godzin umieralem z pragnienia.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Straznik nowego obozu nic nie wie, ale kilka nocy temu zostal zastrzelony inny najemnik w tawernie. Powinnam go zobaczyc, moze on cos wie.");

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "Przykro mi, nie mam nic na sobie.", Info_Mod_Torwache_NL_01_GardistenInfos_B);
	if (Npc_HasItems(hero, ItFo_Wine) > 0)
	|| (Npc_HasItems(hero, ItFo_Water) > 0)
	|| (Npc_HasItems(hero, ItFo_Booze) > 0)
	|| (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "Jasne, ze tutaj idziesz....", Info_Mod_Torwache_NL_01_GardistenInfos_A);
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_B_15_00"); //Przykro mi, nie mam nic na sobie.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_B_06_01"); //Ach, zrób to. Cóz, szczescie.

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_G()
{
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_G_06_00"); //Dzieki, czlowiek. Nawiasem mówiac, nazywal sie Nodrak. Kiedy mial kilka piwa, w rzeczywistosci jest zawsze troche gadatliwy.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Nazwisko najemnika brzmi Nodrak. Jesli dostaje napój, to wolalby porozmawiac.");
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_A_15_00"); //Jasne, ze tutaj idziesz....

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	if (Npc_HasItems(hero, ItFo_Wine) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... wino.", Info_Mod_Torwache_NL_01_GardistenInfos_F);
	};
	if (Npc_HasItems(hero, ItFo_Water) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... wody.", Info_Mod_Torwache_NL_01_GardistenInfos_E);
	};
	if (Npc_HasItems(hero, ItFo_Booze) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... jalowiec.", Info_Mod_Torwache_NL_01_GardistenInfos_D);
	};
	if (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... piwo.", Info_Mod_Torwache_NL_01_GardistenInfos_C);
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_F_15_00"); //... wino.

	B_GiveInvItems	(hero, self, ItFo_Wine, 1);
	B_UseItem	(self, ItFo_Wine);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_E_15_00"); //... wody.

	B_GiveInvItems	(hero, self, ItFo_Water, 1);
	B_UseItem	(self, ItFo_Water);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_D_15_00"); //... jalowiec.

	B_GiveInvItems	(hero, self, ItFo_Booze, 1);
	B_UseItem	(self, ItFo_Booze);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_C_15_00"); //... piwo.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);
	B_UseItem	(self, ItFo_Beer);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

INSTANCE Info_Mod_Torwache_NL_01_Hi (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_Hi_Condition;
	information	= Info_Mod_Torwache_NL_01_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Cokolwiek nowego?";
};

FUNC INT Info_Mod_Torwache_NL_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_Hi_15_00"); //Cokolwiek nowego?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_Hi_06_01"); //Nie, wszystko bylo ostatnio cicho.
};

INSTANCE Info_Mod_Torwache_NL_01_WarumHier (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_WarumHier_Condition;
	information	= Info_Mod_Torwache_NL_01_WarumHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego pilnujesz bramy?";
};

FUNC INT Info_Mod_Torwache_NL_01_WarumHier_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_WarumHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_WarumHier_15_00"); //Dlaczego pilnujesz bramy?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_WarumHier_06_01"); //Wlasciwie niczego tutaj nie pilnujemy. Sporadycznie lapiemy harcerza orkowego wychodzacego z gór, ale oni nam nie zagrazaja.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_WarumHier_15_02"); //A co z dostepem nad rzeka?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_WarumHier_06_03"); //Dostep nie jest szczególnie podatny na zagrozenia. W obozie jest tez brama, a rolnicy jako awangarda.
};

INSTANCE Info_Mod_Torwache_NL_01_Pickpocket (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_Pickpocket_Condition;
	information	= Info_Mod_Torwache_NL_01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Torwache_NL_01_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);

	Info_AddChoice	(Info_Mod_Torwache_NL_01_Pickpocket, DIALOG_BACK, Info_Mod_Torwache_NL_01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torwache_NL_01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torwache_NL_01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);
};

INSTANCE Info_Mod_Torwache_NL_01_EXIT (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_EXIT_Condition;
	information	= Info_Mod_Torwache_NL_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_NL_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
