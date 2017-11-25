INSTANCE Info_Mod_Argez_NW_Hi (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Hi_Condition;
	information	= Info_Mod_Argez_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_37_00"); //Ah, a new face. To whom do I have the honour?

	Info_ClearChoices	(Info_Mod_Argez_NW_Hi);

	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "None of your business.", Info_Mod_Argez_NW_Hi_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "With a former prisoner of the Mine Valley.", Info_Mod_Argez_NW_Hi_A);
};

FUNC VOID Info_Mod_Argez_NW_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_00"); //Excuse me, my name is Argez.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_01"); //You don't look happy.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_02"); //Oh, that's a longer story, but it ended at the gates of khorinis.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_03"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_04"); //There is an insecure paladin who tries to distinguish himself through hardness. He denied me access to the city.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_C_15_05"); //And why won't he let you in?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_C_37_06"); //He feared me as he feared you. I think it's connected to the fall of the barrier and the escaped prisoners.

	Info_ClearChoices	(Info_Mod_Argez_NW_Hi);

	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Can I help you get into town?", Info_Mod_Argez_NW_Hi_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Hi, "Where are you from anyway?", Info_Mod_Argez_NW_Hi_D);
};

FUNC VOID Info_Mod_Argez_NW_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_B_15_00"); //None of your business.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_B_37_01"); //You're right, I should have introduced myself first.

	Info_Mod_Argez_NW_Hi_C();
};

FUNC VOID Info_Mod_Argez_NW_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_A_15_00"); //With a former prisoner of the Mine Valley.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_A_37_01"); //Well, another pariah.

	Info_Mod_Argez_NW_Hi_C();
};

FUNC VOID Info_Mod_Argez_NW_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_E_15_00"); //Can I help you get into town?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_01"); //I doubt that the paladin I have mentioned will speak to you. Garond is his name.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_02"); //But if you do succeed, I offer to share my knowledge with you.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_E_15_03"); //What do you know?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_E_37_04"); //More than I should know.

	if (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	{
		Log_CreateTopic	(TOPIC_MOD_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ARGEZ, LOG_RUNNING);
	};

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Outside the gates of Khorinis, I had a conversation with an outcast. His past seems confusing, but he promised me information in case Garond let him into town. The Paladin, however, could prove to be a difficult chunk.");

	Mod_Argez_Choice += 1;

	if (Mod_Argez_Choice == 2)
	{
		Info_ClearChoices	(Info_Mod_Argez_NW_Hi);
	};
};

FUNC VOID Info_Mod_Argez_NW_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Hi_D_15_00"); //Where are you from anyway?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_D_37_01"); //I don't know about that. This information is part of the longer story just mentioned.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Hi_D_37_02"); //I do not wish to appear impolite, but at this stage I am not in a position to answer your question comprehensively.

	Mod_Argez_Choice += 1;

	if (Mod_Argez_Choice == 2)
	{
		Info_ClearChoices	(Info_Mod_Argez_NW_Hi);
	};
};

INSTANCE Info_Mod_Argez_NW_Follow (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Follow_Condition;
	information	= Info_Mod_Argez_NW_Follow_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found a way to get you into town.";
};

FUNC INT Info_Mod_Argez_NW_Follow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Follow_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Follow_15_00"); //I found a way to get you into town.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_01"); //I was hoping you'd say that.
	AI_Output(hero, self, "Info_Mod_Argez_NW_Follow_15_02"); //We can pass the northern city gate. Lord Andre has assured me that there will be no problems there. I will lead you.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_03"); //Oh, I know where the gate is. But the best thing we can do is to show up together before any misunderstandings arise.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Follow_37_04"); //You're welcome to run ahead.

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWINCITY");

	Wld_InsertNpc	(Zombie_Argez,	"FP_ROAM_ZOMBIE_ARGEZ");
};

INSTANCE Info_Mod_Argez_NW_Zombie (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Zombie_Condition;
	information	= Info_Mod_Argez_NW_Zombie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_Zombie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Follow))
	&& (Npc_IsDead(Zombie_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Zombie_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_00"); //Was it I who fired that fatal shot?
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie_15_01"); //I don't see anyone else here who could be responsible.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_02"); //There seems to be something slumbering in me.... If only I could remember!
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_03"); //And where did this zombie come from so suddenly?
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie_15_04"); //Maybe he has something to do with that black wanderer who must have come by here recently?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_05"); //Possibly, even if I haven't noticed such a black wanderer.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie_37_06"); //Let's move on to town, I need some time to think.

	hero.protection[PROT_MAGIC] = Mod_Save_HeroArmor_Argez;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Argez_NW_InCity (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_InCity_Condition;
	information	= Info_Mod_Argez_NW_InCity_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_NW_InCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Zombie))
	&& (Npc_GetDistToWP(self, "NW_CITY_MERCHANT_PATH_29_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_InCity_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_00"); //Finally, behind these walls. I am deeply indebted to you.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_01"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_02"); //I'll look for clues to my origins. This town is big - I'm confident that someone here knows me.
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_03"); //First of all, however, I will rest.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_04"); //You promised me something...
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_05"); //And I'll keep to that. Come see me tomorrow, and I'll give you advice and help.
	AI_Output(self, hero, "Info_Mod_Argez_NW_InCity_37_06"); //Probably I will spend most of the day near the market place here.
	AI_Output(hero, self, "Info_Mod_Argez_NW_InCity_15_07"); //All clear. See you tomorrow.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ARGEZ, "I led Argez into town. Now I am looking forward to his story....");

	Mod_Argez_Day = Wld_GetDay();

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RUHE");
};

INSTANCE Info_Mod_Argez_NW_Zombie2 (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Zombie2_Condition;
	information	= Info_Mod_Argez_NW_Zombie2_Info;
	permanent	= 0;
	important	= 0;
	description	= "You really don't know how you did that spell?";
};

FUNC INT Info_Mod_Argez_NW_Zombie2_Condition()
{
	if (Mod_Argez >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Zombie2_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Zombie2_15_00"); //You really don't know how you did that spell?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_01"); //When the zombie turned to us, I felt something inside me rise.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_02"); //This saying unleashed itself completely automatically, without my wilful help.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Zombie2_37_03"); //Why I know such a saying, I can't tell you. It does not reassure me either to know of such an uncontrolled power in me.
};

INSTANCE Info_Mod_Argez_NW_ZuSaturas (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_ZuSaturas_Condition;
	information	= Info_Mod_Argez_NW_ZuSaturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Saturas wishes a conversation with you.";
};

FUNC INT Info_Mod_Argez_NW_ZuSaturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Argez2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_ZuSaturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_00"); //Saturas wishes a conversation with you.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_01"); //The supreme water magician? What does he want from me?
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_02"); //It's about the spell you used to destroy the zombie.
	AI_Output(hero, self, "Info_Mod_Argez_NW_ZuSaturas_15_03"); //Maybe Saturas can help you find out about your past, too.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_04"); //It's worth a try, even if I can tell from your undertone that you're afraid of what you're trying to learn about me.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_05"); //My stay in the city will come to an end with my visit to Saturas.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_06"); //It seems no one here knows me. My roots must be somewhere else.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_07"); //So let's see if Saturas has anything new to tell me.
	AI_Output(self, hero, "Info_Mod_Argez_NW_ZuSaturas_37_08"); //Maybe you know a shortcut to the dig site? A teleporter or something?
};

INSTANCE Info_Mod_Argez_NW_LosZuSaturas (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_LosZuSaturas_Condition;
	information	= Info_Mod_Argez_NW_LosZuSaturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going.";
};

FUNC INT Info_Mod_Argez_NW_LosZuSaturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_ZuSaturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_LosZuSaturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_LosZuSaturas_15_00"); //Let's get going. Saturas has given us a teleport spell that will save us the long way.
	AI_Output(self, hero, "DEFAULT"); //

	B_LogEntry	(TOPIC_MOD_ARGEZ, "I must take Argez to Saturas. With the teleport of Saturas, that won't be a problem.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Argez_NW_Infos (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Infos_Condition;
	information	= Info_Mod_Argez_NW_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of information can you give me?";
};

FUNC INT Info_Mod_Argez_NW_Infos_Condition()
{
	if (Mod_Argez == 1)
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Infos_15_00"); //What kind of information can you give me?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Infos_37_01"); //You're new here. I know about the different groups.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Infos_37_02"); //If you want to join a guild, I can help you.
};

INSTANCE Info_Mod_Argez_NW_Gilden (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Gilden_Condition;
	information	= Info_Mod_Argez_NW_Gilden_Info;
	permanent	= 1;
	important	= 0;
	description	= "Give me information on one of the guilds.";
};

FUNC INT Info_Mod_Argez_NW_Gilden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Infos))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Gilden_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_15_00"); //Give me information on one of the guilds.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_37_01"); //Which one arouses your interest?

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_BACK()
{
	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_E()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_E_15_00"); //Tell me about the fire novices.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_01"); //Innos' followers have their own monastery on the island.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_02"); //The life of a fire novice isn't supposed to be easy; the mages demand an ascetic life and total devotion to Innos.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_03"); //Their leadership consists of a triumvirate from which Pyrokar stands out once again as the top head.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_E_37_04"); //These three will test you thoroughly when you decide that living in Innos' service is right for you.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_D()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_D_15_00"); //Tell me about the militia.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_01"); //The militia takes over the function of city guard in Khorinis.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_02"); //It is more or less responsible for ensuring that everything here goes right.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_03"); //You've already met their leader, Lord Andre. He pays great attention to the discipline and fighting power of his troops.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_04"); //To this end, he regularly organizes tournaments with the new candidates.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_D_37_05"); //If you want to stay there, you should be a fairly experienced fighter.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_C()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_C_15_00"); //Tell me about the Black Novices.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_01"); //You don't hear too much about them around here.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_02"); //The nonconformists of society are more attracted to the Black Novices - Beliar does not promise popularity, but instead powerful magic.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_03"); //They also have one of the strictest admission procedures. Only those who prove themselves in countless trials will be admitted as novices.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_04"); //However, they have also installed an extremely practical means of transport - the Beliar shrines are teleportation platforms at the same time.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_05"); //You have to connect them one by one to use them.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_06"); //Rumor has it that such a shrine is said to be in the town's closed sewer system.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_07"); //It dates back to earlier times, when Beliaran followers held dark rituals down there.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_C_37_08"); //Wherein... from what we hear, the sewerage system doesn't seem to be completely abandoned.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_B_15_00"); //Tell me about the mercenaries.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_01"); //Some of them are currently on the farm of the big farmer Onar. They want to recruit new members there.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_02"); //Most of them, however, are in the Minental, in their camp from the colony time, which they call the New Camp.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_03"); //But here too, there are supposed to be mercenary camps near Khorinis.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_B_37_04"); //You should always keep your eyes open, then you will run into them sooner or later.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

FUNC VOID Info_Mod_Argez_NW_Gilden_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Gilden_A_15_00"); //Tell me about the water novices.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_01"); //Water novices serve in the circle of water.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_02"); //As far as I can see, the main task of the Circle of Water is to gather information.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_03"); //While the water magicians squat above their ancient puzzles to maintain the balance of the world in Adanos's mind, the novices keep their eyes and ears open.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_04"); //That's why you can find most of their followers in Khorinis.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_05"); //At the moment they deal with a number of missing persons reports.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Gilden_A_37_06"); //If you are interested in the topic, Vatras at Tempelplatz is probably the right contact for you.

	Info_ClearChoices	(Info_Mod_Argez_NW_Gilden);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, DIALOG_BACK, Info_Mod_Argez_NW_Gilden_BACK);

	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the fire novices.", Info_Mod_Argez_NW_Gilden_E);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the militia.", Info_Mod_Argez_NW_Gilden_D);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the Black Novices.", Info_Mod_Argez_NW_Gilden_C);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the mercenaries.", Info_Mod_Argez_NW_Gilden_B);
	Info_AddChoice	(Info_Mod_Argez_NW_Gilden, "Tell me about the water novices.", Info_Mod_Argez_NW_Gilden_A);
};

INSTANCE Info_Mod_Argez_NW_Geschichte (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Geschichte_Condition;
	information	= Info_Mod_Argez_NW_Geschichte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me your story!";
};

FUNC INT Info_Mod_Argez_NW_Geschichte_Condition()
{
	if (Mod_Argez >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Geschichte_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Geschichte_15_00"); //Tell me your story!
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_01"); //I can't remember my past.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_02"); //There's-- Fragments of memories triggered by certain events, but they are never clear enough.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_03"); //A few months ago I woke up in ragged clothes in a cave in the mountains.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_04"); //I was probably attacked, knocked unconscious and left to die.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_05"); //At first I wandered around disoriented. After a few days I found one of the surrounding farms and became a farmhand.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_06"); //I observed a lot and asked the merchants who rested in the courtyard.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_07"); //That's how I learned about current events, and my knowledge of the guilds dates back to those months.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_08"); //But the search for my past didn't leave me alone, and so I left the courtyard at some point and fought my way through to the city.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Geschichte_37_09"); //The rest of the story you know.
};

INSTANCE Info_Mod_Argez_NW_Tattoo (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_Tattoo_Condition;
	information	= Info_Mod_Argez_NW_Tattoo_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's that tattoo on your face?";
};

FUNC INT Info_Mod_Argez_NW_Tattoo_Condition()
{
	if (Mod_Argez >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_NW_Tattoo_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_NW_Tattoo_15_00"); //What's that tattoo on your face?
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_01"); //I haven't been able to look at them exactly because I've only seen them in water reflections.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_02"); //The only clue she's giving me is the swamp camp in the Minental. Tattoos are very common there.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_03"); //However, there was probably no way to escape the barrier and I woke up outside of it.
	AI_Output(self, hero, "Info_Mod_Argez_NW_Tattoo_37_04"); //So I can hardly have been in contact with the swamp camp.
};

INSTANCE Info_Mod_Argez_NW_EXIT (C_INFO)
{
	npc		= PC_Friend_NW;
	nr		= 1;
	condition	= Info_Mod_Argez_NW_EXIT_Condition;
	information	= Info_Mod_Argez_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
