INSTANCE Info_Mod_Thys_Hi (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Hi_Condition;
	information	= Info_Mod_Thys_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Hi_07_00"); //What are you doing here?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "I'm looking for a certain spell.", Info_Mod_Thys_Hi_B);

	if (VMG_Second == 6)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		Info_AddChoice	(Info_Mod_Thys_Hi, "I brought you something.", Info_Mod_Thys_Hi_A);
	};
};

FUNC VOID Info_Mod_Thys_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_B_15_00"); //I'm looking for a certain spell.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_B_07_01"); //Why would I help you?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "What do you want me to do?", Info_Mod_Thys_Hi_D);
	Info_AddChoice	(Info_Mod_Thys_Hi, "Because I'll slit your throat.", Info_Mod_Thys_Hi_C);
};

FUNC VOID Info_Mod_Thys_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_D_15_00"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Thys_Hi_D_07_01"); //Bring me something to eat. And drink. Two bottles of wine and a loaf of bread should do for now.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I'm supposed to give Tony's two bottles of wine and a loaf of bread before he talks to me.");

	VMG_Second = 7;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

FUNC VOID Info_Mod_Thys_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_00"); //Because I'll slit your throat.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_C_07_01"); //Try it, buster.
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_02"); //I don't want any trouble. Just a spell.

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "What do you want me to do?", Info_Mod_Thys_Hi_D);
};

FUNC VOID Info_Mod_Thys_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_A_15_00"); //I brought you something.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Hi_A_07_01"); //Ah, you know our customs. What can I do for you?

	VMG_Second = 8;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

INSTANCE Info_Mod_Thys_HabEssen (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_HabEssen_Condition;
	information	= Info_Mod_Thys_HabEssen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got your things.";
};

FUNC INT Info_Mod_Thys_HabEssen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 7)
	&& (Npc_HasItems(hero, ItFo_Bread) > 0)
	&& (Npc_HasItems(hero, ItFo_Wine) > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_HabEssen_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_HabEssen_15_00"); //I got your things.

	B_ShowGivenThings	("Two wine and a loaf of bread");

	AI_Output(self, hero, "Info_Mod_Thys_HabEssen_07_01"); //Thank you very much. What can I do for you now?

	VMG_Second = 8;
};

INSTANCE Info_Mod_Thys_Zauber (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Zauber_Condition;
	information	= Info_Mod_Thys_Zauber_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a metamorphosis spell. To the meat bug.";
};

FUNC INT Info_Mod_Thys_Zauber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Zauber_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_00"); //I'm looking for a metamorphosis spell. To the meat bug.
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_01"); //I can help you with that. I happen to have one here. However, it is not free of charge.
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_02"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_03"); //I'm pretty lonely here. Bring me someone from the village to entertain me.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Thys wants me to bring him someone from the village to talk to.");
};

INSTANCE Info_Mod_Thys_Scroll (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Scroll_Condition;
	information	= Info_Mod_Thys_Scroll_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Scroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Zauber))
	&& (VMG_Second == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Scroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_00"); //Ah, good! So you want the metamorphosis spell that turns you into a meat bug?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_02"); //All right, you can have him. Here.

	CreateInvItems	(self, ItSc_TrfMeatbug, 1);
	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_03"); //Take care of it.
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_04"); //Thank you very much. But how do I get out of here?
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_05"); //Did you get through the portal?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_06"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_07"); //All clear. I'll tell you about a way to help me... let's say bring a fish.

	Info_ClearChoices	(Info_Mod_Thys_Scroll);

	Info_AddChoice	(Info_Mod_Thys_Scroll, "Okay.", Info_Mod_Thys_Scroll_B);
	Info_AddChoice	(Info_Mod_Thys_Scroll, "Forget about it.", Info_Mod_Thys_Scroll_A);
};

FUNC VOID Info_Mod_Thys_Scroll_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_B_15_00"); //Okay.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_B_07_01"); //What are you waiting for?

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I'm supposed to bring Thys a fish so he can tell me how to get me out of here.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

FUNC VOID Info_Mod_Thys_Scroll_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_00"); //Forget about it.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_A_07_01"); //So you don't care so much about the part of spell?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_02"); //Yes, yes, yes. I'll bring your fish.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I'm supposed to bring Thys a fish so he can tell me how to get me out of here.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

INSTANCE Info_Mod_Thys_Fisch (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Fisch_Condition;
	information	= Info_Mod_Thys_Fisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Fisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Scroll))
	&& (VMG_Second == 10)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Fisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_00"); //You got the fish?
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_15_01"); //Yes, here.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_02"); //Oh, nice. So here's the thing: You just go back to the portal and say the following words: Aman rabbah kolir! That's all.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I should go back to the stone circle and say the words' Aman rabbah kolir'.");

	Info_ClearChoices	(Info_Mod_Thys_Fisch);

	Info_AddChoice	(Info_Mod_Thys_Fisch, "Thank you very much. I'm on my way.", Info_Mod_Thys_Fisch_B);
	Info_AddChoice	(Info_Mod_Thys_Fisch, "That's all? You're kidding me.", Info_Mod_Thys_Fisch_A);
};

FUNC VOID Info_Mod_Thys_Fisch_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_B_15_00"); //Thank you very much. I'm on my way.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_B_07_01"); //Goodbye and thanks for the fish!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

FUNC VOID Info_Mod_Thys_Fisch_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_00"); //That's all? You're kidding me.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_01"); //No. Find out for yourself.
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_02"); //I will, I will.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_03"); //Goodbye and thanks for the fish!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

INSTANCE Info_Mod_Thys_AlvarDead (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead_Condition;
	information	= Info_Mod_Thys_AlvarDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard you were brought the diary of different Alvar?";
};

FUNC INT Info_Mod_Thys_AlvarDead_Condition()
{
	if (Mod_AlvarDead == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_00"); //I heard you were brought the diary of different Alvar?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_01"); //Yeah, that's right. Why do you ask?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_02"); //Well, I have a suspicion and it might help to clarify things if I could take a quick look inside.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_03"); //Suspicion? What are you talking about? Explain yourself!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_04"); //Yes, I have every reason to believe that there is more to his death... more than just snow ghosts.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_05"); //And his diary is supposed to help you with that? All right, let's take a quick look inside.

	B_GiveInvItems	(self, hero, ItWr_AlvarTagebuch2, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarDead2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead2_Condition;
	information	= Info_Mod_Thys_AlvarDead2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The last page was torn out and the text is new.";
};

FUNC INT Info_Mod_Thys_AlvarDead2_Condition()
{
	if (Mod_AlvarDead == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_00"); //The last page was torn out and the text is new.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_01"); //What?! How do you get to that assertion? How do you know that?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_02"); //Well, because I stole it on behalf of Serra and Malfama not many hours ago.... before Alvar was killed.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_03"); //Stolen on the instructions of these two blameless women? Do you realize how outrageous these accusations sound?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_04"); //All the more so as they suffered so much from the reconstructions of Alvar.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_05"); //But it's the truth.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_06"); //The only truth in court is that which is proven.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_07"); //And did I only misinterpret when you were trying to make a connection to Alvar's demise?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_08"); //Yeah, that's what I wanted.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_09"); //(fighting for air) The... this is....
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_10"); //It's true what I'm saying! I brought them the diary.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_11"); //In this, Alvar had revealed something of a magical crystal hidden in his armor to protect him from the snow ghosts.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_12"); //And today he was killed by them? Can this be a coincidence?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_13"); //(still excited) It... (stops inside, paused) let me think briefly.... It sounds too incredible...
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_14"); //Well, a torn out page as a ridiculous clue.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_15"); //And then your testimony, the claims of a stranger accusing two respected, religious and innocent women of complicity in murder. This is outrageous.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_16"); //You're starting out like crazy Alvar.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_17"); //How? What do you think?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_18"); //ch, the lunatic has spread bad news about the two of them for some time, claiming that they are.... Doesn't matter, it doesn't matter anymore.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_19"); //What exactly did he tell you?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_20"); //I will certainly not continue to revive his evil slander.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_21"); //What was to be thought of his statements, we see here in the diary.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_22"); //But if there was something about it?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_23"); //You're not letting up, are you? If you want to substantiate your impossible assertions, you should do so with evidence...
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_24"); //Exhibits? Like what, for example?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_25"); //If you're looking for evidence, Alvar's armor would be a good start.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_26"); //But you know it won't be harmless. You're doing it at your own risk.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_27"); //Yeah, I don't really have a choice.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_28"); //Yeah, do what you think you have to do. Alvar's body was sighted on a mountain northeast of here.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_29"); //Now you know where to go. Even if I don't approve of the whole thing.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Thys wasn't exactly very open-minded about supporting me on this case. I'll probably have to salvage Alvar's armor. I'll find the body northeast of the village on a mountain.");

	Wld_InsertNpc	(Mod_7562_OUT_Alvar_EIS,	"EIS_268");

	B_KillNpc	(Mod_7562_OUT_Alvar_EIS);
};

INSTANCE Info_Mod_Thys_AlvarDead3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead3_Condition;
	information	= Info_Mod_Thys_AlvarDead3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the armor.";
};

FUNC INT Info_Mod_Thys_AlvarDead3_Condition()
{
	if (Mod_AlvarDead == 4)
	&& (Npc_HasItems(hero, ItAr_FakeArmor_Alvar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead3_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_00"); //I have the armor.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_01"); //Really what? Let me see that.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_02"); //Actually, something hard is sewn into it.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_03"); //Hold on a second. It's a simple stone.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_04"); //There you go. Serra and Malfama read about the crystal and dipped it through a simple stone.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_05"); //Yeah, the armor could be an indication of that. But not any more.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_06"); //What else can I do?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_07"); //Well, the crystal must have been in the armor once, according to your speculations. Find him!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_08"); //Hmm, he could be anywhere. If only something could help me in my search....
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_09"); //So we once had an amulet that was able to detect objects. It came from the....
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_10"); //(interrupts) Of course, that ore amulet of the searching Night Wisp.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_11"); //You're in possession of one of these? Then it shouldn't be a problem for you to track down a magic crystal.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_12"); //Magic energy can make such amulets as well known particularly well visible.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_13"); //So you know how to proceed.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Now I must try to find the crystal with the help of the amulet.");

	B_GivePlayerXP	(300);

	Wld_InsertItem	(ItMi_AlvarKristall, "FP_ITEM_ALVARKRISTALL");
};

INSTANCE Info_Mod_Thys_AlvarKristall (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall_Condition;
	information	= Info_Mod_Thys_AlvarKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall_Condition()
{
	if (Mod_AlvarKristall == 1)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_00"); //Um, some upset villagers have just come to me, as you see yourself.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_01"); //They make bad accusations against you. Besides, they also found out about your research.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall_15_02"); //Now that I have the magic crystal, the truth should finally come to light.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarKristall2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall2_Condition;
	information	= Info_Mod_Thys_AlvarKristall2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall2_Condition()
{
	if (Mod_AlvarKristall == 3)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall2_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall2_07_00"); //What's that means-- of course. Everything that has been in contact with the crystal has some of this magical energy attached to it for a certain time.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall2_15_01"); //And Serra's hands are shining. That's proof that she stole the crystal from the armor to commit Alvar to certain death.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_Eriskult (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Eriskult_Condition;
	information	= Info_Mod_Thys_Eriskult_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Eriskult_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Eriskult_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_00"); //My consciousness was awake the whole time.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_01"); //Only because of the witch magic, I wasn't able to move and communicate.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_02"); //So I have certainly heard what has happened here.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_03"); //The community of the village is deeply indebted to you both.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_04"); //Without you and Alvar, the village would have been doomed.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_05"); //I'll take a look at the iniquity of the corpse.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_06"); //But tell me, how did you succeed in loosening the tongues of the deceptive women?
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_07"); //Through a crystal that comes from Inno's tears. I have him here.... but, wait a minute. He's all wet.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_08"); //A tear crystal? Really?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_09"); //Yes, I've heard of it before, but I thought it was a simple legend. Impressive.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_10"); //But now it seems to return to the shape of tears, as it is outside the cave and its surroundings.
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_11"); //Can the process be stopped?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_12"); //I don't know how.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "START");
	B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "START");

	Npc_RemoveInvItems	(hero, ItMi_Traenenkristall, 1);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_SUCCESS);

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister_Condition;
	information	= Info_Mod_Thys_Schneegeister_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard that the snow ghosts had not always besieged the surroundings of the village...";
};

FUNC INT Info_Mod_Thys_Schneegeister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Schneegeister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_00"); //I heard that the snow ghosts had not always besieged the surroundings of the village... do you know more about their origin?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_01"); //The snow ghosts? Oh, that's a mysterious story.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_02"); //I was just a kid when they started haunting the neighborhood.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_03"); //Her background? Nobody knows for sure.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_04"); //Over the years, we have adapted to the dangers they pose.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_05"); //But what assumptions are there about its origin?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_06"); //I heard that some people blame the gods, or magical beings.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_07"); //Oh, when people can't find an explanation for things, they think up all sorts of things.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_08"); //Of course it could be the gods. But so is the labby man.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_09"); //It's just not something for which there is any circumstantial evidence...
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_10"); //I see... I also heard that someone was once banished from the village....
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_11"); //Ahh, the story. You're talking about Skamp. A young man back then.... almost six decades ago.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_12"); //Yes, he is said to have entered into darkness, made incantations and united with wicked woman.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_13"); //In short, he didn't have the best reputation and was banished from the village.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_14"); //A few months later the first snow ghosts appeared. Whether it's related to that.... i don't know.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_15"); //And where did he go?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_16"); //Finally, someone wants to have seen him at the big lake.... and then he was swallowed to death.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_17"); //But, as I said, it's been a long, long time since everything... and probably without meaning.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Thys doesn't think much of most speculations about the involvement of gods. He also mentioned a young man who is said to have gotten involved with dark powers and was banished from the village. He was last seen at the frozen lake. All of this, however, was more than 60 years ago and - according to Thys opinion - probably without any context to the snow ghosts.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister2_Condition;
	information	= Info_Mod_Thys_Schneegeister2_Info;
	permanent	= 0;
	important	= 0;
	description	= "By the lake I found a cave with snow ghosts.";
};

FUNC INT Info_Mod_Thys_Schneegeister2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister))
	&& (Mod_Thys_Schneegeister == 2)
	&& (Npc_HasItems(hero, ItWr_Schneegeister) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_00"); //By the lake I found a cave with snow ghosts.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_01"); //Among them was an undead man who had this note with him.

	B_GiveInvItems	(hero, self, ItWr_Schneegeister, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_02"); //What do you say?

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_03"); //Not possible!

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_04"); //Incredible! If that's true, the undead could actually have been Skamp. And you destroyed him?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_05"); //That's how it is.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_06"); //That would explain why I felt a strong change in the magical environment.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_07"); //It can be inferred from the letter that he sought the connection with demonic powers to direct and control them.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_08"); //However, it seems that he was not up to them and they took possession of him.... or someone set him up.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_09"); //Be that as it may, it is likely that he was actually the cause of the snow ghosts... and from now on we won't be bothered by their hustle and bustle.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_10"); //This is another invaluable service to our community.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_11"); //How can I repay you? Hmm, I'm sure I'll come up with something by tomorrow.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Since the village is now spared from further reconstructions of the snow ghosts, Thys wants to give me a present tomorrow.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Thys_Schneegeister3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister3_Condition;
	information	= Info_Mod_Thys_Schneegeister3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Schneegeister3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister2))
	&& (Wld_GetDay() > Mod_Thys_Schneegeister_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_00"); //Ahh, there you are again.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_01"); //Since you're always on dangerous paths, I have this protective talisman for you.

	B_GiveInvItems	(self, hero, ItTa_Behueter, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_02"); //Once attached to the belt, it will not only increase your resistance, but will also conjure up a Night Wisp for a small part of your mana.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_03"); //This will cause confusion to all creatures around you and direct attacks on itself.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_04"); //May it guard you on your ways.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_AlvarKristall3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall3_Condition;
	information	= Info_Mod_Thys_AlvarKristall3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall3_Condition()
{
	if (Mod_AlvarKristall >= 4)
	&& (Mod_AlvarKristall < 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall3_07_00"); //I'm sorry about that. The majority of the village has come out in favor of expelling you. My hands are tied.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_GobboBeschwoerer (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_GobboBeschwoerer_Condition;
	information	= Info_Mod_Thys_GobboBeschwoerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "You wanted to see me?";
};

FUNC INT Info_Mod_Thys_GobboBeschwoerer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_GobboBeschwoerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_GobboBeschwoerer_15_00"); //You wanted to see me?
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_01"); //Yes, you saved our city from an attack and put the welfare of others before yours.
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_02"); //As a reward you shall receive this ring. It increases your life force.

	B_GiveInvItems	(self, hero, ItRi_Hp_03, 1);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_03"); //And take these 250 gold pieces.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_04"); //May both help you on your journey.

	B_SetTopicStatus	(TOPIC_MOD_EIS_FRIEDHOF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_Pickpocket (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Pickpocket_Condition;
	information	= Info_Mod_Thys_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Thys_Pickpocket_Condition()
{
	C_Beklauen	(172, ItPl_Winterrute, 7);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_BACK, Info_Mod_Thys_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Thys_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Thys_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
};

FUNC VOID Info_Mod_Thys_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Thys_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Thys_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Thys_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Thys_EXIT (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_EXIT_Condition;
	information	= Info_Mod_Thys_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Thys_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Thys_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
