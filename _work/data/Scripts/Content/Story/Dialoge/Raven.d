var int BEL_Erzumwandlung;

INSTANCE Info_Mod_Raven_Hi (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Hi_Condition;
	information	= Info_Mod_Raven_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_Hi_10_00"); //Beliar's hairy butt! I've seen you before!
	AI_Output(hero, self, "Info_Mod_Raven_Hi_15_01"); //(clears throat)
	AI_Output(self, hero, "Info_Mod_Raven_Hi_10_02"); //Or why am I desperate to get your face polished?
};

INSTANCE Info_Mod_Raven_WerBistDu (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_WerBistDu_Condition;
	information	= Info_Mod_Raven_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Rav.... Uh, I mean, who are you?";
};

FUNC INT Info_Mod_Raven_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_WerBistDu_15_00"); //Hello, Rav.... Uh, I mean, who are you?
	AI_Output(self, hero, "Info_Mod_Raven_WerBistDu_10_01"); //I'm Raven, chief of the Demon Knights. And from now on, I'll be keeping a close eye on you, boy.
};

INSTANCE Info_Mod_Raven_WarumDaemonenritter (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_WarumDaemonenritter_Condition;
	information	= Info_Mod_Raven_WarumDaemonenritter_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's so great about being a demon knight?";
};

FUNC INT Info_Mod_Raven_WarumDaemonenritter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_WarumDaemonenritter_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_WarumDaemonenritter_15_00"); //What's so great about being a demon knight?
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_10_01"); //(laughs) That we can shut up about little sausages like you if we want to.
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_10_02"); //We are Beliar's forces, armed with the most powerful weapons, armour, spells and the approval of the Dark God.
	AI_Output(self, hero, "Info_Mod_Raven_WarumDaemonenritter_10_03"); //In the near future, our army will be invincible.
};

INSTANCE Info_Mod_Raven_Belagerung (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Belagerung_Condition;
	information	= Info_Mod_Raven_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you all right?";
};

FUNC INT Info_Mod_Raven_Belagerung_Condition()
{
	if (GardeAnfangCutscene == 2)
	&& (Npc_IsDead(Mod_1999_UntoterNovize_04_MT))
	&& (Npc_IsDead(Mod_4000_UntoterNovize_05_MT))
	&& (Npc_IsDead(Mod_4001_UntoterNovize_05_MT))
	&& (Npc_IsDead(Mod_4002_UntoterNovize_06_MT))
	&& (Npc_IsDead(Mod_4003_UntoterNovize_07_MT))
	&& (Npc_IsDead(Mod_4004_UntoterNovize_08_MT))
	&& (Npc_IsDead(Mod_4005_UntoterNovize_09_MT))
	&& (Npc_IsDead(Mod_4006_UntoterMagier_01_MT))
	&& (Npc_IsDead(Mod_4007_UntoterMagier_02_MT))
	&& (Npc_IsDead(Mod_4008_UntoterMagier_03_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_00"); //Are you all right?
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_01"); //Yes, thank you. Those damn Innos bastards. What's the meaning of this? I thought there was peace!
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_02"); //This is not the responsibility of the monastery, but an amulet in which the so-called Innos' Guard was imprisoned.
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_03"); //Through the opening of the amulet it is free and now threatens our deity. I came here to support you.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_04"); //This scumbag. We're stuck here, and you're the only one who wants to help us?
	AI_Output(hero, self, "Info_Mod_Raven_Belagerung_15_05"); //I was planning to.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_06"); //(sighs) Well, then a lot of work is waiting for you!

	B_Say	(hero, self, "$WASISTZUTUN");

	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_07"); //Well, this attack has seriously weakened us. Talk to the important people here, they'll probably have enough to do for you to start a counterattack.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_08"); //Oh yes, I heard that in the valley basin on the way to Bengars Hof there should be a big group.
	AI_Output(self, hero, "Info_Mod_Raven_Belagerung_10_09"); //You should avoid them. We'll take care of that later.

	B_LogEntry	(TOPIC_MOD_BEL_BELAGERUNG, "We fought off the attackers, but we have been severely weakened. Raven thinks I should make myself useful.");
};

INSTANCE Info_Mod_Raven_BelagerungAufgabe (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_BelagerungAufgabe_Condition;
	information	= Info_Mod_Raven_BelagerungAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you want me to do?";
};

FUNC INT Info_Mod_Raven_BelagerungAufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_BelagerungAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungAufgabe_15_00"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungAufgabe_10_01"); //Not a damn thing! Help the others so we can prepare for a counterattack. Then we'll see.
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungAufgabe_15_02"); //All right, then.
};

INSTANCE Info_Mod_Raven_BelagerungHilfe (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_BelagerungHilfe_Condition;
	information	= Info_Mod_Raven_BelagerungHilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have I helped enough?";
};

FUNC INT Info_Mod_Raven_BelagerungHilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungAufgabe))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gomez_Durchbruch))
	&& (Npc_KnowsInfo(hero, Info_Mod_Eduard_Trolle))
	&& (Npc_KnowsInfo(hero, Info_Mod_Scar_HabBauanleitung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Abdi_DaemonTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Fahim_SchreinRepariert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_BelagerungHilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_00"); //Have I helped enough?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_10_01"); //You helped Scar get the novices new weapons. You fixed the Belarusian shrine for Fahim. You killed the demon. You have helped Eduard strengthen the weapons of our novices, and you have defeated most of the undead. All right, that's enough!
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_02"); //So what are the next steps?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_10_03"); //We must try to persuade the bandits to attack the remaining undead on the plateau. We cannot do this without support.
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_10_04"); //Only after we kill the enemies can we take care of Inno's guard ourselves.
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_05"); //How am I supposed to convince the mercenaries?
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_10_06"); //You have good contacts to the New Camp. Convince them to provide us with men!
	AI_Output(hero, self, "Info_Mod_Raven_BelagerungHilfe_15_07"); //I'm leaving soon.
	AI_Output(self, hero, "Info_Mod_Raven_BelagerungHilfe_10_08"); //Come on, hurry up. Time is not our ally! In the camp in front of the Free Mine you will surely find some supporters.

	B_GivePlayerXP	(800);

	Log_CreateTopic	(TOPIC_MOD_BEL_SOELDNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_SOELDNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "Within our fortress we are now quite safe again, but now we have to defeat the Innos' Guard. However, we have no chance against the undead alone. Raven asked me to ask the mercenaries at the Free Mine for their help.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELAGERUNG, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Raven_SoeldnerSold (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SoeldnerSold_Condition;
	information	= Info_Mod_Raven_SoeldnerSold_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's a little problem with the mercenaries.";
};

FUNC INT Info_Mod_Raven_SoeldnerSold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_BelagerungHilfe))
	&& (Mod_GornsSold == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SoeldnerSold_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_00"); //There's a little problem with the bandits.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_10_01"); //What's going on?
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_02"); //Bullco said his people were only 10. 000 gold pieces would be ready to fight with us!
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_10_03"); //This is a joke, right?
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerSold_15_04"); //Not at all.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_10_05"); //(angry) All right. Here's ten. 000 gold pieces.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10000);

	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerSold_10_06"); //I hope the mercenaries don't want any more.

	B_LogEntry	(TOPIC_MOD_BEL_SOELDNER, "Raven gave me the gold. Now I should take it to Bullco and then the battle can begin.");
};

INSTANCE Info_Mod_Raven_SoeldnerDabei (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SoeldnerDabei_Condition;
	information	= Info_Mod_Raven_SoeldnerDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "The mercenaries will support us.";
};

FUNC INT Info_Mod_Raven_SoeldnerDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bullco_Sold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SoeldnerDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerDabei_15_00"); //The bandits will support us. They'll attack tonight. They want us to come to the valley basin.
	AI_Output(self, hero, "Info_Mod_Raven_SoeldnerDabei_10_01"); //Very well, come to the plateau around midnight, there we will wait.
	AI_Output(hero, self, "Info_Mod_Raven_SoeldnerDabei_15_02"); //All right, all right.

	B_GivePlayerXP	(250);

	B_SetTopicStatus	(TOPIC_MOD_BEL_SOELDNER, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1030_SNOV_Abdi_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_518_SMK_Scar_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1029_SMK_Fahim_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_1027_SMK_Eduard_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "AUFSTELLUNG");
	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "AUFSTELLUNG");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Raven_ArgibastDead (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ArgibastDead_Condition;
	information	= Info_Mod_Raven_ArgibastDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_ArgibastDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argibast_Hi))
	&& (Npc_IsDead(GardeInnos_4050_Argibast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ArgibastDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_ArgibastDead_10_00"); //It is done, the siege is broken.
	AI_Output(hero, self, "Info_Mod_Raven_ArgibastDead_15_01"); //It wasn't easy.
	AI_Output(self, hero, "Info_Mod_Raven_ArgibastDead_10_02"); //You got that right. Now report to Xardas and let him know.
	AI_Output(hero, self, "Info_Mod_Raven_ArgibastDead_15_03"); //I will, I will.

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "START");
	B_StartOtherRoutine	(Mod_1030_SNOV_Abdi_MT, "START");
	B_StartOtherRoutine	(Mod_518_SMK_Scar_MT, "START");
	B_StartOtherRoutine	(Mod_1029_SMK_Fahim_MT, "START");
	B_StartOtherRoutine	(Mod_1027_SMK_Eduard_MT, "START");
	B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "START");
	B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "START");
	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "START");
	B_StartOtherRoutine	(Mod_1269_SLD_Blade_MT, "START");
};

INSTANCE Info_Mod_Raven_SchwarzesErz (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_SchwarzesErz_Condition;
	information	= Info_Mod_Raven_SchwarzesErz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've come to seek your advice.";
};

FUNC INT Info_Mod_Raven_SchwarzesErz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_Beliarstein))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_SchwarzesErz_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_00"); //I've come to seek your advice.
	AI_Output(self, hero, "Info_Mod_Raven_SchwarzesErz_10_01"); //What's this all about?
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_02"); //Fahim is going to fix the Belarusian shrine. However, its source has been destroyed and the new stone that I found requires the power of black ore to propel it, and thus also the Beliar shrine.
	AI_Output(hero, self, "Info_Mod_Raven_SchwarzesErz_15_03"); //However, there is no black ore left up here. Where can I get some?
	AI_Output(self, hero, "Info_Mod_Raven_SchwarzesErz_10_04"); //I know a way to turn normal ore into black ore. However, I need two chunks of ore to make black ore.

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Raven can produce black ore from magical ore. Now all I have to do is find two chunks of it.");
};

INSTANCE Info_Mod_Raven_MagischesErz (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_MagischesErz_Condition;
	information	= Info_Mod_Raven_MagischesErz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the ore.";
};

FUNC INT Info_Mod_Raven_MagischesErz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_SchwarzesErz))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_MagischesErz_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_MagischesErz_15_00"); //I got the ore.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 2);

	AI_Output(self, hero, "Info_Mod_Raven_MagischesErz_10_01"); //That's good news. Come back tomorrow and pick up the black ore.
	
	B_GivePlayerXP	(150);

	Bel_Erzumwandlung = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "I gave the ore to Raven. Tomorrow I can pick up the black ore.");
};

INSTANCE Info_Mod_Raven_ErzFertig (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ErzFertig_Condition;
	information	= Info_Mod_Raven_ErzFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you finished?";
};

FUNC INT Info_Mod_Raven_ErzFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_MagischesErz))
	&& (Wld_GetDay() > Bel_Erzumwandlung)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ErzFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_ErzFertig_15_00"); //Are you finished?
	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_10_01"); //Yeah, there's four chunks of black ore here.

	B_GiveInvItems	(self, hero, ItMi_Zeitspalt_Addon, 4);

	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_10_02"); //I've been able to double the amount with a multiplication spell!
	AI_Output(hero, self, "Info_Mod_Raven_ErzFertig_15_03"); //Thanks.
	AI_Output(self, hero, "Info_Mod_Raven_ErzFertig_10_04"); //Go now and continue to perform your tasks!
	
	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "I have the black ore now. Now to see Eduard.");
};

INSTANCE Info_Mod_Raven_ToteNovizen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_ToteNovizen_Condition;
	information	= Info_Mod_Raven_ToteNovizen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I think we have a serious problem.";
};

FUNC INT Info_Mod_Raven_ToteNovizen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_ToteNovizen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_ToteNovizen_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_00"); //I think we have a serious problem.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_01"); //What's going on?
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_02"); //I think a demon committed the murders!
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_03"); //A demon? We would have noticed that by now! Besides, Innos' followers have nothing to do with demons!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_04"); //Fire magicians are forbidden to summon demons. Why wouldn't the undead be able to do that?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_05"); //Even if we had, we would have noticed the presence of a demon long ago!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_06"); //Is there any exception?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_07"); //Yes, there are servants of evil who can use metarmorphoses. The power to transform into another being.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_08"); //The demon should have settled in one of our novices!
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_09"); //How can I recognize the demon?
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_10"); //You'd have to lie in wait at night and kill him.
	AI_Output(hero, self, "Info_Mod_Raven_ToteNovizen_15_11"); //Then I'll do that.
	AI_Output(self, hero, "Info_Mod_Raven_ToteNovizen_10_12"); //All right, but be careful! The demon must have snapped,
	
	Wld_InsertNpc	(Mod_4015_SNOV_BesessenerNovize_MT, "TOT");

	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "Raven considers a demon to be extremely unlikely unless he has settled in one of the campers. I'm supposed to be looking around at night.");
};

INSTANCE Info_Mod_Raven_Befoerderung (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Befoerderung_Condition;
	information	= Info_Mod_Raven_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a Black Warrior.";
};

FUNC INT Info_Mod_Raven_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_BefoerderungKrieger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Befoerderung_15_00"); //I want to be a Black Warrior.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_10_01"); //So you choose the path of struggle. That was the right decision.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_10_02"); //I will elevate you to the rank of Black Warrior.
	AI_Output(self, hero, "Info_Mod_Raven_Befoerderung_10_03"); //Here's your armour.

	CreateInvItems	(self, ITAR_SMK_L, 1);
	B_GiveInvItems	(self, hero, ITAR_SMK_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_SMK_L);

	B_GivePlayerXP	(400);

	B_Göttergefallen(3, 5);

	Mod_Gilde = 15;

	Snd_Play ("LEVELUP");
};

INSTANCE Info_Mod_Raven_GomezLebenLassen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_GomezLebenLassen_Condition;
	information	= Info_Mod_Raven_GomezLebenLassen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_GomezLebenLassen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Gomez))
	&& (!Npc_IsInState(Mod_680_DMB_Xardas_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_GomezLebenLassen_Info()
{
	AI_Output(self, hero, "Info_Mod_Raven_GomezLebenLassen_10_00"); //That's the truth. Let him live. I will also order the troops to leave your camp immediately.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raven_Oric (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Oric_Condition;
	information	= Info_Mod_Raven_Oric_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_Oric_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_Gomez))
	&& (!Npc_IsInState(Mod_7039_PAL_Oric_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Oric_Info()
{
	AI_TurnToNpc	(self, Mod_7039_PAL_Oric_MT);

	AI_Output(self, hero, "Info_Mod_Raven_Oric_10_00"); //shut up

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "DRAINED");
};

INSTANCE Info_Mod_Raven_GomezNervt (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_GomezNervt_Condition;
	information	= Info_Mod_Raven_GomezNervt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raven_GomezNervt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL3))
	&& (!Npc_IsInState(Mod_517_DMR_Gomez_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_GomezNervt_Info()
{
	AI_TurnToNpc	(self, Mod_517_DMR_Gomez_MT);

	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_10_00"); //If it hadn't been for me, that snapper pack at the end of the Mine Valley would have torn you apart and now you're working for me.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_10_01"); //As compensation, I give you the sword called Innos's wrath, which Gomez used during the old camp.
	AI_Output(self, hero, "Info_Mod_Raven_GomezNervt_10_02"); //May it be in your hands a sign for the bright future of the Old Camp.

	B_GiveInvItems	(self, hero, ItMw_1H_Blessed_03, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raven_Teacher (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Teacher_Condition;
	information	= Info_Mod_Raven_Teacher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Raven_Teacher_Condition()
{
	if(Npc_KnowsInfo(hero, Info_Mod_Raven_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Teacher_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Raven_Teacher_10_01"); //Yeah, I can show you how to get stronger.
	AI_Output(self, hero, "Info_Mod_Raven_Teacher_10_02"); //Besides, I can teach you how to use two-handed weapons.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Raven can teach me how to become stronger and how to handle two-handed weapons.");
};

INSTANCE Info_Mod_Raven_Lernen (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Lernen_Condition;
	information	= Info_Mod_Raven_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Raven_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Teacher))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Lernen_15_00"); //I want to learn.
	AI_Output(self, hero, "Info_Mod_Raven_Lernen_10_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(two-handed combat)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(strength)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(two-handed combat)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(strength)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Raven_Lernen);

		Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Raven_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Raven_Lernen);

		Info_AddChoice		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Raven_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Raven_Lernen_Zweihand_1);
	};
};	

FUNC VOID Info_Mod_Raven_Lernen_Staerke()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice	(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(two-handed combat)", Info_Mod_Raven_Lernen_Zweihand);
	Info_AddChoice	(Info_Mod_Raven_Lernen, "(strength)", Info_Mod_Raven_Lernen_Staerke);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Raven_Lernen_Staerke_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Raven_Lernen);

	Info_AddChoice 		(Info_Mod_Raven_Lernen, DIALOG_BACK, Info_Mod_Raven_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Raven_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Raven_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Raven_Pickpocket (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_Pickpocket_Condition;
	information	= Info_Mod_Raven_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Raven_Pickpocket_Condition()
{
	C_Beklauen	(161, ItMi_Gold, 92);
};

FUNC VOID Info_Mod_Raven_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

	Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_BACK, Info_Mod_Raven_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raven_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raven_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
};

FUNC VOID Info_Mod_Raven_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raven_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raven_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raven_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raven_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raven_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raven_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raven_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raven_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raven_EXIT (C_INFO)
{
	npc		= Mod_520_DMR_Raven_MT;
	nr		= 1;
	condition	= Info_Mod_Raven_EXIT_Condition;
	information	= Info_Mod_Raven_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raven_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
