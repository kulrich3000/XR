INSTANCE Info_Mod_Bshydal_Hi (C_INFO)
{
	npc		= Mod_7315_BK_Bshydal_AW;
	nr		= 1;
	condition	= Info_Mod_Bshydal_Hi_Condition;
	information	= Info_Mod_Bshydal_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bshydal_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bshydal_Hi_Info()
{
	AI_TurnToNpc	(self, GardeInnos_4099_Josephina);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_00"); //Fools, I only made you my tool.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_01"); //You were so blind with fanatic zeal that I could guide you according to my will without you noticing.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_02"); //Hahaha. The power that I have bestowed upon you, I will now take up again.... and the rest of your strength.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_03"); //What?! How did you get in here? Well, it doesn't matter now.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_04"); //In the chest right here is the artifact, the sword Innos.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_02_05"); //Buahaha, we will banish Beliar and become so powerful by shaking the balance that even Innos can't touch us any more.

	B_SetTopicStatus	(TOPIC_MOD_BEL_GARDEINNOS, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Bshydal_Hi);

	Info_AddChoice	(Info_Mod_Bshydal_Hi, "Go ahead, you won the race and earned your sword.", Info_Mod_Bshydal_Hi_B);
	Info_AddChoice	(Info_Mod_Bshydal_Hi, "No, you can't do that.", Info_Mod_Bshydal_Hi_A);
};

FUNC VOID Info_Mod_Bshydal_Hi_C()
{
	AI_UseMob (self, "CHEST", 1);
	AI_UseMob (self, "CHEST", -1);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_00"); //(scared) Like, what... no-- that can't be.
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_01"); //Huh, what's going on now?
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_02"); //It... it's impossible to keep the records, it was all true. Fraud, deception, treason!
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_03"); //Ohh, apparently he didn't find what he was hoping for.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_04"); //Damn it, it can't be. No, no, arrrrghhhhh...
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_C_15_05"); //He seems pretty pissed off now.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_06"); //Yeah, it was you, it must have been you, you stole it.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_C_02_07"); //I'll chop you in a thousand pieces and take the sword at me (buckling) and then.... Yes, I will rule the world. Die!
	
	Info_ClearChoices	(Info_Mod_Bshydal_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Bshydal_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_B_15_00"); //Go ahead, you won the race and earned your sword.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_B_02_01"); //(irritated) How... uh, what?
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_B_15_02"); //Yes, it was a long and tenacious struggle for the sword that you chose. So you are also the worthy bearer of the sword.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_B_02_03"); //What are you doing...? Whatever. I'm taking the gun now. (with compelled and bare laughter) Haha.
	
	Info_Mod_Bshydal_Hi_C();
};

FUNC VOID Info_Mod_Bshydal_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_A_15_00"); //No, you can't do that. You would do unimaginable harm to the world.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_A_02_01"); //Hahaha, your whining won't stop me.
	AI_Output(self, hero, "Info_Mod_Bshydal_Hi_A_02_02"); //In return, you will have the honour of being the first to die through the weapon.... before your master.
	AI_Output(hero, self, "Info_Mod_Bshydal_Hi_A_15_03"); //Nope...
	
	Info_Mod_Bshydal_Hi_C();
};

INSTANCE Info_Mod_Bshydal_NichtTot (C_INFO)
{
	npc		= Mod_7316_BK_Bshydal_AW;
	nr		= 1;
	condition	= Info_Mod_Bshydal_NichtTot_Condition;
	information	= Info_Mod_Bshydal_NichtTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bshydal_NichtTot_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bshydal_NichtTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Bshydal_NichtTot_02_00"); //Hehehehe....
	AI_Output(hero, self, "Info_Mod_Bshydal_NichtTot_15_01"); //Like, what, I just met you--
	AI_Output(self, hero, "Info_Mod_Bshydal_NichtTot_02_02"); //Hit him? Fool, I have the power of Inno's Guard in me. That makes me almost immortal.
	AI_Output(hero, self, "Info_Mod_Bshydal_NichtTot_15_03"); //This strength and power... overwhelming. Arrghhhhh.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
