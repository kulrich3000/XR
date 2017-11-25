INSTANCE Info_Mod_Merdarion_AW_Hi (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Hi_Condition;
	information	= Info_Mod_Merdarion_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_AW_Hi_Condition()
{
	if (Wld_IsTime(00,00,06,05))
	&& (LEAVE_PORTALTEMPEL_FIRSTTIME_ONETIME == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_00"); //Dziekujemy Adanosowi, wreszcie sie obudziles.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_01"); //(zmieszane) Ale...... Zbudzic sie? Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_02"); //Znalezlismy cie nieprzytomnym po drugiej stronie portalu. Musisz pasc ofiara zaklecia ochronnego.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_03"); //Ochrona?
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_04"); //Tak, prawdopodobnie budowniczowie chcieli uzyc go do ogluszenia ewentualnych intruzów.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_05"); //Mechanizm ten mógl byc zabójczy w przeszlosci, ale w ciagu wieków stracil wiele z jego magii.
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Hi_15_06"); //Bardzo uspokajajacy.....
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Hi_06_07"); //Ach, cóz, lepiej zaczac rozmawiac z Saturami. Dowiedzial sie czegos nowego.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Merdarion_AW_Nefarius (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Nefarius_Condition;
	information	= Info_Mod_Merdarion_AW_Nefarius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szatan wyslal mnie.";
};

FUNC INT Info_Mod_Merdarion_AW_Nefarius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Nefarius_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Nefarius_15_00"); //Szatan wyslal mnie. Kazal mi wyczyscic podloge w khorynie.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_01"); //Ahh, bardzo dobry. Miejmy nadzieje, ze zapobiegnie to dalszemu glupocie magów demonów.
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_02"); //Tutaj znajduje sie szesc magicznych perel wodnych i mapa przedstawiajaca dotkniete obszary.

	CreateInvItems	(hero, ItMi_Wasserperle, 6);
	CreateInvItems	(hero, ItWr_Map_Perlenkram, 1);

	B_ShowGivenThings	("6 otrzymanych perelek wodnych i karty");

	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Nefarius_06_03"); //Niech Adanos Cie ochroni.

	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Teraz musze tylko isc za znakami na mapie i upuscic perelki wody w odpowiednie miejsca.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Merdarion_AW_Perlen_02 (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Perlen_02_Condition;
	information	= Info_Mod_Merdarion_AW_Perlen_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_AW_Perlen_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_06))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Perlen_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_Perlen_02_06_00"); //Ach, zostalem juz o tym poinformowany i mam wszystko, co wam potrzebne.
	
	CreateInvItems	(hero, ItMi_Wasserperle, 3);
	CreateInvItems	(hero, ItWr_Map_Perlenkram_02, 1);

	B_ShowGivenThings	("3 otrzymane perly wodne i karta");

	AI_Output(hero, self, "Info_Mod_Merdarion_AW_Perlen_02_15_01"); //Tak, wydaje sie, ze staje sie coraz bardziej rutynowe....

	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Teraz ponownie podazaj za oznaczeniami na mapie.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Merdarion_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Merdarion_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, powitanie. Chce wiedziec o uroczystym sztylecie.";
};

FUNC INT Info_Mod_Merdarion_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Zeremoniendolch_15_00"); //Adanos, powitanie. Chce wiedziec o uroczystym sztylecie.
	AI_Output(self, hero, "Info_Mod_Merdarion_Zeremoniendolch_06_01"); //Nastepnie udaj sie do Riordian' s. Potrafil rozszyfrowac nowe inskrypcje.
	AI_Output(self, hero, "Info_Mod_Merdarion_Zeremoniendolch_06_02"); //Dziekuje panu, panie posle.
};

INSTANCE Info_Mod_Merdarion_AW_CavalornZuVatras (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_CavalornZuVatras_Condition;
	information	= Info_Mod_Merdarion_AW_CavalornZuVatras_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyslalem Kawalon do miasta. Potrzebuje go Vatras.";
};

FUNC INT Info_Mod_Merdarion_AW_CavalornZuVatras_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_CavalornZuVatras_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_CavalornZuVatras_15_00"); //Wyslalem Kawalon do miasta. Potrzebuje go Vatras.
	AI_Output(self, hero, "Info_Mod_Merdarion_CavalornZuVatras_06_01"); //To wszystko jest w porzadku, panie posle.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Merdarion_AW_NefariusKey (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_NefariusKey_Condition;
	information	= Info_Mod_Merdarion_AW_NefariusKey_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius mnie poslal.";
};

FUNC INT Info_Mod_Merdarion_AW_NefariusKey_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Merdarion_Nefarius))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_NefariusKey_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Nefarius_15_00"); //Nefarius mnie poslal. Mam zatrzymac sie przy Twoim miejscu.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_01"); //Ciesze sie, ze przyszedles. W ruinach Khorinis znajduje sie teleporter. Za pomoca tego przycisku mozna przejsc przez drzwi.

	B_GiveInvItems	(self, hero, ItKe_PORTALTEMPELWALKTHROUGH_ADDON, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_02"); //Dann gibt es noch einen weiteren Teleporter in der Nähe der Taverne "Do martwej harfy". Auch dieser Teleporter ist durch eine Tür geschützt.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_03"); //Za pomoca tego przycisku mozna otworzyc drzwi.

	B_GiveInvItems	(self, hero, ITKE_ORLAN_TELEPORTSTATION, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_04"); //Teraz spieszyc sie.
};

INSTANCE Info_Mod_Merdarion_AW_Gast (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_Gast_Condition;
	information	= Info_Mod_Merdarion_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak przybyles?";
};

FUNC INT Info_Mod_Merdarion_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Merdarion_AW_Gast.description = "Czy mozesz pomóc mi znalezc zlodziej?";
	}
	else
	{
		Info_Mod_Merdarion_AW_Gast.description = "Widziales cos niezwyklego dzis wieczorem?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_00"); //Czy mozesz pomóc mi znalezc zlodziej?
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_01"); //Moze. Moze nie.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_02"); //Kiedy kilka godzin temu pozwolilem na wedrówke spojrzenia, z zakatków oczu patrzylem na ruch w ruinach.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_03"); //To bylo chyba jakies zwierze.

		B_LogEntry	(TOPIC_MOD_SATURAS_TAGGAST, "Merdarion widzial ruch miedzy ruinami. Moge wiec znalezc tam wiodaca role.");

		Mod_Saturas_Gast_Fortschritt = 1;

		Wld_InsertNpc	(Mod_115_NONE_Eremit_AW, "WP_TEMPEL_START_EREMIT_07");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_04"); //Widziales cos niezwyklego dzis wieczorem?
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_05"); //Tak, rzeczywiscie! Marzylem o wielu pieknych kobietach, zanim mnie obudziles!
		AI_Output(hero, self, "Info_Mod_Merdarion_AW_Gast_15_06"); //Ktos cie ukradl.
		AI_Output(self, hero, "Info_Mod_Merdarion_AW_Gast_06_07"); //Nie interesuje mnie to w tej chwili zbytnio. Dobra noc!
	};
};

INSTANCE Info_Mod_Merdarion_AW_EXIT (C_INFO)
{
	npc		= Mod_9004_KDW_Merdarion_AW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_AW_EXIT_Condition;
	information	= Info_Mod_Merdarion_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Merdarion_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_AW_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_AW_EXIT_06_00"); //Niech zachowa sie równowaga na zawsze!

	AI_StopProcessInfos	(self);
};
