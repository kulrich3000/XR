INSTANCE Info_Mod_Leitwolf_Hi (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_Hi_Condition;
	information	= Info_Mod_Leitwolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leitwolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leitwolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_09_00"); //Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Zgubic sie, pies jest metny.", Info_Mod_Leitwolf_Hi_C);
	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Tutaj nie jestescie bardzo mile widziani.", Info_Mod_Leitwolf_Hi_B);
	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Czy nie chcialbys znowu opuscic doliny?", Info_Mod_Leitwolf_Hi_A);
};

FUNC VOID Info_Mod_Leitwolf_Hi_F()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_F_09_00"); //Chcesz wyladowac jak wszyscy w promieniu dziesieciu metrów?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Przyjedzcie tutaj, duze zle wilki.", Info_Mod_Leitwolf_Hi_H);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Moze mozemy to zrobic spokojnie.", Info_Mod_Leitwolf_Hi_G);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_C_15_00"); //Zgubic sie, pies jest metny.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_C_09_01"); //Co myslisz, ze robisz? Co sadzisz, ze jestes?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Jestem dla ciebie intelektualnie wyzszy, wiec oddaje sie lub umieram.", Info_Mod_Leitwolf_Hi_E);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Co uwazasz, ze robisz, aby zniszczyc wszystko tutaj?", Info_Mod_Leitwolf_Hi_D);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_B_15_00"); //Tutaj nie jestescie bardzo mile widziani.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_B_09_01"); //Mówi kto kogo?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Precyzyjnie mówiac, magów transformujacych.", Info_Mod_Leitwolf_Hi_K);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Nie uslyszales mnie? Powiem to.", Info_Mod_Leitwolf_Hi_J);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_A_15_00"); //Czy nie chcialbys znowu opuscic doliny?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_A_09_01"); //Jesli mnie o to zapytasz.... tak. (smiecha gardla) Dlaczego mam opuscic doline?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Tutaj nie jestescie bardzo mile widziani.", Info_Mod_Leitwolf_Hi_B);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Ty i twoi przyjaciele, niszczycie spokój natury w tej dolinie.", Info_Mod_Leitwolf_Hi_M);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_E_15_00"); //Jestem dla ciebie intelektualnie wyzszy, wiec oddaje sie lub umieram.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_E_09_01"); //Nie daj mi sie smiac! (smiertelnosc gardla)

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_D_15_00"); //Co uwazasz, ze robisz, aby zniszczyc wszystko tutaj?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_D_09_01"); //Jestem liderem tego pakietu! A co mozesz mi pokazac?
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_D_15_02"); //Nie patrze na to, ale jestem czlowiekiem.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_D_09_03"); //Jestes jednym z tych moronów? Zejdz stad, busteruj.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Nie, wyjezdzasz stad!", Info_Mod_Leitwolf_Hi_I);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Czy nie mozemy znalezc jakiegos porozumienia?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_H_15_00"); //Przyjedzcie tutaj, duze zle wilki.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_H_09_01"); //Dopasuj sie do siebie!

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_G_15_00"); //Moze mozemy to zrobic spokojnie.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_G_09_01"); //Nie moge sobie wyobrazic niczego spontanicznie. (rowery)

	Info_Mod_Leitwolf_Hi_A();
};

FUNC VOID Info_Mod_Leitwolf_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_I_15_00"); //Nie, wyjezdzasz stad!

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_K_15_00"); //Precyzyjnie mówiac, magów transformujacych.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_K_09_01"); //Ta ragamuffina. To straszenie mnie! Powiedz im, ze nigdzie nie jade.
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_K_15_02"); //Co jesli nie mam?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_K_09_03"); //Wtedy zostane tutaj! (smiertelnosc gardla)

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Zgubic sie, pies jest metny.", Info_Mod_Leitwolf_Hi_C);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Czy nie mozemy znalezc jakiegos porozumienia?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_J_15_00"); //Nie uslyszales mnie? Powiem to.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_J_09_01"); //Nie badz niegrzecznym chlopcem. Czego od mnie oczekujesz?
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_J_15_02"); //Pozostawienie doliny. Powiedzialem juz panstwu to.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_J_09_03"); //Nie chce opuszczac doliny. Jest to doskonaly teren lowiecki.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Wtedy umrzesz, pies meski!", Info_Mod_Leitwolf_Hi_L);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Czy nie mozemy znalezc jakiegos porozumienia?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_L_15_00"); //Wtedy umrzesz, pies meski!

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_N_15_00"); //Czy nie mozemy znalezc jakiegos porozumienia?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_N_09_01"); //Twoja byka zaczyna mnie nudzic. Chcesz ugody?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_N_09_02"); //Przynies mi jedzenie dla.... Jeden tydzien i wychodzimy.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Zapomnij o tym.", Info_Mod_Leitwolf_Hi_P);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Bede, czego chcesz?", Info_Mod_Leitwolf_Hi_O);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_M_15_00"); //Ty i twoi przyjaciele, niszczycie spokój natury w tej dolinie.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_M_09_01"); //Ach, jak dotknac. Nie daje nic zlego.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_Mod_Leitwolf_Hi_N();
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_S()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_S_09_00"); //Zaprowadz mnie.... dwudziestu kawalków miesa.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "To zbyt wiele, aby o to zapytac!", Info_Mod_Leitwolf_Hi_U);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Wszystkie sluszne, wszystkie sluszne. Dostarcze Ci mieso.", Info_Mod_Leitwolf_Hi_T);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_P()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_P_15_00"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_P_09_01"); //Wtedy nie mozemy robic interesów. Wyjsc stad.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Nie, znikacie. Teraz albo cie zabije!", Info_Mod_Leitwolf_Hi_R);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Poczekac! Czego chcesz?", Info_Mod_Leitwolf_Hi_Q);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_O_15_00"); //Bede, czego chcesz?

	Info_Mod_Leitwolf_Hi_S();
};

FUNC VOID Info_Mod_Leitwolf_Hi_R()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_R_15_00"); //Nie, znikacie. Teraz albo cie zabije!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_R_09_01"); //Nie, jesli jestem szybszy!

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_Q()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_Q_15_00"); //Poczekac! Czego chcesz?

	Info_Mod_Leitwolf_Hi_S();
};

FUNC VOID Info_Mod_Leitwolf_Hi_U()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_U_15_00"); //To zbyt wiele, aby o to zapytac!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_U_09_01"); //Wtedy nie mozemy robic interesów. Wyjsc stad.
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_U_15_02"); //Nie, znikacie. Teraz albo cie zabije!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_U_09_03"); //Nie, jesli jestem szybszy!

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Musialem zabic przywódce wilka. Miejmy nadzieje, ze zadanie to mozna jeszcze uznac za ukonczone. Powinienem o tym porozmawiac z Asko.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_T()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_T_15_00"); //Wszystkie sluszne, wszystkie sluszne. Dostarcze Ci mieso.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_T_09_01"); //Cudowny. (smiertelnosc gardla)

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 2;

	Npc_SetRefuseTalk	(self, 60);

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Do lidera wilka mam przywiezc 20 kawalków miesa, aby on i jego paczka mogli zniknac. Mysle, ze Dever sprzedaje mieso. Potem powinienem dac mi Asko nowa role.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Leitwolf_Aufgabe (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_Aufgabe_Condition;
	information	= Info_Mod_Leitwolf_Aufgabe_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Leitwolf_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leitwolf_Hi))
	&& (Mod_VMG_Pruefung_Leitwolf == 2)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leitwolf_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_00"); //Jak wyglada? (rowery)

	if (Mod_HasFleisch_Amount >= 20)
	{
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_01"); //Oto Twoje mieso.

		//B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 20);

		B_ShowGivenThings	("20 surowego miesa, które");

		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_02"); //To wlasnie nazywam dobrym posilkiem! Bede dotrzymac obietnicy i wyciagnac z niej pieklo.
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_03"); //Najlepiej jest, jesli juz nie pojawisz sie tutaj.
		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_04"); //Wszystkie sluszne, wszystkie sluszne. Tu wyjdziemy.

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Przywódca wilka odszedl z kolesiami. Powinienem to powiedziec Asko.");

		Mod_VMG_Pruefung_Leitwolf = 3;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_05"); //Jestem w tej sprawie.
		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_06"); //Pospieszyc sie, czy pan?
	};

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 60);
};

INSTANCE Info_Mod_Leitwolf_EXIT (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_EXIT_Condition;
	information	= Info_Mod_Leitwolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leitwolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leitwolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
