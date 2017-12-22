INSTANCE Info_Mod_Cronos_AW_Artefakt_01 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_01_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard you guys were tracking down an artifact...";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_05))
	&& (Mod_Cronos_Artefakt == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_15_00"); //I heard you guys were tracking down an artifact...
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_03_01"); //Ahh, Saturas told you about it... Well, it's more speculations, soft hopes, than real leads.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_03_02"); //Oh, it's actually very unlikely, almost foolish to seriously consider that something might be true.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "My curiosity was aroused.", Info_Mod_Cronos_AW_Artefakt_01_B);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "I see. Then I'll go back to my duties.", Info_Mod_Cronos_AW_Artefakt_01_A);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_D()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_00"); //The descriptions of this beast reminded me of events that took place more than 200 years ago.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_01"); //According to tradition, a mighty artifact - the crystal of absorption - was stored in an adano temple on the island of Khorinis.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_02"); //But a deceptive and greedy novice took possession of the temple's treasures, killed the keeper of these sanctuaries and buried his body in the wilderness.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_03"); //When the other Adanosmages now noticed the robbery of the treasures and the disappearance of their guardian, many came to the assumption that it was he who robbed the treasure and then fled.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_04"); //But Adanos sent a dream to one of the water magicians, in which the murdered one complained of his fate: that he had been assassinated by a servant of Adanos and that his mortal remains had been exposed to the consumption of wild animals.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_05"); //As a result, an investigation was initiated in which the evidence of the shameful novices was consolidated.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_06"); //When he was interrogated, he swore to know nothing of everything and openly implored Adanos to testify of his pure nature.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_07"); //Adanos is said to have been so enraged by the sacrilegious behaviour of the novice that at the same moment he turned him into a bloodthirsty beast before everyone's eyes, which corresponded to his nature.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_08"); //The magicians turned their magic against the beast in horror, but this seemed to have no effect.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_09"); //It snarled and fled to the surrounding woods. There it is said to have met hunters a few more times, whose weapons were also ineffective.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_10"); //Among the novice's things, however, the mages found some of the stolen treasures, but not the important artifact.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_D_15_11"); //Consequently, it must still be in the possession of the novice, uh, beast?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_12"); //Yeah, that's the assumption. Only after a few years the beast disappeared without a trace.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_13"); //And now, after so many decades, the first possible clue, though so unlikely.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_14"); //The essence could have a completely different origin, and even if it should correspond to that of the traditions, it would still be questionable whether the artifact is still in his possession.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_15"); //Apart from the fact that the divine protection spell prevents it from ending its miserable existence...
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "And even if the probability seems to be low (.... )", Info_Mod_Cronos_AW_Artefakt_01_F);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "Then one should rather devote oneself to the other things (.... )", Info_Mod_Cronos_AW_Artefakt_01_E);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_B()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_B_15_00"); //My curiosity was aroused. What's this mysterious situation you're dealing with?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_01"); //Well, at first it was only rumours that a bloodthirsty beast was reported, which is said to have an unbridled appetite for meat.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_02"); //It was reported that she would not be harmed by ordinary weapons or man-made magic.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_03"); //I didn't pay much attention to these reports at first, I thought it was fantasies and lies of ordinary people.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_04"); //But lately, however, such reports have been made and even farms around the city and Onar's court are said to have been attacked by the beast.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "(more)", Info_Mod_Cronos_AW_Artefakt_01_D);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "But what does all this have to do with an artifact?", Info_Mod_Cronos_AW_Artefakt_01_C);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_C()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_C_15_00"); //But what does all this have to do with an artifact?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_C_03_01"); //Have a little patience. I was just going to talk about that.
	
	Info_Mod_Cronos_AW_Artefakt_01_D();
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_A()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_A_15_00"); //I see. Then I'll go back to my duties.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_FAILED);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_F()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_F_15_00"); //And no matter how low the likelihood may seem: for an artifact that can help to effect the will of our Lord Adanos, risks and efforts must also be called upon. I'm going to look for it.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_01"); //I was secretly hoping you'd agree to do so. But don't take any unnecessary risks in your quest for Adano's sake.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_02"); //Try to find out more from the smaller farms and hunters in the area.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_03"); //Maybe then it will become clear whether or not there is anything wrong with it. But if you do.... Here you have some spell rolls and potions that will certainly be useful to you in your search.

	B_ShowGivenThings ("10 potions and 7 spell rolls received");

	CreateInvItems	(hero, ItPo_Mana_01, 7);
	CreateInvItems	(hero, ItPo_Speed, 3);
	CreateInvItems	(hero, ItSc_Icecube, 4);
	CreateInvItems	(hero, ItSc_LightHeal, 3);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_04"); //And don't forget, this creature should be able to withstand any kind of man-made magic and guided weapons.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_05"); //So your water magic will only be able to stop him - if at all - for a short time...
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_06"); //And now I wish you every success. May Adanos keep you safe on your ways.
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Mod_Cronos_Artefakt = 1;

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "I'm supposed to visit the surrounding farms and hunters, so that I might find the trail of a beast that is said to be resistant to magic and ordinary weapons, in order to snatch the crystal of absorption from it - if it still carries it.");
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_E()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_E_15_00"); //Then one should rather devote oneself to the other things that require our attention and devotion.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_E_03_01"); //(disappointed) Yes, I suppose you're right, it's more reasonable...
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_FAILED);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_02 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_02_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the artifact.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_01))
	&& (Mod_Cronos_Artefakt == 2)
	&& (Mod_AbsorbKristall == 1)
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_02_15_00"); //I have the artifact.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_01"); //(unbelieving) What?! You've got to be kidding me...

	B_GiveInvItems	(hero, self, ItMi_AbsorbKristall, 1);

	Npc_RemoveInvItems	(self, ItMi_AbsorbKristall, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_02"); //Not possible... where, like--
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_02_15_03"); //Between a lot of filth and dirt.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_04"); //I don't know what to say. The value of this service that you have given to the Adanos community, I can hardly put into words.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_05"); //I have to discuss it with my brothers. Come back tomorrow.

	B_GivePlayerXP	(400);

	Mod_Cronos_Artefakt = 3;

	Mod_Cronos_AbsorberTest = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_03 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_03_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	&& (Wld_GetDay() > Mod_Cronos_AbsorberTest)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_00"); //Unfortunately, as we found out, the crystal has lost its power in the meantime.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_01"); //But the possibilities of giving him his strength back to life have hardly been explored yet.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_02"); //But now for your more than deserved reward. Myxir has recently translated some old scripts and from them he has won this guide to forging a magical ring of our Lord.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_03"); //Here, thou shalt be the first to receive the power of this ring.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_AdanosRing, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_04"); //Apart from that, I leave you as a worthy servant of Adanos some of our precious sayings and potions. Use it wisely.

	CreateInvItems	(hero, ItPo_Mana_01, 5);
	CreateInvItems	(hero, ItPo_Mana_02, 5);
	CreateInvItems	(hero, ItPo_Mana_03, 5);
	CreateInvItems	(hero, ItSc_IceCube, 3);
	CreateInvItems	(hero, ItSc_IceWave, 2);
	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_Thunderball, 3);

	B_ShowGivenThings ("15 potions and 9 spell rolls received");

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_05"); //Oh, how foolish of me, with all the excitement about the crystal of our Lord, I forgot to inquire about the fate of the cursed novice.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_06"); //So report: What about the cursed creature?

	if (Mod_Untier_Tot == FALSE)
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_07"); //She lives her existence in a cave on a mountain in the northeast of Khorinis.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_08"); //Hmm, I hope she won't devastate the environment too much in the future...
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_09"); //She won't do any harm.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_10"); //You're not saying you could defeat them, are you?
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_11"); //The protection spell could not resist all means.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_12"); //Again, your audacity makes me almost speechless. You've done a great service to all of Khornis.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_13"); //Here, take this potion and a rune of your choice as a reward.

		B_GivePlayerXP	(350);

		B_GiveInvItems	(self, hero, ItPo_Perm_Mana, 1);

		Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);

		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Ice Lance", Info_Mod_Cronos_AW_Artefakt_03_H);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "ice ball", Info_Mod_Cronos_AW_Artefakt_03_G);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Heal Light Wounds", Info_Mod_Cronos_AW_Artefakt_03_E);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Summon Wolf", Info_Mod_Cronos_AW_Artefakt_03_D);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Lightning", Info_Mod_Cronos_AW_Artefakt_03_B);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Light", Info_Mod_Cronos_AW_Artefakt_03_A);
	};

	B_Göttergefallen(2, 2);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_H()
{
	B_GiveInvItems	(self, hero, ItRu_Icelance, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_G()
{
	B_GiveInvItems	(self, hero, ItRu_InstantIceball, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_F()
{
	B_GiveInvItems	(self, hero, ItRu_SumGobEis, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_E()
{
	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_D()
{
	B_GiveInvItems	(self, hero, ItRu_SumWolf, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_C()
{
	B_GiveInvItems	(self, hero, ItRu_Icebolt, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_B()
{
	B_GiveInvItems	(self, hero, ItRu_Zap, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_A()
{
	B_GiveInvItems	(self, hero, ItRu_Light, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_04 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_04_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "I could use your advice.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_03))
	&& (Mod_WM_ArtefaktSammler == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_04_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_00"); //I could use your advice.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_01"); //What's this about?
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_02"); //The crystal of absorption. Saturas told me that only a divine messenger would be able to restore his power.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_03"); //What is it with this divine messenger and where can I find one?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_04"); //This should be a difficult undertaking. The last trace of a divine messenger points to Jharkendar. It seems to go back many centuries, before the fall of the old culture.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_05"); //I could infer from their ancient writings that a mighty God - who, I could not decipher - once let his gaze wander on the earth and looked out for someone who could be worthy to keep the balance on earth.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_06"); //However, he had to realize that everyone was more inclined to one side or the other. But then his gaze and favor fell on someone whom he chose as his servant and gave part of his divine power.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_07"); //Unfortunately, the fonts here are heavily weathered. The symbol could stand for a land creature, presumably an animal, which could possibly be a kind of heraldic animal of his chosen servant.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_08"); //And given the case, I wanted to find this divine messenger anyway. What should I do?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_09"); //Hmm, you'd have to find a sacrificial altar of the ancient people and perform a sacrificial ritual. I have been able to decipher an ancient recipe for sharing that served to call supernatural beings and spirits.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_10"); //Unfortunately, I couldn't decipher the last ingredient. But it should be something edible. You would have to try something around and hope not to call evil spirits and demonic beings on the plan.

	B_GiveInvItems	(self, hero, ItWr_CronosAbsorbKristall, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_11"); //But if you really try, I hereby hand over the crystal. Take good care of him.

	B_GiveInvItems	(self, hero, ItMi_AbsorbKristall, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "From Cronos I have received the crystal of absorption and a recipe that I can use to call a divine messenger. The ritual must be performed at a sacrificial altar of the ancient culture, where the last ingredient is unknown but will be something edible. Cronos said that the divine messenger was depicted as a symbol for a land creature, which he suspected could be a heraldic animal.");
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_05 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_05_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "The power of the crystal is restored.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AdanosDog_Kristall))
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_05_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_05_15_00"); //The power of the crystal is restored.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_05_03_01"); //What?! Not possible... Take him to Satruras quickly. He can be a powerful weapon in the fight against the monsters.
};

INSTANCE Info_Mod_Cronos_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Cronos_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, this bag is from Vatras.";
};

FUNC INT Info_Mod_Cronos_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	&& (Npc_HasItems(hero, ItMi_CronosBeutel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_00"); //Here, this bag is from Vatras.

	B_GiveInvItems	(hero, self, ItMi_CronosBeutel, 1);

	Npc_RemoveInvItems	(self, ItMi_CronosBeutel, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Zeremoniendolch_03_01"); //Thank Adanos! We're running out of food.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_02"); //I'm sure Vatras will be able to send more soon.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Zeremoniendolch_03_03"); //That's good, thank you.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_04"); //Don't mention it.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Cronos_AW_Gast (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Gast_Condition;
	information	= Info_Mod_Cronos_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come along anyway?";
};

FUNC INT Info_Mod_Cronos_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Cronos_AW_Gast.description = "Did you hear anything about the theft?";
	}
	else
	{
		Info_Mod_Cronos_AW_Gast.description = "Did you notice anything tonight?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Gast_15_00"); //Did you hear anything about the theft?
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_01"); //No, but I am angry at the audacity with which important material is stolen before our very eyes.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_02"); //I can't work without the lab water bottles!
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Gast_15_03"); //Did you notice anything tonight? A thief robbed you.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_04"); //Stolen? Here? But I actually saw something.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_05"); //I couldn't sleep well all night.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_06"); //Merdarion snores like crazy and Riordian grunts and moans.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_07"); //Once I thought I heard a soft rustle, so I turned around and saw a movement back there in the ruins.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_08"); //If that's the thief, he'll get hurt!

		B_LogEntry	(TOPIC_MOD_SATURAS_NACHTGAST, "Cronos saw movement in the ruins. Maybe there's a clue for the thief there.");

		Mod_Saturas_Gast_Fortschritt = 1;

		Wld_InsertNpc	(Mod_115_NONE_Eremit_AW, "WP_TEMPEL_START_EREMIT_07");
	};
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know how to tame wild animals?";
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Fleisch))
	&& (Npc_HasItems(self, ItWr_TierZaehmung) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_00"); //Do you know how to tame wild animals?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_01"); //You want to tame animals? Hmm, that's not easy.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_02"); //Especially animals that are hostile to humans pose a challenge even for experienced magicians...
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_03"); //What about wild goats?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_04"); //These creatures are neutral until attacked. This makes it much easier to influence their minds.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_05"); //I could make you spell rolls for that purpose. I'd need some ingredients, though.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_06"); //What do you need?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_07"); //Hmm, it might be enough for you to get me two pieces of raw goat meat and a goatskin.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_08"); //Here in the mountains I heard wild goats bleating....

	Wld_InsertNpc	(Wild_Ziege,	"FP_ITEM_ENTRANCE_06");
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen2 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen2_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got the ingredients for the spell roll.";
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_TiereZaehmen))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 2)
	&& (Npc_HasItems(hero, ItAt_ZiegenFur) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen2_15_00"); //I've got the ingredients for the spell roll.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 2);
	Npc_RemoveInvItems	(hero, ItAt_ZiegenFur, 1);

	B_ShowGivenThings	("2 pieces of raw meat and goatskin given");

	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen2_03_01"); //Very good. Very good. Come back tomorrow, the production should be finished.

	Mod_Cronos_ZiegenScroll = Wld_GetDay();
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen3 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen3_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_TiereZaehmen2))
	&& (Wld_GetDay() > Mod_Cronos_ZiegenScroll)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen3_03_00"); //I'm glad you came. Here's your part of the story.

	B_GiveInvItems	(self, hero, ItSc_ZiegeZaehmen, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen3_03_01"); //It was simpler than thought to combine the ingredients with the paper.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spelling roll? ZIEGE ZÄHMEN?: 2 raw meat, 1 goatskin");

	PLAYER_TALENT_SCROLLS[SCROLL_ZIEGEZAEHMEN] = TRUE;
};

INSTANCE Info_Mod_Cronos_Pickpocket (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_Pickpocket_Condition;
	information	= Info_Mod_Cronos_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cronos_Pickpocket_Condition()
{
	C_Beklauen	(145, ItSc_IceRain, 2);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

	Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_BACK, Info_Mod_Cronos_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cronos_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cronos_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cronos_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cronos_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
