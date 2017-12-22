INSTANCE Info_Mod_Cutter_Anbau (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Anbau_Condition;
	information	= Info_Mod_Cutter_Anbau_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is grown here?";
};

FUNC INT Info_Mod_Cutter_Anbau_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Anbau_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_00"); //What is grown here?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_01"); //Uh... Grain.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_02"); //So, is it growing well?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_03"); //I don't know about that. Looks better than the last two times.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_04"); //Ian said the seeds need water. But I don't understand, trees grow like that.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_05"); //Ian also suggested we dump some shit on the fields, but I said it was just over my dead body.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_06"); //We want to eat the grain later.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_07"); //I can see you have no idea what you're doing.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_08"); //Shut up, all right?! We even had a book about how to grow plants, but some bum tore it up and used it to make fires.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_09"); //There may be another one or two of them flying around. Well, it doesn't help us either.
};

INSTANCE Info_Mod_Cutter_Barriere (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Barriere_Condition;
	information	= Info_Mod_Cutter_Barriere_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you like life without barriers?";
};

FUNC INT Info_Mod_Cutter_Barriere_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Barriere_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Barriere_15_00"); //How do you like life without barriers?
	AI_Output(self, hero, "Info_Mod_Cutter_Barriere_06_01"); //I should have left with Scorpio. Since we ran out of mines, life here in the camp has been going downhill.
};

INSTANCE Info_Mod_Cutter_Dokumente (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dokumente_Condition;
	information	= Info_Mod_Cutter_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Maybe this guide will help you planting.";
};

FUNC INT Info_Mod_Cutter_Dokumente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehrling_Cutter))
	&& (Npc_HasItems(hero, ItWr_Lehrling01) == 1)
	&& (Npc_HasItems(hero, ItWr_Lehrling02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_00"); //Maybe this guide will help you planting.

	Npc_RemoveInvItems	(hero, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Sheets given to the apprentice");

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_01"); //Hey, man, that's from the book I told you about!

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_02"); //That will certainly help us. There are a lot of technical terms in it, but I understand what it's about.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_03"); //I'll even let a little pay for it.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_04"); //Good luck growing them.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_05"); //Nothing can go wrong now.

	AI_TurnToNpc	(self, Mod_1440_BUD_Buddler_MT);

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_06"); //(shouts to the Buddhists) Wait a minute! You must hold the scythe the other way!

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_Dieb (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dieb_Condition;
	information	= Info_Mod_Cutter_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Goods were stolen from the baron's house....";
};

FUNC INT Info_Mod_Cutter_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dieb_15_00"); //Goods were stolen from the baron's house, and I think you had something to do with it.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_06_01"); //What?! You want me to steal? I'm trying to stop the theft, but when I'm awake, this ragamuffin doesn't dare to steal anything.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_06_02"); //It's enough for me to see that Fisk is selling stolen goods.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter apparently tries to find the thief himself. He could tell me Fisk was selling the stolen property.");
};

INSTANCE Info_Mod_Cutter_Frage (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Frage_Condition;
	information	= Info_Mod_Cutter_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about....";
};

FUNC INT Info_Mod_Cutter_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Frage_15_00"); //What do you know about the theft from the House of Archbarons?
	AI_Output(self, hero, "Info_Mod_Cutter_Frage_06_01"); //Not enough, just that this Fisk sells the stolen goods.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter apparently tries to find the thief himself. He could tell me Fisk was selling the stolen property.");
};

INSTANCE Info_Mod_Cutter_Dealer (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dealer_Condition;
	information	= Info_Mod_Cutter_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where would I...?";
};

FUNC INT Info_Mod_Cutter_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dealer_15_00"); //Wo würde ich am ehesten "particular" Ware bekommen?
	AI_Output(self, hero, "Info_Mod_Cutter_Dealer_06_01"); //What, you're asking me about stolen goods? Fucking rag dealer Fisk sells enough of it. Go to him before I report your question to Thorus.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter apparently tries to find the thief himself. He could tell me Fisk was selling the stolen property.");
};

INSTANCE Info_Mod_Cutter_WhatCrime (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_WhatCrime_Condition;
	information	= Info_Mod_Cutter_WhatCrime_Info;
	permanent	= 0;
	important	= 0;
	description	= "What crime have you been thrown into the colony for?";
};

FUNC INT Info_Mod_Cutter_WhatCrime_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_WhatCrime_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_WhatCrime_15_00"); //What crime have you been thrown into the colony for?
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_06_01"); //I used to be an Assassin in Varant. I was ordered to take out the King's judge, but I got caught.
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_06_02"); //Luckily, every prisoner was thrown into the colony at that time, otherwise he would surely have had me executed.
};

INSTANCE Info_Mod_Cutter_Costa (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Costa_Condition;
	information	= Info_Mod_Cutter_Costa_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do the two bodies next to Stone mean?";
};

FUNC INT Info_Mod_Cutter_Costa_Condition()
{
	if (Mod_Costa_Guertel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Costa_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Costa_15_00"); //What do the two bodies next to Stone mean?
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_06_01"); //Oh, those. Just two diggers we caught fleeing.
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_06_02"); //They'll be lying there for a few days now as a deterrent to the others.
};

INSTANCE Info_Mod_Cutter_Ambient (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Ambient_Condition;
	information	= Info_Mod_Cutter_Ambient_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cutter_Ambient_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Ambient_Info()
{
	AI_Output(self, hero, "Info_Mod_Cutter_Ambient_06_00"); //You're one of the fucking mercenaries. Get the fuck out of here!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_EXIT (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_EXIT_Condition;
	information	= Info_Mod_Cutter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cutter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
