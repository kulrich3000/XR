INSTANCE Info_Mod_Torwache_AL_01_Halt (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Halt_Condition;
	information	= Info_Mod_Torwache_AL_01_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_00"); //What are you doing here?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_01"); //I'd like to know something about you.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_02"); //What is it about?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_03"); //I've met some guards.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_04"); //Yeah, and?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_05"); //They weren't in the old camp.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_06"); //Then I guess they were just outside. Seriously, what are you doing here?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Do you happen to know her?", Info_Mod_Torwache_AL_01_Halt_D);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "What are they doing out there?", Info_Mod_Torwache_AL_01_Halt_C);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Some of your guardsmen have attacked some Rangers (.... )", Info_Mod_Torwache_AL_01_Halt_B);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "I was attacked in the woods by those guardsmen.", Info_Mod_Torwache_AL_01_Halt_A);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_D_15_00"); //Do you happen to know her?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_D_06_01"); //No.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_00"); //What are they doing out there?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_01"); //And you think I'd just say it to a runaway adventurer? Come on, get lost.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_02"); //It could have been that...
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_03"); //Look, even if I knew anything about this, I wouldn't tell you.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_04"); //And don't you dare tell me you're harassing other guards or one of the archbarons!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_B_15_00"); //Some of your guardsmen have attacked and killed some Rangers.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_01"); //They did? I don't know her. Didn't even know there were rangers here.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_02"); //Where is your warehouse located?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "None of your business.", Info_Mod_Torwache_AL_01_Halt_F);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "I don't know about that.", Info_Mod_Torwache_AL_01_Halt_E);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_00"); //None of your business.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_01"); //Oh, yes, you do. It's supposed to be our people who attacked it.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_02"); //Perhaps we should take a look at the situation.... look at it.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_03"); //That's not necessary. In addition, the camp was not attacked, but the rangers were killed on an open area.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_04"); //Then go away with your groundless accusations.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_05"); //Probably they were shredded by a pack of wolves and now the guilt is to be pushed into our shoes.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_06"); //But...
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_07"); //I told you to get out of here. And don't make me hear any more of this nonsense!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_E_15_00"); //I don't know about that.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_E_06_01"); //Liar.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_A_15_00"); //I was attacked in the woods by those guardsmen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_A_06_01"); //Hey, guys, did you just hear that? Hehehe. I hope they didn't leave without gold.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "They took everything I had with me!", Info_Mod_Torwache_AL_01_Halt_H);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "I killed her....", Info_Mod_Torwache_AL_01_Halt_G);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_H()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_00"); //They took everything I had with me!
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_01"); //So what are you gonna do now?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_02"); //I want this stuff back.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_03"); //Dream on.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_G()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_G_15_00"); //I killed her....
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_G_06_01"); //What have you got? That's what you pay for!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschDieb (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_00"); //Dirty thieves haven't lost anything in our warehouse.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_01"); //First pay your debt to Sabitsch, then you can go back inside.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_02"); //1000 gold coins punishment for the bold theft and the amulet.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I was able to steal the amulet, which Sabitsch noticed shortly afterwards. I was supposed to bring it to Dexter and figure out how to make the old camp friendly again after the theft.");
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschMoerder (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_00"); //Thorus's buddy was killed in his cabin that night.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_01"); //We have a reliable witness who saw you nearby at that time.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_02"); //Until that's sorted out, you're definitely not coming back to the camp.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Damn one witness - presumably Scatty - testified to seeing me at night at the dead man's cabin. If I don't want to be permanently banned from the old camp, I have to do something.");
};

INSTANCE Info_Mod_Torwache_AL_01_Kapitel3 (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Kapitel3_Condition;
	information	= Info_Mod_Torwache_AL_01_Kapitel3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Kapitel3_Condition()
{
	if (Kapitel == 3)
	&& (Gardist_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Kapitel3_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_00"); //Hey, every person who visits our camp needs to know that from now on we're closing the gates at night.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_01"); //There's been a lot of orcs around lately and we don't want to take any chances.
};

INSTANCE Info_Mod_Torwache_AL_01_EXIT (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_EXIT_Condition;
	information	= Info_Mod_Torwache_AL_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_AL_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_AL_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
