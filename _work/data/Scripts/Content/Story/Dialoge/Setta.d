INSTANCE Info_Mod_Setta_Hi (C_INFO)
{
	npc		= Mod_7360_OUT_Setta_WS;
	nr		= 1;
	condition	= Info_Mod_Setta_Hi_Condition;
	information	= Info_Mod_Setta_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Setta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Setta_Hi_16_00"); //Hey!

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Setta_Hi_16_01"); //My name is Setta. I've been living here for a few years, I live here.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_15_02"); //How did you get here?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_16_03"); //I don't remember exactly. Where are you from, where are you from?

	Info_ClearChoices	(Info_Mod_Setta_Hi);

	Info_AddChoice	(Info_Mod_Setta_Hi, "I'm from the Minental. You ever heard of it?", Info_Mod_Setta_Hi_B);
	Info_AddChoice	(Info_Mod_Setta_Hi, "I flew in from above.", Info_Mod_Setta_Hi_A);
};

FUNC VOID Info_Mod_Setta_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_00"); //I'm from the Minental. You ever heard of it?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_16_01"); //As a matter of fact, I have. If I recall correctly, that's where I come from, too. Is the...? Barrier still there?
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_02"); //No, she's gone. And I wasn't completely uninvolved.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_16_03"); //Wow, a real hero. In my humble cabin. What can I do for you, can I do?
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_04"); //How do I get out of here?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_16_05"); //I can't tell you, I can't, because I don't know myself. Otherwise I probably wouldn't be here.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_06"); //Don't you have any ideas?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_16_07"); //Hm, now that you're saying it. Why don't you ask the old Buff? He lives in a tent down the way, he lives.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_08"); //Thanks for the information.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_16_09"); //You're welcome, hihi.

	Info_ClearChoices	(Info_Mod_Setta_Hi);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I have landed in a strange valley from which there seems to be no escape. Curiously, I still have the recharge stone. Maybe he'll get me out of here. The hermitess Setta advised me to contact the old Buff.");
};

FUNC VOID Info_Mod_Setta_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Setta_Hi_A_15_00"); //I flew in from above.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_A_16_01"); //Oh, like a bird? I love birds, I love birds. But I can screw myself alone, I can. I'm not as shaky as I look.

	Info_Mod_Setta_Hi_B();
};

INSTANCE Info_Mod_Setta_EXIT (C_INFO)
{
	npc		= Mod_7360_OUT_Setta_WS;
	nr		= 1;
	condition	= Info_Mod_Setta_EXIT_Condition;
	information	= Info_Mod_Setta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Setta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
