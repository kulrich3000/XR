INSTANCE Info_Mod_Roman_REL_Hi (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Hi_Condition;
	information	= Info_Mod_Roman_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Hi_Condition()
{
	if (Mod_EndresIndizien >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_00"); //Poczekaj minute!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_01"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_02"); //Wlasnie slyszalem, ze zabójcza bron byla pikseksem!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_03"); //To prawda.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_04"); //Nie moge sie oprzec wrazeniu, ze kilka dni temu w drodze do domu zetknalem sie kilka dni temu.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_05"); //Bylo juz ciemno, z boku alei przemawia do mnie glos, czy moge jej wypozyczyc motyk.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_06"); //Przynioslem to, bo chcialem go zmielic. Wlasciwie to mówie, co chcesz z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_07"); //Po prostu mijajac czas, mówi glos. Rano wrócisz z powrotem.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_08"); //I wtedy wyszla reka z ciemnosci i polozylem zloto w reku.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_09"); //Wiec pozyczylem mu motyczke.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_10"); //Nastepnego ranka rano pochylila sie nad moim domem, blyszczac polyskujac i polerowala.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_11"); //Nie musialem sie tym martwic.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_12"); //A teraz slysze, ze syn suki usilowal nas spróbowac wzbudzic w górnikach podejrzliwosc z motykiem!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_13"); //facet?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_14"); //Tak, facet. Prawdopodobnie ukrywal jego glos, ale nie ma kobiety tak glebokiej.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_15"); //Poza tym mial owlosiona lapke.
	AI_Output(hero, self, "Info_Mod_Roman_REL_Hi_15_16"); //Dziekuje, to mi pomaga.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Hi_08_17"); //Powies go!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Roman pozyczyl zabójcy swój piknik. Z pewnoscia mamy do czynienia z czlowiekiem.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Roman_REL_Unruhen (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen_Condition;
	information	= Info_Mod_Roman_REL_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_00"); //Czego chcesz?

	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen))
	{
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_01"); //Zadbam o to, aby Khorata otrzymala nowego gubernatora, który bedzie kontynuowal negocjacje pokojowe z panstwem.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_02"); //Co Anselm uciekl? Wyglada to jak dziurka.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_03"); //Masz mianowac nastepce? Kielbasa?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_04"); //Ale jesli chcecie wiedziec, Theodorus jest jedynym, który przyjelibysmy jako gubernatora.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_05"); //Co dzieje sie w piekle?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_06"); //Nic, co nie powinno Cie zainteresowac. Buddler zadamy tylko naszego prawa.
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_07"); //I wlasnie dlatego przechodzisz przez trupy?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_08"); //Sluchaj, nie masz pojecia o czym to jest, ale wciaz chcesz sie zaangazowac?
		AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen_15_09"); //Ktos musi sie upewnic, ze nie bedzie juz wiecej martwych.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_10"); //To nigdy nie powinno bylo miec miejsca. (kaszel)
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen_08_11"); //Dobrze, godziny pracy biura dobiegaja konca. Badz spokojny i badz syczacy.
	};
};

INSTANCE Info_Mod_Roman_REL_Unruhen2 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen2_Condition;
	information	= Info_Mod_Roman_REL_Unruhen2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen4))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Mod_REL_WendelS == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_08_00"); //Spójrzmy, ktos nie chce zrozumiec, ze tu nie ma interesów.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_08_01"); //Co ty tu robisz?

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	Info_AddChoice	(Info_Mod_Roman_REL_Unruhen2, "Chcialbym przejsc dalej.", Info_Mod_Roman_REL_Unruhen2_B);
	Info_AddChoice	(Info_Mod_Roman_REL_Unruhen2, "Czy móglbys reprezentowac górników w rozmowach pokojowych?", Info_Mod_Roman_REL_Unruhen2_A);
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_B()
{
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_B_15_00"); //Chcialbym przejsc dalej.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	Npc_SetRefuseTalk	(self, 30);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Roman_REL_Unruhen2_A()
{
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_00"); //Czy móglbys reprezentowac górników w rozmowach pokojowych?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_01"); //Rozmowy pokojowe. Schodzisz w cos.
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_02"); //Khorata ma nowego prezesa, Wendla. Chce Cie poznac.
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_03"); //(agagresywny) Spirala? On jest w klopocie!
	AI_Output(hero, self, "Info_Mod_Roman_REL_Unruhen2_A_15_04"); //Wiec przychodzisz do mnie?
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen2_A_08_05"); //A jesli to tylko dobre do polerowania jego twarzy! Poruszaj sie!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Roman wydaje sie szukac przemocy. W jego rozmowie z Anselmem musze sie upewnic, ze nie eskaluje.");

	Mod_REL_WendelS = 1;

	Info_ClearChoices	(Info_Mod_Roman_REL_Unruhen2);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOWENDEL");
};

INSTANCE Info_Mod_Roman_REL_Unruhen3 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen3_Condition;
	information	= Info_Mod_Roman_REL_Unruhen3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen3_Condition()
{
	if (Mod_REL_WendelS == 17)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen3_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen3_08_00"); //Wspanialy! Po co i tak przyjechalem?

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Negocjacje nie doprowadzily do zadowalajacego zakonczenia.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	Mod_REL_Stadthalter = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATMINE");
	B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "STADTHALTER");
};

INSTANCE Info_Mod_Roman_REL_Unruhen4 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen4_Condition;
	information	= Info_Mod_Roman_REL_Unruhen4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen4_Condition()
{
	if (Mod_REL_WendelS == 18)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen4_Info()
{
	AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen4_08_00"); //Drobny, drobny. W porzadku, powiem innym, co sie stalo tutaj. Zapomnijmy o argumentach.

	Mod_REL_WendelS = 19;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	B_RemoveNpc	(Mod_7619_OUT_Frazer_REL);
	B_RemoveNpc	(Mod_7613_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7614_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7615_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7616_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7617_OUT_Schuerfer_REL);
	B_RemoveNpc	(Mod_7618_OUT_Norman_REL);
};

INSTANCE Info_Mod_Roman_REL_Unruhen5 (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_Unruhen5_Condition;
	information	= Info_Mod_Roman_REL_Unruhen5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Roman_REL_Unruhen5_Condition()
{
	if (Mod_REL_WendelS == 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_REL_Unruhen5_Info()
{
	if (Mod_REL_WendelS_Choice == 3)
	{
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_00"); //Chcesz byc bezstronny?
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_01"); //Zdaje sobie sprawe z tego, co to jest gra, wy dwa szczesliwie sie zgodziliscie!
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_02"); //Udajecie, ze jestescie uczciwi, ale w rzeczywistosci nie dacie nam nic zlego! I jestes zbyt tchórzliwy, by walczyc!
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_03"); //Powinienem byl wczesniej wiedziec!

		Mod_REL_WendelS = 19;

		B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Negocjacje nie doprowadzily do zadowalajacego zakonczenia.");
		B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

		Mod_REL_Stadthalter = 2;

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "ATMINE");
		B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "STADTHALTER");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_04"); //Cóz, nadal uwazam, ze nie jest to naprawde sprawiedliwe, ale mozemy zaakceptowac go jako kompromis.
		AI_Output(self, hero, "Info_Mod_Roman_REL_Unruhen5_08_05"); //Opowiem chlopcom wiadomosc, a Frazer wraca do miasta.

		Mod_REL_WendelS = 19;

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "TOT");

		B_RemoveNpc	(Mod_7619_OUT_Frazer_REL);
		B_RemoveNpc	(Mod_7613_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7614_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7615_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7616_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7617_OUT_Schuerfer_REL);
		B_RemoveNpc	(Mod_7618_OUT_Norman_REL);
	};
};

INSTANCE Info_Mod_Roman_REL_EXIT (C_INFO)
{
	npc		= Mod_7492_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_REL_EXIT_Condition;
	information	= Info_Mod_Roman_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Roman_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
