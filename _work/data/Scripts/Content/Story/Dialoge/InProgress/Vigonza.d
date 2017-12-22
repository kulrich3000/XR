INSTANCE Info_Mod_Vigonza_Hi (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_Hi_Condition;
	information	= Info_Mod_Vigonza_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vigonza_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vigonza_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_00"); //Co to za pieklo! Jak wstales i co zrobiles z moimi mezczyznami?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_01"); //Nie martwilabym sie juz o Waszych mezczyzn, Grim Reaper mial z nimi swoja zabawe. Brakujesz.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_02"); //Masz nawet najlagodniejsze wyobrazenie o tym, co robimy i kim jestesmy?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_03"); //To Twoja wlasna wina. Dlaczego twoi ludzie atakuja wszystkich?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_04"); //Nagle wine ponosza moi obywatele? Bylismy pierwszymi, którzy zostali zaatakowani.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_05"); //Kto mial cie zaatakowac?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_06"); //Lowca. Strzelal na kokarde w jednym z moich najlepszych mezczyzn.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_07"); //Oczywiscie nie moglem pozwolic mu uciec i wyslalem dwóch moich mezczyzn, aby go do mnie przywiezli.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_08"); //Ale nie wrócili do dzisiejszego dnia. Dlatego tez nakazalem zaatakowac kazdego, kto do nas podchodzi, dopóki nie wiem, czy jestesmy tu wrogo nastawieni.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_09"); //Znalazlem mysliwego, którego scigali wasi ludzie. Zabili go i próbowali we mnie tego samego, ale bez powodzenia.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_10"); //Jesli go zabili, to dlatego, ze ja zaatakowal. I czy mozesz je obwiniac, jesli uwazaja, ze jestes takze wrogiem?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_11"); //No cóz, to wytlumacz mi dlaczego mysliwy powinien cie zaatakowac?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_12"); //Chyba tego chcial, dlatego tez przyjechalismy do tego kraju. Poza tym, ze byl po szybkim zlocie i walczymy o nasze srodki do zycia.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_13"); //Bedziesz musial mi to wyjasnic bardziej szczególowo.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_14"); //Jestem kapitanem naszego króla Jerzego Goddarda, Drugiego.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_15"); //Nasz król wyslal nas, bysmy pobrali krew Dalmy, gigantycznego pajaka, który zwykle mieszka gleboko pod ziemia, aby leczyc go z powodu choroby rodzinnej.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_16"); //Uciekla jednak przed nami w bitwie w glebi gór i uciekla do tego kraju.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_17"); //Kiedy mój najlepszy wojownik mial mnie je pokonac, zostal zaatakowany przez mysliwego. Zapewne dlatego, ze zdawal sobie sprawe z wartosci trofeów.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_18"); //Od tamtej pory staram sie przygotowac moich ludzi do ataku. Ale bez mojego najlepszego wojownika zapewne by tego nie zrobili.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_19"); //Wierze w pana. Gdyby zostalo to wczesniej rozwiazane, wasi ludzie nadal zyliby.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_20"); //Moze to byl los. Wyglada na to, ze mozesz dobrze walczyc i byc moze masz wieksze szanse na walke z potworem niz wszyscy moi ludzie razem wzieci.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_21"); //Prosze, abyscie trzymali sie przy mnie w walce z Dalma. Nie moge sobie pozwolic na to, aby bez krwi byc widocznym w mojej ojczyznie.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_22"); //Wszystkie sluszne, wszystkie sluszne. Zabierz mnie do pajaka, a ja ci pomoze.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_16_23"); //Sledz mnie!

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "To tylko nieporozumienie. Wydaje sie, ze Randi sprowokowal ten atak. Przynajmniej dostal swój sprawiedliwy wyrok. Vigonza, przywódca gangu, poprosil mnie, abym pomógl mu walczyc z niebezpiecznym gigantycznym pajakiem, walczac przeciwko Dalmie. On mnie tam poprowadzi.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DALMA");

	Wld_InsertNpc	(Dalma, "EIS_400");
};

INSTANCE Info_Mod_Vigonza_Dalma (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_Dalma_Condition;
	information	= Info_Mod_Vigonza_Dalma_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vigonza_Dalma_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vigonza_Hi))
	&& (Npc_GetDistToWP(self, "EIS_400") < 500)
	&& (Npc_IsDead(Dalma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vigonza_Dalma_Info()
{
	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_16_00"); //W koncu bestia zostala zabita. Dziekuje, dziekuje. Tutaj, wez to za nagrode.

	B_GiveInvItems	(self, hero, ItAt_DalmaZange, 2);

	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_16_01"); //To szczypce Dalmy. Niech podadza Ci prysznic zlota.
	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_16_02"); //Bede isc teraz na przelecz. Mam nadzieje, ze nie jestem za pózno. Zycze powodzenia, obcy.

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Dalma jest ukonczona. Vigonza wróci teraz i powinienem udac sie do Keith.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Vigonza_EXIT (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_EXIT_Condition;
	information	= Info_Mod_Vigonza_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vigonza_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vigonza_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
