INSTANCE Info_Mod_Torwache_AL_01_Halt (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Halt_Condition;
	information	= Info_Mod_Torwache_AL_01_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_01"); //Chcialbym cos o Tobie wiedziec.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_02"); //O co to jest?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_03"); //Spotkalem kilku strazników.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_04"); //Tak, i?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_05"); //Nie bylo ich w starym obozie.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_06"); //Wtedy przypuszczam, ze byli na zewnatrz. Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Czy zdarza Ci sie poznac ja?", Info_Mod_Torwache_AL_01_Halt_D);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Co tam robia?", Info_Mod_Torwache_AL_01_Halt_C);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Niektórzy z Panstwa strazników zaatakowali niektórych Rangerów (....). )", Info_Mod_Torwache_AL_01_Halt_B);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Zostalem zaatakowany w lesie przez tych strazników.", Info_Mod_Torwache_AL_01_Halt_A);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_D_15_00"); //Czy zdarza Ci sie poznac ja?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_D_06_01"); //Nie.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_00"); //Co tam robia?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_01"); //I myslisz, ze po prostu powiedzialbym to uciekajacemu poszukiwaczowi przygód? Chodz, zgub sie.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_02"); //Mógl to byc....
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_03"); //Spójrzcie, nawet jesli cos o tym wiem, nie powiedzialbym wam.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_04"); //I nie osmielisz sie powiedziec mi, ze przesladujesz innych strazników lub jednego z arcybaronów!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_B_15_00"); //Niektórzy z Panstwa strazników zaatakowali i zabili niektórych Rangerów.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_01"); //Oni to zrobili? Nie znam jej. Nie wiedzial nawet, ze sa tu straznicy.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_02"); //Gdzie znajduje sie magazyn?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Zaden z Panstwa dzialalnosci.", Info_Mod_Torwache_AL_01_Halt_F);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Nie wiem o tym.", Info_Mod_Torwache_AL_01_Halt_E);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_00"); //Zaden z Panstwa dzialalnosci.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_01"); //Och, tak, ty to robisz. To maja byc nasi ludzie, którzy ja zaatakowali.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_02"); //Byc moze powinnismy przyjrzec sie sytuacji..... spojrzec na nia.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_03"); //To nie jest konieczne. Ponadto obóz nie zostal zaatakowany, ale strazników zabito na otwartej przestrzeni.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_04"); //Nastepnie zejdz z bezpodstawnymi oskarzeniami.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_05"); //Prawdopodobnie zostaly one rozdrobnione przez paczke wilków i teraz wine nalezy wepchnac do naszych butów.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_06"); //Ale....
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_07"); //Powiedzialem, zebyscie wyszli z tego miejsca. Nie daj mi wiecej slyszec z tego nonsensu!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_E_15_00"); //Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_E_06_01"); //Klamca.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_A_15_00"); //Zostalem zaatakowany w lesie przez tych strazników.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_A_06_01"); //Hej, chlopaki, czy po prostu to uslyszales? Hehehe. Mam nadzieje, ze nie wyszli bez zlota.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Wzieli wszystko, co mialem ze mna!", Info_Mod_Torwache_AL_01_Halt_H);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Zabilem ja....", Info_Mod_Torwache_AL_01_Halt_G);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_H()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_00"); //Wzieli wszystko, co mialem ze mna!
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_01"); //Wiec co teraz robisz?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_02"); //Chce, zeby to bylo z powrotem.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_03"); //Snijcie.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_G()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_G_15_00"); //Zabilem ja....
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_G_06_01"); //Co masz? Za to placisz!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschDieb (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_00"); //Brudni zlodzieje nie stracili nic w naszym magazynie.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_01"); //Najpierw splacic dlug Sabitschowi, a nastepnie wrócic do srodka.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_02"); //1000 zlotych monet kara za pogrubiona kradziez i amulet.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Bylem w stanie ukrasc amulet, który Sabitsch zauwazyl wkrótce potem. Mialem go przywiezc do Dextera i zastanowic sie, jak po kradziezy przywrócic stary obóz przyjazny.");
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschMoerder (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_00"); //Tego wieczoru w jego kabinie zmarl przyjaciel Thorusa.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_01"); //Mamy wiarygodnego swiadka, który widzial Cie w poblizu.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_02"); //Dopóki tak sie nie stanie, na pewno nie wrócisz do obozu.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Pewnego swiadka Damna - prawdopodobnie Scatty' ego - swiadczyl o tym, ze widzialem mnie noca w kabinie zmarlego. Jesli nie chce byc na stale zakazany z dawnego obozu, musze cos zrobic.");
};

INSTANCE Info_Mod_Torwache_AL_01_Kapitel3 (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Kapitel3_Condition;
	information	= Info_Mod_Torwache_AL_01_Kapitel3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Kapitel3_Condition()
{
	if (Kapitel == 3)
	&& (Gardist_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Kapitel3_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_00"); //Hej, kazda osoba odwiedzajaca nasz obóz musi wiedziec, ze od teraz zamykamy drzwi noca.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_01"); //W ostatnim czasie bylo mnóstwo orków i nie chcemy miec zadnych szans.
};

INSTANCE Info_Mod_Torwache_AL_01_EXIT (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_EXIT_Condition;
	information	= Info_Mod_Torwache_AL_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_AL_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_AL_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
