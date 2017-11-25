INSTANCE Info_Mod_Mud_ShutUp (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_ShutUp_Condition;
	information	= Info_Mod_Mud_ShutUp_Info;
	permanent	= 1;
	description	= "Can you shut up for a second, please?";
};

FUNC INT Info_Mod_Mud_ShutUp_Condition()
{
	if (Mud_NerveRealized == TRUE)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_ShutUp_Info()
{
	AI_Output (hero, self,"Info_Mod_Mud_ShutUp_15_00"); //Can you shut up for a second, please?
	AI_Output (self, hero,"Info_Mod_Mud_ShutUp_03_01"); //Sure.
	Npc_SetRefuseTalk(self, 300);
};

INSTANCE Info_Mod_Mud_GetLost (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_GetLost_Condition;
	information	= Info_Mod_Mud_GetLost_Info;
	permanent	= 1;
	description	= "Get the fuck out of here!";
};                       

FUNC INT Info_Mod_Mud_GetLost_Condition()
{
	if ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_GetLost_Info()
{
	AI_Output (hero, self,"Info_Mod_Mud_GetLost_15_00"); //Get the fuck out of here!
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_01"); //Want a moment alone, huh? I can understand.... I'll stay in the background....
};

INSTANCE Info_Mod_Mud_Defeated (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Defeated_Condition;
	information	= Info_Mod_Mud_Defeated_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Defeated_Condition()
{
	if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Defeated_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_00"); //Hey, man, you hit me! What was that about?
	AI_Output (hero, self,"Info_Mod_Mud_GetLost_15_01"); //I'm gonna hit you again! I like punching!
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_02"); //Man, what a freak you are! I don't want anything to do with you anymore!
	
	AI_StopProcessInfos	(self);
	Npc_ExchangeRoutine(self,"START");
};

INSTANCE Info_Mod_Mud_Nerve_0 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_0_Condition;
	information	= Info_Mod_Mud_Nerve_0_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_0_Condition()
{
	if ((Mud_Nerve==0)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_0_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_0_03_00"); //Oh, nice to be moving around with you again. I'm sure we'll be as good friends again.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 1;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_1 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_1_Condition;
	information	= Info_Mod_Mud_Nerve_1_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_1_Condition()
{
	if ((Mud_Nerve==1)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_1_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_1_03_00"); //Well, don't you find it hard to walk around all the time? You want to lie down? There's room in my cabin.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 2;
	Mud_NerveRealized = TRUE;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_2 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_2_Condition;
	information	= Info_Mod_Mud_Nerve_2_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_2_Condition()
{
	if ((Mud_Nerve==2)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_2_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_2_03_00"); //Since this dome is no longer there, we Buddler are not allowed to leave the camp. But now that you're back here, I'm not getting bored.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 3;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_3 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_3_Condition;
	information	= Info_Mod_Mud_Nerve_3_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_3_Condition()
{
	if ((Mud_Nerve==3)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_3_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_3_03_00"); //Don't you think it's a little dangerous that these people from the other camps are fighting in the arena? But I'm not afraid, you're with me.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 4;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_4 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_4_Condition;
	information	= Info_Mod_Mud_Nerve_4_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_4_Condition()
{
	if ((Mud_Nerve==4)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_4_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_4_03_00"); //Now that more people are coming back to the camp, they still don't want to talk to me. But don't worry, you're enough for me as a friend.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 5;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_5 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_5_Condition;
	information	= Info_Mod_Mud_Nerve_5_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_5_Condition()
{
	if ((Mud_Nerve==5)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_5_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_5_03_00"); //You know something? I'm really glad to do something with you again. What are you gonna do? You know a flock of sheep in the neighborhood, they're so cute.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 6;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_6 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_6_Condition;
	information	= Info_Mod_Mud_Nerve_6_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_6_Condition()
{
	if ((Mud_Nerve==6)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_6_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_6_03_00"); //Do you have any plans for anything outside the camp? The guards don't like that so much. But if I'm with you, that's fine.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 0;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_FirstEXIT (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_FirstEXIT_Condition;
	information	= Info_Mod_Mud_FirstEXIT_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_FirstEXIT_Condition()
{
	if (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (Npc_GetDistToWp(self, "OCR_OUTSIDE_HUT_13") < 500)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_FirstEXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_FirstEXIT_03_00"); //Hello, good to see you again. Since the barrier fell, I've been visited more often, but they all didn't want to be with me.
	AI_Output(self, hero, "Info_Mod_Mud_FirstEXIT_03_01"); //But now you're back, it'll be nice with us, just like before.

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);
	Info_AddChoice	 (Info_Mod_Mud_FirstEXIT, "Get the fuck out of here!"			,Info_Mod_Mud_FirstEXIT_Verpiss);
	Info_AddChoice	 (Info_Mod_Mud_FirstEXIT, "Why not - come with me!"	,Info_Mod_Mud_FirstEXIT_Komm);
};

func void Info_Mod_Mud_FirstEXIT_Verpiss()
{
	AI_Output (hero, self, "Info_Mod_Mud_FirstEXIT_Verpiss_15_00"); //Get the fuck out of here!
	AI_Output (self, hero, "Info_Mod_Mud_FirstEXIT_Verpiss_03_01"); //Not in such a good mood today, huh? I think I'd better come with you sometime...

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

func void Info_Mod_Mud_FirstEXIT_Komm()
{
	AI_Output (hero, self, "Info_Mod_Mud_FirstEXIT_Komm_15_00"); //Why not - come with me!
	AI_Output (self, hero, "Info_Mod_Mud_FirstEXIT_Komm_03_01"); //Great! We can talk on the way.

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

INSTANCE Info_Mod_Mud_OrkJagd (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrkJagd_Condition;
	information	= Info_Mod_Mud_OrkJagd_Info;
	permanent	= 0;
	important 	= 0;
	description	= "Hi, mud, let's do something together.";
};                       

FUNC INT Info_Mod_Mud_OrkJagd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrkJagd_Info()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkJagd_15_00"); //Hi, mud, let's do something together.
	AI_Output(self, hero, "Info_Mod_Mud_OrkJagd_03_01"); //Oh, you're my boyfriend and friends do everything together. What are we gonna do?

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);
	Info_AddChoice	 (Info_Mod_Mud_OrkJagd, "We could go for a walk in the woods together."			,Info_Mod_Mud_OrkJagd_Verpiss);
	Info_AddChoice	 (Info_Mod_Mud_OrkJagd, "Shut up and come with me."	,Info_Mod_Mud_OrkJagd_Komm);
};

func void Info_Mod_Mud_OrkJagd_Verpiss()
{
	AI_Output (hero, self, "Info_Mod_Mud_OrkJagd_Verpiss_15_00"); //We could go for a walk in the woods together. There's a nice cave there.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Verpiss_03_01"); //That will be fun, we can talk about great things and get to know each other on the way.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Verpiss_03_02"); //Although I'm a little scared in the woods, but you're with me.

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

func void Info_Mod_Mud_OrkJagd_Komm()
{
	AI_Output (hero, self, "Info_Mod_Mud_OrkJagd_Komm_15_00"); //Shut up and come with me.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Komm_03_01"); //Okay, whatever you say, this is gonna be great.

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");

	Mud_Nerve2 = 0;
};

INSTANCE Info_Mod_Mud_Lagermusik (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr 		= 1;
	condition	= Info_Mod_Mud_Lagermusik_Condition;
	information	= Info_Mod_Mud_Lagermusik_Info;
	permanent	= 0;
	important 	= 0;
	description	= "You wouldn't want to become famous, would you?";
};                       

FUNC INT Info_Mod_Mud_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_00"); //You wouldn't want to become famous, would you?
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_01"); //Depends on what I have to do. I wouldn't leave you for that, of course.
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_02"); //You'd have to play an instrument. Gravo wants to start a group.
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_03"); //I've always liked that drum. As long as I had the mallet in my hand, I didn't get so many bad things shouted at me.
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_04"); //Perfect! Why don't you go straight to Gravo.
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_05"); //I hate to let you down, but I have to give my career a chance. I'll see you soon!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRAVO");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Mud_Nerve2_0 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_0_Condition;
	information	= Info_Mod_Mud_Nerve2_0_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_0_Condition()
{
	if ((Mud_Nerve2==0)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_0_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_0_03_00"); //Shall we sit down at a fluffy place and talk to each other and stuff? ...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 1;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_1 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_1_Condition;
	information	= Info_Mod_Mud_Nerve2_1_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_1_Condition()
{
	if ((Mud_Nerve2==1)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_1_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_1_03_00"); //... or we could pick flowers in a meadow. I like flowers like this, they smell so nice and there are also hopping rabbits, they have such a fluffy fur...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 2;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_2 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_2_Condition;
	information	= Info_Mod_Mud_Nerve2_2_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_2_Condition()
{
	if ((Mud_Nerve2==2)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_2_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_2_03_00"); //... or we could splash in the water together, I like that too and it's so much fun...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 3;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_3 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_3_Condition;
	information	= Info_Mod_Mud_Nerve2_3_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_3_Condition()
{
	if ((Mud_Nerve2==3)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_3_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_3_03_00"); //... we could also go between the bushes and play hide-and-seek, or do other funny things. Oh, it's going to be great and the foliage will always tickle so nicely....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 4;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_4 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_4_Condition;
	information	= Info_Mod_Mud_Nerve2_4_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_4_Condition()
{
	if ((Mud_Nerve2==4)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_4_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_4_03_00"); //... you know, you're my best friend, I really like you. I have the feeling that you like me too...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 5;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_5 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_5_Condition;
	information	= Info_Mod_Mud_Nerve2_5_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_5_Condition()
{
	if ((Mud_Nerve2 == 5)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_5_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_5_03_00"); //... there's still a place in my cabin free for you. There we are all the time together and could talk and do other great things....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 6;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_6 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_6_Condition;
	information	= Info_Mod_Mud_Nerve2_6_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_6_Condition()
{
	if ((Mud_Nerve2 == 6)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_6_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_6_03_00"); //... or we could have a good time outside. In the camp hardly anyone likes me...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 0;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_OrkHoehle (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrkHoehle_Condition;
	information	= Info_Mod_Mud_OrkHoehle_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_OrkHoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (Npc_GetDistToWP(hero, "WP_ORKBEIAMULETT") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrkHoehle_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_00"); //Now we've been walking around together for so long and we've had a great time talking.
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_01"); //We're alone in the dark forest now. What do we do next?
	AI_Output (hero, self,"Info_Mod_Mud_OrkHoehle_15_02"); //Ooh, go to that cave there.
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_03"); //Yeah, what's going on? A surprise? I like surprises....

	Info_ClearChoices	(Info_Mod_Mud_OrkHoehle);

	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "There's a horde of bloodthirsty orcs lurking there who will hopefully tear you to shreds.", Info_Mod_Mud_OrkHoehle_C);
	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "If I told you, it wouldn't be a surprise.", Info_Mod_Mud_OrkHoehle_B);
	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "There are beautiful flowers there, you can pick them for me.", Info_Mod_Mud_OrkHoehle_A);
};

FUNC VOID Info_Mod_Mud_OrkHoehle_D()
{
	AI_Output(self, hero, "Info_Mod_Mud_OrkHoehle_D_03_00"); //Ohh, great, I'm going right in there.

	Info_ClearChoices	(Info_Mod_Mud_OrkHoehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKHOEHLE");
};

FUNC VOID Info_Mod_Mud_OrkHoehle_C()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_C_15_00"); //There's a-- uh, herd of cute sheep.

	Info_Mod_Mud_OrkHoehle_D();
};

FUNC VOID Info_Mod_Mud_OrkHoehle_B()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_B_15_00"); //If I told you, it wouldn't be a surprise.

	Info_Mod_Mud_OrkHoehle_D();
};

FUNC VOID Info_Mod_Mud_OrkHoehle_A()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_A_15_00"); //There are beautiful flowers there, you can pick them for me.

	Info_Mod_Mud_OrkHoehle_D();
};

INSTANCE Info_Mod_Mud_OrksHunted (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrksHunted_Condition;
	information	= Info_Mod_Mud_OrksHunted_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_OrksHunted_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	&& (Npc_GetDistToWP(hero, "OCR_HUT_13") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrksHunted_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_OrksHunted_03_00"); //Hello, you won't believe me. Suddenly there were a lot of bad, mean orcs.
	AI_Output (self, hero,"Info_Mod_Mud_OrksHunted_03_01"); //Unfortunately, that's why I couldn't go to the cave. But we can do other great things.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mud_VMG (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr 		= 1;
	condition	= Info_Mod_Mud_VMG_Condition;
	information	= Info_Mod_Mud_VMG_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_VMG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufnahmequest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_VMG_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_VMG_03_00"); //Hey, you, I know you. You protected me from the bad guys in New Camp and saved us all.
	AI_Output(self, hero, "Info_Mod_Mud_VMG_03_01"); //I knew exactly that...

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes? Go on, go on.", Info_Mod_Mud_VMG_A);
};

func void Info_Mod_Mud_VMG_C()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_C_03_00"); //... that you can do it. You know, the others used to push me around, but when I told them you were looking out for me, they kept their mouths shut very quickly.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_C_03_01"); //You--
};

func void Info_Mod_Mud_VMG_F()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_F_03_00"); //They're afraid of you, I think. But I didn't want to be addicted anymore, so I decided to become a magician. It's smart, isn't it?
};

func void Info_Mod_Mud_VMG_I()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_I_03_00"); //And that's how I'm standing here now. You can certainly put in a good word for me, can't you?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_I_03_01"); //It would be great if we here together as magicians make the area unsafe, wouldn't it?
};

func void Info_Mod_Mud_VMG_B()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Hold your breath.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //I knew it. Nobody likes me.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's not true at all.", Info_Mod_Mud_VMG_M);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's exactly right.", Info_Mod_Mud_VMG_L);
};

func void Info_Mod_Mud_VMG_B2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Hold your breath.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //I knew it. Nobody likes me.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's not true at all.", Info_Mod_Mud_VMG_M2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's exactly right.", Info_Mod_Mud_VMG_L2);
};

func void Info_Mod_Mud_VMG_B3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Hold your breath.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //I knew it. Nobody likes me.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's not true at all.", Info_Mod_Mud_VMG_M3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "That's exactly right.", Info_Mod_Mud_VMG_L3);
};

func void Info_Mod_Mud_VMG_M()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //That's not true at all.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_L()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //That's exactly right.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Don't you like me anymore?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes, yes, yes.", Info_Mod_Mud_VMG_O);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I never liked you before.", Info_Mod_Mud_VMG_N);
};

func void Info_Mod_Mud_VMG_M2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //That's not true at all.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I would have done the same thing.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_L2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //That's exactly right.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Don't you like me anymore?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes, yes, yes.", Info_Mod_Mud_VMG_O2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I never liked you before.", Info_Mod_Mud_VMG_N2);
};

func void Info_Mod_Mud_VMG_M3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //That's not true at all.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yeah, that would be great.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_L3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //That's exactly right.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Don't you like me anymore?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes, yes, yes.", Info_Mod_Mud_VMG_O);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I never liked you before.", Info_Mod_Mud_VMG_N);
};

func void Info_Mod_Mud_VMG_N()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //I never liked you before.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Whoa, I'm telling that to the very top man here. The supreme colonel!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Okay, calm down.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Well, see how you get to him.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_N2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //I never liked you before.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Whoa, I'm telling that to the very top man here. The supreme colonel!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Okay, calm down.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Well, see how you get to him.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_N3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //I never liked you before.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Whoa, I'm telling that to the very top man here. The supreme colonel!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Okay, calm down.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Well, see how you get to him.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_Q()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Okay, calm down.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_O()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Yes, yes, yes.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_P()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Well, see how you get to him.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //I will. And I thought you were my friend.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_Q2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Okay, calm down.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I would have done the same thing.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_O2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Yes, yes, yes.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I would have done the same thing.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_P2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Well, see how you get to him.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //I will. And I thought you were my friend.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_Q3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Okay, calm down.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yeah, that would be great.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_O3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Yes, yes, yes.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //I must have misunderstood.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yeah, that would be great.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_P3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Well, see how you get to him.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //I will. And I thought you were my friend.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_A()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_A_15_00"); //Yes? Go on, go on.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yes?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_E()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_E_15_00"); //Yes?

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "I would have done the same thing.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_G()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_G_15_00"); //I would have done the same thing.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Hold your breath.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Yeah, that would be great.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_J()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_J_15_00"); //Yeah, that would be great.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_J_03_01"); //So, what are you doing here? Do you want to give me the assignments?
	AI_Output (hero, self, "Info_Mod_Mud_VMG_J_15_02"); //Yeah. Are you ready?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_J_03_03"); //Okay, go ahead, buddy.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me a role of 'blood fly transformation.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Outside the barrier, one of the mages has lost something. Find this, please.", Info_Mod_Mud_VMG_U);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me some scavenger clubs. Five should be enough.", Info_Mod_Mud_VMG_T);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "There's a shadow runner in the forest.", Info_Mod_Mud_VMG_S);
	if (Npc_HasItems(hero, ItSc_TrfSheep) > 0)
	{
		//Info_AddChoice	 (Info_Mod_Mud_VMG, "Nimm diese Spruchrolle und führe den Zauber durch.", Info_Mod_Mud_VMG_R);
	};
};

func void Info_Mod_Mud_VMG_V()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_V_15_00"); //Bring me a role of "blood fly transformation."
	AI_Output (self, hero, "Info_Mod_Mud_VMG_V_03_01"); //That's funny, isn't it? I happen to have one. Here.

	B_GiveInvItems	(self, hero, ItSc_TrfBloodfly, 1);

	AI_Output (hero, self, "Info_Mod_Mud_VMG_V_15_02"); //Well, uh, then you're in.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_V_03_02"); //Great, you're a real friend.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Mod_Mud_Unterwegs = 5;
};

func void Info_Mod_Mud_VMG_U()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_U_15_00"); //Outside the barrier, one of the mages has lost something. Find this, please.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_U_03_01"); //Are you kidding me, man? How am I supposed to get there?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "You want to be a magician, don't you?", Info_Mod_Mud_VMG_X2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "You're right. You're right. I'll give you another task.", Info_Mod_Mud_VMG_W2);
};

func void Info_Mod_Mud_VMG_X2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X2_15_00"); //You want to be a magician, don't you?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X2_03_01"); //Okay, I'll do it. Where do you want me to start?
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X2_15_02"); //Best at the exchange place.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X2_03_03"); //What am I looking for?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Mod_Mud_Unterwegs = 4;

	B_StartOtherRoutine	(self, "TRADE");

	Info_AddChoice	 (Info_Mod_Mud_VMG, "A scroll.", Info_Mod_Mud_VMG_Y3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "A magic ring.", Info_Mod_Mud_VMG_Y2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "A magic robe.", Info_Mod_Mud_VMG_Y1);
};

func void Info_Mod_Mud_VMG_Y3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y3_15_00"); //A scroll.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y3_03_01"); //I think I'll find her.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Good luck to you.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_Y2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y2_15_00"); //A magic ring.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y2_03_01"); //That'll take time.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Good luck to you.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_Y1()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y1_15_00"); //A magic robe.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y1_03_01"); //Okay, that'll be easy to find.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Good luck to you.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_W2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_W2_15_00"); //You're right. You're right. I'll give you another task.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me a spell of metamorphosis blood fly.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me some scavenger clubs. Five should be enough.", Info_Mod_Mud_VMG_T);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "There's a shadow runner in the forest.", Info_Mod_Mud_VMG_S);
};

func void Info_Mod_Mud_VMG_T()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_T_15_00"); //Bring me some scavenger clubs. Five should be enough.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_01"); //Okay, that shouldn't be too difficult. I'll take a little look around.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_T_15_02"); //(laughs) Have fun.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_03"); //I'll be on my way then. Oh, the guard over there is waving, you better go to her.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_04"); //Well, see you around, my friend.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);

	Mod_Mud_Unterwegs = 3;

	B_StartOtherRoutine	(self, "SCAV");
};

func void Info_Mod_Mud_VMG_S()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_S_15_00"); //There's a shadow runner in the forest. Bring me his fur, and I'll let you go.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_S_03_01"); //Are you serious?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Of course, and now get going.", Info_Mod_Mud_VMG_X);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "No, I was kidding.", Info_Mod_Mud_VMG_W);
};

func void Info_Mod_Mud_VMG_X()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X_15_00"); //Of course, and now get going.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X_03_01"); //If you say so...

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);

	Mod_Mud_Unterwegs = 2;

	B_StartOtherRoutine	(self, "SHADOW");
};

func void Info_Mod_Mud_VMG_W()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_W_15_00"); //No, I was kidding.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me a spell of metamorphosis blood fly.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Outside the barrier, one of the mages has lost something. Find this, please.", Info_Mod_Mud_VMG_U);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Bring me some scavenger clubs. Five should be enough.", Info_Mod_Mud_VMG_T);
};

INSTANCE Info_Mod_Mud_Pickpocket (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr		= 1;
	condition	= Info_Mod_Mud_Pickpocket_Condition;
	information	= Info_Mod_Mud_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Mud_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_OldCoin, 1);
};

FUNC VOID Info_Mod_Mud_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

	Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_BACK, Info_Mod_Mud_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mud_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mud_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
};

FUNC VOID Info_Mod_Mud_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mud_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mud_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mud_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mud_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mud_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mud_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mud_EXIT (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_EXIT_Condition;
	information	= Info_Mod_Mud_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_Mod_Mud_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_EXIT_Info()
{
	AI_StopProcessInfos	( self );
};
