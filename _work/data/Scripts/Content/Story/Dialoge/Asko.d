INSTANCE Info_Mod_Asko_Trador (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Trador_Condition;
	information	= Info_Mod_Asko_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Asko_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Asko_Trador_05_00"); //Witaj. Co sie dzieje?

	Info_ClearChoices	(Info_Mod_Asko_Trador);

	Info_AddChoice	(Info_Mod_Asko_Trador, "Nie umarles? Wtedy nie mam tu nic wspólnego z biznesem.", Info_Mod_Asko_Trador_B);
	Info_AddChoice	(Info_Mod_Asko_Trador, "Przemieniajacy sie magik zostal zamordowany.", Info_Mod_Asko_Trador_A);
};

FUNC VOID Info_Mod_Asko_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_B_15_00"); //Nie umarles? Wtedy nie mam tu nic wspólnego z biznesem.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_B_05_01"); //Co robisz?

	Info_ClearChoices	(Info_Mod_Asko_Trador);

	Info_AddChoice	(Info_Mod_Asko_Trador, "Nie mozesz mi nic zrobic. Bede z powrotem.", Info_Mod_Asko_Trador_D);
	Info_AddChoice	(Info_Mod_Asko_Trador, "Nie mialem tego na mysli, przepraszam.", Info_Mod_Asko_Trador_C);
};

FUNC VOID Info_Mod_Asko_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_00"); //Przemieniajacy sie magik zostal zamordowany, a ja jestem tutaj, aby dowiedziec sie, kto to jest.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_01"); //Nie ma czegos takiego! I nic tu nie zauwazylem.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_02"); //Ale dlaczego przychodzisz do mnie?
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_03"); //Musze zobaczyc kto jest zaginiony, a kto nie byl w wiosce za kilka dni.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_04"); //Oczywiscie powinienem byl o tym wiedziec. Nic mi sie nie stalo.
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_05"); //O Dobrze, wtedy bede w drodze.

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Asko wciaz zyje i studiuje ruiny.");

	Info_ClearChoices	(Info_Mod_Asko_Trador);
};

FUNC VOID Info_Mod_Asko_Trador_D()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_D_15_00"); //Nie mozesz mi nic zrobic. Bede z powrotem.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_D_05_01"); //Zostajesz tutaj i powiedz mi co sie dzieje!

	Info_Mod_Asko_Trador_A();
};

FUNC VOID Info_Mod_Asko_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_C_15_00"); //Nie mialem tego na mysli, przepraszam.

	Info_Mod_Asko_Trador_A();
};

INSTANCE Info_Mod_Asko_Per (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Per_Condition;
	information	= Info_Mod_Asko_Per_Info;
	permanent	= 0;
	important	= 0;
	description	= "On chce, abym ci powiedzial, ze ma dla ciebie pakiet w wiosce.";
};

FUNC INT Info_Mod_Asko_Per_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Per_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Per_15_00"); //On chce, abym ci powiedzial, ze ma dla ciebie pakiet w wiosce.
	AI_Output(self, hero, "Info_Mod_Asko_Per_05_01"); //Dziekujemy za informacje. Bede na dobrej drodze.

	B_LogEntry	(TOPIC_MOD_PER_ASKO, "Poinformowalem Asko, ze Per ma dla niego pakiet.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Asko_Pruefung (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung_Condition;
	information	= Info_Mod_Asko_Pruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Genn wyslal mnie. Chodzi o testowanie magów transformatywnych.";
};

FUNC INT Info_Mod_Asko_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Pruefung2))
	&& (Mod_VMG_Pruefung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_15_00"); //Genn wyslal mnie. Chodzi o testowanie magów transformatywnych.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_05_01"); //Zostalem juz o tym poinformowany. Zadanie nie bedzie latwe.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_05_02"); //Czy jestes gotowy je poznac?

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);

	Info_AddChoice	(Info_Mod_Asko_Pruefung, "Jest cos, co musze zrobic.", Info_Mod_Asko_Pruefung_B);
	Info_AddChoice	(Info_Mod_Asko_Pruefung, "Jestem gotowy.", Info_Mod_Asko_Pruefung_A);
};

FUNC VOID Info_Mod_Asko_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_B_15_00"); //Jest cos, co musze zrobic.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_B_05_01"); //Wróc do domu, gdy bedziesz gotowy.

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);
};

FUNC VOID Info_Mod_Asko_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_00"); //Jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_01"); //Okay, oto twoja praca: Niedawno w doline dotarla paczka wilków.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_02"); //Zamieszkala na kamiennym kregu i tam goni swoja ofiare.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_03"); //Zyjemy tu w harmonii z natura i ona prosi nas o odjazd paczki.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_04"); //I to wlasnie zrobicie.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_05"); //Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_06"); //Daje ci zaklecie, które pomoze ci zamienic sie w wojne.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_07"); //Uzywaj ich tylko z dala od ludzi, bo inaczej moga myslec, ze jestes dziki niski.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_08"); //Nastepnie udaj sie do paczki i spróbuj przekonac przywódce wilka do odwiedzenia kolejnego miejsca polowan.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_09"); //W kazdym razie staraj sie uniknac tego, aby wilki doznaly obrazen!
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_10"); //W przeciwnym razie nie moge tak naprawde uznac tego zadania za wypelnione.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_11"); //Czy wlasciwie?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_12"); //Zabijanie nie jest nasza droga. To tylko najlepsze rozwiazanie awaryjne! Pamietaj o tym.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_13"); //No cóz, wtedy bede w drodze.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_14"); //Okay. Oto przewijanie. Dbaj o siebie.

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);

	Mod_VMG_Pruefung = 2;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Przy pomocy przemiany w Warg, powinienem przekonac paczke w poblizu kamiennego kola do opuszczenia doliny, aby nie zaszkodzic przyrodzie. W miare mozliwosci powinienem unikac zabijania paczki.");

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);

	Wld_InsertNpc	(Monster_11060_Leitwolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11061_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11062_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11063_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11064_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11065_Wolf_TUG,	"TUG_86");
};

INSTANCE Info_Mod_Asko_Pruefung2 (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung2_Condition;
	information	= Info_Mod_Asko_Pruefung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musialem dostac mieso i teraz potrzebuje nowej roli w transformacji.";
};

FUNC INT Info_Mod_Asko_Pruefung2_Condition()
{
	if (Mod_VMG_Pruefung_Leitwolf == 2)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung2_15_00"); //Musialem dostac mieso i teraz potrzebuje nowej roli w transformacji.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung2_05_01"); //Okay, tu jeden.

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);
};

INSTANCE Info_Mod_Asko_Pruefung3 (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung3_Condition;
	information	= Info_Mod_Asko_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu znów jestem.";
};

FUNC INT Info_Mod_Asko_Pruefung3_Condition()
{
	if (Mod_VMG_Pruefung == 2)
	&& ((Mod_VMG_Pruefung_Leitwolf == 3)
	|| ((Npc_IsDead(Monster_11060_Leitwolf_TUG))
	&& (Npc_IsDead(Monster_11061_Wolf_TUG))
	&& (Npc_IsDead(Monster_11062_Wolf_TUG))
	&& (Npc_IsDead(Monster_11063_Wolf_TUG))
	&& (Npc_IsDead(Monster_11064_Wolf_TUG))
	&& (Npc_IsDead(Monster_11065_Wolf_TUG))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_00"); //Tu znów jestem.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_01"); //A co? Jak to sie stalo?

	if (Mod_VMG_Pruefung_Leitwolf == 3)
	{
		AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_02"); //Wilki nie pojawia sie ponownie.
		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_03"); //Wykonales dobra robote, zrobie Ci rekomendacje.
		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_04"); //Teraz spotkaj Per, on poda Ci ostatnie zadanie. Nie powinno to byc dla Ciebie problemem.

		Mod_VMG_Pruefung_Asko = 1;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_05"); //Musialem zabic paczke. Przywódca wilka nie dal mi wyboru.

		Mod_VMG_Pruefung_Asko = 2;

		if (Mod_VMG_Pruefung_Genn == 1)
		{
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_06"); //Poniewaz ciezko pracowaliscie nad poprzednim zadaniem i zrobiliscie dla nas tak wiele, przymknalem oko.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_07"); //Ale nie mozna zawiesc. Czy rozumiesz to?
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_08"); //Czysty w dzien. Co powinnismy teraz zrobic?
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_09"); //Hm, zadanie Genna nie zostalo rozwiazane z satysfakcja. To trudne.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_10"); //Moge pozwolic panu na kontynuacje tylko pod jednym warunkiem.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_11"); //I co to jest?
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_12"); //Musisz zrezygnowac z nagrody.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_13"); //Nie mozna byc powaznym.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_14"); //Jestem powazny. Albo miniesz, albo nigdzie nie mozesz sie dostac.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_15"); //Wtedy nie mam wyboru. Pozwole sobie isc dalej.
		};

		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_16"); //Teraz spotkaj Per, on poda Ci ostatnie zadanie.
	};

	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_17"); //A co z nagroda?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_18"); //Nie dostaniesz go, dopóki nie zrealizujesz wszystkich trzech zadan.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_19"); //Oczywiscie jest to oczywiste. Zobacze cie dookola.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_20"); //Zycze panu powodzenia w ostatnim zadaniu.

	B_RemoveNpc	(Monster_11060_Leitwolf_TUG);
	B_RemoveNpc	(Monster_11061_Wolf_TUG);
	B_RemoveNpc	(Monster_11062_Wolf_TUG);
	B_RemoveNpc	(Monster_11063_Wolf_TUG);
	B_RemoveNpc	(Monster_11064_Wolf_TUG);
	B_RemoveNpc	(Monster_11065_Wolf_TUG);

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Zadanie to zostalo wykonane. Powinienem zglosic sie do Per teraz. On mi poda moje ostatnie zadanie.");
};

INSTANCE Info_Mod_Asko_Pickpocket (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pickpocket_Condition;
	information	= Info_Mod_Asko_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Asko_Pickpocket_Condition()
{
	C_Beklauen	(58, ItPo_Health_01, 5);
};

FUNC VOID Info_Mod_Asko_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

	Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_BACK, Info_Mod_Asko_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Asko_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Asko_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
};

FUNC VOID Info_Mod_Asko_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Asko_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Asko_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Asko_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Asko_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Asko_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Asko_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Asko_EXIT (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_EXIT_Condition;
	information	= Info_Mod_Asko_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Asko_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Asko_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
