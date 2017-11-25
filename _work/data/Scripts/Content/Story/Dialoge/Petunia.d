INSTANCE Info_Mod_Petunia_Hi (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_Hi_Condition;
	information	= Info_Mod_Petunia_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Petunia_Hi_Condition()
{
	if (Mod_VMG_Pruefung_Barriere == 3)
	&& (Mod_IsFleischwanze == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Petunia_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_16_00"); //What? How did you get in here?

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Animal transformation. You weren't paying attention.", Info_Mod_Petunia_Hi_B);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "How did you get in here?", Info_Mod_Petunia_Hi_A);
};

FUNC VOID Info_Mod_Petunia_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_B_15_00"); //Animal transformation. You weren't paying attention.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_B_16_01"); //Damn, somebody fucked up that part! But thanks for the tip.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "What are you doing here?", Info_Mod_Petunia_Hi_D);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Who are you?", Info_Mod_Petunia_Hi_C);
};

FUNC VOID Info_Mod_Petunia_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_A_15_00"); //How did you get in here?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_A_16_01"); //I'm asking the questions here. I don't think you can afford to be rude, boy.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "What are you doing here?", Info_Mod_Petunia_Hi_D);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Who are you?", Info_Mod_Petunia_Hi_C);
};

FUNC VOID Info_Mod_Petunia_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_E_16_00"); //Now get out of my way, I'm busy.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "You can't, or did you forget the barrier?", Info_Mod_Petunia_Hi_G);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "I was actually planning to stop you.", Info_Mod_Petunia_Hi_F);
};

FUNC VOID Info_Mod_Petunia_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_D_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_D_16_01"); //Settle your doom! And then I'll have tea. I love tea.

	Mod_VMG_Pruefung_Petunia += 1;

	if (Mod_VMG_Pruefung_Petunia == 1)
	{
		Info_ClearChoices	(Info_Mod_Petunia_Hi);

		Info_AddChoice	(Info_Mod_Petunia_Hi, "Who are you?", Info_Mod_Petunia_Hi_C);		
	}
	else
	{
		Info_Mod_Petunia_Hi_E();
	};
};

FUNC VOID Info_Mod_Petunia_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_C_15_00"); //Who are you?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_C_16_01"); //My name doesn't matter, but I think my actions distinguish me.

	Mod_VMG_Pruefung_Petunia += 1;

	if (Mod_VMG_Pruefung_Petunia == 1)
	{
		Info_ClearChoices	(Info_Mod_Petunia_Hi);

		Info_AddChoice	(Info_Mod_Petunia_Hi, "What are you doing here?", Info_Mod_Petunia_Hi_D);		
	}
	else
	{
		Info_Mod_Petunia_Hi_E();
	};
};

FUNC VOID Info_Mod_Petunia_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_G_15_00"); //You can't, or did you forget the barrier?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_G_16_01"); //Almost. But that doesn't matter, then you just get out of the way. (giggles)

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Here we go, then.", Info_Mod_Petunia_Hi_I);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Wait, we can talk about anything.", Info_Mod_Petunia_Hi_H);
};

FUNC VOID Info_Mod_Petunia_Hi_J()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_16_00"); //The whole trap. The potion, the subsequent vision and the deposited petal. Simply everything!
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_J_15_01"); //Thanks for the information, I have to go.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_16_02"); //You don't think I'm just gonna let you go now? You know my plan, don't you?
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_J_15_03"); //That's what I thought...
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_16_04"); //That's funny, boy. Men, blow out his lights. (giggles)

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Petunia_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_F_15_00"); //I was actually planning to stop you.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_F_16_01"); //Oh, yeah? (laughs hysterically) Nobody can stop me now! It's all set!
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_F_15_02"); //What is prepared?

	Info_Mod_Petunia_Hi_J();
};

FUNC VOID Info_Mod_Petunia_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_I_15_00"); //Here we go, then.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_I_16_01"); //Get him, get him!

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Petunia_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_H_15_00"); //Wait, we can talk about anything.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_H_16_01"); //I don't want to talk. Besides, it doesn't work any more, it's too late.
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_H_15_02"); //What's too late?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_H_16_03"); //It's all set!

	Info_Mod_Petunia_Hi_J();
};

INSTANCE Info_Mod_Petunia_Pruefung (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_Pruefung_Condition;
	information	= Info_Mod_Petunia_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your sidekicks would be finished.";
};

FUNC INT Info_Mod_Petunia_Pruefung_Condition()
{
	if (Mod_VMG_Pruefung_Petunia == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Petunia_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_15_00"); //Your sidekicks would be finished.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_16_01"); //You're not as weak as you look.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_15_02"); //I think it's time you explained to me what's going on here.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_16_03"); //You know the plan. What else do you want to know?

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Now tell me who you are.", Info_Mod_Petunia_Pruefung_B);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Why all this?", Info_Mod_Petunia_Pruefung_A);
};

FUNC VOID Info_Mod_Petunia_Pruefung_C()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_16_00"); //The transforming mages have destroyed my life!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_16_01"); //I was one of them, but I was never treated as a full member. Probably because I'm a woman. Pah!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_16_02"); //Sooner or later I started working against them. It's that simple.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_C_15_03"); //What have they done to you?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_16_04"); //With the smallest offenses, they have already imposed the highest punishments on me. So unfair!

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "I totally understand that.", Info_Mod_Petunia_Pruefung_E);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Small punishments?", Info_Mod_Petunia_Pruefung_D);
};

FUNC VOID Info_Mod_Petunia_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_B_15_00"); //Now tell me who you are.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_B_16_01"); //My name is Petunia.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_B_15_02"); //Maybe a little more?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_B_16_03"); //Suit yourself. The whole story.

	Info_Mod_Petunia_Pruefung_C();
};

FUNC VOID Info_Mod_Petunia_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_A_15_00"); //Why all this?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_A_16_01"); //Why? I can tell you that!

	Info_Mod_Petunia_Pruefung_C();
};

FUNC VOID Info_Mod_Petunia_Pruefung_E()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_E_15_00"); //I totally understand that.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_E_16_01"); //Finally someone who understands me!

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "You're out of your mind.", Info_Mod_Petunia_Pruefung_G);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Totally. I'm gonna go talk to Per.", Info_Mod_Petunia_Pruefung_F);
};

FUNC VOID Info_Mod_Petunia_Pruefung_H()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_H_16_00"); //What do you think you're doing? I'll pour my heart out to you, and you'll let it trickle away in this miserable soil!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_H_16_01"); //What have I done to you?

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "", Info_Mod_Petunia_Pruefung_E);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "", Info_Mod_Petunia_Pruefung_D);
};

FUNC VOID Info_Mod_Petunia_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_00"); //Small punishments?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_D_16_01"); //Yeah. I accidentally roasted a herd of sheep or skinned wolves when I was cold. That's gotta be in there!
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_02"); //I don't think you have any idea what your felonies are.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_03"); //You can't leave such an unpredictable woman in the community.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "You've caused a lot of trouble for the change magicians, and thus for me, too.", Info_Mod_Petunia_Pruefung_J);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "What are you going to do now?", Info_Mod_Petunia_Pruefung_I);
};

FUNC VOID Info_Mod_Petunia_Pruefung_G()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_G_15_00"); //You're out of your mind.

	Info_Mod_Petunia_Pruefung_H();
};

FUNC VOID Info_Mod_Petunia_Pruefung_F()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_F_15_00"); //Totally. I'm gonna go talk to Per.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_F_16_01"); //Thank you so much, I'll never forget it!

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I promised Petunia I'd talk to Per about what to do now. She's not going to cause any trouble for the time being.");

	Mod_VMG_Pruefung_Petunia = 6;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

FUNC VOID Info_Mod_Petunia_Pruefung_J()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_J_15_00"); //You've caused a lot of trouble for the change magicians, and thus for me, too.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_J_16_01"); //Oh, come on. You straightened it all up, didn't you? You really can't blame me for that.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "What are you going to do now?", Info_Mod_Petunia_Pruefung_I);
};

FUNC VOID Info_Mod_Petunia_Pruefung_I()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_I_15_00"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_I_16_01"); //What am I supposed to do? You ruined everything. You know the plan.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_I_16_02"); //Go and do whatever you need to do now.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "I'll talk to Per about how to proceed.", Info_Mod_Petunia_Pruefung_L);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "I'll talk to Per about your punishment.", Info_Mod_Petunia_Pruefung_K);
};

FUNC VOID Info_Mod_Petunia_Pruefung_L()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_L_15_00"); //I'll talk to Per about how to proceed.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_L_16_01"); //Do that.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I promised Petunia I'd talk to Per about what to do now. She's not going to cause any trouble for the time being.");

	Mod_VMG_Pruefung_Petunia = 6;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

FUNC VOID Info_Mod_Petunia_Pruefung_K()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_K_15_00"); //I'll talk to Per about your punishment.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_K_16_01"); //If you think this is right....

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I'm going to tell Per that Petunia is behind it all and discuss with him how to get rid of them.");

	Mod_VMG_Pruefung_Petunia = 7;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

INSTANCE Info_Mod_Petunia_EXIT (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_EXIT_Condition;
	information	= Info_Mod_Petunia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Petunia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Petunia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
