INSTANCE Info_Mod_Keroloth_Mario (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_Mario_Condition;
	information	= Info_Mod_Keroloth_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keroloth_Mario_Condition()
{
	if (Mod_Mario == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keroloth_Mario_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario_15_00"); //(smieci) Nie!
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario_07_01"); //Musze powiedziec, ze zasluguje na to juz teraz.
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario_15_02"); //Dlaczego....?
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario_07_03"); //Ogólnie rzecz biorac, mam na mysli. I on nie powinien byl pozwolic Garondowi go sprowokowac.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_500_PAL_Garond_NW, "FOLLOW");
	//B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Keroloth_Mario2 (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_Mario2_Condition;
	information	= Info_Mod_Keroloth_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keroloth_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	&& (Npc_IsDead(Mod_500_PAL_Garond_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keroloth_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_00"); //Damn, to wystarczy pojedynki!
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_01"); //W przeciwnym razie za kilka dni nie bedziemy mieli mezczyzn!
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario2_15_02"); //Nie martw sie o to.
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_03"); //Nie martw sie o to, czlowiek. Kto....? Teraz usun ciala i cala krew?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Keroloth_EXIT (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_EXIT_Condition;
	information	= Info_Mod_Keroloth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Keroloth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Keroloth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
