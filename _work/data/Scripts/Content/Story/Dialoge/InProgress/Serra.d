INSTANCE Info_Mod_Serra_Hi (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_Hi_Condition;
	information	= Info_Mod_Serra_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_Hi_Condition()
{
	if (Wld_IsTime(08,00,19,00))
	&& (Kapitel >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Alfans_Aufgabe))
	&& (Wld_GetDay()-2 >= Mod_AlfansQuest_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_Hi_19_00"); //Witaj nieznajomego. Musiales pokonac dluga droge, nigdy nie widzialem cie tutaj.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_01"); //Tak, moje miejsce pochodzenia jest naprawde odlegle.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_19_02"); //Musiales przezyc wiele przygód i zabic niezliczone potwory...... wiesz, ze taka rzecz wyglada jak przystojny facet.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_03"); //Tak, to dobry argument.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_19_04"); //Hmm, wiesz, mam juz ciezki pakiet.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_19_05"); //Jesli nosisz go dla mnie i towarzyszylbys mi w domu, ja równiez nagrodzilbym cie za ten dobry uczynek.
	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_06"); //Dobrze, zobaczmy, co mozemy zrobic.
	AI_Output(self, hero, "Info_Mod_Serra_Hi_19_07"); //Tutaj. Równiez niedaleko.

	B_GiveInvItems	(self, hero, ItMi_SeraPaket, 1);

	AI_Output(hero, self, "Info_Mod_Serra_Hi_15_08"); //(do siebie) Hmm, opakowanie nie jest ciezkie.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TOHOME");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "TOHOME");

	Log_CreateTopic	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Serra poprosila mnie o przeniesienie jej paczki do domu. Musze tylko isc za nia.");
};

INSTANCE Info_Mod_Serra_AtHome (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AtHome_Condition;
	information	= Info_Mod_Serra_AtHome_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AtHome_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_Hi))
	&& (Npc_HasItems(hero, ItMi_SeraPaket) == 1)
	&& (Npc_GetDistToWP(hero, "EIS_DORF_003") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AtHome_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_00"); //Juz tam jestesmy. Dziekuje za bezinteresowny akt niesienia przesylki.

	B_GiveInvItems	(hero, self, ItMi_SeraPaket, 1);

	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_01"); //Jestes wielkim czlowiekiem. Oto kilka zlotych monet na nagrode.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Serra_AtHome_15_02"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_03"); //Och, gdyby tylko wszyscy ludzie byli tak dobrzy i hojni jak ty.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome_15_04"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_05"); //Och, jest ten mezczyzna, jego imie to Alvar. Niemozliwy czlowiek, zastraszony i brutalny.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_06"); //Po prostu nie zostawi mnie w spokoju.... Nekal mnie nawet kilkakrotnie.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_07"); //Nie mam odwagi isc do szamana, aby oskarzac go o swoje zachowanie.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome_19_08"); //Alvar wzial na mnie straszliwa zemste.

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Serra_AtHome2 (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AtHome2_Condition;
	information	= Info_Mod_Serra_AtHome2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AtHome2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malfama_AtHome))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AtHome2_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_00"); //Dziekuje bardzo. Wtedy wreszcie znów moglibysmy czuc sie bezpiecznie.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome2_15_01"); //Co moge zrobic? Stresowac go?
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_02"); //Nie, to by nie zrobilo nic dobrego. Potem mógl sie pogarszac za zemste.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_03"); //To powinno byc cos, co wstydzi go w sadzie i zapobiegnie mu kiedykolwiek krzywdzic kobiete w wiosce ponownie.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_04"); //Tak, jesli móglbys przyniesc nam swój pamietnik.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_05"); //Moze zachowal tam cos o swoich zlych czynach. Potem mógl zostac skazany.
	AI_Output(hero, self, "Info_Mod_Serra_AtHome2_15_06"); //Jego pamietnik.... mozna by to ustalic.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_07"); //Nie wiesz, jak bardzo nam w tym pomagasz.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_08"); //Powinienes go znalezc gdzies na jego biurku.
	AI_Output(self, hero, "Info_Mod_Serra_AtHome2_19_09"); //Zycze powodzenia. Jestesmy Wam gleboko zadluzeni.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Serra i Malfama sa oczywiscie zastraszane i przesladowane przez czlowieka o nazwisku Alvar. Ja powinienem cie dostac jego pamietnik. Moze zachowal w nim swoje zle czyny.");

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "START");

	Wld_InsertItem	(ItWr_AlvarTagebuch, "FP_ITEM_ALVAR_TAGEBUCH");
};

INSTANCE Info_Mod_Serra_AlvarTagebuch (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AlvarTagebuch_Condition;
	information	= Info_Mod_Serra_AlvarTagebuch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AlvarTagebuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_AtHome2))
	&& (Mod_AlvarTagebuch == 2)
	&& (Npc_HasItems(hero, ItWr_AlvarTagebuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AlvarTagebuch_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_19_00"); //Wracasz! Masz pamietnik, mój bohater?
	AI_Output(hero, self, "Info_Mod_Serra_AlvarTagebuch_15_01"); //Tak, tak. Na pierwszy rzut oka nie moglem znalezc zadnych zbrodni, które on aresztowal.

	B_GiveInvItems	(hero, self, ItWr_AlvarTagebuch, 1);

	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_19_02"); //Swietnie, jestes najwiekszy. Pozwole sobie to zobaczyc.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_19_03"); //Musi byc cos do znalezienia. Wystarczy tylko uwaznie przeczytac.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarTagebuch_15_04"); //Wszystkie sluszne, wszystkie sluszne. Zycze powodzenia.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarTagebuch_19_05"); //Tak, wasze bezinteresowne dzialania powinny byc przykladem dla wszystkich innych.

	Mod_SeraHatBuch = Wld_GetDay();
};

INSTANCE Info_Mod_Serra_AlvarDead (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_AlvarDead_Condition;
	information	= Info_Mod_Serra_AlvarDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_AlvarDead_Condition()
{
	if (Mod_AlvarDead == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_AlvarDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_19_00"); //Ahh, jest mój bohater.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_15_01"); //Jaka jest relacja z firma Alvar?
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_19_02"); //Hipokrytyczny. Co? Och, masz na mysli straszny incydent. Tak, rzecz biedna. Nie zasluguje na to.
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_15_03"); //Co grasz, co masz z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_19_04"); //(winni) Nic, nic. Byly to duchy sniegu..... byl po prostu zbyt niedbaly.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	Info_AddChoice	(Info_Mod_Serra_AlvarDead, "Wiesz dokladnie, co sie stalo.", Info_Mod_Serra_AlvarDead_B);
	Info_AddChoice	(Info_Mod_Serra_AlvarDead, "Widze.", Info_Mod_Serra_AlvarDead_A);
};

FUNC VOID Info_Mod_Serra_AlvarDead_B()
{
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_B_15_00"); //Wiesz dokladnie, co sie stalo. I to nie pozostanie bezkarne.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_19_01"); //Nie wiem, co masz na mysli.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_19_02"); //To ty ukradles jego pamietnik. Sa swiadkowie.
	AI_Output(self, hero, "Info_Mod_Serra_AlvarDead_B_19_03"); //Wiec lepiej byc ostroznym, kto wini. Jesli tego nie zrobisz, mozesz wywolac niezadowolenie we wsi.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	Mod_AlvarDead = 2;
};

FUNC VOID Info_Mod_Serra_AlvarDead_A()
{
	AI_Output(hero, self, "Info_Mod_Serra_AlvarDead_A_15_00"); //Widze.

	Info_ClearChoices	(Info_Mod_Serra_AlvarDead);

	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Serra_Traenenkristall (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_Traenenkristall_Condition;
	information	= Info_Mod_Serra_Traenenkristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serra_Traenenkristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvar_Unbekannt))
	&& (Npc_HasItems(hero, ItMi_Traenenkristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serra_Traenenkristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_19_00"); //Co pan tutaj? Knatus, zatrzymaj go!
	AI_Output(hero, self, "Info_Mod_Serra_Traenenkristall_15_01"); //Teraz poczekaj minute. Teraz niech krysztal pokaze swoja moc. Co robisz z Thysem?
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_19_02"); //Ja i Malfama rzucili obrazenia na Thysa, aby udawac, ze jest chory.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_19_03"); //A teraz zamierzamy go zatruc, by wreszcie przejac wladze nad ta nieszczesliwa wioska.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_19_04"); //Mieszkancy upadli dla wszystkich naszych intryg i jedza nas z rak jak glupi osly.
	AI_Output(self, hero, "Info_Mod_Serra_Traenenkristall_19_05"); //Knatus, idiota, ubralismy go nawet do tego stopnia, ze jest gotów zabic cie......

	AI_TurnToNpc	(hero, Mod_7564_OUT_Knatus_EIS);

	AI_Output(hero, self, "Info_Mod_Serra_Traenenkristall_15_06"); //Slyszysz, co Knatus ma do powiedzenia o Tobie?

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Serra_EXIT (C_INFO)
{
	npc		= Mod_7559_OUT_Serra_EIS;
	nr		= 1;
	condition	= Info_Mod_Serra_EXIT_Condition;
	information	= Info_Mod_Serra_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Serra_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serra_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
