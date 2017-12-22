INSTANCE Info_Mod_Shivar_Eisgebiet (C_INFO)
{
	npc		= Monster_11039_Shivar_EIS;
	nr		= 1;
	condition	= Info_Mod_Shivar_Eisgebiet_Condition;
	information	= Info_Mod_Shivar_Eisgebiet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_Eisgebiet_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_Eisgebiet_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_00"); //What? I didn't expect to find you here.
	AI_Output(hero, self, "Info_Mod_Shivar_Eisgebiet_15_01"); //What's going on here?
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_02"); //I prepare with creatures of Beliars the attack on the demons of the magician Xeres, who have gathered not far from here....
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_03"); //Well, your arrival increases our number and clout.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_04"); //We can use all the help we can get, because the buffalo demon who leads the creatures is almost on a par with me.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_05"); //And I heard rumors that no demon was able to banish him.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_06"); //Well, we're gonna put that to the test now.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_07"); //Get ready for battle, creatures of Beliars. Now is the time to strike and punish the traitors. For Beliar!

	AI_StopProcessInfos	(self);

	/*
	B_StartOtherRoutine	(self, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11041_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11042_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11043_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11044_Schrat_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11045_Schrat_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11046_Schrat_EIS, "ANGRIFF");
	*/
};

INSTANCE Info_Mod_Shivar_MahishaDead (C_INFO)
{
	npc		= Monster_11039_Shivar_EIS;
	nr		= 1;
	condition	= Info_Mod_Shivar_MahishaDead_Condition;
	information	= Info_Mod_Shivar_MahishaDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_MahishaDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shivar_Eisgebiet))
	&& (Npc_IsDead(Monster_11040_Mahisha_EIS))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shivar_MahishaDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_00"); //It is finished and the enemies are crushed. What a blessing, huahahaha...
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_01"); //What surprises me, however, is the fact that his demon aura only begins to become completely eruptive after your influence.
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_02"); //Well, well...
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_03"); //What about Beliar....
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_04"); //Ohh, damn it, not enough demon aura...
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_05"); //You.... you're not a demon at all, just a deception.
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_06"); //Um, it was necessary...
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_07"); //(interrupts) Shut up! Well, that's why only you were able to kill Mahisha.
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_08"); //(to the hero) Well, I'm ready to forgive you your transgression...
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_09"); //And now.... leave I don't want to spend too much time with you ordinary mortals. Beliar be with you.

	B_GivePlayerXP	(500);

	Mod_HeroDemonCounter = 10;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(Monster_11041_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11041_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11042_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11042_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11043_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11043_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11044_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11044_Schrat_EIS, "TOT");

	AI_Teleport	(Monster_11045_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11045_Schrat_EIS, "TOT");

	AI_Teleport	(Monster_11046_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11046_Schrat_EIS, "TOT");
};
