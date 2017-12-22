INSTANCE Info_Mod_Emerin_Stollen (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_Stollen_Condition;
	information	= Info_Mod_Emerin_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Emerin_Stollen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grubuz_Stollen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_00"); //What? Where did you come from?
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_15_01"); //I should probably ask you that.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_02"); //I live down here. The orcs broke through down here a few days ago, and I had to chase them away somehow.
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_15_03"); //So you're a necromancer?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_12_04"); //Yeah, you could say that.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Then I'll have to kill you.", Info_Mod_Emerin_Stollen_B);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Do you understand the transformation magic?", Info_Mod_Emerin_Stollen_A);
};

FUNC VOID Info_Mod_Emerin_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_B_15_00"); //Then I'll have to kill you.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_B_12_01"); //What have I done to you?

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "I made it my business to kill necromancers.", Info_Mod_Emerin_Stollen_C);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "It was just a joke.", Info_Mod_Emerin_Stollen_D);
};

FUNC VOID Info_Mod_Emerin_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_A_15_00"); //Do you understand the transformation magic?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_A_12_01"); //Of course it is. I was once a respected member of the Tugettso Metamagic Circle.
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_A_15_02"); //Why aren't you anyone anymore?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_A_12_03"); //It's a long story.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Short version, please.", Info_Mod_Emerin_Stollen_F);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "I've got time.", Info_Mod_Emerin_Stollen_E);
};

FUNC VOID Info_Mod_Emerin_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_D_15_00"); //It was just a joke.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Did you guys happen to find a tunnel here?", Info_Mod_Emerin_Stollen_A);
};

FUNC VOID Info_Mod_Emerin_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_C_15_00"); //I made it my business to kill necromancers.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_C_12_01"); //Well, in that case....

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Emerin_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_G_15_00"); //So you're still capable of transforming yourself, or at least creating roles of transformation?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_01"); //Of course, of course. Magic is not easy to forget. What can I do for you?
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_G_15_02"); //I'm looking for the metamorphosis spell to harpie.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_03"); //Oh, I don't have any of that anymore. But you can get me the ingredients I need to make one.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_G_12_04"); //Are you interested?

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "In the tunnels I met a former magician of transformation, who seems to deal very thoroughly with the necromancy, the necromancy.");

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);

	Info_AddChoice	(Info_Mod_Emerin_Stollen, "There's something I want to do first.", Info_Mod_Emerin_Stollen_I);
	Info_AddChoice	(Info_Mod_Emerin_Stollen, "Sure. What should I get you?", Info_Mod_Emerin_Stollen_H);
};

FUNC VOID Info_Mod_Emerin_Stollen_I()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_I_15_00"); //There's something I want to do first.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_I_12_01"); //Come back if you're interested.

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);
};

FUNC VOID Info_Mod_Emerin_Stollen_H()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_H_15_00"); //Sure. What should I get you?
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_H_12_01"); //I need two wings of a blood fly, a sheet of paper - and a profile too - and a mana essence.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "The Necromancer Emerin needs two wings of a blood fly, a sheet of paper and a mana essence for the production of the saying role 'Transformation Harpie'.");

	Mod_Hermy_KnowsQuest = 4;

	Info_ClearChoices	(Info_Mod_Emerin_Stollen);
};

FUNC VOID Info_Mod_Emerin_Stollen_E()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_E_15_00"); //I've got time.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_01"); //I discovered that the teachings of the others were wrong. The path they took was wrong.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_02"); //But when I tried to convince them, they didn't believe me. They cast me out of their community.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_03"); //So I wandered around and learned little by little that the incantation is far ahead of transformation.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_04"); //I visited great masters who are probably dead by now and learned a lot about necromancy.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_05"); //Soon afterwards I discovered this tunnel and made it habitable for me before I closed it.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_E_12_06"); //But then the orcs came and forced me to defend the tunnel.

	Info_Mod_Emerin_Stollen_G();
};

FUNC VOID Info_Mod_Emerin_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Stollen_F_15_00"); //Short version, please.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_F_12_01"); //After the metamorphosis mages had cast me out because of my insight into the falseness of their teachings, I wandered around for days and learned a lot about necromancy from great masters, who are now probably dead.
	AI_Output(self, hero, "Info_Mod_Emerin_Stollen_F_12_02"); //Afterwards I set up this tunnel and closed it before the orcs set it up again and forced me to defend the tunnel.

	Info_Mod_Emerin_Stollen_G();
};

INSTANCE Info_Mod_Emerin_Zutaten (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_Zutaten_Condition;
	information	= Info_Mod_Emerin_Zutaten_Info;
	permanent	= 0;
	important	= 0;
	description	= "What should I get you?";
};

FUNC INT Info_Mod_Emerin_Zutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Emerin_Stollen))
	&& (Mod_Hermy_KnowsQuest < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_Zutaten_Info()
{
	AI_Output(hero, self, "Info_Mod_Emerin_Zutaten_15_00"); //What should I get you?
	AI_Output(self, hero, "Info_Mod_Emerin_Zutaten_12_01"); //I need two wings of a blood fly, a sheet of paper - and a profile too - and a mana essence.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "The Necromancer Emerin needs two wings of a blood fly, a profile of me and a mana essence for the production of the saying role 'Transformation Harpie'.");

	Mod_Hermy_KnowsQuest = 4;
};

INSTANCE Info_Mod_Emerin_HabZutaten (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_HabZutaten_Condition;
	information	= Info_Mod_Emerin_HabZutaten_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Emerin_HabZutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Emerin_Stollen))
	&& (Mod_Hermy_KnowsQuest == 4)
	&& (Npc_HasItems(hero, ItAt_Wing) >= 2)
	&& (Npc_HasItems(hero, ItPo_Mana_01) >= 1)
	&& (Npc_HasItems(hero, ItWr_Paper) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emerin_HabZutaten_Info()
{
	AI_Output(self, hero, "Info_Mod_Emerin_HabZutaten_12_00"); //Do you have the ingredients?
	AI_Output(hero, self, "Info_Mod_Emerin_HabZutaten_15_01"); //Yes, here.

	B_ShowGivenThings	("Mana essence, two wings of blood fly and paper given");

	Npc_RemoveInvItems	(hero, ItPo_Mana_01, 1);
	Npc_RemoveInvItems	(hero, ItAt_Wing, 2);
	Npc_RemoveInvItems	(hero, ItWr_Paper, 1);

	AI_Output(self, hero, "Info_Mod_Emerin_HabZutaten_12_02"); //Wonderful, come back tomorrow, then I'll give you the role of spell.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "I'm supposed to wait a day and then pick up Emerin's spell.");

	Mod_Hermy_KnowsQuest = 5;
	Mod_EmerinWillDie = Wld_GetDay();
};

INSTANCE Info_Mod_Emerin_EXIT (C_INFO)
{
	npc		= Mod_4025_NONE_Emerin_MT;
	nr		= 1;
	condition	= Info_Mod_Emerin_EXIT_Condition;
	information	= Info_Mod_Emerin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Emerin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Emerin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
