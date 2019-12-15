INSTANCE Info_Mod_Whistler_NW_Hi (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Hi_Condition;
	information	= Info_Mod_Whistler_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alissandro mnie wyslalo.";
};

FUNC INT Info_Mod_Whistler_NW_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_WasTunAlsErzbaron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_00"); //Alissandro wyslalo mnie do Ciebie. Oznacza to, ze mozesz pomóc nam tutaj rozprzestrzeniac nasz biznes.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_01"); //Tak, otrzymalem informacje, które moga nam pomóc:
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_02"); //Ze wzgledu na paladyny jestesmy niepozadani w miescie, wiec nie bylby to dobry punkt wyjscia. Mozemy zapomniec o magicznym klasztorze z magii ognia.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_03"); //Zbyt wiele nowych magazynów jest w duzych gospodarstwach rolnych, wiec nie mozemy miec nadziei na wspólprace z nim.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_04"); //Pomiedzy nami a Rycerzami Demonicznymi i Przywolanymi rozwinelo sie napiecie z powodu tego, co bylo z dawna kopalnia, wiec i oni równiez odchodza.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_05"); //Oczywiscie magowie wody równiez nie chca nas wspierac. Mamy jednak po naszej stronie zlodziei i bandytów.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_06"); //Zlodzieje i bandyci? I oni maja nam pomóc?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_07"); //Nie lekcewazcie ich, ludzie sie ich boja, co daje im wplyw.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_08"); //Widze i co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_09"); //Esteban przyjechal do miasta, chcial sie z Toba spotkac.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_10"); //Udaj sie na targowisko, gdzie czeka na Ciebie.

	B_LogEntry	(TOPIC_MOD_AL_AUSBREITUNGK, "Whistler powiedzial, ze pracujemy z bandytami. Zobacze Estebana, którego znajde na targowisku.");
};

INSTANCE Info_Mod_Whistler_NW_WasGeht (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_WasGeht_Condition;
	information	= Info_Mod_Whistler_NW_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Whistler_NW_WasGeht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_NW_AtLagerhaus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_01"); //W ogóle nie krwawe pieklo. Jakis facet zawsze wysyla nam listy z grozbami i mówi, ze jesli nie zaplacimy mu pieniedzy na ochrone, rozerwie cale miejsce.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_02"); //I zaplaciles mu?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_03"); //Nie, z czym? Mamy tylko rude, a on tego nie zaakceptuje. A teraz chce wyburzyc ten magazyn w regularnych odstepach czasu.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_04"); //Ile zlota chce?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_05"); //500 zlotych monet za magazynem, gdzie w ciagu dnia odbywaja sie bitwy pod Alrikiem.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_06"); //Kiedy chce pieniedzy?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_07"); //Dzis wieczorem o pólnocy.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_08"); //W prawo, pojade za magazynem o pólnocy i przyjrze sie temu.

	Log_CreateTopic	(TOPIC_MOD_AL_LAGERHAUS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_LAGERHAUS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Rozmawialem z Whistlerem. Powiedzial, ze ktos szantazuje pieniadze i próbuje zniszczyc nasz magazyn. O pólnocy zabiera pieniadze za magazynem, zajme sie tym.");

	B_StartOtherRoutine	(Mod_563_NONE_Borka_NW, "ERPRESSER");
};

INSTANCE Info_Mod_Whistler_NW_BromorSchuld (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_BromorSchuld_Condition;
	information	= Info_Mod_Whistler_NW_BromorSchuld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bromor z czerwonej latarni nie chce, abysmy tu skazali.";
};

FUNC INT Info_Mod_Whistler_NW_BromorSchuld_Condition()
{
	if (Mod_AL_BorkaAusgequetscht == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_BromorSchuld_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_00"); //Bromor z czerwonej latarni nie chce nas tu skazac, a on nam przeszkadza.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_01"); //Wtedy bedziemy musieli sie zemscic i mam plan.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_02"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_03"); //W godzinach od 5.00 do 10.00 czerwona latarnia jest zamknieta dla zwiedzajacych, w tym czasie Bromor i jego dziewczyny odradzaja sie.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_04"); //Z czasem porwiemy jego dziewczynki i kradniemy zloto.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_05"); //Bylby to pierwszy krok.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_06"); //A drugi?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_07"); //Do tego dojde pózniej.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_08"); //Cóz, wtedy zajmiemy sie pierwszym krokiem.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_09"); //Dobrze, spotkam sie tam miedzy 5:00 a 10:00.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_10"); //Dostajesz zloto, dostane dziewczyny.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Whistler ma juz plan zemsty. On porywa prostytutke Bromora, a ja kradlem jego pieniadze.");

	B_StartOtherRoutine	(Mod_563_NONE_Borka_NW, "START");
	B_StartOtherRoutine	(self, "PUFF");
};

INSTANCE Info_Mod_Whistler_NW_HabSeinGold (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_HabSeinGold_Condition;
	information	= Info_Mod_Whistler_NW_HabSeinGold_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co teraz?";
};

FUNC INT Info_Mod_Whistler_NW_HabSeinGold_Condition()
{
	if (Mob_HasItems("BROMORSTRUHE", Itmi_Gold) == 0)
	&& (Wld_IsTime(05,00,10,00))
	&& (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_BromorSchuld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_HabSeinGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_HabSeinGold_15_00"); //A co teraz?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_01"); //Mamy umowe z dziewczynkami Bromora. Odejmiemy je stad na razie, ale wróca, gdy Bromor zrezygnuje.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_HabSeinGold_15_02"); //A co mam robic?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_03"); //Mam dla pana jeszcze cos innego do zrobienia. Mam tutaj zaklecie przywolujace na mysl niektóre szczury.

	CreateInvItems	(self, ItSc_SummonRats, 1);
	B_GiveInvItems	(self, hero, ItSc_SummonRats, 1);

	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_04"); //Pozwólcie jej i Bromor z przyjemnoscia zaskocza.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Przeszlismy przez moment wlamania. Teraz mam uwolnic kolejny zaklecie, wezwac szczury.");

	B_StartOtherRoutine	(Mod_522_NONE_Vanja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(self, "ATLAGERHAUS");
};

INSTANCE Info_Mod_Whistler_NW_RattenGespawnt (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_RattenGespawnt_Condition;
	information	= Info_Mod_Whistler_NW_RattenGespawnt_Info;
	permanent	= 0;
	important	= 0;
	description	= "No cóz, móglbym to zrobic. co teraz?";
};

FUNC INT Info_Mod_Whistler_NW_RattenGespawnt_Condition()
{
	if (Mod_AL_Rattengespawnt == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_HabSeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_RattenGespawnt_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_RattenGespawnt_15_00"); //No cóz, móglbym to zrobic. co teraz?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_RattenGespawnt_11_01"); //Teraz czekamy i widzimy, co sch rozwija sie. W nocy wszyscy idziemy na czerwona latarnie i cieszymy sie problemami Bromora.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Whistler uwaza, ze powinnismy ogladac Bromor teraz. Powinienem zatrzymac sie przy jego miejscu w nocy.");

	B_StartOtherRoutine	(self, "NACHTIMPUFF");
};

INSTANCE Info_Mod_Whistler_NW_NachtImPuff (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_NachtImPuff_Condition;
	information	= Info_Mod_Whistler_NW_NachtImPuff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dawanie Bromora.";
};

FUNC INT Info_Mod_Whistler_NW_NachtImPuff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Aufgeben))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_NachtImPuff_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_NachtImPuff_15_00"); //Dawanie Bromora.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_NachtImPuff_11_01"); //No cóz, wtedy ponownie polaczymy jego miejsce.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Powiedzialem Whistlerowi, ze Bromor poddaje sie.");
	B_SetTopicStatus	(TOPIC_MOD_AL_LAGERHAUS, LOG_SUCCESS);

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(500);

	if (hero.guild != GIL_KDF)
	{
		Wld_InsertNpc	(Mod_1933_BUD_Buddler_NW,	"HAFEN");
	};

	B_StartOtherRoutine	(self, "NACHTIMPUFF");
	B_StartOtherRoutine	(Mod_522_NONE_Vanja_NW, "START");
	B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "START");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "DOWN");
};

INSTANCE Info_Mod_Whistler_NW_Daemonen (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Daemonen_Condition;
	information	= Info_Mod_Whistler_NW_Daemonen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem z Rycerzami Demonicznymi.";
};

FUNC INT Info_Mod_Whistler_NW_Daemonen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Angebot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_Daemonen_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Daemonen_15_00"); //Bylem z Rycerzami Demonicznymi.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Daemonen_15_01"); //Tam Gomez powiedzial, ze próbuje odzyskac obóz.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Daemonen_11_02"); //Co? Damn, pewnie jest juz wyslany do obozu, Alissandro musi byc natychmiast ostrzezony!

	B_LogEntry	(TOPIC_MOD_AL_MINE, "Whistler powiedzial, ze powinienem jak najszybciej ostrzec Alissandro.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Whistler_NW_Pickpocket (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Pickpocket_Condition;
	information	= Info_Mod_Whistler_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Whistler_NW_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_BACK, Info_Mod_Whistler_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Whistler_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Whistler_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Whistler_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Whistler_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Whistler_NW_EXIT (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_EXIT_Condition;
	information	= Info_Mod_Whistler_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Whistler_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Whistler_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
