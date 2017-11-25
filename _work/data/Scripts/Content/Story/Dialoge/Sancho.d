INSTANCE Info_Mod_Sancho_Alissandro (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Alissandro_Condition;
	information	= Info_Mod_Sancho_Alissandro_Info;
	permanent	= 0;
	important	= 0;
	description	= "I come from Alissandro and I have a message for you.";
};

FUNC INT Info_Mod_Sancho_Alissandro_Condition()
{
	if (Npc_HasItems(hero, ItWr_AliBotschaft) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Alissandro_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Alissandro_15_00"); //I come from Alissandro and I have a message for you.
	AI_Output(self, hero, "Info_Mod_Sancho_Alissandro_32_01"); //(still bored) Wrong password.

	B_StartOtherRoutine	(Mod_761_BDT_Dexter_MT, "EINGANG");
	AI_Teleport	(Mod_761_BDT_Dexter_MT, "LOCATION_32_04");

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Sancho_GardistenInfos (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_GardistenInfos_Condition;
	information	= Info_Mod_Sancho_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Sancho_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_32_01"); //Hi, what do you want?
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_02"); //I'm looking for information.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_32_03"); //It's gonna cost you a little something.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_04"); //How much?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_32_05"); //50 gold.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "That's too much!", Info_Mod_Sancho_GardistenInfos_C);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "50 gold? Isn't it 20?", Info_Mod_Sancho_GardistenInfos_B);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Here.", Info_Mod_Sancho_GardistenInfos_A);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_C_15_00"); //That's too much!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_C_32_01"); //Then get out of here!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_B_15_00"); //50 gold? Isn't it 20?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_B_32_01"); //Well, because it's you, it's 80 now.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutthroat!", Info_Mod_Sancho_GardistenInfos_E);

	if (Npc_HasItems(hero, ItMi_Gold) > 79)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutthroat. (80 Gold give)", Info_Mod_Sancho_GardistenInfos_D);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_E_15_00"); //Cutthroat!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_E_32_01"); //Then get out of here!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_D_15_00"); //Cutthroat.

	B_GiveInvItems	(hero, self, ItMi_Gold, 80);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_D_32_01"); //Oh, there's still 20 gold missing. I'm really sorry, buddy, but you must have miscounted.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "That was exactly 80 gold. Now tell me what I want to know from you!", Info_Mod_Sancho_GardistenInfos_G);

	if (Npc_HasItems(hero, ItMi_Gold) > 19)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Here, take this and tell me what I want to know.", Info_Mod_Sancho_GardistenInfos_F);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_G()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_G_15_00"); //That was exactly 80 gold. Now tell me what I want to know from you!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_G_32_01"); //Forget it, buddy. Get the fuck out of here before I split your insolent skull!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "You'll regret this, you son of a bitch!", Info_Mod_Sancho_GardistenInfos_I);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "I'll see you again.", Info_Mod_Sancho_GardistenInfos_H);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_I()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_I_15_00"); //You'll regret this, you son of a bitch!

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_I_32_01"); //What?

	CreateInvItems	(self, ItWr_MagicPaper, 1);

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Mod_SanchoKampfWegenZettel = 1;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_00"); //Here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_01"); //What do you want to know now?
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_02"); //Have there been some guards around here lately?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_03"); //Coincidentally, yes.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_04"); //Where did they go?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_05"); //Nowhere.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_06"); //So they're still here?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_07"); //In principle, yes.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_08"); //Can I talk to you?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_09"); //No.
	
	B_Say	(hero, self, "$WIESONICHT");

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_11"); //Cause then you'd have to start with a pack of snapper looking for their parts.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_12"); //You were killed by snappers?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_13"); //No.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_14"); //Like now? You just said....
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_15"); //... that they were eaten by them! We killed them. (laughs dirty)
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_16"); //Ah. Did you notice anything about them or did they have anything on you?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_17"); //None of us had seen her in the Minental, but it's not that unusual. They had a note with them.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_18"); //Can I see the note?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_32_19"); //Of course it is. That would cost you another 50 gold.


	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Another 50 gold? I'm getting tired of this!", Info_Mod_Sancho_GardistenInfos_K);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "All right, here's the fucking gold. (50 Gold give)", Info_Mod_Sancho_GardistenInfos_J);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_H()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_H_15_00"); //I'll see you again.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_F_15_00"); //Here, take this and tell me what I want to know.

	B_GiveInvItems	(hero, self, ItMi_Gold, 20);

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_Mod_Sancho_GardistenInfos_A();
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_K()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_K_15_00"); //Another 50 gold? I'm getting tired of this!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_K_32_01"); //50 gold or leave it. You want the note and I have it, I don't care.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "There is also a third possibility...", Info_Mod_Sancho_GardistenInfos_M);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "I won't give you anything anymore.", Info_Mod_Sancho_GardistenInfos_L);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutthroat. (80 Gold give)", Info_Mod_Sancho_GardistenInfos_J);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_M()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_M_15_00"); //There is also a third possibility...

	CreateInvItems	(self, ItWr_MagicPaper, 1);

	Mod_SanchoKampfWegenZettel = 1;

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_L()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_L_15_00"); //I won't give you anything anymore. The information I need can be found elsewhere.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_L_32_01"); //All right, here, take the note. I can't read it anyway.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	Mod_SanchoHatZettel = 2;

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_L_32_02"); //Now, don't distract me anymore.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Sancho gave me a note the guards had with them.");
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_J()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_J_15_00"); //All right, here's the fucking gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_J_32_01"); //All right, here, take the note. I can't read it anyway.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	Mod_SanchoHatZettel = 2;

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_J_32_02"); //Now, don't distract me anymore.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Sancho gave me a note the guards had with them.");
};

INSTANCE Info_Mod_Sancho_Umgehauen (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Umgehauen_Condition;
	information	= Info_Mod_Sancho_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where does this note come from?";
};

FUNC INT Info_Mod_Sancho_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_GardistenInfos))
	&& (Mod_SanchoHatZettel	==	1)
	&& (Mod_SanchoKampfWegenZettel == 1)
	&& (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Umgehauen_15_00"); //Where does this note come from?
	AI_Output(self, hero, "Info_Mod_Sancho_Umgehauen_32_01"); //Ow, you've got a pretty good punch. He's coming from some guards who came by here the other day.
	AI_Output(self, hero, "Info_Mod_Sancho_Umgehauen_32_02"); //Keep it, I can't use it anyway. Now leave me alone.

	Mod_SanchoHatZettel = 2;

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Sancho_WasFuerLosung (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_WasFuerLosung_Condition;
	information	= Info_Mod_Sancho_WasFuerLosung_Info;
	permanent	= 0;
	important	= 0;
	description	= "What slogan?";
};

FUNC INT Info_Mod_Sancho_WasFuerLosung_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sancho_WasFuerLosung_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_WasFuerLosung_15_00"); //What slogan?
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung_32_01"); //The slogan that allows you to come into the camp without being hacked to pieces by me and the boys inside, you nag.
};

INSTANCE Info_Mod_Sancho_WasFuerLosung2 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_WasFuerLosung2_Condition;
	information	= Info_Mod_Sancho_WasFuerLosung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And where and how should I get the password?";
};

FUNC INT Info_Mod_Sancho_WasFuerLosung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_WasFuerLosung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_WasFuerLosung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_WasFuerLosung2_15_00"); //And where and how should I get the password?
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_32_01"); //Hey, man, you're getting on my nerves.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_32_02"); //If you want that damn slogan, you're gonna have to help our boys in Khorinis.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_32_03"); //But don't think you can just go and get it.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_32_04"); //If they really need your help at some point, they'll talk to you.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_32_05"); //Now, don't bother me anymore.
};

INSTANCE Info_Mod_Sancho_Nek (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Nek_Condition;
	information	= Info_Mod_Sancho_Nek_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sancho_Nek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek3))
	&& (Npc_HasItems(hero, ItAm_Nek) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Nek_Info()
{
	AI_Output(self, hero, "Info_Mod_Sancho_Nek_32_00"); //What are you doing here?
	AI_Output(hero, self, "Info_Mod_Sancho_Nek_15_01"); //I have Nek's amulet. Look.

	B_GiveInvItems	(hero, self, ItAm_Nek, 1);

	AI_Output(self, hero, "Info_Mod_Sancho_Nek_32_02"); //Fact. Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 350);

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_FINGERS_NEK, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sancho_Dam (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam_Condition;
	information	= Info_Mod_Sancho_Dam_Info;
	permanent	= 0;
	important	= 0;
	description	= "I brought you the amulet.";
};

FUNC INT Info_Mod_Sancho_Dam_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Nek))
	&& (Npc_KnowsInfo(hero, Info_Mod_Sancho_WasFuerLosung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_00"); //I brought you the amulet. It should be worth it to come to the camp.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_01"); //You're just not loosening up, are you?
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_02"); //Okay, then I have a proposition for you.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_03"); //If you can do that, the others will not mind that you are allowed into our camp, even if you are not yet one of us.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_04"); //I hear....
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_05"); //Okay, you brought me the amulet. You know what this is all about?
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_06"); //Well, it once belonged to a guardsman named Nek who blessed the temporal...
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_07"); //Ha, and you really believe that.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_08"); //Actually... yes.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_09"); //Well, listen, kid.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_10"); //He did not mark the amulet with his name... but the amulet with his name.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_11"); //What?!
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_12"); //The amulet is not an ordinary protective amulet.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_13"); //It belongs to a genre of artifacts with unfortunate characteristics.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_14"); //The nek amulet for its part takes possession of its wearer over time... and bring him death sooner or later.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_15"); //What...?! But at least that would explain a lot...
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_16"); //In any case, these pieces have a high collector's value with black magicians and occultists.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_17"); //They come from a cursed bog in Relendel.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_18"); //And there must also be the other part of the amulet, which represents the back of the nek amulet.... at least it did.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_19"); //Nek was a treasure hunter in the bog before the colony... and he once told about another amulet...
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_20"); //But since he didn't carry it, it could still be there.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_21"); //And I'm supposed to find this now.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_32_22"); //Exactly. What do you say?
};

INSTANCE Info_Mod_Sancho_Dam2 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam2_Condition;
	information	= Info_Mod_Sancho_Dam2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'll get the amulet.";
};

FUNC INT Info_Mod_Sancho_Dam2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Dam))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam2_15_00"); //I'll get the amulet.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_01"); //Good. The other part is the Dam amulet. It brings damnation to the bearer.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_02"); //This set - death and damnation - should have a much higher value than the single pieces.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_03"); //If you get it for me, I'm sure no one in the camp will have any objection to you coming by the camp and trading with our boys.... however.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_04"); //Gives enough in our warehouse, which is of value and benefit.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_05"); //Check out the golden liquid manure at the tavern near the moor.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_32_06"); //You all right? Okay. Then get on your way.

	Log_CreateTopic	(TOPIC_MOD_SANCHO_DAM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SANCHO_DAM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SANCHO_DAM, "If I bring Sancho the Dam amulet, I get to the bandit camp. He told me that the best place to ask around was in the tavern for the golden liquid manure, which is located in the cursed bog in Relendel.");
};

INSTANCE Info_Mod_Sancho_Dam3 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam3_Condition;
	information	= Info_Mod_Sancho_Dam3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the Dam amulet.";
};

FUNC INT Info_Mod_Sancho_Dam3_Condition()
{
	if (Npc_HasItems(hero, ItAm_Dam) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam3_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam3_15_00"); //I have the Dam amulet.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_01"); //(unbelieving) What?! Can't be. Show me!

	B_GiveInvItems	(hero, self, ItAm_Dam, 1);

	AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_02"); //Actually. That's what I call clean work. I didn't think you'd survive the moor.

	if (self.aivar[AIV_PASSGATE] == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_03"); //You have more than earned the entrance to our camp... even if you're not yet a bandit.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_04"); //But I can give you a hint. One of our boys has positioned himself in the port city.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_05"); //He is looking for capable and experienced men, those who already belong to a big guild.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_32_06"); //But shouldn't be the City Watch...

		self.aivar[AIV_PASSGATE] = TRUE;
	};

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_SANCHO_DAM, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sancho_Parole (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Parole_Condition;
	information	= Info_Mod_Sancho_Parole_Info;
	permanent	= 0;
	important	= 0;
	description	= "(dissolution word)";
};

FUNC INT Info_Mod_Sancho_Parole_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_HabSchwert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Parole_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Parole_15_00"); //Dex-Ban.
	AI_Output(self, hero, "Info_Mod_Sancho_Parole_32_01"); //Well, you may pass.

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Sancho_Asylanten (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Asylanten_Condition;
	information	= Info_Mod_Sancho_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you guys planning next?";
};

FUNC INT Info_Mod_Sancho_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_00"); //What are you guys planning next?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_01"); //(laughs) You don't know that yet?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_02"); //(confidential) We sneak up to the Old Camp at night, sneak out the guards and storm the castle.
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_03"); //Is that so?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_04"); //How stupid do you think I am to blabber our plans?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_05"); //Do you want me to volunteer to go to jail?
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_06"); //But you don't plan on moving to Khorinis next?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_07"); //Let's not worry about that. (laughs) But I'll let you know when the time comes, kid.
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_32_08"); //Weirdo.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Sancho won't tell me what the bandits are up to.");
};

const string Sancho_Checkpoint	= "SANCHO_DIST_CHECKPOINT";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Sancho_FirstWarn (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_FirstWarn_Condition;
	information	= Info_Mod_Sancho_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Sancho_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Sancho_Checkpoint) <= 500) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_FirstWarn_Info()
{
	if (Npc_HasItems(hero, ItWr_AliBotschaft) == 0)
	{
		AI_Output (self, hero,"Info_Mod_Sancho_FirstWarn_32_00"); //HALT! No one is allowed to enter the camp without a password.
	}
	else
	{
		AI_Output (self, hero,"Info_Mod_Sancho_FirstWarn_32_01"); //(bored) Password?
	};

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Sancho_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Sancho_SecondWarn (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_SecondWarn_Condition;
	information	= Info_Mod_Sancho_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Sancho_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Sancho_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Sancho_SecondWarn_32_00"); //I'll tell you one last time. One more step and you'll enter the world of pain!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Sancho_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Sancho_Attack (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Attack_Condition;
	information	= Info_Mod_Sancho_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Sancho_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Sancho_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Sancho_Attack_32_00"); //You asked for it...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Sancho_Pickpocket (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Pickpocket_Condition;
	information	= Info_Mod_Sancho_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sancho_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

	Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_BACK, Info_Mod_Sancho_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sancho_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sancho_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sancho_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sancho_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sancho_EXIT (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_EXIT_Condition;
	information	= Info_Mod_Sancho_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sancho_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sancho_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
