INSTANCE Info_Mod_Argibast_Hi (C_INFO)
{
	npc		= GardeInnos_4050_Argibast;
	nr		= 1;
	condition	= Info_Mod_Argibast_Hi_Condition;
	information	= Info_Mod_Argibast_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argibast_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argibast_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_00"); //Cóz, spójrz, kto jest tutaj. Pomógles tym wyznawcom Beliaranu zniszczyc nasz pierscien oblezenia. Placisz za to w imieniu Innos!
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_01"); //Wylaczyc sie, zrodziles pieklo! Nie sluzycie Innosowi, ale wy sami!
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_02"); //Jak smiesz....?
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_03"); //Zatrzymam cie w imieniu Beliars!
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_04"); //Zrób to. Nawet jesli mnie pokonasz, co nigdy sie nie zdarzy, nie mozesz powstrzymac innych.
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_05"); //Wkrótce znajda miecz Innosa' a!
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_06"); //Co?
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_07"); //Twoja podróz konczy sie tutaj, maly czlowiek!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	B_LogEntry	(TOPIC_MOD_BEL_GARDEINNOS, "Argibast, czlonek Strazy Innoskiej, powiedzial nam, ze inni straznicy szukaja miecza Innos. To nie brzmi dobrze.");

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
