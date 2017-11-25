INSTANCE Info_Mod_Geist_EIS_Hi (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Hi_Condition;
	information	= Info_Mod_Geist_EIS_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Geist_EIS_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_00"); //(any strange sound of the spirit)
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_01"); //What, how...? where does that come from?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_02"); //From me....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_03"); //A... Ghost?!
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_04"); //A human being. How many eons ago was it that I saw a living creature before me?
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_05"); //What...? who are you?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_06"); //l-- I am a restless soul, trapped in the place where I once gave my life.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_07"); //But... how come? Why didn't you enter the hereafter, like every mortal one of these days?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_08"); //Well, the circumstances of my destiny are not entirely clear to me even so far.... and a long time has passed.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_09"); //It may be that the magic of this place plays a role in this... However, the fact that the souls of other creatures and people who left their lives here after me are no longer among us speaks against this.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_10"); //Then there is a possible explanation, but after all these years it seems increasingly improbable....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_11"); //Speak...
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_12"); //It's a promise I made before I steered my steps here to ruin.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_13"); //A promise?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_14"); //Yes... until I find my brother... or his mortal shell has entered the realm of the earth.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_15"); //But... what happened then? And how long have you been tied to this place?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_16"); //How long...? Are they many decades, or even centuries? That's all I can say.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_17"); //I was a young man in the prime of my life.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_18"); //My brother Strewak.... he was a hunter. He roamed the area to Beute for several days.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_19"); //But once he stayed away much longer than usual and we started to worry.... until he finally showed up after many days.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_20"); //But he was changed... and reported a disguised figure.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_21"); //A masked figure?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_22"); //Yes, my brother told me about this figure. This wanderer is said to have made the pilgrimage from a completely different region of the earth up to here.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_23"); //It must have taken years without a doubt... if Strewak hadn't just imagined the whole thing.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_24"); //Smug? Why? And what was the pilgrim doing here?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_25"); //Well, my brother Strewak told me a lot of things that made me doubt whether it could be true.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_26"); //This walker was looking for an ancient place of worship.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_27"); //He promised my brother a big reward for leading him through the ice rink.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_28"); //My brother agreed and they left. They were on their way for many days until they met a tower somewhere in the north.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_29"); //There, the wanderer is said to have lit a sea of fire with his hands in one fell swoop, which uncovered the ice in front of them, melted and opened an access to a large temple.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_30"); //They stepped in and were said to have first encountered a bunch of undead and demonic creatures, which the hooded creature defeated unimpressed.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_31"); //They went on and came to a passage full of flames.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_32"); //Now the wanderer turned to my brother and handed him some magical artifacts or documents he said he didn't need them any more... until my brother's eyes stopped hearing him.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_33"); //At this point in the story my brother collapsed.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_34"); //All I heard was that he told something about a language that had been magically conveyed to him and about the innermost part of the magic frost that was supposed to give him access to it.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_35"); //We put him to bed so he could rest. The next morning, however, he was gone.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_36"); //A villager still thought he had to see him go south.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_37"); //I immediately left and promised my worried mother that I wouldn't rest until I found my brother.... or - I added quietly when I had turned away - his mortal shell had entered the realm of the earth.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_38"); //Because I was well aware of the dangers out there....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_39"); //So that's what this is all about... but what happened then?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_40"); //Well, there's not much more to report. I had heard of this magical place in the southwest.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_41"); //This is where I went.... and let my life through the hands of a demon.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_42"); //Since then I've been tied to this place... and, unfortunately, it doesn't look as if something could change in the foreseeable future.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_43"); //Well, I could look around or ask around.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_44"); //I appreciate it. However, I am sure that no one lives from the people of my time.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_45"); //And in the long period and the vastness of this area, it will not be easy to find clues.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_46"); //And yet... yet your appearance awakens some hope in me again...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_47"); //Yeah, let's see. If I find out anything, I'll let you know.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_48"); //Well, as my fate should have taught you, it's not entirely harmless.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_49"); //So take care of yourself... so that we may meet again in this world.

	Log_CreateTopic	(TOPIC_MOD_GEIST_BRUDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "In the cave near the hermit I met a ghost. He seems to have been tied to this place for ages. This could be connected with a promise that he once gave: not to rest until he found his brother Strewak - or his body had returned to the womb of the earth. Once upon a time, he had met a hiker in disguise, who came from far away and was looking for something here. Strewak accompanied him until they met a stone circle in the north and the pilgrim magically uncovered a temple. Later he walked through a passage full of flames inside, while Strewak stayed behind and returned to his relatives in the village. He reported something about the innermost part of the magic frost, which was supposed to give him access and disappeared the next morning to the west. His brother made the promise and died looking for Strewak. I will see if I can find out something during my further explorations in this world and help his restless spirit to a long overdue contemplation into the hereafter.");
};

INSTANCE Info_Mod_Geist_EIS_Strewak (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Strewak_Condition;
	information	= Info_Mod_Geist_EIS_Strewak_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found your brother?";
};

FUNC INT Info_Mod_Geist_EIS_Strewak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
	&& (Mod_Geist_EIS_Bruder == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Geist_EIS_Strewak_Info()
{
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_00"); //I found your brother?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_01"); //How, what do you say...? That sounds incredible. I hope you don't want to fool me...
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_02"); //But so speak... where and under what circumstances? What's the matter with him?
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_03"); //He has recently blessed time.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_04"); //But his body was in the icy claws of a monster, which saved him from decay.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_05"); //Therefore, his body never passed into the realm of the earth.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_06"); //The innermost part of the magic frost.... that's what he meant. I... would like to know if....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_07"); //Yes?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_08"); //No, that's not necessary. I feel my spirit gradually breaking away from this world. I will soon be able to ask my brother myself.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_09"); //So then it was actually the promise.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_10"); //Yes, with certainty. l-- but how can I thank you?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_11"); //a, the magic of the place with which I have been connected for so long, I will let some of it pass to you.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_12"); //l-- farewell.

	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_SUCCESS);

	B_GivePlayerXP	(2000);

	hero.attribute[ATR_MANA_MAX] += 10;
	hero.attribute[ATR_MANA] += 10;

	hero.protection[PROT_MAGIC] += 10;
	hero.protection[PROT_FIRE] += 5;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Geist_EIS_EXIT (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_EXIT_Condition;
	information	= Info_Mod_Geist_EIS_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Geist_EIS_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
