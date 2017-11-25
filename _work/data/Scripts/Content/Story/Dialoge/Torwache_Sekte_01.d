INSTANCE Info_Mod_Torwache_Sekte_01_GardistenInfos (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_GardistenInfos_Condition;
	information	= Info_Mod_Torwache_Sekte_01_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widziales/-las jakas strazników w ciagu ostatnich kilku dni?";
};

FUNC INT Info_Mod_Torwache_Sekte_01_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_15_00"); //Widziales tu jakas strazników w ciagu ostatnich kilku dni?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_13_01"); //Straznicy? Od czasu do czasu mijaja, ale nie zauwazylem w nich nic szczególnego.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_13_02"); //Dlaczego pytasz?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Spotkalem kilku strazników (....) )", Info_Mod_Torwache_Sekte_01_GardistenInfos_D);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Zaden z Panstwa dzialalnosci.", Info_Mod_Torwache_Sekte_01_GardistenInfos_C);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Kilku strazników zaatakowalo mnie tu w drodze.", Info_Mod_Torwache_Sekte_01_GardistenInfos_B);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Rangers mieli z nimi pewne problemy.", Info_Mod_Torwache_Sekte_01_GardistenInfos_A);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_15_00"); //Spotkalem kilku strazników, których tu nigdy wczesniej nie widzialem.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_13_01"); //Przepraszam, ze ostatnio nie widzialem wiecej niz znane mi twarze i o ile wiem, to tylko oni regularnie opuszczaja obóz.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_15_02"); //Dzieki, zobacze Cie dookola.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_D_13_03"); //Oczywiscie.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Opiekun obozu bagiennego nie widzial nikogo niezwyklego.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_C_15_00"); //Zaden z Panstwa dzialalnosci.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_C_13_01"); //Cóz, dobrze sie bawic z tym, co nie jest moim biznesem, ale bardzo sie martwisz. (smiertelnicy)

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_B_15_00"); //Zostalem zaatakowany przez kilku strazników na tej drodze, ale nie moge sobie wyobrazic, dlaczego mieliby to zrobic.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_B_13_01"); //Te dranie nie potrzebuja zadnego powodu, aby nikogo obrabowac. Wiekszosc z nich i tak. Co oni wzieli od Ciebie?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Nic. Ale ja tez nie znalazlem wiele na ich cialach.", Info_Mod_Torwache_Sekte_01_GardistenInfos_F);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Wszystko, co mialem ze mna, to wszystko, co bylo kiepskie.....", Info_Mod_Torwache_Sekte_01_GardistenInfos_E);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_15_00"); //Nic. Ale ja tez nie znalazlem wiele na ich cialach.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_13_01"); //Mocny, wiec. Nastepnie sluchaj, nie idzcie do Starego Obozu z tym. Jesli nie bedziesz szczesliwy, odetniesz glowe z perspektywy czasu.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_15_02"); //Dziekujemy za koncówke.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_F_13_03"); //To jest darmowe.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Opiekun obozu bagiennego nie widzial nikogo niezwyklego. Z jego powodu nie dal mi rady isc do starego obozu.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_E_15_00"); //Wszystko, co mialem ze mna, to wszystko, co bylo kiepskie.....
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_E_13_01"); //Przykro mi to. Czy chcesz lodygi?

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Nie, dziekuje, nie teraz.", Info_Mod_Torwache_Sekte_01_GardistenInfos_H);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_GardistenInfos, "Tak, tak, dziekuje.", Info_Mod_Torwache_Sekte_01_GardistenInfos_G);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_I()
{
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_I_13_00"); //Gdzie stoimy? Oh, tak. Nie poszedlbym do starego obozu, gdybym byl panem. Nie otrzymasz nic innego jak tylko kpine i smiech.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_I_13_01"); //Ci, którzy zwykle tu przyjezdzaja, zwykle maja inne rzeczy na glowie niz okradanie kogos.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Opiekun obozu bagiennego nie widzial nikogo niezwyklego. Z jego powodu nie dal mi rady isc do starego obozu.");
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_H()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_H_15_00"); //Nie, dziekuje, nie teraz.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_Mod_Torwache_Sekte_01_GardistenInfos_I();
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_G()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_G_15_00"); //Tak, tak, dziekuje.

	CreateInvItems	(self, ItMi_Joint, 2);
	B_GiveInvItems	(self, hero, ItMi_Joint, 1);

	B_UseItem	(hero, ItMi_Joint);
	B_UseItem	(self, ItMi_Joint);

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);
	
	Info_Mod_Torwache_Sekte_01_GardistenInfos_I();
};

FUNC VOID Info_Mod_Torwache_Sekte_01_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_15_00"); //Rangers mieli z nimi pewne problemy i chcieli dowiedziec sie wiecej o tych incydentach.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_01"); //Och? To ciekawe. Nic dziwnego z tymi draniemi. Wszedzie musza byc jak królowie.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_02"); //Poza znajomymi twarzami w rutynie, nikt nie pojawil sie tutaj.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_03"); //Byc moze pytam sie w Nowym Obozie, móglbym sobie wyobrazic, ze cos sie wydarzylo, wtedy oni na pewno wiedza cos o tym.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_15_04"); //Dzieki. Bede musial isc dalej.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_GardistenInfos_A_13_05"); //Zycze powodzenia.


	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Opiekun obozu bagiennego nie widzial nikogo niezwyklego. Powiedzial mi, ze powinienem sprawdzic sie w nowym magazynie.");
};

INSTANCE Info_Mod_Torwache_Sekte_01_ZuGuru (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_ZuGuru_Condition;
	information	= Info_Mod_Torwache_Sekte_01_ZuGuru_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_Sekte_01_ZuGuru_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	{
		return 1;
	};
};

var int Mod_SektenKorbKram;

FUNC VOID Info_Mod_Torwache_Sekte_01_ZuGuru_Info()
{
	if (Guru_Dabei == TRUE)
	|| (Templer_Dabei == TRUE)
	|| (Npc_KnowsInfo(hero, Info_Mod_Namib_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_00"); //Uh-huh. To znów Ty.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_01"); //Tak. Dostal cos innego do zrobienia tutaj.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_02"); //Dobre. Znamy Cie. Mozesz tak sie stac.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_03"); //Zatrzymaj sie! Haslo!
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_04"); //Ale znamy sie nawzajem. Niedawno tu byc.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_05"); //Tak jest. Ale po prostu chciales cos wiedziec.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_06"); //Musze dzis wejsc w zycie.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_07"); //To tylko dla tych, którzy chca do nas dolaczyc.....
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_08"); //Dlatego przychodze! Chcesz dolaczyc do swoich chlopaków.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_09"); //... oraz list zalecajacy.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_10"); //Omylkowo ja polozylem.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_11"); //Nastepnie znajdz ja. Nic nie dzieje sie wczesniej.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_12"); //Chcesz miec lodyge?
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_13"); //Czy nie masz zamiaru? Mamy tu wystarczajaco duzo wiecej.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_14"); //Zostalo mi jeszcze troche zlota....
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_15"); //Równiez "ne stary oszustwo. Nie potrzebujemy tu zlota.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_16"); //Kazdy moze uzywac zlota.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_17"); //Zapomnij o tym!
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_18"); //Posluchaj. Naprawde musze porozmawiac z jednym z panskich guru. W dolinie istnieje niebezpieczenstwo. Cyrco mnie wyslal.
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_19"); //Cyrco druid?
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_20"); //To jest wlasnie to!
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_21"); //Hmmmm. Bardzo dobrze. Tutaj zostawia sie bron, pancerz i inwentaryzacje. Potem pozwole ci przejsc.
		AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_15_22"); //W kalesonach?
		AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_13_23"); //Dokladnie. To tam wlasnie Talas. Powiedz mu, aby dal Ci szate goscia i pomóz mu wyjsc.

		B_TransferInventory_All (hero, PC_Itemholder);

		Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_ZuGuru);
	
		Info_AddChoice	(Info_Mod_Torwache_Sekte_01_ZuGuru, "Czy ma to racje?", Info_Mod_Torwache_Sekte_01_ZuGuru_A);

		AI_Teleport	(Mod_2012_PSINOV_Talas_MT, "PSI_BRIDGE_1");
		B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "BEINAMIB");
		
		Mod_SektenKorbKram = TRUE;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_ZuGuru_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_15_00"); //Czy ma to racje?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_13_01"); //(Zdarzenia) Tak. Powiedz, czy twoja myjnia jest na wakacjach?
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_ZuGuru_A_15_02"); //(czerwony) Joker.

	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_ZuGuru);

	if (Npc_HasItems(PC_Itemholder, ItWr_MagicPaper) > 0)
	{
		CreateInvItems	(hero, ItWr_MagicPaper, Npc_HasItems(PC_Itemholder, ItWr_MagicPaper));
		Npc_RemoveInvItems	(PC_Itemholder, ItWr_MagicPaper, Npc_HasItems(PC_Itemholder, ItWr_MagicPaper));
	};

	Mob_CreateItems	("SEKTENTORTRUHE", ItSe_HeroPocket, 1);
};

INSTANCE Info_Mod_Torwache_Sekte_01_VonGuru (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_VonGuru_Condition;
	information	= Info_Mod_Torwache_Sekte_01_VonGuru_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki czyn.";
};

FUNC INT Info_Mod_Torwache_Sekte_01_VonGuru_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_ZuGuru))
	&& (Guru_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	&& (Mod_SektenKorbKram)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Sekte_01_VonGuru_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_00"); //Jaki czyn.
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_01"); //Nie tak glosne. Nie jestem glucha.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_02"); //Och, widze. Wszystko jest wciaz kompletne? Zlota torba nie dotyka sie?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_03"); //Nic nie zostalo w ogóle dotkniete. Przez sypialnie. Oto klucz do koszyka.

	B_GiveInvItems	(self, hero, ItKe_SektenTorKorb, 1);

	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_04"); //Czysty sen? Wierzysz w te dawna magie?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_05"); //Jakis guru mówi, ze kiedys wróci.
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_VonGuru_15_06"); //Czy naprawde w to wierzysz?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_VonGuru_13_07"); //....

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Oni sa szaleni, bagna. Przynajmniej guru mial wizje jaskini. Obok notatki. .... nuta miala Bandit przed stara kopalnia.... ....");
};

INSTANCE Info_Mod_Torwache_Sekte_01_Hi (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_Hi_Condition;
	information	= Info_Mod_Torwache_Sekte_01_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Cokolwiek nowego?";
};

FUNC INT Info_Mod_Torwache_Sekte_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_Sekte_01_Hi_15_00"); //Cokolwiek nowego?
	AI_Output(self, hero, "Info_Mod_Torwache_Sekte_01_Hi_13_01"); //Nie, wszystko bylo ostatnio cicho.
};

INSTANCE Info_Mod_Torwache_Sekte_01_Pickpocket (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_Pickpocket_Condition;
	information	= Info_Mod_Torwache_Sekte_01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Torwache_Sekte_01_Pickpocket_Condition()
{
	C_Beklauen	(91, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);

	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_Pickpocket, DIALOG_BACK, Info_Mod_Torwache_Sekte_01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torwache_Sekte_01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torwache_Sekte_01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);
};

FUNC VOID Info_Mod_Torwache_Sekte_01_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Torwache_Sekte_01_Pickpocket);
};

INSTANCE Info_Mod_Torwache_Sekte_01_EXIT (C_INFO)
{
	npc		= Mod_1222_TPL_Templer_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Sekte_01_EXIT_Condition;
	information	= Info_Mod_Torwache_Sekte_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_Sekte_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_Sekte_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
