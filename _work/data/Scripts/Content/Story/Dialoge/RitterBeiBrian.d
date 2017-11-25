INSTANCE Info_Mod_RitterBeiBrian_Daemonisch (C_INFO)
{
	npc		= Mod_1248_RIT_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_RitterBeiBrian_Daemonisch_Condition;
	information	= Info_Mod_RitterBeiBrian_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RitterBeiBrian_Daemonisch_Condition()
{
	if (Mod_HQ_BrianDaemonisch == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_00"); //Bardzo dobrze, dostalismy go.
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_15_01"); //Co Pan zrobil, dlaczego go zabil?
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_02"); //On.... byl pozadanym zabójca. Uwazalismy go za to, co zrobil.
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_15_03"); //Po prostu rozstawione kusza.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_04"); //Wylaczyc! O czym Pan mówil? Czy wymienil nazwiska?
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_11_05"); //Musi nam pan powiedziec wszystko, co powiedzial. Moze mial wspólników....

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Brian wydawal sie bardzo przerazony i chcial cos zglosic o miescie. Jednak zostal wyslany na wieczne tereny lowieckie przez rycerza. Z umierajac wspomnial o Rupercie i ostrzegl mnie przed ciemnoscia.");

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	Info_AddChoice	(Info_Mod_RitterBeiBrian_Daemonisch, "Nie, znalazlem go tutaj, a potem sie pojawiles.", Info_Mod_RitterBeiBrian_Daemonisch_B);
	Info_AddChoice	(Info_Mod_RitterBeiBrian_Daemonisch, "Chcial mi cos powiedziec o miescie i powiedzial, ze czuwa nad ciemnoscia.", Info_Mod_RitterBeiBrian_Daemonisch_A);
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_B()
{
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_B_15_00"); //Nie, znalazlem go tutaj, a potem sie pojawiles.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_B_11_01"); //To jest zbyt zle. No cóz, tak czy owak. Innos, powitanie.

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1248_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1249_RIT_Ritter_NW, "START");
	B_StartOtherRoutine	(Mod_1250_RIT_Ritter_NW, "START");
};

FUNC VOID Info_Mod_RitterBeiBrian_Daemonisch_A()
{
	AI_Output(hero, self, "Info_Mod_RitterBeiBrian_Daemonisch_A_15_00"); //Chcial mi cos powiedziec o miescie i powiedzial, ze czuwa nad ciemnoscia. Wspomnial równiez o Rupercie....
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_A_11_01"); //Tak, czy dostal to....? Cóz, nie dziwi, ze spotkales sie z nim tutaj.
	AI_Output(self, hero, "Info_Mod_RitterBeiBrian_Daemonisch_A_11_02"); //Musisz byc wspólnikiem zabójcy.... a mordercy musza byc osadzeni natychmiast.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Rycerze, którzy zabili Briana próbowali mnie zabic po tym, jak dalem im to, co Brian mi powiedzial.");

	Info_ClearChoices	(Info_Mod_RitterBeiBrian_Daemonisch);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	Mod_HQ_BrianDaemonisch = 2;
};
