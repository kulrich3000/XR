INSTANCE Info_Mod_HofstaatWeiberheld_Hi (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Hi_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Hi_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_01))
	|| (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_01)))
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_00"); //You won't have any luck with the women...
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_01"); //What?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_02"); //The courtly women are not like the women you know.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_03"); //Who are you, anyway?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_04"); //I'm the royal womanizer. And believe me, the women you know are different from the women in this country!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_05"); //In what way?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_06"); //Well... Court women are different.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_07"); //Yeah, I've heard that much, but how do they differ from the other women?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_08"); //The women?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_09"); //Yes...
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_10"); //Oh, so... I wrote a book.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_11"); //Good for you...
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_12"); //It contains all the peculiarities of courtly state women.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_13"); //Will you sell it to me?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_14"); //All right... but look, I'm a hell of a haggler.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_15"); //How much do you want?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_16"); //32 billion 435 million 684 thousand 341 gold pieces.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_17"); //A little overpriced...
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_18"); //All right... Two gold pieces.

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Still too much...", Info_Mod_HofstaatWeiberheld_Hi_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Bought.", Info_Mod_HofstaatWeiberheld_Hi_A);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_D_15_00"); //Still too much...

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_C_15_00"); //Bought.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_C_27_01"); //(laughs) But I took you over the table.

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_B()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_B_27_00"); //All right... I'll give you 100 gold pieces and the book.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Still too much...", Info_Mod_HofstaatWeiberheld_Hi_F);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Bought.", Info_Mod_HofstaatWeiberheld_Hi_E);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_B_27_01"); //No, no, no, there must be that much.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Bought.", Info_Mod_HofstaatWeiberheld_Hi_E);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_A()
{
	B_GiveInvItems	(hero, self, ItMi_Gold, 2);

	B_GiveInvItems	(self, hero, ItWr_HSBook, 1);

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_F()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_F_27_00"); //All right... Uh, you get my house, the book and 100 gold pieces!

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Still too much...", Info_Mod_HofstaatWeiberheld_Hi_H);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Purchased...", Info_Mod_HofstaatWeiberheld_Hi_G);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_F_27_01"); //No, that's enough!

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Purchased...", Info_Mod_HofstaatWeiberheld_Hi_G);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_E()
{
	B_ShowGivenThings	("100 Gold and book received");

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItWr_HSBook, 1);

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_H()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_00"); //Gaaaaaaahrr! All right, I'll give you my book, my gold, my house and I'll marry you!
		AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_H_15_01"); //WAS?!
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_02"); //You want citizenship, don't you? Men are also allowed to marry in Relendel.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Fair enough.", Info_Mod_HofstaatWeiberheld_Hi_J);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Just give me the book!", Info_Mod_HofstaatWeiberheld_Hi_I);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_03"); //Hahaha, that's enough.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Just give me the book!", Info_Mod_HofstaatWeiberheld_Hi_I);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_G()
{
	B_ShowGivenThings	("100 Gold and book received");

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItWr_HSBook, 1);

	Mod_Sekte_WeiberheldHaus = 1;

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "I now own a house in the courtyard. It must be good for something.");

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_J_15_00"); //All right, all right.

	Mod_Sekte_WeiberheldHaus = 1;
	Mod_Sekte_Verheiratet = 1;

	B_StartOtherRoutine	(Mod_7020_HS_Tuersteher_REL, "DARFREIN");

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "I married the womanizer, and I own a house. The bouncer should let me pass now.");

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_I_15_00"); //Just give me the book!

	B_GiveInvItems	(self, hero, ItWr_HSBook, 1);

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

INSTANCE Info_Mod_HofstaatWeiberheld_SabineWillNicht (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_SabineWillNicht_Condition;
	information	= Info_Mod_HofstaatWeiberheld_SabineWillNicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "The marriage thing doesn't work.";
};

FUNC INT Info_Mod_HofstaatWeiberheld_SabineWillNicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_02))
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_SabineWillNicht_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_00"); //The marriage thing doesn't work.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_01"); //How does it fail?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_02"); //Well, I don't know what to say...
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_03"); //AHA!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_04"); //Yes?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_05"); //Du brauchst mein patentiertes "Turning on and laughing", sozusagen die Fortsetzung meines ersten Buches.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_06"); //How much do you want for it?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_07"); //200 pieces of gold.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_08"); //No bargaining?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_09"); //Nah... I lost my house trying to sell my collected works to someone.
};

INSTANCE Info_Mod_HofstaatWeiberheld_BuyBook2 (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_BuyBook2_Condition;
	information	= Info_Mod_HofstaatWeiberheld_BuyBook2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, I'll buy the book (200 gold)";
};

FUNC INT Info_Mod_HofstaatWeiberheld_BuyBook2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatWeiberheld_SabineWillNicht))
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_BuyBook2_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_BuyBook2_15_00"); //All right, I'll buy the book.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_BuyBook2_27_01"); //Here you have it. Good luck with that.

	B_GiveInvItems	(self, hero, ItWr_HSBook2, 1);
};

INSTANCE Info_Mod_HofstaatWeiberheld_Preacher (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Preacher_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Preacher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Preacher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_03))
	|| (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Preacher_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Preacher_27_00"); //I now pronounce you man and wife!

	Mod_Sekte_Verheiratet = 1;

	Mod_HS_DarfZuKing = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7020_HS_Tuersteher_REL, "DARFREIN");

	Mod_7020_HS_Tuersteher_REL.aivar[AIV_Passgate] = TRUE;

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "I'm married now. The bouncer should let me pass now.");
};

INSTANCE Info_Mod_HofstaatWeiberheld_Geliebte (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Geliebte_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Geliebte_Condition()
{
	if (Mod_SL_Schwaechen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_00"); //You again?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_01"); //I need your help again.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_02"); //How can I help you? Do you want to get a woman, do you want to get a man, do you want to get a woman and a man? Nothing is impossible!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_03"); //I want to seduce the royal mistress.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_04"); //Of course, no problem seducing royal mistress, that's ga... YOU WANT WHAT? UNM÷GLICH!
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_05"); //Du ungl‰ubiger Narr! Glaubst du, sie heiﬂt zum Spaﬂ "royal lover".
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_06"); //Fool! No one except the King has ever managed to land on her.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_07"); //There's gotta be a way. How did the king do it?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_08"); //He founded an empire and wears a crown! He might even seduce me!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_09"); //Then I need a crown?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_10"); //No way! It is rumored that the royal drunkard managed to seduce them at the time of the last festival.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_11"); //Then I'll just have to get her drunk?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_12"); //This won't work. Believe me... it doesn't work. You must be.... the drunkard.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_13"); //How do I do that?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_14"); //Only the king can do that. He's got the blast lord!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_15"); //That... Blastherr?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_16"); //Yes, this is the horn with which he calls out the time of celebration! You have to steal it from him. It's in the castle.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_17"); //What if I have it?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_18"); //Do you play it... but Quiet! Only the drunkard can hear you.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_19"); //And as soon as you have what you need, you have to give him joy for him to fall asleep again.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_20"); //As soon as he rubs his eyes out of his sleep and notices that you are not the king and that it is not the time of celebration, he will kill you!

	B_LogEntry	(TOPIC_MOD_SL_GELIEBTE, "I have to arouse the drunkard who has allegedly seduced the royal mistress before. I need the king's blast lord, which I find in the castle.");

	Mod_SL_PartGeliebte = 1;

	Wld_InsertItem	(ItMi_Blastherr, "FP_ITEM_KOENIG_DMNACHRICHT");
};

INSTANCE Info_Mod_HofstaatWeiberheld_Pickpocket (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Pickpocket_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Pickpocket_Condition()
{
	C_Beklauen	(49, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatWeiberheld_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatWeiberheld_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatWeiberheld_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatWeiberheld_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatWeiberheld_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatWeiberheld_EXIT (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_EXIT_Condition;
	information	= Info_Mod_HofstaatWeiberheld_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatWeiberheld_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatWeiberheld_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
