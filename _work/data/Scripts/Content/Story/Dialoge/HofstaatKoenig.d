INSTANCE Info_Mod_HofstaatKoenig_Hi (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Hi_Condition;
	information	= Info_Mod_HofstaatKoenig_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_00"); //Kim jest ten, kto dorastal do naszego królewskiego rycerza z i do Raufbold?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_01"); //Jestem.....
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_02"); //Trzymac sie dalej! Jestes teraz jednym z nas!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_03"); //Ale nie wyglada na to, ze zaslugujesz na swoja pozycje! Od teraz bedziecie mieszkac tutaj w zamku.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_04"); //Jestes dzisiaj królewskiej dziewczynce za wszystko!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_05"); //Opusc glowy w pokorze!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_06"); //Tak, to wszystko dobrze.....
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_07"); //Trzymac sie dalej! Przypuszczam, ze juz spotkales sie z moimi synami?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_08"); //Tak.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_09"); //Wiec idz do niej i umów sie z nia na spotkanie z nadwornym magikiem.

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Król przyslal mnie do mojej tylka, aby umówic sie na spotkanie z magikiem dworskim.");
};

INSTANCE Info_Mod_HofstaatKoenig_Sorge (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Sorge_Condition;
	information	= Info_Mod_HofstaatKoenig_Sorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Sorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatRaufbold_KoenigSorge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Sorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_00"); //Nie ma nic, co moze przewyzszyc piekno mojego królestwa.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_01"); //A jednak.... kiedy patrze wzdluz wolnej rzeki..... Zawsze tesknie za morzem.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_02"); //Czy powiedzialem wam, ze król wasz byl przedtem rybakiem w polityce? Oczywiscie nie, to klamstwo.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_03"); //Mówiac prawde, wierni zamachaja, kiedys zakochalem sie w syrenie.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_04"); //Bylo piekne jak pierwsze promienie slonca dnia odbijajace sie na morzu......
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Sorge_15_05"); //Przynosze ci te notatki.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_06"); //Wiem, ze sztuka naszego ministra ds. narkotyków jest niezrównana, ale nie mam na to ochoty teraz.... Nie idz na królewski szorstki kajak, jesli mnie opuscisz.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Król obawia sie zbytnio, by zajac sie zapisami sekretarza. Musze znalezc rozwiazanie tego problemu.");
};

INSTANCE Info_Mod_HofstaatKoenig_Meer (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Meer_Condition;
	information	= Info_Mod_HofstaatKoenig_Meer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam odpowiedz!";
};

FUNC INT Info_Mod_HofstaatKoenig_Meer_Condition()
{
	if (Mod_SL_Meer == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Meer_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Meer_15_00"); //Mam odpowiedz!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Meer_06_01"); //Martwi mnie pan niepokojacy, miotajacy sie. To jest cos, co moze tylko wplynac na ducha króla, nie moge sobie pomóc.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Meer_15_02"); //Ale mam dla ciebie morze!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Meer_06_03"); //NIE MA DLA MNIE MORZA! Teraz wyjdz z oczu, traluj.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Król nie bedzie sluchal rozumu. Co teraz?");

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_7328_HS_Hofnarr_REL, "REL_HS_005");
	B_StartOtherRoutine	(Mod_7328_HS_Hofnarr_REL, "ATKING");
};

INSTANCE Info_Mod_HofstaatKoenig_Gemaelde (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Gemaelde_Condition;
	information	= Info_Mod_HofstaatKoenig_Gemaelde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Gemaelde_Condition()
{
	if (Npc_HasItems(hero, ItMi_StrandBild) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Gemaelde_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_00"); //Zrzuty! Przekraczasz swoje uprawnienia.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_01"); //Natychmiast znikaj albo poczujesz mój gniew królewski.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_02"); //Moze ten obraz moze Cie rozweseli.

	B_GiveInvItems	(hero, self, ItMi_StrandBild, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_03"); //.... to piekne. Co bylo inspiracja dla tego dziela sztuki?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_04"); //Plaza. Znajduje sie w starej kolonii górniczej.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_05"); //Zapoznalem sie z moimi znajomymi i jestem pewien, ze moglem zawrzec sojusz.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_06"); //Masz na mysli..... Czy w kazdej chwili mialabym dostep do tego boskiego kawalka ziemi?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_07"); //Dokladnie. Przyjedzcie ze mna, zabiore Was tam.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_08"); //Nie.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_09"); //Co masz na mysli, nie?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_10"); //Moge sie martwic, ale wciaz jestem królem! Oczekuje, ze znajda Panstwo trwale rozwiazanie problemu transportu.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_11"); //Pozwól mi jak najszybciej znalezc sposób.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Król jest pod wrazeniem piekna bagna. Pragnie jednak rozwiazania problemu transportu. Tutaj powinienem zapytac, czy ktokolwiek o tym nie wie.");

	Mod_SL_Meer = 5;
};

INSTANCE Info_Mod_HofstaatKoenig_Loch (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Loch_Condition;
	information	= Info_Mod_HofstaatKoenig_Loch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Loch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_AtLoch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Loch_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Loch_06_00"); //Czy znalazles sposób?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Loch_15_01"); //Tak, ja to zrobilem, idzcie dalej.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Loch_06_02"); //Biada wam, on nie jest godzien króla!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Opowiedzialem królowi o nowym otworze transportowym. Natychmiast odszedl.");

	Mod_SL_Meer = 8;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LOCH");
};

INSTANCE Info_Mod_HofstaatKoenig_Tuersteher (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Tuersteher_Condition;
	information	= Info_Mod_HofstaatKoenig_Tuersteher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Tuersteher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTuersteher_NachFest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Tuersteher_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_00"); //Asystent kapieli! Dobrze, ze przyjdziesz, zobaczysz, ze jestes dobry, ze przyjdziesz! BOGA musi Cie wyslac!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Tuersteher_15_01"); //Nie, bouncer.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_02"); //Moze powinienem go dostarczyc. Nigdy nie martwcie sie! Prosze Cie o zrobienie ostatniego bledu dla mnie, opiekuna puli!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_03"); //Cos tak ukrytego i niebezpiecznego, ze tylko Ty mozesz to zrobic!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Tuersteher_15_04"); //Co o tym chodzi? Czy dzieci chodza na krawedzi basenu?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_05"); //Znacznie wazniejsze. Musisz zobaczyc sekretarza narkotyków! On udzieli dalszych wskazówek! Pospiesz sie!

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "Król ma dla mnie bardzo tajemnicza i niebezpieczna misje. Mam pójsc do sekretarki narkotyków.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatKoenig_Fluffy (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Fluffy_Condition;
	information	= Info_Mod_HofstaatKoenig_Fluffy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Fluffy_Condition()
{
	if (Mod_SL_PartFluffy == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Fluffy_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_00"); //! Wróccie do mnie, moje ulubieniec!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_01"); //Gramy równiez w gre lapiac drzewo i mozna siegnac po wieze zamkowa..... Przepustowosc......
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_02"); //

	B_LogEntry	(TOPIC_MOD_SL_FLUFFY, "Fluffy's gone i the królewiatko smutek o ono.");

	Mod_SL_PartFluffy = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatKoenig_HofstaatFutsch (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_HofstaatFutsch_Condition;
	information	= Info_Mod_HofstaatKoenig_HofstaatFutsch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_HofstaatFutsch_Condition()
{
	if (Mod_SL_Schwaechen == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_HofstaatFutsch_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_00"); //EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE! WARUM?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_01"); //Bóstwo obalajcie! Daj mi z powrotem mój swiat, nie chce twojej rzeczywistosci.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_02"); //(Woice placze i konczy sie niepowodzeniem) Co zrobilem....

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Obecnie sad zostaje ostatecznie zniszczony. Powinienem udac sie teraz do Baala Namiba.");

	Mod_SL_Schwaechen = 8;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Condition;
	information	= Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam jeszcze kilka pytan dotyczacych narkotyków.";
};

FUNC INT Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_15_00"); //Mam jeszcze kilka pytan dotyczacych narkotyków.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_06_01"); //Ustaw ja dla maga dworskiego! A teraz z dala!
};

INSTANCE Info_Mod_HofstaatKoenig_Pickpocket (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Pickpocket_Condition;
	information	= Info_Mod_HofstaatKoenig_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_HofstaatKoenig_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatKoenig_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatKoenig_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatKoenig_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatKoenig_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatKoenig_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatKoenig_EXIT (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_EXIT_Condition;
	information	= Info_Mod_HofstaatKoenig_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatKoenig_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatKoenig_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
