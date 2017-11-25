INSTANCE Info_Mod_Trador_Hi (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Hi_Condition;
	information	= Info_Mod_Trador_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trador_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_08_00"); //Jestes, nie liczylem na ciebie, ale ciesze sie, ze jestes tutaj.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Czego od mnie oczekujesz?", Info_Mod_Trador_Hi_B);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Kim jestes?", Info_Mod_Trador_Hi_A);
};

FUNC VOID Info_Mod_Trador_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_B_15_00"); //Czego od mnie oczekujesz?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_B_08_01"); //Czy nie sadzisz, ze najpierw powinienes mi cos powiedziec o sobie?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Nie.", Info_Mod_Trador_Hi_D);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Jestem.....", Info_Mod_Trador_Hi_C);
};

FUNC VOID Info_Mod_Trador_Hi_A()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Trador_Hi_A_08_00"); //Jestem Tradorem, wysokim czlonkiem kregu magów transformacji.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_A_08_01"); //Slyszalem juz o twoim przyjezdzie, wiec ruszylem w droge.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Czego od mnie oczekujesz?", Info_Mod_Trador_Hi_B);
};

FUNC VOID Info_Mod_Trador_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_D_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_D_08_01"); //Co zrobilem dla Ciebie? Nie badz tak uparty.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Mysle, ze lepiej bym poszedl.", Info_Mod_Trador_Hi_E);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Jestem.....", Info_Mod_Trador_Hi_C);
};

FUNC VOID Info_Mod_Trador_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_C_15_00"); //Jestem.....
	AI_Output(self, hero, "Info_Mod_Trador_Hi_C_08_01"); //Nie obchodzi mnie to, kim jestes, ale co tu robisz.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Dlaczego powinienem Ci to powiedziec?", Info_Mod_Trador_Hi_F);
};

FUNC VOID Info_Mod_Trador_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_E_15_00"); //Mysle, ze lepiej bym poszedl.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_E_08_01"); //Poczekac! Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Dlaczego powinienem Ci to powiedziec?", Info_Mod_Trador_Hi_F);
};

FUNC VOID Info_Mod_Trador_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_G_15_00"); //Przynosze Genn trujace rosliny, które tu rosna.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_G_08_01"); //Czy widze rosliny?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Nie, te sa dla Genna.", Info_Mod_Trador_Hi_I);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Tak, wezcie to.", Info_Mod_Trador_Hi_H);
};

FUNC VOID Info_Mod_Trador_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_F_15_00"); //Dlaczego powinienem Ci to powiedziec?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_F_08_01"); //Mozesz mi ufac. Jestem przeciez magikiem transformujacym.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Nie lubie twarzy.", Info_Mod_Trador_Hi_J);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_J_15_00"); //Nie lubie twarzy.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_J_08_01"); //Czy zawsze sadzisz ludzi po ich wygladzie? Chodzcie, przyjdzcie.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Nie sadze, ze to ci sie nie podoba.", Info_Mod_Trador_Hi_O);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_I_15_00"); //Nie, te sa dla Genna.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_08_01"); //Blagam cie, mozesz szukac nowych roslin dla Genn.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_08_02"); //Moge wam ofiarowac te ziola, wygladaja dokladnie jak trujace, ale sa calkowicie nieszkodliwe. Mozesz dac to Gennowi.
	AI_Output(hero, self, "Info_Mod_Trador_Hi_I_15_03"); //Co sie z tego wydostaje?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_08_04"); //Czy mozemy powiedziec - 200 zlotych monet?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "To nie wystarczy.", Info_Mod_Trador_Hi_K);
};

FUNC VOID Info_Mod_Trador_Hi_T()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_T_15_00"); //Co Furt ma z tym zrobic?

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_T_08_01"); //Nie do konca bylem szczesliwy, ze sie zlapal. Ale zrozumialem, ze masz z tym cos wspólnego. Zbyt duzo szarpales.

		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Przez poddanie sie Furtowi, jego pan, który przedstawil sie jako Trador, uswiadomil mi mnie. Mówil do mnie zagadkami. Mysle, ze powinienem porozmawiac z Gennem na ten temat.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_T_08_02"); //Po wypuszczeniu go, przyszedl do mnie. To bylo bardzo lekkomyslne.

		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Po tym jak pozwolilem Furtowi odejsc, musial biegnac do swego mistrza, który przedstawil sie jako Trador. Moze popelnilem blad. Mówil do mnie zagadkami. Mysle, ze powinienem porozmawiac z Gennem na ten temat.");
	};

	AI_Output(self, hero, "Info_Mod_Trador_Hi_T_08_03"); //Ale prawdopodobnie nigdy nie wiesz, dlaczego Fa ma umrzec. Adieu!

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_Trador_Hi_R()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_R_08_00"); //Dziekuje, oszukujesz! Nigdy wiecej nie zobaczysz roslin! (smiertelnicy)

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_R_08_01"); //Oto, co otrzymasz za to, aby Furt przewrócic!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_R_08_02"); //Furt mialem racje, jestes naprawde lekkomyslny!
	};

	Mod_VMG_Giftpflanzen = 5;

	AI_Output(hero, self, "Info_Mod_Trador_Hi_R_15_03"); //Synkujesz z suki!

	Info_Mod_Trador_Hi_T();
};

FUNC VOID Info_Mod_Trador_Hi_S()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_S_08_00"); //Jezdzisz do mnie szalony!

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_S_08_01"); //Ale oczekiwalem, ze bedziecie wytrwali po skazaniu Furta.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_S_08_02"); //Ale Furt juz powiedzial mi, ze byc moze jestes wytrwaly.
	};

	Mod_VMG_Giftpflanzen = 6;

	Info_Mod_Trador_Hi_T();
};

FUNC VOID Info_Mod_Trador_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_H_15_00"); //Tak, wezcie to.

	Npc_RemoveInvItems	(hero, ItPl_Mushroom_04, 1);
	Npc_RemoveInvItems	(hero, ItPl_Mithrida, 1);
	Npc_RemoveInvItems	(hero, ItPl_Piante, 1);
	Npc_RemoveInvItems	(hero, ItPl_Ponzola, 1);
	Npc_RemoveInvItems	(hero, ItPl_Venena, 1);

	B_ShowGivenThings	("sadzenie");

	Info_Mod_Trador_Hi_R();
};

FUNC VOID Info_Mod_Trador_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_L_15_00"); //Okay.

	Npc_RemoveInvItems	(hero, ItPl_Mushroom_04, 1);
	Npc_RemoveInvItems	(hero, ItPl_Mithrida, 1);
	Npc_RemoveInvItems	(hero, ItPl_Piante, 1);
	Npc_RemoveInvItems	(hero, ItPl_Ponzola, 1);
	Npc_RemoveInvItems	(hero, ItPl_Venena, 1);

	B_ShowGivenThings	("sadzenie");

	Info_Mod_Trador_Hi_R();
};

FUNC VOID Info_Mod_Trador_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_K_15_00"); //To nie wystarczy.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_K_08_01"); //500 - Moja ostatnia oferta.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "To nie wystarczy.", Info_Mod_Trador_Hi_M);
};

FUNC VOID Info_Mod_Trador_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_M_15_00"); //To nie wystarczy.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_M_08_01"); //1000. I juz wiecej monet!

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Hm, wiecej nie byloby zle.", Info_Mod_Trador_Hi_N);
};

FUNC VOID Info_Mod_Trador_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_N_15_00"); //Hm, wiecej nie byloby zle.

	Info_Mod_Trador_Hi_S();
};

FUNC VOID Info_Mod_Trador_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_O_15_00"); //Nie sadze, ze to ci sie nie podoba.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_O_08_01"); //Dlaczego? Czy cos dla Ciebie zrobilem? Musze to zrobic za wazne.... poznac.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Jaki rodzaj nauki?", Info_Mod_Trador_Hi_P);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_P()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_P_15_00"); //Jaki rodzaj nauki?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_P_08_01"); //O.... Habits of the other members, yes.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Nie wierze w ciebie.", Info_Mod_Trador_Hi_Q);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Przynosze Genn trujace rosliny, które tu rosna.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_Q()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_Q_15_00"); //Nie wierze w ciebie.

	Info_Mod_Trador_Hi_S();
};

INSTANCE Info_Mod_Trador_Teleport (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Teleport_Condition;
	information	= Info_Mod_Trador_Teleport_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Teleport_Condition()
{
	if (Mod_VMG_WSTrador == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Teleport_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_08_00"); //Co pan tutaj? Masz byc gdzies indziej!

	Info_ClearChoices	(Info_Mod_Trador_Teleport);

	Info_AddChoice	(Info_Mod_Trador_Teleport, "Zamierzam cie zabic!", Info_Mod_Trador_Teleport_B);
	Info_AddChoice	(Info_Mod_Trador_Teleport, "Co sie tu dzieje?", Info_Mod_Trador_Teleport_A);
};

FUNC VOID Info_Mod_Trador_Teleport_C()
{
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_C_08_00"); //(smiech) Nie ma szansy. Jestem tylko gonna przywolac kilka golemów i ustawic je na ciebie. Moge wówczas spokojnie uciekac.
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_C_15_01"); //Nie jestem gonna, zeby to bylo az tak daleko.
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_C_08_02"); //Co ty z tym robisz, huh?

	Info_ClearChoices	(Info_Mod_Trador_Teleport);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Trador_Teleport_B()
{
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_B_15_00"); //Zamierzam cie zabic!

	Info_Mod_Trador_Teleport_C();
};

FUNC VOID Info_Mod_Trador_Teleport_A()
{
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_A_15_00"); //Co sie tu dzieje?
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_A_08_01"); //Uszkodzilem portal tak, ze wyladowales w tej samotnej dolinie z dwoma ubogimi ludzmi, którzy starali sie udaremnic nasze plany.
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_A_15_02"); //Spichlerz! Placisz za to!

	Info_Mod_Trador_Teleport_C();
};

INSTANCE Info_Mod_Trador_Buff (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Buff_Condition;
	information	= Info_Mod_Trador_Buff_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Buff_Condition()
{
	if (Mod_VMG_WSTrador == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Buff_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Buff_08_00"); //Co.....? Co próbujesz zrobic?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Trador_Setta (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Setta_Condition;
	information	= Info_Mod_Trador_Setta_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Setta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_TUG_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Setta_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Setta_08_00"); //arghhhhhhh.....
	AI_Output(hero, self, "Info_Mod_Trador_Setta_15_01"); //Teraz dostaniesz pelen guzik na ustach!
	AI_Output(self, hero, "Info_Mod_Trador_Setta_08_02"); //Nie poddam sie bez walki!

	AI_StopProcessInfos	(self);

	Wld_SpawnNpcRange (self, StoneGolem, 2, 1000);
};

INSTANCE Info_Mod_Trador_EXIT (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_EXIT_Condition;
	information	= Info_Mod_Trador_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trador_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trador_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
