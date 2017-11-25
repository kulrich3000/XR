INSTANCE Info_Mod_Wolf_Rotkaeppchen_Hi (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_Hi_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy potrafisz mnie zrozumiec?";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_Hi_Condition()
{
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_TIER] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_00"); //Czy potrafisz mnie zrozumiec?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_01"); //Czy wygladam slabo slysze?
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_02"); //Uh, nie. Sluchaj tej dziewczyny tamtejszej czuje sie, jakbys ja niepokoil.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_03"); //Nic dziwnego. Ja podazam za nim az skonczy mu sie energia i moge wykopac zeby w jego mlode cialo.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_04"); //To brzmi bardzo zle!
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_05"); //(nachdenklich) Ich weiß nicht, was "szkorbut" bedeutet. Aber es muss eine ähnliche Bedeutung wie "smakowity" haben.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_06"); //Jak moge zaoferowac Ci zastepstwo dla miesa dziewczyny?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_07"); //Nie chodzi tylko o jedzenie. Chce przezywac moje instynkty lowieckie i czuc sie komfortowo w moim ciele.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_08"); //Wiec co móglbys mi zaoferowac jako substytut?
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmMich (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego mnie nie zabierasz?";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_15_00"); //Dlaczego mnie nie zabierasz?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_01"); //Obiecuje pan, ze bedzie pan dobrym wyzwaniem.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_02"); //Wiec jestem gonna najpierw zjesc cie, a pózniej moze oszczedzic dziewczyne.

	AI_StopProcessInfos	(self);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_14);
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmSie (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapomnij o tym. Dobry apetyt.";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmSie_15_00"); //Zapomnij o tym. Dobry apetyt.

	B_KillNpc	(Mod_7556_OUT_Rotkaeppchen_REL);

	AI_GotoNpc	(self, Mod_7556_OUT_Rotkaeppchen_REL);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(3, 1);
};
