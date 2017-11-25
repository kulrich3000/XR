INSTANCE Info_Mod_UrShak_Hi (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Hi_Condition;
	information	= Info_Mod_UrShak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UrShak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Hi_18_00"); //Strangers are greeted by me.
	AI_Output(hero, self, "Info_Mod_UrShak_Hi_15_01"); //Ur-Shak, it's me.
	AI_Output(self, hero, "Info_Mod_UrShak_Hi_18_02"); //You be a friend. You saved me from warriors from Orcstadt. I'm still very grateful to you.
};

INSTANCE Info_Mod_UrShak_WasHier (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_WasHier_Condition;
	information	= Info_Mod_UrShak_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_UrShak_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_WasHier_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_UrShak_WasHier_18_01"); //After friend has destroyed Krushak, Ur Shak has taken hit Tarrok. Together have decided to found new Klan.
	AI_Output(self, hero, "Info_Mod_UrShak_WasHier_18_02"); //As camp we have taken old fortress in rocks. Here we are protected from evil orcs.
};

INSTANCE Info_Mod_UrShak_Foki (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Foki_Condition;
	information	= Info_Mod_UrShak_Foki_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the focus?";
};

FUNC INT Info_Mod_UrShak_Foki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_WasHier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Foki_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Foki_15_00"); //What do you know about the focus?
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_01"); //Here on podium a focus have been confessed, but one night it was gone.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_02"); //When Focus had disappeared, Ur Shak was gone to friend Xardas. He explained that there are five focus points.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_03"); //He Ur Shak give map where drawn all the locations of Fokusse. As a result Ur Shak have sent Tarrok to look for focus on stones.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_04"); //However, even this focus is already gone. Xardas suspect that orcs have stolen focus to resurrect Krushak.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_05"); //But that must not happen. Friend need to find remaining focuses and bring those of Orcs.
	AI_Output(hero, self, "Info_Mod_UrShak_Foki_15_06"); //I'm looking for the focus anyway.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_07"); //Friend are also looking for focus? Then Ur Shak will help friend as best he can.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_08"); //Ranad know a lot about it. He still sometimes still sometimes watch camps of orcs.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_18_09"); //At present it is located at the top in fortress. Go to him and talk to him. He probably have a lot of information for friend.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE,	"It seems the orcs in the Orc City are also after the Foki. I'm here to speak to a man named Ranad in the fortress. He's the spy of the orcs and I'm sure he has some interesting information for me.");
};

INSTANCE Info_Mod_UrShak_Mitmachen (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Mitmachen_Condition;
	information	= Info_Mod_UrShak_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The ritual of the orcs in town didn't work out.";
};

FUNC INT Info_Mod_UrShak_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Mitmachen_15_00"); //The ritual of the orcs in town didn't work out.
	AI_Output(self, hero, "Info_Mod_UrShak_Mitmachen_18_01"); //That's not called Krushak his back?
	AI_Output(hero, self, "Info_Mod_UrShak_Mitmachen_15_02"); //No. Thanks to Ranad, who led me to Hosh Pak, I was able to kill him and bring the focus into my possession.
	AI_Output(self, hero, "Info_Mod_UrShak_Mitmachen_18_03"); //Be good.
};

INSTANCE Info_Mod_UrShak_Oschust (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Oschust_Condition;
	information	= Info_Mod_UrShak_Oschust_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Oschust_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_BanditenKidnapped))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Oschust_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_18_00"); //Hello, friend. Ranad Ur Shak reported that orcs captured people from camp in Bergen.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_18_01"); //In addition, want to launch attack on stock and to get magicians to get amulet.
	AI_Output(hero, self, "Info_Mod_UrShak_Oschust_15_02"); //That's why I'm looking for your advice. The prisoners are my friends from the bandit camp. I want to make an attempt to free them.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_18_03"); //Will be his hard task. Well guarded by orcs they are in Orkstadt in underground cave.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_18_04"); //Ur Shak know that you are his strong warrior. But that's not enough to free your friends.
	AI_Output(hero, self, "Info_Mod_UrShak_Oschust_15_05"); //I will probably have to seek the support of the transforming magicians. Thanks for the information.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_18_06"); //Ur Shak likes to help friends and wish success in difficult tasks.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I should turn to the transforming magician Albert to tell him about the dangers that threaten his camp. Maybe this is how I can get support...");
};

INSTANCE Info_Mod_UrShak_Xeres (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Xeres_Condition;
	information	= Info_Mod_UrShak_Xeres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Xeres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Xeres_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Xeres_18_00"); //I'm glad friends are coming. Ur Shak have bad news. Orcs from town have new leaders. Looks like human, but not quite alive.
	AI_Output(self, hero, "Info_Mod_UrShak_Xeres_18_01"); //He orcs want to make his army. Friend must prevent.

	B_LogEntry	(TOPIC_MOD_XERES, "Xeres seems to want to make all orcs his servants. Ur Shak wants me to stop it.");
};

INSTANCE Info_Mod_UrShak_Karte (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Karte_Condition;
	information	= Info_Mod_UrShak_Karte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Karte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	&& (Npc_HasItems(hero, ItWrWorldmap) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Karte_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Karte_18_00"); //Seeing Ur Shak, friend's bad card. Ur Shak will do whole.

	Npc_RemoveInvItems	(hero, ItWrWorldmap, 1);
	CreateInvItems	(hero, ItWrWorldmap_Orc, 1);

	AI_Output(self, hero, "Info_Mod_UrShak_Karte_18_01"); //Now map its all.
};

INSTANCE Info_Mod_UrShak_Biftek (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Biftek_Condition;
	information	= Info_Mod_UrShak_Biftek_Info;
	permanent	= 0;
	important	= 0;
	description	= "You know about Biftek's problem?";
};

FUNC INT Info_Mod_UrShak_Biftek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Biftek_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_00"); //You know about Biftek's problem?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_01"); //Yeah. But every orc can get used to herbs and mushrooms, they just don't want to.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_02"); //Isn't there no way to make him taste plants? Do you orcs usually only eat meat?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_03"); //(thought) Ur Shak da fall an old recipe to make a substitute for meat. Orcs call it To-Fu.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_04"); //What does that mean?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_05"); //Doesn't mean anything, is name.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_06"); //And how do you prepare this To-Fu?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_07"); //Ur Shak must look in his notes. (sees)
	
	AI_PlayAni(self, "r_Roam1");
	
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_08"); //There, he even have recipe humans can understand.
	
	B_GiveInvItems(self, hero, ItWr_TofuRezept, 1);
	
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_09"); //Man must look for so-yes plant and harvest their pods. In the pods he find small beans. Ur Shak do not know whether So-Ja plants grow here too, but in the area of Orcs definitely do.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_10"); //In recipe stand, you have to take So-Ja press to make To-Fu. But man can also use alchemy table.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_18_11"); //When finished, Biftek say that meat for him to have, and he will not notice any difference.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_12"); //Thanks, that sounds like a plan.
	
	B_LogEntry	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, "Ur Shak suggests to prepare Biftek a certain To-Fu. It is obtained from the So-Ja plant, which was supposed to grow everywhere in the Minental, but especially in the Orc area. All information about the preparation can be found in the recipe that Ur Shak entrusted to me. Apparently, I can make the To-Fu at any alchemy table.");
	
	Mod_Soja_01 = 0;
	Mod_Soja_02 = 0;
	Mod_Soja_03 = 0;
	Mod_Soja_04 = 0;
	Mod_Soja_05 = 0;
	Mod_Soja_06 = 0;
	Mod_Soja_07 = 0;
	Mod_Soja_08 = 0;
	Mod_Soja_09 = 0;
	Mod_Soja_010 = 0;
	Mod_Soja_011 = 0;
	Mod_Soja_012 = 0;
	Mod_Soja_013 = 0;
	Mod_Soja_014 = 0;
	Mod_Soja_015 = 0;
	Mod_Soja_016 = 0;
	Mod_Soja_017 = 0;
	Mod_Soja_018 = 0;
	Mod_Soja_019 = 0;
	Mod_Soja_020 = 0;
	Mod_Soja_021 = 0;
	Mod_Soja_022 = 0;
	Mod_Soja_023 = 0;
	Mod_Soja_024 = 0;
	Mod_Soja_025 = 0;
	Mod_Soja_026 = 0;
	Mod_Soja_027 = 0;
	Mod_Soja_028 = 0;
	Mod_Soja_029 = 0;
	Mod_Soja_030 = 0;
};

INSTANCE Info_Mod_UrShak_Biftek2 (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Biftek2_Condition;
	information	= Info_Mod_UrShak_Biftek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Biftek is also satisfied with To-Fu.";
};

FUNC INT Info_Mod_UrShak_Biftek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Biftek2_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_00"); //Biftek is also satisfied with To-Fu.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek2_18_01"); //Ur Shak will be surprised. He's expecting bigger problems.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_02"); //Nothing that couldn't be solved. Soon he should be strengthened again and be able to help.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek2_18_03"); //Be grateful for human help!
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_04"); //Not a thing.
};

INSTANCE Info_Mod_UrShak_PolochTretor (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_PolochTretor_Condition;
	information	= Info_Mod_UrShak_PolochTretor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_PolochTretor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Won))
	|| (Npc_KnowsInfo(hero, Info_Mod_Poloch_Lost))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_PolochTretor_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_PolochTretor_18_00"); //Ur Shak listen to Tretor and Poloch now best friends, and man have his fingers in the game.
	AI_Output(hero, self, "Info_Mod_UrShak_PolochTretor_15_01"); //Yeah, at the expense of a few bruises.
	AI_Output(self, hero, "Info_Mod_UrShak_PolochTretor_18_02"); //Man take what Ur Shak find in mountain fortress. Orcs can't use it.
	
	B_GiveInvItems(self, hero, ItMi_Gold, 150);
	
	AI_Output(hero, self, "Info_Mod_UrShak_PolochTretor_15_03"); //Thanks.
};

INSTANCE Info_Mod_UrShak_EXIT (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_EXIT_Condition;
	information	= Info_Mod_UrShak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_UrShak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UrShak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
