INSTANCE Info_Mod_Blutkultmagier_Hi (C_INFO)
{
	npc		= Mod_4097_BlutkultMagier_NW;
	nr		= 1;
	condition	= Info_Mod_Blutkultmagier_Hi_Condition;
	information	= Info_Mod_Blutkultmagier_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Blutkultmagier_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Blutkultmagier_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_00"); //Ahhhhh. Prosze spojrzec, kto jest tutaj. Mezczyzna, który chce zdobyc klucz do uratowania magów wody z Gwardii Innoskiej.
	AI_Output(hero, self, "Info_Mod_Blutkultmagier_Hi_15_01"); //Skad to wiesz?
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_02"); //(smiech) Glupiejesz. Straznik i my zawarlismy pakt. W zamian wspieramy ich i dziesiatkuja ubogich zapasników Adanosa, dajac nam dostep do ofiar naszych krwawych rytualów.
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_03"); //Wykradzilismy im klucz, a reszta odzyska miecz Inno. Zamierzam cie zatrzymac, zebys nie przeszkadzal.
	AI_Output(hero, self, "Info_Mod_Blutkultmagier_Hi_15_04"); //Przyjedz tutaj.
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_05"); //Wkrótce Twoja glowa zostanie podana na tacy strazników. UMRZEC, NIEWIERNY!

	AI_StopProcessInfos	(self);

	Mod_4092_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4092_BlutkultKrieger_NW, GIL_STRF);

	Mod_4093_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4093_BlutkultKrieger_NW, GIL_STRF);

	Mod_4094_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4094_BlutkultKrieger_NW, GIL_STRF);

	Mod_4095_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4095_BlutkultKrieger_NW, GIL_STRF);

	Mod_4096_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4096_BlutkultKrieger_NW, GIL_STRF);

	Mod_4097_BlutkultMagier_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4097_BlutkultMagier_NW, GIL_STRF);
};
