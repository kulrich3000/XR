INSTANCE Info_Mod_Randolph_Hi (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Hi_Condition;
	information	= Info_Mod_Randolph_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_Hi_06_00"); //Dziekuje, ale nie potrzebuje go. Juz teraz czuje sie o wiele lepiej.

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 1);

	AI_Output(hero, self, "Info_Mod_Randolph_Hi_15_01"); //Czy jestes pewien, ze nie jestes....
	AI_Output(self, hero, "Info_Mod_Randolph_Hi_06_02"); //Tak, tak, tak. Czuje, ze moge wyrwac drzewa.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Randolph nie chcial wziac uzdrawiajacego eliksiru, poniewaz wydaje sie byc znowu dobry. Wiec przypuszczam, ze powinienem poinformowac Telbora....");
};

INSTANCE Info_Mod_Randolph_Hoehle (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Hoehle_Condition;
	information	= Info_Mod_Randolph_Hoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Hoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Hoehle_Info()
{
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_00"); //Co, jak, kto tam jest?
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_01"); //To tylko ja.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_02"); //Och, to Ty, Zbawiciel naszego sadu.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_03"); //Czy oczekiwales kogos innego?
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_04"); //Tak, te potworne cienie, które mnie nawiedzaja, mecza i próbuja odebrac posiadanie mnie.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_05"); //Poczatkowo byli bardzo spokojni, a kiedy tam byli, wydawalo mi sie, ze daja mi sile i czulem sie komfortowo w ich obecnosci.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_06"); //Ale teraz coraz czesciej zyskuja nade mna wladze, rozmawiaja na mnie i domagaja sie podazania za nimi.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_07"); //Nie musisz tego robic. Jesli mnie zaprowadzisz do klasztoru, byc moze pomozesz.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_08"); //Do klasztoru? Tak, ja robie, pozwólmy ---. (pauzy)....... nie, oni tu sa.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_09"); //Co.....?

	AI_StopProcessInfos	(self);

	AI_StartState	(hero, ZS_MagicSleep, 0, "");

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Czy moje zmysly mnie oszukuja, czy tez byly jakies ciemne cienie? I ten nagly paraliz..... Byc moze przeciez bylo wiecej, niz tylko wirowanie w glowie Randolpha. Czy moge sie z nim teraz dogonic..... ?");

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_Randolph_NoMoreDemon (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_NoMoreDemon_Condition;
	information	= Info_Mod_Randolph_NoMoreDemon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_NoMoreDemon_Condition()
{
	if (Mod_Randolph_Started == 16)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_NoMoreDemon_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_00"); //Do samego siebie co sie stalo? Czuje sie tak wyzwolony. Te zlowieszcze stworzenia, glosy i wizje.
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_01"); //Czy to byly tylko koszmary? Nie, tu stoje, to wszystko bylo prawdziwe.
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_02"); //Czy? To wy mnie uratowaliscie przed tym. Nie wiem, co powiedziec.
	AI_Output(hero, self, "Info_Mod_Randolph_NoMoreDemon_15_03"); //Dlaczego nie mozesz wrócic do Akila i odpoczac?
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_04"); //Uh, Yeah, Yeah, Yeah, Yeah, zrobie to najpierw.

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_AKIL_RANDOLPH, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "PRESTART");

	B_GivePlayerXP	(600);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Randolph_Irdorath (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath_Condition;
	information	= Info_Mod_Randolph_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_NoMoreDemon))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_00"); //Ach, jest Zbawiciel naszego dworu..... a moja dusza.....
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_01"); //Witaj, Randolph. Jak wygladales od tego czasu?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_02"); //(nieco przygnebiony) Tak, wlasciwie to wszystko w porzadku, prace na farmie ida znowu dobrze, a wraz z innymi na farmie czuje sie bardzo dobrze......
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_03"); //Ale....?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_04"); //To po prostu...... jak mam to ujac....

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_05"); //(wispers) Ciagle sie jednak zdarza, ze na krótki czas zamieniam sie w tego demona potomka......
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_06"); //Czy tak jest?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_07"); //Tak, kiedy mam zle marzenia lub zlosc. Potem czuje demoniczne przebudzenie we mnie.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_08"); //Jak dotad moglem zapobiec temu, by inni byli za kazdym razem widziani.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_09"); //Nie wiem jednak, jak dlugo bede w stanie to zrobic.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_10"); //Czy kiedykolwiek byles z magikiem eksperta i prosiles o uzdrowienie?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_11"); //Co? Powierzajac Ci to zadanie, wystarczajaco duzo sie z niego rozstrzygnalem. Jeszcze wiecej osób nie musi o tym wiedziec......
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_12"); //Lepiej powiedziec mi, co jest nowe na koncu.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_13"); //No cóz, wyprowadza mnie na morze.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_14"); //Morze?
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_15"); //Tak, na statku Paladina znajde wyspe. Musimy odrzucic ciemny slugus Xeres.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_16"); //Jakie Xeres? Wtedy to bylo cos wiecej niz tylko zle sny i mylace wspomnienia....
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_17"); //Sluchaj, musze udac sie na te wyspe.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_18"); //Co? Nie jest to jednak sprawa nieszkodliwa.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_19"); //Moze tak, ale tylko w ten sposób moge znalezc definitywne zbawienie, jesli przyjaciel i jego slugi zostana wygnani. Musze isc z wami!
};

INSTANCE Info_Mod_Randolph_Irdorath2 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath2_Condition;
	information	= Info_Mod_Randolph_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bardzo dobrze wiec witam pana na pokladzie.";
};

FUNC INT Info_Mod_Randolph_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath2_15_00"); //Bardzo dobrze wiec witam pana na pokladzie.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath2_06_01"); //Dziekuje bardzo. Po raz kolejny jestem w waszym dlugu.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath2_06_02"); //Natychmiast udaje sie do portu.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Na wyspe bedzie mi towarzyszyc Randolph, gdzie jest jeszcze czesc demonicznego slowcu.");

	B_GivePlayerXP	(150);

	Mod_RandolphDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Randolph_Irdorath3 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath3_Condition;
	information	= Info_Mod_Randolph_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Randolph_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_RandolphDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath3_06_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_RandolphDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Randolph_Irdorath4 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath4_Condition;
	information	= Info_Mod_Randolph_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Randolph_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_RandolphDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath4_06_01"); //Bardzo dobrze, wróce do portu.

	Mod_RandolphDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Randolph_Pickpocket (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Pickpocket_Condition;
	information	= Info_Mod_Randolph_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Randolph_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

	Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_BACK, Info_Mod_Randolph_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Randolph_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Randolph_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Randolph_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Randolph_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Randolph_EXIT (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_EXIT_Condition;
	information	= Info_Mod_Randolph_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Randolph_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Randolph_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
