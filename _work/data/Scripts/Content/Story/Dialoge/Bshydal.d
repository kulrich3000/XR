INSTANCE Info_Mod_Bshydal_Hi (C_INFO)
{
	npc		= Mod_7315_BK_Bshydal_AW;
	nr		= 1;
	condition	= Info_Mod_Bshydal_Hi_Condition;
	information	= Info_Mod_Bshydal_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bshydal_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bshydal_Hi_Info()
{
	AI_TurnToNpc	(self, GardeInnos_4099_Josephina);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_00"); //Fools, zrobilem tylko moje narzedzie.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_01"); //Byles tak niewidomy z fanatycznym zapalem, ze moglem cie prowadzic zgodnie z moja wola, bez zauwazania.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_02"); //Hahahaha. Udzielona wam moc, ja teraz znowu podejme sie..... i reszte sily.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_03"); //Co? Jak sie tu dostales? No cóz, to teraz nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_04"); //W klatce piersiowej tuz obok znajduje sie artefakt, miecz Innos.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_05"); //Buahahaha, wypedzimy Beliara i staniemy sie tak potezni, wstrzasajac równowaga, ze nawet Innos nie moze juz nas dotykac.

	B_SetTopicStatus	(TOPIC_MOD_BEL_GARDEINNOS, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Bshydal_Hi);

	Info_AddChoice	(Info_Mod_Bshydal_Hi, "Idz dalej, wygrales wyscig i zarobiles miecz.", Info_Mod_Bshydal_Hi_B);
	Info_AddChoice	(Info_Mod_Bshydal_Hi, "Nie, nie mozesz tego zrobic.", Info_Mod_Bshydal_Hi_A);
};

FUNC VOID Info_Mod_Bshydal_Hi_C()
{
	AI_UseMob (self, "CHEST", 1);
	AI_UseMob (self, "CHEST", -1);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_00"); //(nastraszony) Jak, co.... bez nie moze tak byc.
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_01"); //Huh, co sie teraz dzieje?
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_02"); //To.... prowadzenie dokumentacji jest niemozliwe, to wszystko bylo prawda. Oszustwo, oszustwo, zdrada!
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_03"); //Oh, najwyrazniej nie znalazl tego, na co mial nadzieje.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_04"); //Damn to nie moze byc. Nie, nie, nie, przylot....
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_05"); //Wyglada na to, ze jest teraz bardzo podekscytowany.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_06"); //Tak, to ty byles, to byc moze byles, ukradles to.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_07"); //Bede ciete na tysiac kawalków i wziac miecz na mnie (buckling), a nastepnie....... Tak, bede rzadzil swiatem. Die!
	
	Info_ClearChoices	(Info_Mod_Bshydal_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Bshydal_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_B_15_00"); //Idz dalej, wygrales wyscig i zarobiles miecz.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_B_02_01"); //(irytowany) Jak..... cóz, co?
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_B_15_02"); //Tak, to byla dluga i wytrwala walka o wybrany miecz. Wiec jestes równiez godnym okazicielem miecza.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_B_02_03"); //Co robisz....? Cokolwiek. Zabieram teraz bron. (z wymuszonym i golym smiechem) Haha.
	
	Info_Mod_Bshydal_Hi_C();
};

FUNC VOID Info_Mod_Bshydal_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_A_15_00"); //Nie, nie mozesz tego zrobic. Czynilbys niewyobrazalne szkody dla swiata.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_A_02_01"); //Hahahaha, twoje zawodzenie mnie nie powstrzyma.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_A_02_02"); //W zamian bedziesz mial zaszczyt byc pierwszym, który umrze przez bron.... Wiecej przed swoim mistrzem.
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_A_15_03"); //Nope.....
	
	Info_Mod_Bshydal_Hi_C();
};

INSTANCE Info_Mod_Bshydal_NichtTot (C_INFO)
{
	npc		= Mod_7316_BK_Bshydal_AW;
	nr		= 1;
	condition	= Info_Mod_Bshydal_NichtTot_Condition;
	information	= Info_Mod_Bshydal_NichtTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bshydal_NichtTot_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bshydal_NichtTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Bshydal_NichtTot_02_00"); //....
	AI_Output(hero, self, "Info_Mod_Bshydal_NichtTot_15_01"); //Lubie to, co cie spotkalem - - co ci sie podobalo?
	AI_Output(self, hero, "Info_Mod_Bshydal_NichtTot_02_02"); //Hit go? Fool, mam we mnie moc Inno's Guard. To czyni mnie prawie niesmiertelnym.
	AI_Output(hero, self, "Info_Mod_Bshydal_NichtTot_15_03"); //Ta sila i moc.... przytlaczajace. Arrghhhhhhh.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
