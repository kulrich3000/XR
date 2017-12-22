INSTANCE Info_Mod_Giselle_RLMord (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_RLMord_Condition;
	information	= Info_Mod_Giselle_RLMord_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes Giselle?";
};

FUNC INT Info_Mod_Giselle_RLMord_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_RLMord_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_00"); //Jestes Giselle?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_01"); //Miazsz i krew, przystojny.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_02"); //Co wydarzylo sie wczoraj wieczorem?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_03"); //No cóz, jak co miesiac, Jason przyszedl do mnie i chcial zwyczaju.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_04"); //Nagle ktos wpadl do pokoju i uderzyl w Jasona bez ostrzezenia.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_05"); //Potem wlasnie zniknal bez slowa. Natychmiast potem obudzilem Bromora, wlasciciela, który zadzwonil do milicji.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_06"); //Co jest typowe?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_07"); //Tylko dobre rzeczy o zmarlych. My w czerwonej latarni jestesmy dyskretni.

	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ZIMMER");

	Info_ClearChoices	(Info_Mod_Giselle_RLMord);

	Info_AddChoice	(Info_Mod_Giselle_RLMord, "Jesli nie powiesz mi natychmiast (....) )", Info_Mod_Giselle_RLMord_C);

	if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
	{
		Info_AddChoice	(Info_Mod_Giselle_RLMord, "Prosze mi powiedziec, prosze!", Info_Mod_Giselle_RLMord_B);
	};

	Info_AddChoice	(Info_Mod_Giselle_RLMord, "Jason nie bedzie mial nic przeciwko temu, gdzie jest teraz.", Info_Mod_Giselle_RLMord_A);
};

FUNC VOID Info_Mod_Giselle_RLMord_D()
{
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_00"); //Byl brutalny, chcial byc bity i ranny. Pewnego razu przyniósl nawet zwój do pilki noznej.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_01"); //Ale on nigdy nie dotykal mnie, zawsze byl bierny.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_D_15_02"); //Zobacze miejsce zbrodni. Byles w pokoju 2?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_03"); //To jest sluszne, slodkie.
	
	Info_ClearChoices	(Info_Mod_Giselle_RLMord);
};

FUNC VOID Info_Mod_Giselle_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_C_15_00"); //Jesli juz nie powiesz mi teraz, wrzuce cie do wiezienia za utrudnianie pracy sledczej.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_C_17_01"); //Mówie ci, ze to dobrze.
	
	Info_Mod_Giselle_RLMord_D();
};

FUNC VOID Info_Mod_Giselle_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_B_15_00"); //Prosze mi powiedziec, prosze!
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_01"); //Jesli tak ladnie mnie zapytaja, trudno mi powiedziec nie......
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_02"); //Zrobie wam sugestie, przynosicie mi troche wyraz waszego uznania, a potem powiem wam.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_B_15_03"); //Oto zloty pierscien.

	B_GiveInvItems	(hero, self, ItMi_GoldRing, 1);

	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_04"); //To piekne, czyz nie? Wlasciwie, powiem wam.
	
	Info_Mod_Giselle_RLMord_D();
};

FUNC VOID Info_Mod_Giselle_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_A_15_00"); //Jason nie bedzie mial nic przeciwko temu, gdzie jest teraz.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_A_17_01"); //Wszystkie sluszne, wszystkie sluszne.
	
	Info_Mod_Giselle_RLMord_D();
};

INSTANCE Info_Mod_Giselle_Jason (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Jason_Condition;
	information	= Info_Mod_Giselle_Jason_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes pewien, ze Jason byl zaskoczony?";
};

FUNC INT Info_Mod_Giselle_Jason_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Giselle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Jason_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_00"); //Czy jestes pewien, ze Jason byl zaskoczony?
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_01"); //Oczywiscie tak jest. Jesli moge cos zrobic, to zwrócic na mnie uwage czlowieka.
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_02"); //Dlaczego wiec wyciagnal karabin zanim umarl?
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_03"); //Mial....? .... poniewaz.... Mial rozgrywki fabularne i lubil rysowac miecz.
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_04"); //To nie brzmi jak "zwykla" rzecz, o której wczesniej mi powiedziales.
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_05"); //l-- ah.....

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Giselle kryje sie teraz w pokoju Bromora. Wydaje sie, ze cos ukryla. Powinienem powiedziec Pablo.");

	B_StartOtherRoutine	(self, "ZIMMER");
};

INSTANCE Info_Mod_Giselle_Galf (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Galf_Condition;
	information	= Info_Mod_Giselle_Galf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Giselle_Galf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_GalfCall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Galf_Info()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_00"); //Masz pologu? Zostaw go sam, dranie!
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_01"); //Znasz go?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_02"); //To mój brat..... ten glupiec powinien byl uciekac dawno temu.
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_03"); //Co sie tu dzieje?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_04"); //Dobrze, wygrasz. Jason przyjezdzal do mnie przez dlugi czas i Galf wpadl na pomysl szantazowania go. Przyszedl wiec wczoraj wieczorem i grozil wezwac milicje na Jason.
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_05"); //Ty idiotysci wyrzucilbys go z twojego klubowego osmiokata, gdybys dowiedzial sie, co on tu robi. Wiec stal sie agresywny, wzial miecz i chcial pójsc za Galfem.
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_06"); //Ale wtedy do drzwi przyszla ciemna figura, Jason polozyl i zniknal znowu, wraz z mundurkiem Jasona. A potem.....
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_07"); //Czy wymysliles te historie, aby odwrócic uwage od siebie?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_08"); //Dokladnie.... Ale to nie sprawdzilo sie tak dobrze, slodycze.
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_09"); //Dlaczego jednak nic mi nie powiedziales o ciemnej figurze?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_10"); //Bo kupilbys go od dziwki? Trzeba sie smiac.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Giselle opowiedziala mi prawdziwa historie. Teraz powinienem isc do Pana Andre' a.");
};

INSTANCE Info_Mod_Giselle_Satz (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Satz_Condition;
	information	= Info_Mod_Giselle_Satz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Giselle_Satz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HeroBot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Satz_Info()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_00"); //Przychodzisz, zeby mnie zobaczyc? Jak najbardziej Cie urocza.
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_15_01"); //Prosze pozwolic mi prosic panstwa o cos.
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_02"); //Przywyklem do serdeczniejszych powitan od mezczyzn. Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_15_03"); //Czy ciemna postac, która zabila Jasona, powiedziala cos?
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_04"); //Jest to mozliwe......

	Info_ClearChoices	(Info_Mod_Giselle_Satz);

	Info_AddChoice	(Info_Mod_Giselle_Satz, "Czego chcesz?", Info_Mod_Giselle_Satz_C);
	Info_AddChoice	(Info_Mod_Giselle_Satz, "Byc moze ciezki cios w tyl glowy zrobilby sztuczke.", Info_Mod_Giselle_Satz_B);
	Info_AddChoice	(Info_Mod_Giselle_Satz, "Jesli nie mówisz mi teraz, to zlamamam obie nogi twojego brata.", Info_Mod_Giselle_Satz_A);
};

FUNC VOID B_SayBotSentenceGiselle()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_Say_17_00"); //Er hat etwas gesagt wie "Milizen ist es in ihrer Vorbildwirkung nicht erlaubt unlautere Taten auszuüben".

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Wyrokiem wydanym przez robota, którego Giselle wysluchal, jest 'milicja nie moze dokonywac nieuczciwych czynów'.");

	Mod_PAL_HeroBot = 3;
};

FUNC VOID Info_Mod_Giselle_Satz_D()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_D_17_00"); //Tak, tak, tak..... Wlasciwie, nie chcialem wiele. Nie podoba mi sie nawet twoja brutalnosc, slodycz.

	Info_ClearChoices	(Info_Mod_Giselle_Satz);

	B_SayBotSentenceGiselle();
};

FUNC VOID Info_Mod_Giselle_Satz_C()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_C_15_00"); //Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_C_17_01"); //Chce swiecy.... jak ciemno jest w nocy w lochu.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Zanim Giselle powie mi cokolwiek o robocie, przyniose jej swiece.");
	
	Info_ClearChoices	(Info_Mod_Giselle_Satz);
};

FUNC VOID Info_Mod_Giselle_Satz_B()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_B_15_00"); //Byc moze ciezki cios w tyl glowy zrobilby sztuczke.
	
	Info_Mod_Giselle_Satz_D();
};

FUNC VOID Info_Mod_Giselle_Satz_A()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_A_15_00"); //Jesli nie mówisz mi teraz, to zlamamam obie nogi twojego brata.
	
	Info_Mod_Giselle_Satz_D();
};

INSTANCE Info_Mod_Giselle_Kerze (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Kerze_Condition;
	information	= Info_Mod_Giselle_Kerze_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla pana swieczke.";
};

FUNC INT Info_Mod_Giselle_Kerze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Satz))
	&& (Mod_PAL_HeroBot == 2)
	&& (Npc_HasItems(hero, ItMi_Kerze) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Kerze_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Kerze_15_00"); //Mam dla pana swieczke.

	B_GiveInvItems	(hero, self, ItMi_Kerze, 1);

	AI_Output(self, hero, "Info_Mod_Giselle_Kerze_17_01"); //Dziekuje, przynajmniej teraz mam tu swiatlo w tej ciemnej godzinie.
	AI_Output(hero, self, "Info_Mod_Giselle_Kerze_15_02"); //Co powiedzial zabójca?

	B_GivePlayerXP	(250);

	Mod_PAL_GiselleKerze = 1;

	B_SayBotSentenceGiselle();
};

INSTANCE Info_Mod_Giselle_Pickpocket (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Pickpocket_Condition;
	information	= Info_Mod_Giselle_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Giselle_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

	Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_BACK, Info_Mod_Giselle_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Giselle_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Giselle_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Giselle_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Giselle_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Giselle_EXIT (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_EXIT_Condition;
	information	= Info_Mod_Giselle_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Giselle_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Giselle_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
