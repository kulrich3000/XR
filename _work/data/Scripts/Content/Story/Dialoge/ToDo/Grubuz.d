INSTANCE Info_Mod_Grubuz_Stollen (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_Stollen_Condition;
	information	= Info_Mod_Grubuz_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grubuz_Stollen_Condition()
{
	if (Mod_Hermy_KnowsQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grubuz_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_18_00"); //Czego ludzie chca tutaj?
	
	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Chce eksterminowac ci czajace orki!", Info_Mod_Grubuz_Stollen_B);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Musze udac sie do wykopanego tunelu.", Info_Mod_Grubuz_Stollen_A);
};

FUNC VOID Info_Mod_Grubuz_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_B_15_00"); //Chce eksterminowac ci czajace orki!
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_B_18_01"); //Czlowiek zly, dlaczego gobshak pozwolil mu przyjsc do mnie?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "To nie jest interesujace. Co ciekawsze, jesli mozesz walczyc, slabniesz!", Info_Mod_Grubuz_Stollen_D);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "To byl tylko posmak jezyka.", Info_Mod_Grubuz_Stollen_C);
};

FUNC VOID Info_Mod_Grubuz_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_A_15_00"); //Musze udac sie do wykopanego tunelu.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_A_18_01"); //Dlaczego?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Ciagle jeszcze musza istniec jakies zaklecia lezace gdzies tam gdzie potrzebuje.", Info_Mod_Grubuz_Stollen_F);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "To sekret.", Info_Mod_Grubuz_Stollen_E);
};

FUNC VOID Info_Mod_Grubuz_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_D_15_00"); //To nie jest interesujace. Co ciekawsze, jesli mozesz walczyc, slabniesz!

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_C_15_00"); //To byl tylko posmak jezyka.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_C_18_01"); //Nie sluchalem. Czego wiec ludzie chca?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Musze udac sie do wykopanego tunelu.", Info_Mod_Grubuz_Stollen_A);
};

FUNC VOID Info_Mod_Grubuz_Stollen_E()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_E_15_00"); //To sekret.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_E_18_01"); //Jeez..... trzeba mi powiedziec tajemnice lub nie pozwole wam wejsc do kopalni.

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Ciagle jeszcze musza istniec jakies zaklecia lezace gdzies tam gdzie potrzebuje.", Info_Mod_Grubuz_Stollen_F);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "Nie mysle nawet o tym.", Info_Mod_Grubuz_Stollen_G);
};

FUNC VOID Info_Mod_Grubuz_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_F_15_00"); //Ciagle jeszcze musza istniec jakies zaklecia lezace gdzies tam gdzie potrzebuje.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_F_18_01"); //Nie znalezlismy zadnych rolek zaklec. Mozesz wejsc i wyszukac.
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_F_15_02"); //Dzieki. Zobacze cie dookola.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_F_18_03"); //Mam zaszczyt podziekowac.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Mam pozwolenie z Grubuz na wejscie do tunelu. Ale mówi, ze orki nie znalazly tam zadnych ról pisowni. Prawdopodobnie bede musial przyjrzec sie blizej.");

	Mod_Hermy_KnowsQuest = 3;

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Grubuz_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_G_15_00"); //Nie mysle nawet o tym.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_G_18_01"); //Wtedy nie moge cie wpuscic do tunelu.
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_G_15_02"); //Dobrze, powiem ci.

	Info_Mod_Grubuz_Stollen_F();
};

INSTANCE Info_Mod_Grubuz_Emerin (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_Emerin_Condition;
	information	= Info_Mod_Grubuz_Emerin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grubuz_Emerin_Condition()
{
	if (Mod_Hermy_KnowsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grubuz_Emerin_Info()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_18_00"); //Co Pan tutaj robi?

	self.flags = 0;
	
	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Pytanie brzmi: co Pan tutaj robi?", Info_Mod_Grubuz_Emerin_B);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Przewin potwora, nekajacego potwora.", Info_Mod_Grubuz_Emerin_A);
};

FUNC VOID Info_Mod_Grubuz_Emerin_K()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_K_18_00"); //Grubuz potrzebuje troche swiezego powietrza.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Dlaczego wiec uciekasz tak daleko?", Info_Mod_Grubuz_Emerin_L);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Zrezygnuje z czesci wypowiedzi, albo cie zabiore.", Info_Mod_Grubuz_Emerin_E);
};

FUNC VOID Info_Mod_Grubuz_Emerin_B()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_B_15_00"); //Pytanie brzmi: co Pan tutaj robi?

	Info_Mod_Grubuz_Emerin_K();
};

FUNC VOID Info_Mod_Grubuz_Emerin_A()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_A_15_00"); //Przewin potwora, nekajacego potwora.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_A_18_01"); //Grubuz nie pelni roli mówcy. Grubuz nie wie, o czym ludzie mówia.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Dlaczego wiec uciekles?", Info_Mod_Grubuz_Emerin_O);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Zrezygnuje z czesci wypowiedzi, albo cie zabiore.", Info_Mod_Grubuz_Emerin_E);
};

FUNC VOID Info_Mod_Grubuz_Emerin_O()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_O_15_00"); //Dlaczego wiec uciekles?

	Info_Mod_Grubuz_Emerin_K();
};

FUNC VOID Info_Mod_Grubuz_Emerin_L()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_L_15_00"); //Dlaczego wiec uciekasz tak daleko?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_L_18_01"); //Badz najlepszy w powietrzu lesnym.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Dlaczego wiec nie wylogowales sie na gobshak?", Info_Mod_Grubuz_Emerin_N);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Czy kochasz mnie? Teraz wyjdz z tego miejsca!", Info_Mod_Grubuz_Emerin_M);
};

FUNC VOID Info_Mod_Grubuz_Emerin_E()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_E_15_00"); //Zrezygnuje z czesci wypowiedzi, albo cie zabiore.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_E_18_01"); //Jesli naprawde chcesz walczyc, Grubuz cie zabije.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Dlaczego nie podajesz mi tylko fragmentu mowy, a my bedziemy to nazywac nawet?", Info_Mod_Grubuz_Emerin_F);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "A potem tutaj!", Info_Mod_Grubuz_Emerin_G);
};

FUNC VOID Info_Mod_Grubuz_Emerin_H()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_H_15_00"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_H_18_01"); //Nie zabijasz mnie i obiecujesz, ze nie pójdziesz za mna dalej.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Zreszta umieracie teraz.", Info_Mod_Grubuz_Emerin_J);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Dobrze, obiecuje.", Info_Mod_Grubuz_Emerin_I);
};

FUNC VOID Info_Mod_Grubuz_Emerin_F()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_F_15_00"); //Dlaczego nie podajesz mi tylko fragmentu mowy, a my bedziemy to nazywac nawet?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_F_18_01"); //Trzeba mi cos obiecac.

	Info_Mod_Grubuz_Emerin_H();
};

FUNC VOID Info_Mod_Grubuz_Emerin_G()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_G_15_00"); //A potem tutaj!

	CreateInvItems	(self, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Emerin_J()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_J_15_00"); //Zreszta umieracie teraz.

	CreateInvItems	(self, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Emerin_I()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_I_15_00"); //Dobrze, obiecuje.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_I_18_01"); //Tutaj Grubuz daje Ci Spruro..... obrzydliwy Magia.

	CreateInvItems	(self, ItSc_TrfHarpie, 1);
	B_GiveInvItems	(self, hero, ItSc_TrfHarpie, 1);

	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_I_15_02"); //Chce dotrzymac slowa. Mozesz przejsc teraz.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_I_18_03"); //Mam nadzieje, ze nigdy wiecej sie nie zobaczymy.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Mam zaklecie 'Transforming Harpie'. Teraz powinienem isc z nia do Hermy' ego.");

	B_StartOtherRoutine	(self, "START");

	Mod_Hermy_KnowsQuest = 9;

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Grubuz_Emerin_N()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_N_15_00"); //Dlaczego wiec nie wylogowales sie na gobshak?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_N_18_01"); //Przestan meczyc Grubuz! Daje ci rolke, jesli cos mi obiecujesz.

	Info_Mod_Grubuz_Emerin_H();
};

FUNC VOID Info_Mod_Grubuz_Emerin_M()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_M_15_00"); //Czy kochasz mnie? Teraz wyjdz z tego miejsca!
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_M_18_01"); //Chcesz walczyc? Grubuz cie zabije.

	Info_Mod_Grubuz_Emerin_G();
};

INSTANCE Info_Mod_Grubuz_EXIT (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_EXIT_Condition;
	information	= Info_Mod_Grubuz_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grubuz_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grubuz_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
