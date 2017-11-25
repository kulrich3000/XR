INSTANCE Info_Mod_Xardas_AW_Hi (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_Hi_Condition;
	information	= Info_Mod_Xardas_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_AW_Hi_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_00"); //I need to talk to you. I found out a lot of things.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_01"); //What's up?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_02"); //This part of the island is called Jharkendar.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_03"); //Thousands of years ago a highly developed people lived here, as you can easily see.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_04"); //At that time the gods were still united as the primeval god of Radano.

	AI_Function_I (self, XR_Backgroundstory, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_05"); //With Xeres came the downfall. Xeres was a powerful magician, so powerful that he demanded that the inhabitants worship him instead of the gods.

	AI_Function_I (self, XR_Backgroundstory, 2);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_06"); //When they refused to obey him, he wiped out the whole region with rage, and only a few survived.

	AI_Function_I (self, XR_Backgroundstory, 3);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_07"); //One of them managed to kill Xeres with a mysterious sword.

	AI_Function_I (self, XR_Backgroundstory, 4);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_08"); //Because he was completely powerless, Radanos could lock him in a prison deep below the surface of the earth.

	AI_Function_I (self, XR_Backgroundstory, 5);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_09"); //Afterwards the god cried after bitter tears, which devastated Jharkendar as a flood.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_10"); //His entire creation was gone, and in mourning his thinking gradually splintered into three parts - the three gods that we still know today.

	AI_Function_I (self, XR_Backgroundstory, 6);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_11"); //But that's another story.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_12"); //Now begins the part of my story that is largely based on my own speculations.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_13"); //Xeres must have survived in his prison.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_14"); //Badly stricken and deprived of his strength, but still determined to return.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_15"); //He seems to have been driving his escape for a few decades now.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_16"); //What he needed was in the Minental. That's why he sent the sleeper there.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_17"); //Then we got in his way by creating the barrier. Xeres lost contact with his creation and could not give her the crucial task.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_18"); //What was Xeres doing there?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_19"); //The focus stones. The side of Radanos, which later became Beliar, created a back door for a later pardon of the magician.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_20"); //Should all the Foki find their way back to the pedestals in Jharkendar, they would be taken by Xeres and his prison would be opened.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_21"); //(weighty) That's why you must never get the idea to use the Foki from the Minental here in Jharkendar. Never ever!
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_22"); //Instead, we must do everything we can to destroy or at least hide the focus!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_23"); //Um, Xardas?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_24"); //Yes?
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_25"); //That explains why there have been so many strange incidents in my focus search.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_26"); //Xeres had stretched out his feelers again. But I got them all.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_27"); //So you've already got them? Wonderful!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_28"); //Not only that. I just posted the last one here in Jharkendar.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_29"); //(languagelessly)
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_30"); //Nice present, huh?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_31"); //(shouts) NO! It can't be!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_32"); //I'll make it up to you too...
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_33"); //No, wait! We need a plan now.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_34"); //You have to stop Xeres from finding any more allies on Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_35"); //The Orcs are probably the most dangerous ones, which he was able to harness for himself with the sleeper.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_36"); //To shorten your journey, I will teleport you to my old tower in the Minental. It's not far from there.

	Log_CreateTopic	(TOPIC_MOD_XERES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_XERES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_XERES, "By using the Foki, I liberated Xeres, a powerful magician of the Old People, from his shadow empire. Xardas told me to check with the orcs in the valley of the Mine before Xeres subdues them.");

	B_SetTopicStatus	(TOPIC_MOD_DIEBEDROHUNG, LOG_SUCCESS);

	B_SetLevelchange ("Minental\Minental.zen", "DT_E3_03");
};

INSTANCE Info_Mod_Xardas_AW_Bshydal (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_Bshydal_Condition;
	information	= Info_Mod_Xardas_AW_Bshydal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_AW_Bshydal_Condition()
{
	if (Npc_HasItems(hero, ItMi_WaterOfLife) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_Bshydal_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_00"); //What, this is where I landed. Xardas, you here too?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_01"); //When it comes to events of special significance, I'm never far away.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_02"); //Reports: How did your search go and what happened to the Innos Guard? I can't feel their power anymore.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_03"); //The guards are destroyed. I was able to defeat some of her disciples... the others were killed by the blood cult.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_04"); //You must know that the blood cult used the guards only as a tool to gain the sword Innos'.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_05"); //However, something has to be done during the search...
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_06"); //... failed because they couldn't find the sword.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_07"); //You do know? But how is that possible? So where is the sword Innos, then?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_08"); //It was in another place in Khorinis. Wasn't so easy to find it, so deep under Patherion.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_09"); //It was easier to entice the blindly fanatized into another track...
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_10"); //What?! You've known they were on the wrong track all along, looking for it themselves?!
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_11"); //What do you think? If someone tries to destroy Beliars, I will hardly sit in my tower and wait for the destruction of the world.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_12"); //And where is the sword now?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_13"); //That will remain my secret.... and I'm sure you won't get that gun... an instrument that has the power to banish our God and help greater evil to ascend.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_14"); //Instead, you will receive some gold for your equipment and this ring of our Lord. But if you beat up citizens and peasants, you better not wear it.

	CreateInvItems	(hero, ItMi_Gold, 1000);
	CreateInvItems	(hero, ItRi_BeliarBosheit, 1);

	B_ShowGivenThings	("1000 Gold and ring received");

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_15"); //Hmm, however, if you should have reached the goal of your quest, you should now be in possession of the water of life.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_16"); //A tool equipped with a power that cannot be ignored. Let the deceased reflect life.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_17"); //Maybe you'll come up with something to pay for it.

	if (!Npc_IsDead(Mod_7316_BK_Bshydal_AW))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_18"); //Hmm, another thing: A blood cult magician who took the power of Inno's guards into himself is still in the room under the temple.
		AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_19"); //He seems to have become extremely powerful....
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_20"); //Well, I don't think we need to worry about him.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_21"); //The room under the temple of Adanos must be magically sealed, otherwise I would feel its power.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_22"); //Only through certain mechanisms of teleport magic is it possible to enter or leave the room.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_23"); //And the portal he created must have collapsed... something like this can happen when another portal is created in the environment.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_24"); //He's probably trapped down there forever.
	};

	if (Mod_Gilde == 13)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_25"); //Go to Myxir in the monastery, he will take you into the demon summoner's rank.
	}
	else if (Mod_Gilde == 15)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_26"); //Go to Scar, he'll take you into the rank of demon knight.
	};

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "So it's a false lead by Xardas. And he has long since found the sword Innos and brought it to a safe place. He said the water of life could bring the deceased back to life. Anything I can think of?");
	
	B_GivePlayerXP	(800);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_StartOtherRoutine	(Mod_764_PIR_Greg_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "BEERDIGUNG");

	Wld_SendTrigger	("EVT_AJ_GRABSTEIN");
};

INSTANCE Info_Mod_Xardas_AW_FokusWeg (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_FokusWeg_Condition;
	information	= Info_Mod_Xardas_AW_FokusWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why can't we just take away a focus?";
};

FUNC INT Info_Mod_Xardas_AW_FokusWeg_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_FokusWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_FokusWeg_15_00"); //Why can't we just take away a focus?
	AI_Output(hero, self, "Info_Mod_Xardas_AW_FokusWeg_15_01"); //Won't the prison close?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_02"); //I doubt it would come to that.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_03"); //But apart from that, I am sure that Xeres has already got wind of his freedom and is no longer in prison.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_04"); //That is why it is important that we act quickly!
};

INSTANCE Info_Mod_Xardas_AW_DuZwischenzeit (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_DuZwischenzeit_Condition;
	information	= Info_Mod_Xardas_AW_DuZwischenzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you going to do in the meantime?";
};

FUNC INT Info_Mod_Xardas_AW_DuZwischenzeit_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_DuZwischenzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_DuZwischenzeit_15_00"); //What are you going to do in the meantime?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_DuZwischenzeit_14_01"); //I will keep an eye on the overall situation and prevent Xeres' troops from spreading to Khorinis.
};

INSTANCE Info_Mod_Xardas_AW_EXIT (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_EXIT_Condition;
	information	= Info_Mod_Xardas_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};
